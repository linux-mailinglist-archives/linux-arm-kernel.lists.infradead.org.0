Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B653713DCA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 08:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FwIRDhHcmfxTmCFxP68ixEMCTTEGFdxzdMmqIv+1Nlw=; b=Ht+Av+/lcrQTyC
	GUynpeKMNbfFYnb0tQWow42CKRP0rFpdu/3lJzmG4muYuEqQXsXrtNt2RaA3TwG74E37EIkTmlWqr
	hTMSoqs3kQ6zdChnHZGu9rCTvx47PTe/QGeEIstFpZptzlBs18UUZrCij1JXlGsYRYSeXKXuO6Th7
	jRp4/zAIi/LwBN32csoUKZGqu1PBjXe9M0lXgbXFh/HzpCU+KU7PZn44MfXZxUdV2w+z0zxQnaVVX
	fOkuXY/kq/4KqzqzZBj+Pg9onvN6oNR2XQZnlXDTymSvTmIsht0nxSjfPhIteckZUGI3uIT3K6ezG
	GHWLTYtQRNbJrUHUmaQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNAV4-0005vP-0B; Sun, 05 May 2019 06:19:50 +0000
Received: from mail-eopbgr80048.outbound.protection.outlook.com ([40.107.8.48]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNAUH-0005Pu-7P
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 06:19:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FLTcXIF5q0jcu7mUu5dJevpTDo1M7PLHmmE7VlAybHM=;
 b=R+M2DzzmppPM9osM0jt9kKGjEEvhoVG1TIGRuh1wUWQJAn8gtkIKU7yzlWruKmzjsqw0K8AAh/LvELxZ4yc3jQAxiQaLcvG7na2TZtRs3VdoQNYy567wdW4IijSGPmhoMXa7Tz432Kh14t3WsR9LDq36ZWfQ/Bli6cAVI1mOj38=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 06:18:55 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e8ca:4f6b:e43:c170%3]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 06:18:55 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>, Aisheng Dong
 <aisheng.dong@nxp.com>, "pp@emlix.com" <pp@emlix.com>,
 "tiny.windzz@gmail.com" <tiny.windzz@gmail.com>, "colin.didier@devialet.com"
 <colin.didier@devialet.com>, "robh@kernel.org" <robh@kernel.org>, Jacky Bai
 <ping.bai@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 "hofrat@osadl.org" <hofrat@osadl.org>, "michael@amarulasolutions.com"
 <michael@amarulasolutions.com>, "stefan@agner.ch" <stefan@agner.ch>, Abel
 Vesa <abel.vesa@nxp.com>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] clk: imx: Use imx_mmdc_mask_handshake() API for masking
 MMDC channel
Thread-Topic: [PATCH 2/2] clk: imx: Use imx_mmdc_mask_handshake() API for
 masking MMDC channel
Thread-Index: AQHVAwpq3WdYtTz4rkK30M4PU6T31A==
Date: Sun, 5 May 2019 06:18:54 +0000
Message-ID: <1557036830-13567-2-git-send-email-Anson.Huang@nxp.com>
References: <1557036830-13567-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557036830-13567-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0P153CA0001.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:18::13) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22779d57-d265-4c0c-03b6-08d6d1218cb9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3947; 
x-ms-traffictypediagnostic: DB3PR0402MB3947:
x-microsoft-antispam-prvs: <DB3PR0402MB394790B69221433720005461F5370@DB3PR0402MB3947.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(396003)(366004)(39860400002)(199004)(189003)(486006)(36756003)(7736002)(186003)(7416002)(52116002)(110136005)(11346002)(2616005)(476003)(99286004)(256004)(446003)(50226002)(86362001)(81166006)(5660300002)(8676002)(81156014)(76176011)(2906002)(71200400001)(71190400001)(102836004)(26005)(305945005)(8936002)(6506007)(386003)(73956011)(66946007)(66476007)(66556008)(64756008)(66446008)(2201001)(6436002)(316002)(3846002)(53936002)(478600001)(6116002)(6512007)(25786009)(14454004)(68736007)(6486002)(4326008)(2501003)(66066001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3947;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1t8EwvapNDtudr7Lr4rdDgl70Oah8nal2NlVwoxOtyOnSr7XsV8w4IxiuW2dj60I7p0oi5oOUOl+queRA42NwpRlIfK2gQcwlpK8J1ZatsMSK1dMdHPfmWD5AqcI83aX1+vpvO2BsPS3AIzZws5QluIJTClylllN9Hb6cwTq8KdyvM8IM+MCh4gq8uMe8X9SFSeOrhQFqx/PAqX+gYXESac8bvjHVnK6uLRZpF8qSrx3NZDEU/Mf4o3JOsn4aptJRu0Dn7Gi1RFfgG4M289lRyFzn64RNWe6/oAP+0akaGsWaukdxMrsYbUeq+SKfWmGTw/RbzA5TV3v3mtIeK7AQk+WPtp7oHG5H0q0LiC5Pj9Bp2eutKPeI1lSFJid6AmJnMhNxkb7K9y1SJ5WFu9mSr4H046ZxVDwo4TLlO66FhA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22779d57-d265-4c0c-03b6-08d6d1218cb9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 06:18:54.9168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_231901_265332_0D293472 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use imx_mmdc_mask_handshake() API instead of programming CCM
register directly in each platform to mask unused MMDC channel's
handshake.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
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
