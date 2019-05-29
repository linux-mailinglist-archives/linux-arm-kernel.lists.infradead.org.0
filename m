Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC0F2DC64
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:04:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dN8cEsVv+H14XfZZUOwspmHU5sUgPhL/hcSv15Z++Gc=; b=GNUEJ6bOp+k5Ov
	kX8b5l3/u6W2dnGuhDgZ7cZkLpR4UdlNU5Xx/LBObJgaEKMc3wN7cWuci6fyv3wbPXGv7Buh/HSqZ
	d5CLiwIOCZoafSwTy5HzwXi0TGmwpM3Wd4AljqU+mH3/jNLFcRzW3eQpELlANDSSSJw7b+iRj4e42
	cehBNWq8IOuCOMYnAei98Bgfz538W6vmXHf8G9AR4Xjz8n28Xl88DPdeze2loY0AtY2SOdtEv4Tai
	CprcSbHG5aAnh8S8P0P7TPcd4rukR7bWRl6TWTMcXX4DqskUz/EameGXdD+FypFkECXiINh19blV6
	76f51IDfIwAV2xAw5uvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxJb-0004I7-52; Wed, 29 May 2019 12:04:19 +0000
Received: from mail-eopbgr130054.outbound.protection.outlook.com
 ([40.107.13.54] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxJ5-0003qn-Mc
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:03:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7uHAcUN+j6VtLPSbaJigjReOyt8r/3SfkyoasffYUZI=;
 b=I668Dbf27x2tpVdRKSZw8KNZ0X0EjzPxx989tK5/hr9nTT9JSL9MDAzYEMr/AU3DI7358YJSUxr1F4sicLDf9+BYrMlzEbJQEqlpHwy79XPv40oZ6ccpfsFZR5yQ1rG6Wh526GEOMFepEyUPDZVTyd6r4Sx6zpUxIyHHlzjlSSo=
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com (20.177.50.140) by
 VI1PR04MB5998.eurprd04.prod.outlook.com (20.178.123.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Wed, 29 May 2019 12:03:43 +0000
Received: from VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1]) by VI1PR04MB5055.eurprd04.prod.outlook.com
 ([fe80::9577:379c:2078:19a1%7]) with mapi id 15.20.1922.021; Wed, 29 May 2019
 12:03:43 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH 3/3] cpufreq: Switch imx7d to imx-cpufreq-dt for speed grading
Thread-Topic: [PATCH 3/3] cpufreq: Switch imx7d to imx-cpufreq-dt for speed
 grading
Thread-Index: AQHVFhaPrvUUJ34dakS8wduWS4Ia3Q==
Date: Wed, 29 May 2019 12:03:42 +0000
Message-ID: <8787934ff35e7e55837f2caabc0d5bf65828d971.1559131365.git.leonard.crestez@nxp.com>
References: <b6a9b9f80534af5c12db30a0bb699ec850f85be7.1559131365.git.leonard.crestez@nxp.com>
In-Reply-To: <b6a9b9f80534af5c12db30a0bb699ec850f85be7.1559131365.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0432.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a0::36) To VI1PR04MB5055.eurprd04.prod.outlook.com
 (2603:10a6:803:5a::12)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce5c93f0-2854-4e35-65bb-08d6e42db1ca
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5998; 
x-ms-traffictypediagnostic: VI1PR04MB5998:
x-microsoft-antispam-prvs: <VI1PR04MB599804DA4944B2E82224DACCEE1F0@VI1PR04MB5998.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:159;
x-forefront-prvs: 0052308DC6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(39860400002)(366004)(376002)(136003)(199004)(189003)(6436002)(6512007)(73956011)(478600001)(66446008)(5660300002)(6116002)(6486002)(386003)(6506007)(102836004)(110136005)(25786009)(81156014)(305945005)(54906003)(3846002)(50226002)(6636002)(99286004)(7736002)(8936002)(68736007)(86362001)(76176011)(53936002)(8676002)(52116002)(316002)(4326008)(81166006)(14454004)(66476007)(64756008)(66946007)(66556008)(118296001)(2906002)(26005)(186003)(11346002)(256004)(486006)(476003)(446003)(2616005)(44832011)(14444005)(71200400001)(71190400001)(36756003)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5998;
 H:VI1PR04MB5055.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: q3BHYONav0EJpuXd7GSuf6W6UPJF+K0ItGG9Me3NChGa/H0IpOHM2FFbuMGmgmI8JfVS6tIAirLzgNnmIO3wyq4NVvMfm+txqLcEH3E3k79iqi9Cd8J+v5fg2y95YurHLM2YQseat7vt0jqMi0ZAU+Oz639zT3lnmXo6hBsUsaJWaIMbiGJK0a+mE41eylGyMdiT2k0q90GWs/fpwS4mXWFPrhpGN4yLWVOENO13L2acbpk6pKHZZJU7RPDip965musd8WUSQPULxhEeIVky12hT7lVwOVyWkIZYvf/QSnuym393L/bSL0GOCgme5ANjA9m/TRuqI2PQfPYCl7iWABSk19gzCVMm0EVKyDgFdqk03LFRfdUvp+RsVW/p/xYVrD94ungAJpo6JkozXLgauaLbtUCr2X/6idrHt/uzJVM=
