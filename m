Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA13C1ABCB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 12:24:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlqtQFEGfz8Y5PDL6bewX8eGBAXkqOMUF8qGvX/tIEo=; b=jGVdPkURj93z+j
	zno6vOHRBlUIc/kbiXCv1ez/e9LKky9BNF039RNiZhAFvlqiRtj3HqexmKIC9lsCTMcB3RpVatDY0
	c1zTqGiAV72S8rvjyvA5oKUnXA3JD3DukofvDClZFVVYm/QGo8FhmSzQnDzZuXveDQD+fydMW/poo
	o09UEec8RkuEXVUGDWbMQWhEJGfsUKd8jOn9TgRyqq9zGoXawcRT4EceLtzGCRLXEa2S6y8Ot4WD0
	HPD+5ufL5HCupfojjelqx0M/IJt/eg4Jb+0qErVvljV3jKhbRwn/abx6Hgo8ZDqNhgsopDz5LmR2P
	TE0RPkzynVsuhy8DClAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPleq-0005PD-Fk; Sun, 12 May 2019 10:24:40 +0000
Received: from mail-db5eur03on0614.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::614]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPleY-000595-MS
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 10:24:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9BRaTuAAL3Cd2vDYy/fn0ff4G3HeT7NNtyVoeyLIUYQ=;
 b=O2dX+rnYE6SkEy45wsEjyeHZLVcnIHTlmObW/46hK69pN42aTtMFjhFOb6IBfGHiLg672AfEvPQr2qO6XaMSK/3/JO+5+Td2vCnwZam2VjlwRScvry1LO5f9gCf1k1iTfPf6rqx8JBcPRIpkEZDsuj4YtJ2T3uOBSXkiWzlPbjQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3675.eurprd04.prod.outlook.com (52.134.69.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Sun, 12 May 2019 10:24:19 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 10:24:19 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Aisheng Dong
 <aisheng.dong@nxp.com>, "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>,
 "pp@emlix.com" <pp@emlix.com>, "colin.didier@devialet.com"
 <colin.didier@devialet.com>, "robh@kernel.org" <robh@kernel.org>, Jacky Bai
 <ping.bai@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "hofrat@osadl.org" <hofrat@osadl.org>, "michael@amarulasolutions.com"
 <michael@amarulasolutions.com>, "stefan@agner.ch" <stefan@agner.ch>, Abel
 Vesa <abel.vesa@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND 2/2] clk: imx: Use imx_mmdc_mask_handshake() API for
 masking MMDC channel
Thread-Topic: [PATCH RESEND 2/2] clk: imx: Use imx_mmdc_mask_handshake() API
 for masking MMDC channel
