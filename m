Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1EB8260B4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 11:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/vB0vZyzESgMhybcVoWlMwxQBmEN5X3UOp3/XkKYuOY=; b=awF5M1qlNq4c08
	TGm2ktEn4cEua4oZ8TREGZzOcNS0ptOWuoRjJm6kadiCWUyG6oKoocMmnrvyL5KmGlkXsqRSg5vAP
	F8wEjfNO3PlyUMFKrxI/1iglztjJOo9/VZ2UbMQ9H+/wxDSRSVD3ME72BWOmYvtsGKIgvv7JkyzAD
	eRIhaTpWnq2q5fHcypHYgVB/NLKOwat0ahKRCCbHJrJb6/0R/wlgqph2moGZWudVR/8/WvuSozJay
	rPpybVSqePODiu6rC7aAzUaPZWYeO4jtc1PeVty3MP8jn7SMf39xLuogZ1EaKBQj1MbITPpDymiPM
	OdSlanBxN+KSbyVbV0FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTNrt-0006eB-Ow; Wed, 22 May 2019 09:49:05 +0000
Received: from mail-ve1eur01on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::613]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTNrP-0006DG-3j
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 09:48:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x/WcK1QGJEMvW2AFJdc7EszLqs9w8c+FBMsOQMPfTU8=;
 b=XSmZDZusruFcHhc93RYt5jJte3dfznJKP8Gn4LDd0fNbYQ00hMDYOBDvPBOvuu+GUkDxUNCL7NYfRroVh1w+SKb0Ein/qlg4ffwGltLlnETQlVLicE1cLNnrroOGbFCXeN7S/rXxrXTknJmyYrnHAmh5sjzq8iDa0inbNUEk5fc=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4897.eurprd04.prod.outlook.com (20.177.40.84) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.18; Wed, 22 May 2019 09:48:30 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 09:48:30 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 2/2] clk: imx8m: Add GIC clock
Thread-Topic: [PATCH v2 2/2] clk: imx8m: Add GIC clock
Thread-Index: AQHVEIODCAGP73HXoU2yWffcO3Luag==
Date: Wed, 22 May 2019 09:48:30 +0000
Message-ID: <df8f9219a975050cc1bfcfd604c8389044319578.1558518323.git.leonard.crestez@nxp.com>
References: <cover.1558518323.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1558518323.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0441.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:e::21) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3549353-6daf-42a9-a7ce-08d6de9aa59d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4897; 
x-ms-traffictypediagnostic: AM0PR04MB4897:
x-microsoft-antispam-prvs: <AM0PR04MB4897ECFAC1635DDB22DCE25DEE000@AM0PR04MB4897.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(71190400001)(52116002)(71200400001)(498600001)(53936002)(256004)(118296001)(76176011)(73956011)(86362001)(3846002)(6116002)(99286004)(36756003)(66066001)(66556008)(64756008)(5660300002)(66946007)(66446008)(66476007)(14454004)(2906002)(50226002)(25786009)(6486002)(6436002)(54906003)(11346002)(44832011)(486006)(476003)(2616005)(110136005)(386003)(26005)(6506007)(305945005)(68736007)(446003)(186003)(7736002)(8936002)(4326008)(102836004)(6512007)(8676002)(81166006)(81156014)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4897;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pCr2KdZeHuyyqS/UofBm4SGB/7pfl/LTMvNZRgTXp7PPqSuaoJGD6IGLwsm/QWml2JI3+mGaasir233mysFxRvsqt3wCIam5PGTZCHD0MgwJNk5h7NZ4bemicP+XRmNkvHxQDy7FWxyeMN2bQHUXJ6DuhOEGYA40y3v5M9ki+aaaxPbt9maFWT2HCM4NBFjCwZmWCSezFjKsouwKX3yo65YZEnFugAphSMuJ5z3u2YAy5o4zfqtzraqeUKs1O/ON9To0iyhPjDF2WTRlUPX3kTQSkQI5Fh5eUvmqyVSCXDbV/HpZfdWxKaJYylhjmuF4cEv8rlOVp+QI1iI1A1ui75ViRGQei+LQhsJNswCCjSH2Ratmkox2S2wm7BUI7LO2E1IZuLirGYQeROMzQd6lNPiHCdeauGEmziiRdFBTa1A=
Content-ID: <1A54C618F49D0B4C8FBA9ED229C18A99@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3549353-6daf-42a9-a7ce-08d6de9aa59d
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 09:48:30.7624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4897
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_024835_155211_0FDCDB94 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:613 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is documented in the reference manuals as GIC_CLK_ROOT.

In some out-of-tree DVFS scenarios the gic clock can end up as the only
user of sys_pll2 so if we don't define the gic clk explicitly it might
be turned off.

This applies to both 8mq and 8mm: same clk register but diffferent
parents.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 4 ++++
 drivers/clk/imx/clk-imx8mq.c | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 2e2f8c210432..74112d3ef5bf 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -286,10 +286,13 @@ static const char *imx8mm_usb_core_sels[] = {"osc_24m", "sys_pll1_100m", "sys_pl
 					     "sys_pll2_200m", "clk_ext2", "clk_ext3", "audio_pll2_out", };
 
 static const char *imx8mm_usb_phy_sels[] = {"osc_24m", "sys_pll1_100m", "sys_pll1_40m", "sys_pll2_100m",
 					     "sys_pll2_200m", "clk_ext2", "clk_ext3", "audio_pll2_out", };
 