Content-ID: <E28AEEB54DAE8F458BCD2A518473E48E@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce5c93f0-2854-4e35-65bb-08d6e42db1ca
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2019 12:03:43.0044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: leonard.crestez@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_050347_879909_BC2296A0 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver can handle speed grading bits on imx7d just like on imx8mq
and imx8mm.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 arch/arm/mach-imx/mach-imx7d.c       | 7 +++++++
 drivers/cpufreq/cpufreq-dt-platdev.c | 2 +-
 drivers/cpufreq/imx-cpufreq-dt.c     | 1 +
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/mach-imx7d.c b/arch/arm/mach-imx/mach-imx7d.c
index 26ca744d3e2b..0b77412795c9 100644
--- a/arch/arm/mach-imx/mach-imx7d.c
+++ b/arch/arm/mach-imx/mach-imx7d.c
@@ -95,10 +95,16 @@ static void __init imx7d_init_machine(void)
 
 	imx_anatop_init();
 	imx7d_enet_init();
 }
 
+static void __init imx7d_init_late(void)
+{
+	if (IS_ENABLED(CONFIG_ARM_IMX_CPUFREQ_DT))
+		platform_device_register_simple("imx-cpufreq-dt", -1, NULL, 0);
+}
+
 static void __init imx7d_init_irq(void)
 {
 	imx_init_revision_from_anatop();
 	imx_src_init();
 	irqchip_init();
@@ -111,7 +117,8 @@ static const char *const imx7d_dt_compat[] __initconst = {
 };
 
 DT_MACHINE_START(IMX7D, "Freescale i.MX7 Dual (Device Tree)")
 	.init_irq	= imx7d_init_irq,
 	.init_machine	= imx7d_init_machine,
+	.init_late      = imx7d_init_late,
 	.dt_compat	= imx7d_dt_compat,
 MACHINE_END
diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
index 19c1aad57e26..eb282dff9f2c 100644
--- a/drivers/cpufreq/cpufreq-dt-platdev.c
+++ b/drivers/cpufreq/cpufreq-dt-platdev.c
@@ -38,11 +38,10 @@ static const struct of_device_id whitelist[] __initconst = {
 	{ .compatible = "hisilicon,hi3660", },
 
 	{ .compatible = "fsl,imx27", },
 	{ .compatible = "fsl,imx51", },
 	{ .compatible = "fsl,imx53", },
-	{ .compatible = "fsl,imx7d", },
 
 	{ .compatible = "marvell,berlin", },
 	{ .compatible = "marvell,pxa250", },
 	{ .compatible = "marvell,pxa270", },
 
@@ -106,10 +105,11 @@ static const struct of_device_id whitelist[] __initconst = {
  */
 static const struct of_device_id blacklist[] __initconst = {
 	{ .compatible = "calxeda,highbank", },
 	{ .compatible = "calxeda,ecx-2000", },
 
+	{ .compatible = "fsl,imx7d", },
 	{ .compatible = "fsl,imx8mq", },
 	{ .compatible = "fsl,imx8mm", },
 
 	{ .compatible = "marvell,armadaxp", },
 
diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 5061503cb0a1..ce26ffc18ce6 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -18,10 +18,11 @@
 #define OCOTP_CFG3_SPEED_GRADE_MASK	(0x3 << 8)
 #define OCOTP_CFG3_MKT_SEGMENT_SHIFT    6
 #define OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 6)
 
 static const struct of_device_id imx_cpufreq_dt_match_list[] = {
+	{ .compatible = "fsl,imx7d" },
 	{ .compatible = "fsl,imx8mm" },
 	{ .compatible = "fsl,imx8mq" },
 	{}
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
