Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DF61B001
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 07:32:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kuq7+osp1TQujB3SlsWNEEaq0FrzW1ogksskJGPR3fg=; b=PxC4/sFfb6f7Y0
	WAIHBh3V+99B/YuRH+WDbetFmSKpe1Ar5cTQUXFJRRFH3oVv88bIegp88fAQSElsx8CHJCptmPHPd
	CxWMzrpuLOHF4ZxO8Eo1J32sOsSx5dmRV+tCjRB1aA19eNS5JvfoXfQzpJfQQ4aRG9m5eJ6QXcafJ
	MJOPIEXz0K8pg3ha4sbpgPbGj+iVrySyKXvkrAFTnJXu1xIv1bbaZ4dpfSbISmYNidaKl89SyV5KT
	mro5GzZOoP7rgwXeuVAt1ldxbD8Z1hRn3YEWpwcnH0VmjO4z3PvZcbNY7L6iW1LKYIhHVi7tH8hqg
	SeHGU23DAV50HH1Xg+gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ3Ze-0000cW-Ud; Mon, 13 May 2019 05:32:30 +0000
Received: from mail-eopbgr80078.outbound.protection.outlook.com ([40.107.8.78]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ3ZP-0000Uz-NI
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 05:32:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JCZ8G6FbufbpIKnO1l02nwILKMKEOrFdWZIhW8t31wI=;
 b=kD5ShDb2v4SAKE8nNEpsB9aKXusxPcbDuyXEJBhU9wUmGMo6cMYJirliF4JesBmo+kMqeF74ErGiMD77rT3JL2rwYruVqYKnRUov7KlBodr/c3feMaHEFLju/X3UzSKEAw8siRuTruVtKjCSAA0bQdHRRC++NOVfnJGnWzVyllI=
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com (20.179.252.215) by
 AM0PR04MB4881.eurprd04.prod.outlook.com (20.177.40.88) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Mon, 13 May 2019 05:32:09 +0000
Received: from AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec]) by AM0PR04MB6434.eurprd04.prod.outlook.com
 ([fe80::19be:75a:9fe:7cec%7]) with mapi id 15.20.1878.024; Mon, 13 May 2019
 05:32:09 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, Stephen Boyd <sboyd@kernel.org>, Shawn Guo
 <shawnguo@kernel.org>
Subject: [PATCH 2/2] clk: imx8mm: Add gic clk
Thread-Topic: [PATCH 2/2] clk: imx8mm: Add gic clk
Thread-Index: AQHVCU01EyZHs5LfbkitpXnJBrxJyw==
Date: Mon, 13 May 2019 05:32:09 +0000
Message-ID: <7e1ffa50b8e2e95ec415c7b46b5ef83b0ec46e2d.1557725494.git.leonard.crestez@nxp.com>
References: <61a5cad23ad56a2aed96f3bdbf7c67df25e0bd6b.1557725494.git.leonard.crestez@nxp.com>
In-Reply-To: <61a5cad23ad56a2aed96f3bdbf7c67df25e0bd6b.1557725494.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.17.1
x-clientproxiedby: LO2P265CA0125.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9f::17) To AM0PR04MB6434.eurprd04.prod.outlook.com
 (2603:10a6:208:16c::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7f3c492-33de-4fcf-bc54-08d6d7645796
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4881; 
x-ms-traffictypediagnostic: AM0PR04MB4881:
x-microsoft-antispam-prvs: <AM0PR04MB488121FED3295E149BCE1C84EE0F0@AM0PR04MB4881.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0036736630
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(376002)(39860400002)(136003)(366004)(396003)(199004)(189003)(305945005)(6436002)(66066001)(14444005)(256004)(2906002)(52116002)(71190400001)(25786009)(76176011)(71200400001)(102836004)(54906003)(6486002)(110136005)(53936002)(386003)(316002)(86362001)(68736007)(4326008)(6512007)(478600001)(5660300002)(6506007)(99286004)(7736002)(26005)(118296001)(186003)(446003)(50226002)(6116002)(8936002)(3846002)(486006)(476003)(11346002)(2616005)(8676002)(73956011)(14454004)(36756003)(44832011)(64756008)(66476007)(66556008)(81156014)(81166006)(66446008)(66946007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4881;
 H:AM0PR04MB6434.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Nb1D7lMlHNbwlNYPx2lhh4UhtNszmnSe6RuSnlLYjyiyKbc3vOi03vmsJ+qy97htDKL5HcbRT/mwcCEcFAebxHnZ8BtBgXbFNTQwEUlTEVPUUY1044y1uzWNdY1/EGUYNRoDTSFsFY2I5vcrHdXTEeJnL1oq8lcFjWHLQTJWhxB8YsW1EJeygQYbJ34O3HN9T7Iu4C5FPEJDnWAI7mzk6OtfwI61OBM89ytLKJNVquezAEX2KIndUJuZMkXNijS3chSHEc3LHFCiU2LfXehy0IXqMLEPDKhFadJGGtCRAkpO+BsVUafp9r+inkm2/f+mNIaeHZDmn9anocurc+rwN8PcEDxllGkCLzmUNDgvaaWp7UnRkQ8U+9zvNJmVseO3cpsvAwE1qGhQerQPsT0Zu/DpmbMsM0QqQsLfl2oO2Pw=
Content-ID: <25D0B71250424A46B273E04CB5A4658A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7f3c492-33de-4fcf-bc54-08d6d7645796
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2019 05:32:09.3687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4881
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_223215_756538_BC55BD9B 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Anson Huang <anson.huang@nxp.com>, Michael Turquette <mturquette@baylibre.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is documented in the reference manual as GIC_CLK_ROOT.

In some out-of-tree DVFS the gic clock can end up as the only user of
sys_pll2 so if we don't define the gic clk explicitly it might be turned
off.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

---
I'm not sure adding clks from the reference manual needs justification.
---
 drivers/clk/imx/clk-imx8mm.c             | 4 ++++
 include/dt-bindings/clock/imx8mm-clock.h | 3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index fbb61c2f12d0..8b2f0013639d 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -286,10 +286,13 @@ static const char *imx8mm_usb_core_sels[] = {"osc_24m", "sys_pll1_100m", "sys_pl
 					     "sys_pll2_200m", "clk_ext2", "clk_ext3", "audio_pll2_out", };
 
 static const char *imx8mm_usb_phy_sels[] = {"osc_24m", "sys_pll1_100m", "sys_pll1_40m", "sys_pll2_100m",
 					     "sys_pll2_200m", "clk_ext2", "clk_ext3", "audio_pll2_out", };
 
+static const char *imx8mm_gic_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1_40m", "sys_pll2_100m",
+					     "sys_pll1_800m", "clk_ext2", "clk_ext4", "audio_pll2_out" };
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
diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index 1b4353e7b486..26f3ad3fbf5d 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -236,9 +236,10 @@
 
 #define IMX8MM_CLK_DRAM_CORE			220
 #define IMX8MM_CLK_DRAM_ALT_ROOT		221
 
 #define IMX8MM_CLK_NAND_USDHC_BUS_RAWNAND_CLK	222
+#define IMX8MM_CLK_GIC				223
 
-#define IMX8MM_CLK_END				223
+#define IMX8MM_CLK_END				224
 
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
