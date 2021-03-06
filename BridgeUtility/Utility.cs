﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Data;
using System.Xml;
using System.Xml.Serialization;
using BridgeUtility.Entity;

/// <summary>
/// Xml序列化与反序列化
/// </summary>
public class Utility
{
    #region 反序列化
    /// <summary>
    /// 反序列化
    /// </summary>
    /// <param name="type">类型</param>
    /// <param name="xml">XML字符串</param>
    /// <returns></returns>
    public static object Deserialize(Type type, string xml)
    {
        try
        {
            using (StringReader sr = new StringReader(xml))
            {
                XmlSerializer xmldes = new XmlSerializer(type);
                return xmldes.Deserialize(sr);
            }
        }
        catch (Exception e)
        {

            return null;
        }
    }
    /// <summary>
    /// 反序列化
    /// </summary>
    /// <param name="type"></param>
    /// <param name="xml"></param>
    /// <returns></returns>
    public static object Deserialize(Type type, Stream stream)
    {
        XmlSerializer xmldes = new XmlSerializer(type);
        return xmldes.Deserialize(stream);
    }
    #endregion

    #region 序列化
    /// <summary>
    /// 序列化
    /// </summary>
    /// <param name="type">类型</param>
    /// <param name="obj">对象</param>
    /// <returns></returns>
    public static string Serializer(Type type, object obj)
    {
        MemoryStream Stream = new MemoryStream();
        XmlSerializer xml = new XmlSerializer(type);
        try
        {
            //序列化对象
            xml.Serialize(Stream, obj);
        }
        catch (InvalidOperationException)
        {
            throw;
        }
        Stream.Position = 0;
        StreamReader sr = new StreamReader(Stream);
        string str = sr.ReadToEnd();

        sr.Dispose();
        Stream.Dispose();

        return str;
    }

    #endregion

    private const string TeamConfig = "TeamConfig.xml";

    #region 队伍
    public static List<Team> GetAllTeamName()
    {
        var result = new List<Team>();
        if (File.Exists("TeamConfig.xml"))
        {
            //读取
            var configTxt = File.ReadAllText(TeamConfig);
            result = Deserialize(typeof(List<Team>), configTxt) as List<Team>;
        }

        return result;
    }

    public static void SaveTeam(List<Team> teams)
    {
        File.WriteAllText(TeamConfig, Serializer(typeof(List<Team>), teams));
    }
    #endregion
}