Thread-Index: AQHVCKzb3qVKxvVMI0m1oK8xzxTA2w==
Date: Sun, 12 May 2019 10:24:19 +0000
Message-ID: <1557656348-13040-2-git-send-email-Anson.Huang@nxp.com>
References: <1557656348-13040-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557656348-13040-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0036.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::24) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9db1291-4f1e-425f-56c5-08d6d6c3fe1f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3675; 
x-ms-traffictypediagnostic: DB3PR0402MB3675:
x-microsoft-antispam-prvs: <DB3PR0402MB367592FE72BF36294F2CDE86F50E0@DB3PR0402MB3675.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39860400002)(396003)(346002)(366004)(199004)(189003)(3846002)(6116002)(256004)(7416002)(2201001)(26005)(2906002)(66476007)(66556008)(64756008)(66446008)(5660300002)(8936002)(102836004)(73956011)(66946007)(6512007)(76176011)(6506007)(71200400001)(386003)(99286004)(71190400001)(476003)(86362001)(11346002)(446003)(2616005)(486006)(186003)(52116002)(110136005)(25786009)(14454004)(4326008)(305945005)(478600001)(2501003)(6436002)(7736002)(6486002)(53936002)(36756003)(68736007)(316002)(50226002)(66066001)(81166006)(81156014)(8676002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3675;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: Q3kjccUN3wY5cauYADSNvw5l93juVK3/AuPl22a56b3UbvokeAjazD5Slds4eNWd//cUPn5Pdjw3MVcFuR13thHja8iP562wvZrYuEMoTU6wbbgh2NSkw15ALmOTueMEYKjAVYMD+zij8neMGi+4Pju78OSE2RYktH8wl4f0tGs7ox4IiFHxvRKSSXNV1OT5QIyO+a9gBMmEe7Ni62hj+zLLTyBm6cefBlmNuFBCQOQsts4I8Gz8o4x7mugl7wm7hjyX1ibQxvIt2Sedhq9ZsZl+8OfmHWRM0+IDSczT5oNHdZ6or7itRKb8OoT0a8fZvEizjA5pKem136WYdP4fQminbac5b3YEQXamC3Sbn2JWiBkKjXqUfsxGQfXKLgxtn+rOp0dXzFbolNNQ3KF8peONez81h+Mnrufuc8j3qVE=
Content-ID: <337026466A54D54090829875C4E4A19A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9db1291-4f1e-425f-56c5-08d6d6c3fe1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 10:24:19.4210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_032423_093842_A0F7AE96 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:614 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use imx_mmdc_mask_handshake() API instead of programming CCM
register directly in each platform to mask unused MMDC channel's
handshake.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
---
No change, just resend patch with correct encoding.
---
 drivers/clk/imx/clk-imx6q.c   | 13 +------------
 drivers/clk/imx/clk-imx6sl.c  |  5 +----
 drivers/clk/imx/clk-imx6sll.c |  3 +--
 drivers/clk/imx/clk-imx6sx.c  |  5 +----
 drivers/clk/imx/clk-imx6ul.c  |  5 +----
 5 files changed, 5 insertions(+), 26 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6q.c b/drivers/clk/imx/clk-imx6q.c
index 708e7c5..077276b 100644
--- a/drivers/clk/imx/clk-imx6q.c
+++ b/drivers/clk/imx/clk-imx6q.c
@@ -260,25 +260,14 @@ static bool pll6_bypassed(struct device_node *node)
 	return false;
 }
 
-#define CCM_CCDR		0x04
 #define CCM_CCSR		0x0c
 #define CCM_CS2CDR		0x2c
 
-#define CCDR_MMDC_CH1_MASK		BIT(16)
 #define CCSR_PLL3_SW_CLK_SEL		BIT(0)
 
 #define CS2CDR_LDB_DI0_CLK_SEL_SHIFT	9
 #define CS2CDR_LDB_DI1_CLK_SEL_SHIFT	12
 
-static void __init imx6q_mmdc_ch1_mask_handshake(void __iomem *ccm_base)
-{
-	unsigned int reg;
-
-	reg = readl_relaxed(ccm_base + CCM_CCDR);
-	reg |= CCDR_MMDC_CH1_MASK;
-	writel_relaxed(reg, ccm_base + CCM_CCDR);
-}
-
 /*
  * The only way to disable the MMDC_CH1 clock is to move it to pll3_sw_clk
  * via periph2_clk2_sel and then to disable pll3_sw_clk by selecting the
@@ -651,7 +640,7 @@ static void __init imx6q_clocks_init(struct device_node *ccm_node)
 
 	disable_anatop_clocks(anatop_base);
 
-	imx6q_mmdc_ch1_mask_handshake(base);
+	imx_mmdc_mask_handshake(base, 1);
 
 	if (clk_on_imx6qp()) {
 		clk[IMX6QDL_CLK_LDB_DI0_SEL]      = imx_clk_mux_flags("ldb_di0_sel", base + 0x2c, 9,  3, ldb_di_sels,      ARRAY_SIZE(ldb_di_sels), CLK_SET_RATE_PARENT);
diff --git a/drivers/clk/imx/clk-imx6sl.c b/drivers/clk/imx/clk-imx6sl.c
index e13d881..acb5983 100644
--- a/drivers/clk/imx/clk-imx6sl.c
+++ b/drivers/clk/imx/clk-imx6sl.c
@@ -17,8 +17,6 @@
 
 #include "clk.h"
 
-#define CCDR				0x4
-#define BM_CCM_CCDR_MMDC_CH0_MASK	(1 << 17)
 #define CCSR			0xc
 #define BM_CCSR_PLL1_SW_CLK_SEL	(1 << 2)
 #define CACRR			0x10
@@ -414,8 +412,7 @@ static void __init imx6sl_clocks_init(struct device_node *ccm_node)
 	clks[IMX6SL_CLK_USDHC4]       = imx_clk_gate2("usdhc4",       "usdhc4_podf",       base + 0x80, 8);
 
 	/* Ensure the MMDC CH0 handshake is bypassed */
