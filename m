Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A641418C0D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 20:53:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Krb3EZAxblNoeNYy1/CRGsNKu0EPbdtBm6SXrID8wY0=; b=hM/kRnFy9Y4LsM
	VFcjYoDB2tH2TKaA9AjYrCZkQ35jhRykTGE6hXTgITjDXurrkag8tjNlKSn1P4xN3m/I5Dn/DKSvZ
	2aimY+R30Bu4Qm+RWGVxWuK10l+Jc9+yTg6VbmNH6jZfz/xvBX0xv8NP8S2ewkvOTKqqaLHxmkeKN
	ooCTO/7SkIpBiR1Y1RC4B7GuAF1kToiXRiswnZQwnCzLoXChUSqRjOuidVceDaffWqMV7EMhXcx4J
	4DbE5HjRkbdBQgeNn283dcpWzJ3+FNs60LC0VjhQKoRhwlS15mplk1GzRbUTwQGQ436ltY7hETeJL
	tV3oIKr7DJLeCXGd46Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF1E9-0003kM-5G; Thu, 19 Mar 2020 19:53:13 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF1Cs-0002IB-PK
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 19:51:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bdq4KvwqiTTXBKwC9WxWS8Rou5mj6CrLQLp0JAkey0oWhzyV3dYU4WLLj5YSCiNA4qfvMu2z7qCsDwCk7WPJnvN0y0su1QFLkpjC9b+XuPl2qk7lQzKIhfUXE/yLP2ewUmnHXijuE1+OguwOrDvdWDwSmT0Q+eZ/pZfPxjCUPHdKx/JkKh53UXwjyRZyBZotQP2vcFKmi/4rkAQnR0mPeqhmWt0C2PiW0kWezjUFTwUur4iUGHD0kFEpPsWCILwEt+dCabKXLVgDgPiOktRTydOowMc6sjXaxSMzogyDsMv0XBXqq1DAuJ7+OLRTnl2YLq2rP64FdYZ0oQv4fyL4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I/75uZVJuRyvM42nUIlOOHDEUg2Md3mX+iZHM+ujtfQ=;
 b=JhKKVUUqh2/sIQYpITtC63poOqMwv8efiF6BhbmboVzF4n9vZXxSQKg0t0wqgoRvRj56dRQqDjQRtEOHyvm+/uWPkpMVOmdzKRh+cQlX6vIutRBJMuRhFOihakxjFcQDchzK2oK4Yt3WYeJunIVBgUBc8vCZBN+s1FPXXCn6I3mAaLeHF/cuzsTn6TcfONz1AV0VUvBnHipitduUVlwhkfqh2Ff9yYIsTOmrM5LD+M8MquF/JSKSIZGm9my+NO7GjiRFwwpFewwUaqOU3ehlUhC7meiaxD7sq/Dm4frj5tSzvfcX6ffvFgMVT8Tc31viWgnepGepIDocCK5qEcWLeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I/75uZVJuRyvM42nUIlOOHDEUg2Md3mX+iZHM+ujtfQ=;
 b=J66WMwut34NMTsIwkteEEUFXidhWRuScTJOy7fcnlHMd5VuJedrRwlr65D3DOVkck/ADo2Y4Zvnh0YW0/lFHON4mjvaamhi7U+5PYzKNxWMTcbU6u2Ct43e6bbb9YhF8nW0sjrIGds4qZN6v4SQETs7hKF3O/EqUtzi9RNpWk7o=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3486.eurprd04.prod.outlook.com (52.134.4.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.13; Thu, 19 Mar 2020 19:51:50 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::35d0:31bc:91d9:ceb0%7]) with mapi id 15.20.2835.017; Thu, 19 Mar 2020
 19:51:50 +0000