+static const char *imx8mm_gic_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1_40m", "sys_pll2_100m",
+					"sys_pll1_800m", "clk_ext2", "clk_ext4", "audio_pll2_out" };
+
 static const char *imx8mm_ecspi1_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1_40m", "sys_pll1_160m",
 					   "sys_pll1_800m", "sys_pll3_out", "sys_pll2_250m", "audio_pll2_out", };
 
 static const char *imx8mm_ecspi2_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1_40m", "sys_pll1_160m",
 					   "sys_pll1_800m", "sys_pll3_out", "sys_pll2_250m", "audio_pll2_out", };
@@ -556,10 +559,11 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MM_CLK_UART2] = imx8m_clk_composite("uart2", imx8mm_uart2_sels, base + 0xaf80);
 	clks[IMX8MM_CLK_UART3] = imx8m_clk_composite("uart3", imx8mm_uart3_sels, base + 0xb000);
 	clks[IMX8MM_CLK_UART4] = imx8m_clk_composite("uart4", imx8mm_uart4_sels, base + 0xb080);
 	clks[IMX8MM_CLK_USB_CORE_REF] = imx8m_clk_composite("usb_core_ref", imx8mm_usb_core_sels, base + 0xb100);
 	clks[IMX8MM_CLK_USB_PHY_REF] = imx8m_clk_composite("usb_phy_ref", imx8mm_usb_phy_sels, base + 0xb180);
+	clks[IMX8MM_CLK_GIC] = imx8m_clk_composite_critical("gic", imx8mm_gic_sels, base + 0xb200);
 	clks[IMX8MM_CLK_ECSPI1] = imx8m_clk_composite("ecspi1", imx8mm_ecspi1_sels, base + 0xb280);
 	clks[IMX8MM_CLK_ECSPI2] = imx8m_clk_composite("ecspi2", imx8mm_ecspi2_sels, base + 0xb300);
 	clks[IMX8MM_CLK_PWM1] = imx8m_clk_composite("pwm1", imx8mm_pwm1_sels, base + 0xb380);
 	clks[IMX8MM_CLK_PWM2] = imx8m_clk_composite("pwm2", imx8mm_pwm2_sels, base + 0xb400);
 	clks[IMX8MM_CLK_PWM3] = imx8m_clk_composite("pwm3", imx8mm_pwm3_sels, base + 0xb480);
diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index daf1841b2adb..b2b2c8956cb7 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -190,10 +190,13 @@ static const char * const imx8mq_usb_core_sels[] = {"osc_25m", "sys1_pll_100m",
 					     "sys2_pll_200m", "clk_ext2", "clk_ext3", "audio_pll2_out", };
 
 static const char * const imx8mq_usb_phy_sels[] = {"osc_25m", "sys1_pll_100m", "sys1_pll_40m", "sys2_pll_100m",
 					     "sys2_pll_200m", "clk_ext2", "clk_ext3", "audio_pll2_out", };
 
+static const char * const imx8mq_gic_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_40m", "sys2_pll_100m",
+					       "sys2_pll_200m", "clk_ext2", "clk_ext3", "audio_pll2_out" };
+
 static const char * const imx8mq_ecspi1_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_40m", "sys1_pll_160m",
 					   "sys1_pll_800m", "sys3_pll2_out", "sys2_pll_250m", "audio_pll2_out", };
 
 static const char * const imx8mq_ecspi2_sels[] = {"osc_25m", "sys2_pll_200m", "sys1_pll_40m", "sys1_pll_160m",
 					   "sys1_pll_800m", "sys3_pll2_out", "sys2_pll_250m", "audio_pll2_out", };
@@ -440,10 +443,11 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MQ_CLK_UART2] = imx8m_clk_composite("uart2", imx8mq_uart2_sels, base + 0xaf80);
 	clks[IMX8MQ_CLK_UART3] = imx8m_clk_composite("uart3", imx8mq_uart3_sels, base + 0xb000);
 	clks[IMX8MQ_CLK_UART4] = imx8m_clk_composite("uart4", imx8mq_uart4_sels, base + 0xb080);
 	clks[IMX8MQ_CLK_USB_CORE_REF] = imx8m_clk_composite("usb_core_ref", imx8mq_usb_core_sels, base + 0xb100);
 	clks[IMX8MQ_CLK_USB_PHY_REF] = imx8m_clk_composite("usb_phy_ref", imx8mq_usb_phy_sels, base + 0xb180);
+	clks[IMX8MQ_CLK_GIC] = imx8m_clk_composite_critical("gic", imx8mq_gic_sels, base + 0xb200);
 	clks[IMX8MQ_CLK_ECSPI1] = imx8m_clk_composite("ecspi1", imx8mq_ecspi1_sels, base + 0xb280);
 	clks[IMX8MQ_CLK_ECSPI2] = imx8m_clk_composite("ecspi2", imx8mq_ecspi2_sels, base + 0xb300);
 	clks[IMX8MQ_CLK_PWM1] = imx8m_clk_composite("pwm1", imx8mq_pwm1_sels, base + 0xb380);
 	clks[IMX8MQ_CLK_PWM2] = imx8m_clk_composite("pwm2", imx8mq_pwm2_sels, base + 0xb400);
 	clks[IMX8MQ_CLK_PWM3] = imx8m_clk_composite("pwm3", imx8mq_pwm3_sels, base + 0xb480);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