-	writel_relaxed(readl_relaxed(base + CCDR) |
-		BM_CCM_CCDR_MMDC_CH0_MASK, base + CCDR);
+	imx_mmdc_mask_handshake(base, 0);
 
 	imx_check_clocks(clks, ARRAY_SIZE(clks));
 
diff --git a/drivers/clk/imx/clk-imx6sll.c b/drivers/clk/imx/clk-imx6sll.c
index 7eea448..3aa71c9 100644
--- a/drivers/clk/imx/clk-imx6sll.c
+++ b/drivers/clk/imx/clk-imx6sll.c
@@ -16,7 +16,6 @@
 #include "clk.h"
 
 #define CCM_ANALOG_PLL_BYPASS		(0x1 << 16)
-#define BM_CCM_CCDR_MMDC_CH0_MASK	(0x2 << 16)
 #define xPLL_CLR(offset)		(offset + 0x8)
 
 static const char *pll_bypass_src_sels[] = { "osc", "dummy", };
@@ -340,7 +339,7 @@ static void __init imx6sll_clocks_init(struct device_node *ccm_node)
 	clks[IMX6SLL_CLK_USDHC3]	= imx_clk_gate2("usdhc3", "usdhc3_podf",  base + 0x80,	6);
 
 	/* mask handshake of mmdc */
-	writel_relaxed(BM_CCM_CCDR_MMDC_CH0_MASK, base + 0x4);
+	imx_mmdc_mask_handshake(base, 0);
 
 	imx_check_clocks(clks, ARRAY_SIZE(clks));
 
diff --git a/drivers/clk/imx/clk-imx6sx.c b/drivers/clk/imx/clk-imx6sx.c
index 91558b0..24f7b4d 100644
--- a/drivers/clk/imx/clk-imx6sx.c
+++ b/drivers/clk/imx/clk-imx6sx.c
@@ -22,9 +22,6 @@
 
 #include "clk.h"
 
-#define CCDR    0x4
-#define BM_CCM_CCDR_MMDC_CH0_MASK       (0x2 << 16)
-
 static const char *step_sels[]		= { "osc", "pll2_pfd2_396m", };
 static const char *pll1_sw_sels[]	= { "pll1_sys", "step", };
 static const char *periph_pre_sels[]	= { "pll2_bus", "pll2_pfd2_396m", "pll2_pfd0_352m", "pll2_198m", };
@@ -488,7 +485,7 @@ static void __init imx6sx_clocks_init(struct device_node *ccm_node)
 	clks[IMX6SX_CLK_CKO2]         = imx_clk_gate("cko2",           "cko2_podf",         base + 0x60, 24);
 
 	/* mask handshake of mmdc */
-	writel_relaxed(BM_CCM_CCDR_MMDC_CH0_MASK, base + CCDR);
+	imx_mmdc_mask_handshake(base, 0);
 
 	imx_check_clocks(clks, ARRAY_SIZE(clks));
 
diff --git a/drivers/clk/imx/clk-imx6ul.c b/drivers/clk/imx/clk-imx6ul.c
index fd60d15..4bf3226 100644
--- a/drivers/clk/imx/clk-imx6ul.c
+++ b/drivers/clk/imx/clk-imx6ul.c
@@ -22,9 +22,6 @@
 
 #include "clk.h"
 
-#define BM_CCM_CCDR_MMDC_CH0_MASK	(0x2 << 16)
-#define CCDR	0x4
-
 static const char *pll_bypass_src_sels[] = { "osc", "dummy", };
 static const char *pll1_bypass_sels[] = { "pll1", "pll1_bypass_src", };
 static const char *pll2_bypass_sels[] = { "pll2", "pll2_bypass_src", };
@@ -464,7 +461,7 @@ static void __init imx6ul_clocks_init(struct device_node *ccm_node)
 	clks[IMX6UL_CLK_CKO2]		= imx_clk_gate("cko2",		"cko2_podf",	 base + 0x60,	24);
 
 	/* mask handshake of mmdc */
-	writel_relaxed(BM_CCM_CCDR_MMDC_CH0_MASK, base + CCDR);
+	imx_mmdc_mask_handshake(base, 0);
 
 	imx_check_clocks(clks, ARRAY_SIZE(clks));
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
