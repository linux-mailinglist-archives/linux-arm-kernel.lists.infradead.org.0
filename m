Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F979140249
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 04:28:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fgWBqGR4Qx1HZj1CnnrGMrK7KNjzsaAtjrfCtd2s4wU=; b=Bx7ipyXP/xINpa
	5gmVObPat7MqDOdjv/pMoaNjXrDtsWg4WjyestXY4cgz1UsT7Xqr/hZWnM9lGKJDnyAINRqHRvGvR
	GJBKxdXHXnUNUZQLEIbLxmxazD7hYX7D5r+n+L/793XIfbAOy7CYIT93HcAblSTV0N4NP+crhjw8X
	45bqO8TxouB/cBi8yeli57EeqyitMX9yevf10mV8DcBBZzhq+xS/sbCRiGDR/11lsh4k8QrcJumyO
	HaM5W3jQyuQYedh1qpmNdfhRWh6lHN+IjRPuP0h8eeURCAVuYBxBSKuoI6JVYO2nAvU2e5xbySHvI
	ZZsClh7M75sjtY1KQpTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isIJW-0006mS-CV; Fri, 17 Jan 2020 03:28:50 +0000
Received: from mail-eopbgr40072.outbound.protection.outlook.com ([40.107.4.72]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIJJ-0006lW-GR
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 03:28:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lfbwxUh7hOHO8O2aejxQz5Cfb0fSyOmABbXu9WKwWO+7cg1q9L/eRIqxkLP+SdDNZW9N2cO2ao0ABiWQjeFKNhiT5AkMgsodJSmbYE1WbtltPGFxFnKhbVgBSmzL90WXkfNyD1HE/I/DLIs0Y5q2iriHLEdyXKkrj4Wu708IRbENMWthIZNHeSo6Y5nSlPND0tbHxAvQS2BT9QdVn3yAQlUlwsYthOHgW1LWAv4+52NIHsxGvUyO9seRxP8KL+POfSnmoYrW+nohPGYJD+ymZGNSLXUouNfPaXtkWxdx1xPZ2t1L+u/4BNUndSsjZQz8W3S0d97QuH+jvqTy6GdWRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=//8jhs7rs+O9Gw3wNQH5NyAluIcKlNz04jBJ9uUMdes=;
 b=F50NOCr9MeWwew+IGtsxG57aJktrJFGvhQvoGMm3yw166ZK9JmlTDiFy6+pH4+JFu3unzlU3pUlqXrL4ozjuRRakMXDBRZ1ztjtkC3/HP6+YuqJEHqJB+ya7wMX2tL+OwNNFSzCVqiCMvjulVNeshZCEWSyg9zNMcsNM3Gh4PP6vFm0GWrmckHSuTOOkp0fTeUQJPi39Wrhe7L2J0MRgEmMtNhCejjmuZln7A+X3Mz7Q/m3WG4Q/PKXPF1httlr+n/CiWX30p/uZiN4yb0bRtaOTIfk8z0Tdt6UjD3f76qSrjfsdJXAuxaErro2Hmp8ekiqSsgoyUQ8qzMA2i+X9ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=//8jhs7rs+O9Gw3wNQH5NyAluIcKlNz04jBJ9uUMdes=;
 b=YkAbiYxFyto8tIXot3nqGdQ+iR7XpLXZRrhFG6KhaLbH8HYyvDe3VQLp42HVDZ5BrYELmgGim4mUCGzlHfLWJ3mONvGbAULVAPN+t1zdlN5To16N+IuW/F9ABKGeac3DWXOQX1fcCBRCAof6+ITe1/zItR2RgoQZ3/1GqqoLaes=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5987.eurprd04.prod.outlook.com (20.178.114.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.8; Fri, 17 Jan 2020 03:28:33 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Fri, 17 Jan 2020
 03:28:33 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0005.apcprd06.prod.outlook.com (2603:1096:202:2e::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.18 via Frontend Transport; Fri, 17 Jan 2020 03:28:30 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>
Subject: [PATCH] nvmem: imx: ocotp: add i.MX8MP support
Thread-Topic: [PATCH] nvmem: imx: ocotp: add i.MX8MP support
Thread-Index: AQHVzOYys8WB3+BLO0KUDipX7ftHWA==
Date: Fri, 17 Jan 2020 03:28:33 +0000
Message-ID: <1579231433-14201-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0005.apcprd06.prod.outlook.com
 (2603:1096:202:2e::17) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 78393aa3-4716-4117-9bc3-08d79afd5481
x-ms-traffictypediagnostic: AM0PR04MB5987:|AM0PR04MB5987:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5987DAEDB2237407A6B0423188310@AM0PR04MB5987.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(376002)(396003)(136003)(366004)(199004)(189003)(44832011)(81166006)(8936002)(71200400001)(86362001)(316002)(69590400006)(110136005)(956004)(6506007)(6512007)(8676002)(52116002)(81156014)(16526019)(4326008)(5660300002)(6486002)(26005)(54906003)(2616005)(64756008)(66946007)(186003)(66476007)(36756003)(478600001)(66556008)(2906002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5987;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NZgnkBHC2U40WrIkCms9WvdnySYh8zhQI8nux+9YE2mcIglc9tgXDCapinFrQkNeiP+BOgnpO5Qf8NfW1djF+XgecCAjwcFiICvguYhUr/gnUA6JqiruNSk/41r7DVotQZGYwMHhu6quNTmRFck8JYrXEMkG8MGaDOLkUg5ov9ybbGROXnbaABey/UJgC+lEnsdJe7GbYfFeS16zfDXk2VYSpBwpT6yEJoXq4sKjTU0fLKO/y5jZAeXc9puhdXkLoOrCwoCPQGhxjP8jqoD0xmSpx8KBImDLgq6fwTI/xwAYozs9VB6+M64SBc2JT1nDfvD5iwDEn0yvDS4lDVAvbFsEnNwCoezAWUJtWvSjw7WxIyrzXSlA0eMBXRLkUDuQh9PRXG1D3XkhwjnxyuObvPsUAWluO+D7OahbmQxy/+XsBw736BJHLvSKKFFs6Jp0JuI8GvIpHDOUlWZ/iURUY6qgS6fO5vqz7cweS+TAbJ+zE+PIxntbqhhyqEGfENcZ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 78393aa3-4716-4117-9bc3-08d79afd5481
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 03:28:33.3027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M0fYWZ2QxsrgkjrGEaRernDON8Bg0+U9GL0htN+EXPUonHLjkcDcIl7idwoosEkiuxOm7nqrisQV0MYtFmYp5g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5987
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_192837_647348_74C9159B 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.72 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

i.MX8MP has 96 banks with each bank 4 words. And it has different
ctrl register layout, so add new macros for that.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

dt-bindings doc has been posted by Anson Huang

 drivers/nvmem/imx-ocotp.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 4ba9cc8f76df..794858093086 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -44,6 +44,11 @@
 #define IMX_OCOTP_BM_CTRL_ERROR		0x00000200
 #define IMX_OCOTP_BM_CTRL_REL_SHADOWS	0x00000400
 
+#define IMX_OCOTP_BM_CTRL_ADDR_8MP		0x000001FF
+#define IMX_OCOTP_BM_CTRL_BUSY_8MP		0x00000200
+#define IMX_OCOTP_BM_CTRL_ERROR_8MP		0x00000400
+#define IMX_OCOTP_BM_CTRL_REL_SHADOWS_8MP	0x00000800
+
 #define IMX_OCOTP_BM_CTRL_DEFAULT				\
 	{							\
 		.bm_addr = IMX_OCOTP_BM_CTRL_ADDR,		\
@@ -52,6 +57,14 @@
 		.bm_rel_shadows = IMX_OCOTP_BM_CTRL_REL_SHADOWS,\
 	}
 
+#define IMX_OCOTP_BM_CTRL_8MP					\
+	{							\
+		.bm_addr = IMX_OCOTP_BM_CTRL_ADDR_8MP,		\
+		.bm_busy = IMX_OCOTP_BM_CTRL_BUSY_8MP,		\
+		.bm_error = IMX_OCOTP_BM_CTRL_ERROR_8MP,	\
+		.bm_rel_shadows = IMX_OCOTP_BM_CTRL_REL_SHADOWS_8MP,\
+	}
+
 #define TIMING_STROBE_PROG_US		10	/* Min time to blow a fuse */
 #define TIMING_STROBE_READ_NS		37	/* Min time before read */
 #define TIMING_RELAX_NS			17
@@ -520,6 +533,13 @@ static const struct ocotp_params imx8mn_params = {
 	.ctrl = IMX_OCOTP_BM_CTRL_DEFAULT,
 };
 
+static const struct ocotp_params imx8mp_params = {
+	.nregs = 384,
+	.bank_address_words = 0,
+	.set_timing = imx_ocotp_set_imx6_timing,
+	.ctrl = IMX_OCOTP_BM_CTRL_8MP,
+};
+
 static const struct of_device_id imx_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx6q-ocotp",  .data = &imx6q_params },
 	{ .compatible = "fsl,imx6sl-ocotp", .data = &imx6sl_params },
@@ -532,6 +552,7 @@ static const struct of_device_id imx_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx8mq-ocotp", .data = &imx8mq_params },
 	{ .compatible = "fsl,imx8mm-ocotp", .data = &imx8mm_params },
 	{ .compatible = "fsl,imx8mn-ocotp", .data = &imx8mn_params },
+	{ .compatible = "fsl,imx8mp-ocotp", .data = &imx8mp_params },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, imx_ocotp_dt_ids);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