From: Daniel Baluta <daniel.baluta@oss.nxp.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org
Subject: [PATCH 4/5] ASoC: SOF: Add i.MX8MP device descriptor
Date: Thu, 19 Mar 2020 21:49:56 +0200
Message-Id: <20200319194957.9569-5-daniel.baluta@oss.nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
References: <20200319194957.9569-1-daniel.baluta@oss.nxp.com>
X-ClientProxiedBy: AM0PR07CA0031.eurprd07.prod.outlook.com
 (2603:10a6:208:ac::44) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM0PR07CA0031.eurprd07.prod.outlook.com (2603:10a6:208:ac::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.12 via Frontend Transport; Thu, 19 Mar 2020 19:51:48 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: f374b3b5-be6c-4323-3c06-08d7cc3ef74e
X-MS-TrafficTypeDiagnostic: VI1PR0402MB3486:|VI1PR0402MB3486:
X-MS-Exchange-SharedMailbox-RoutingAgent-Processed: True
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VI1PR0402MB3486A83A7564C2ECA39E0A88B8F40@VI1PR0402MB3486.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:293;
X-Forefront-PRVS: 0347410860
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(396003)(136003)(376002)(199004)(81156014)(8676002)(8936002)(1076003)(81166006)(186003)(26005)(956004)(4326008)(16526019)(2616005)(478600001)(6506007)(316002)(6666004)(2906002)(44832011)(86362001)(66946007)(7416002)(66476007)(6486002)(52116002)(66556008)(6512007)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3486;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; 
Received-SPF: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ydbNr1GqnNyw/mzjEcO7ESQUrNQOqMA/34cccjmzwNVqX3ZPfK/Uc6LryEPcfUVjcXXJz6uq6ugorBYbxXM7JyHNuINNaZ6IJh10M5lOKUbeRwem2odtNMHBf1+O1E4NiCuApp+qKZO3so3dOnNuHRVTXJwWSM4vFTaIIJd9IqtFRl/nYMUe6MsEXnLeJyrHyWtLRp6WZApSKlfu1FvcXZ1Q6wGGowhM8djDhTNrm2GBFvXDGoR/Pwbe+vAUD/T1orLohd6pslbNJ8I/mv0L8qQehKJxb7Zzh4mma2tghm0XM6+4lsV3peoXjFotbl/ilvjevmspEGPQEPkVwDG3LhfA1i2HBX01gepCOl/ewlXSI2wLZo8/VhCBRwerYrAPUcpW4h3qjuQcMoo3LjidIQlW34WBQz+LpWjdpZH9T0a2rbPkAG8wmCYjNd4VZmI3
X-MS-Exchange-AntiSpam-MessageData: VPX9toB1uHA9bX12D/Ga145LNDAls+O5sCMWdoojTNDMq2ni7qaAQNoRA0EktVsYK4mxIlUVyu38ftr8EyMIgetHZpBmL7pYuGWBgQyLZrr30MApJylImN0ys+rJubH7prn6x5DKP7U/xjwNX7s/jg==
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f374b3b5-be6c-4323-3c06-08d7cc3ef74e
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 19:51:50.7541 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u6vgqcO/TYQwqfOZJYZpye4Y4htln9KfsPQGp8HUz01/on0og1PW/L0H+XNR8s8gpHrc6qjqFho7Y4ku7YGVXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3486
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_125154_841425_736AFF21 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 daniel.baluta@gmail.com, Daniel Baluta <daniel.baluta@nxp.com>,
 kai.vehmanen@linux.intel.com, festevam@gmail.com, s.hauer@pengutronix.de,
 yuehaibing@huawei.com, pierre-louis.bossart@linux.intel.com, krzk@kernel.org,
 ranjani.sridharan@linux.intel.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, alsa-devel@alsa-project.org, shawnguo@kernel.org,
 linux-kernel@vger.kernel.org, sound-open-firmware@alsa-project.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

Add SOF device and DT descriptor for i.MX8MP platform.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 sound/soc/sof/sof-of-dev.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/sound/soc/sof/sof-of-dev.c b/sound/soc/sof/sof-of-dev.c
index 16e49f2ee629..c6167597d6fe 100644
--- a/sound/soc/sof/sof-of-dev.c
+++ b/sound/soc/sof/sof-of-dev.c
@@ -14,6 +14,7 @@
 
 extern struct snd_sof_dsp_ops sof_imx8_ops;
 extern struct snd_sof_dsp_ops sof_imx8x_ops;
+extern struct snd_sof_dsp_ops sof_imx8m_ops;
 
 /* platform specific devices */
 #if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8)
@@ -34,6 +35,16 @@ static struct sof_dev_desc sof_of_imx8qm_desc = {
 };
 #endif
 
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8M)
+static struct sof_dev_desc sof_of_imx8mp_desc = {
+	.default_fw_path = "imx/sof",
+	.default_tplg_path = "imx/sof-tplg",
+	.default_fw_filename = "sof-imx8m.ri",
+	.nocodec_tplg_filename = "sof-imx8-nocodec.tplg",
+	.ops = &sof_imx8m_ops,
+};
+#endif
+
 static const struct dev_pm_ops sof_of_pm = {
 	SET_SYSTEM_SLEEP_PM_OPS(snd_sof_suspend, snd_sof_resume)
 	SET_RUNTIME_PM_OPS(snd_sof_runtime_suspend, snd_sof_runtime_resume,
@@ -113,6 +124,9 @@ static const struct of_device_id sof_of_ids[] = {
 #if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8)
 	{ .compatible = "fsl,imx8qxp-dsp", .data = &sof_of_imx8qxp_desc},
 	{ .compatible = "fsl,imx8qm-dsp", .data = &sof_of_imx8qm_desc},
+#endif
+#if IS_ENABLED(CONFIG_SND_SOC_SOF_IMX8M)
+	{ .compatible = "fsl,imx8mp-dsp", .data = &sof_of_imx8mp_desc},
 #endif
 	{ }
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
