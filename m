Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7A9106C6B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 11:51:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MFeMV/eFOLrmn1+j0C0YIIYUjJR/xE1x05oxJWqj1vg=; b=FhL2+SFoKbVSAV
	Xkg6uUCDpnFKEJSWL8cLvT8PbdrI4STNMI+/XrroKL9xDN7RMQ2Hqw4FigvU87QJgpCr5xdsQG8t/
	kdcK++pnUrxokW32GOJWR2PPdvanekOUSZzNGBRGQIU5f+eao7/kLAprBQOASWAaeC6AWmC5TrJPG
	eD9oGE3ZdiW1gY7cBb1EAGC2WriDK0un6H1LsbR42UhnlLt6dz5sv6TTy1r77efboh4K43Tj8/pQt
	VyT78mI/uBz0/dVTeQHtw6r5GLxl4ZiZEM1bGi6w6TXhObkFHVx9mcmW/OHMbe8bp/AeklDMMONrD
	QFhe8bUc0X1CRNm+iqFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY6Xc-0005bX-Ah; Fri, 22 Nov 2019 10:51:56 +0000
Received: from mail-eopbgr60066.outbound.protection.outlook.com ([40.107.6.66]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY6UL-0001gd-R8
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 10:48:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FYpU/1zeYYaLbkAjSAg6Xpu7uEj+io/JKROx5vpfPHnL0ZLMpAn08nUnUdsOgS3hULSmBeg8vHgdrFCVsfLMdQJcFUV62jeL2I5rPI/izRFj5NcFt//kvA2YOPPKVy3+p2Zj+COtHXe8kECCAVXfqO6M9arXUVnSPdMHPnlCszkcvq0502pGIA3xt5C0hJjyCiksJ8Pv4elLO6ng8zC/NSBmSjRzPZ+bPooe5n0Y4gR8gI7esTiuoQo9vkSUUUyAT6C8ivdZXFbCPZ6lVzmEG8bU8NYPEVyPPtCxtVaSl3kGQZh6028O+zSyEADhj63kmPX89rqBonUB0ODOKKybvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GXi72J5YNtjeIM9Q9CYHEdM7/7lXpwQrwZq1xG5b5rQ=;
 b=Wv784Xvu/Hh2qefi65V2GEyVU+pThduWIN57EprBzPmklYOOGKCOhvnoncgzYAquN9QwvqgHCttgS6dfkikY+UsBv14ZMFqvjaBPIxRB7P2/rJ/9nCPnYcIrcr/NAkvwBt7a0yByf5JkbEVnKPtmKotaMbVNzTpUkEdPGrwd6Lil8ftRjRpPmMIKcqSne2KOCAqILCL1k5Jao1BQhltabsaWVkFpjbL90s33FHzKhgikpefTIyO725kjeTft6h7WrTRIRYxVHwIEt5IJ+mQQjAGdoWAps2uenrNcm422Gs2sJjfjY/8gxDrJTo7rlzbk7LIzpO2MnBk+0lH+uPeh1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GXi72J5YNtjeIM9Q9CYHEdM7/7lXpwQrwZq1xG5b5rQ=;
 b=mXXF+LWdeRO+Xomt3VqdxJNCJnmB5+y/4tjqQl3+1m0iyyWomMlPMazjDbiZ0XOsKmVDSU3YBy4+jUHr9UCuEck+bRdODlbu++YZKNzXTPIXU+dXYIIO1B+T6nDAkcsOdM51LQ4xs0mo9uFGe9AQqEyAR8giUb3ngcQ0TBDhWys=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6961.eurprd04.prod.outlook.com (52.132.212.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Fri, 22 Nov 2019 10:48:20 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2474.019; Fri, 22 Nov 2019
 10:48:20 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v2 10/11] clk: imx: Rename the imx_clk_divider_gate to imply
 it's clk_hw based
Thread-Topic: [PATCH v2 10/11] clk: imx: Rename the imx_clk_divider_gate to
 imply it's clk_hw based
Thread-Index: AQHVoSJa60rJnfieYEWB/AveoN7W2Q==
Date: Fri, 22 Nov 2019 10:48:19 +0000
Message-ID: <1574419679-3813-11-git-send-email-abel.vesa@nxp.com>
References: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1574419679-3813-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0020.eurprd04.prod.outlook.com
 (2603:10a6:208:15::33) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 740287b7-edf2-487b-acff-08d76f397cc5
x-ms-traffictypediagnostic: AM0PR04MB6961:|AM0PR04MB6961:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB69619A72D140235C2E064136F6490@AM0PR04MB6961.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(376002)(39860400002)(396003)(346002)(189003)(199004)(186003)(44832011)(446003)(11346002)(2616005)(52116002)(76176011)(66446008)(64756008)(66556008)(66476007)(7736002)(478600001)(6636002)(36756003)(14444005)(5660300002)(6506007)(26005)(2906002)(86362001)(14454004)(102836004)(386003)(305945005)(25786009)(66946007)(256004)(110136005)(8936002)(50226002)(6116002)(316002)(99286004)(54906003)(81166006)(81156014)(8676002)(6436002)(6512007)(4326008)(71190400001)(3846002)(71200400001)(66066001)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6961;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WyJCDvqKpE3vYso1lRiIEbq+nqDsymUMv712tuv7rhhV7XEULnKYrWdTv+UqEUsGcib+Ppo3LL1cMcOGokTxEcjrIflwoFV2Nn3R4kre6z+0xzB4MkMCkVV/fYGBk8rouPiUdUSTWX0hl7VFIRnCFSDiR0mPuXEl3LmiR+B8zAwh75gcD4bxl/F0MMM74NfjoRFcvolXc3x319OBOjb71Du4bZgTgaWGVqeerAVl+MDF4t9w5vWMcHs+bgKbZN4WIN7ljRX4y6FiiuXCamnXH/Tljw7IxVpdvWSBoYxVXkYWdxuA3czEYT/yz2+dcFy/nvg4yP7vzYHx6CJtZnlr57bMepdQ7h1omlKPufB6R7M8TSMBgV8sczlMdLo+d4WFLrzTaX/gtMAREX3sO7nX3rWG3IYhiEiTrFK+tg2VlpIfwl3j5kl1Vpk983Yg2dYd
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 740287b7-edf2-487b-acff-08d76f397cc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 10:48:19.5491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 83ccdoIRkDHzG6zDtMz7l27XI35cui4VpjTD7WuIv90xtbZEZwgLJQsATXMk5dzLKwkx3q/L9KFHrltG9+bSCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6961
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_024833_909550_844457B6 
X-CRM114-Status: GOOD (  13.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.66 listed in list.dnswl.org]
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Renaming the imx_clk_divider_gate register function to imx_clk_hw_divider_gate
to be more obvious it is clk_hw based.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
Reviewed-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-divider-gate.c | 2 +-
 drivers/clk/imx/clk-imx7ulp.c      | 8 ++++----
 drivers/clk/imx/clk.h              | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/imx/clk-divider-gate.c b/drivers/clk/imx/clk-divider-gate.c
index 2a8352a..905aee5 100644
--- a/drivers/clk/imx/clk-divider-gate.c
+++ b/drivers/clk/imx/clk-divider-gate.c
@@ -173,7 +173,7 @@ static const struct clk_ops clk_divider_gate_ops = {
  * default as our HW is. Besides that it supports only CLK_DIVIDER_READ_ONLY
  * flag which can be specified by user flexibly.
  */
-struct clk_hw *imx_clk_divider_gate(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_divider_gate(const char *name, const char *parent_name,
 				    unsigned long flags, void __iomem *reg,
 				    u8 shift, u8 width, u8 clk_divider_flags,
 				    const struct clk_div_table *table,
diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 314f9c2..8657e5f 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -111,7 +111,7 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_APLL_SEL]	= imx_clk_hw_mux_flags("apll_sel", base + 0x508, 1, 1, apll_sels, ARRAY_SIZE(apll_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
 	clks[IMX7ULP_CLK_SPLL_SEL]	= imx_clk_hw_mux_flags("spll_sel", base + 0x608, 1, 1, spll_sels, ARRAY_SIZE(spll_sels), CLK_SET_RATE_PARENT | CLK_SET_PARENT_GATE);
 
-	clks[IMX7ULP_CLK_SPLL_BUS_CLK]	= imx_clk_divider_gate("spll_bus_clk", "spll_sel", CLK_SET_RATE_GATE, base + 0x604, 8, 3, 0, ulp_div_table, &imx_ccm_lock);
+	clks[IMX7ULP_CLK_SPLL_BUS_CLK]	= imx_clk_hw_divider_gate("spll_bus_clk", "spll_sel", CLK_SET_RATE_GATE, base + 0x604, 8, 3, 0, ulp_div_table, &imx_ccm_lock);
 
 	/* scs/ddr/nic select different clock source requires that clock to be enabled first */
 	clks[IMX7ULP_CLK_SYS_SEL]	= imx_clk_hw_mux2("scs_sel", base + 0x14, 24, 4, scs_sels, ARRAY_SIZE(scs_sels));
@@ -122,7 +122,7 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_CORE_DIV]	= imx_clk_hw_divider_flags("divcore",	"scs_sel",  base + 0x14, 16, 4, CLK_SET_RATE_PARENT);
 	clks[IMX7ULP_CLK_HSRUN_CORE_DIV] = imx_clk_hw_divider_flags("hsrun_divcore", "hsrun_scs_sel", base + 0x1c, 16, 4, CLK_SET_RATE_PARENT);
 
-	clks[IMX7ULP_CLK_DDR_DIV]	= imx_clk_divider_gate("ddr_clk", "ddr_sel", CLK_SET_RATE_PARENT | CLK_IS_CRITICAL, base + 0x30, 0, 3,
+	clks[IMX7ULP_CLK_DDR_DIV]	= imx_clk_hw_divider_gate("ddr_clk", "ddr_sel", CLK_SET_RATE_PARENT | CLK_IS_CRITICAL, base + 0x30, 0, 3,
 							       0, ulp_div_table, &imx_ccm_lock);
 
 	clks[IMX7ULP_CLK_NIC0_DIV]	= imx_clk_hw_divider_flags("nic0_clk",		"nic_sel",  base + 0x40, 24, 4, CLK_SET_RATE_PARENT | CLK_IS_CRITICAL);
@@ -131,9 +131,9 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 
 	clks[IMX7ULP_CLK_GPU_DIV]	= imx_clk_hw_divider("gpu_clk", "nic0_clk", base + 0x40, 20, 4);
 
-	clks[IMX7ULP_CLK_SOSC_BUS_CLK]	= imx_clk_divider_gate("sosc_bus_clk", "sosc", 0, base + 0x104, 8, 3,
+	clks[IMX7ULP_CLK_SOSC_BUS_CLK]	= imx_clk_hw_divider_gate("sosc_bus_clk", "sosc", 0, base + 0x104, 8, 3,
 							       CLK_DIVIDER_READ_ONLY, ulp_div_table, &imx_ccm_lock);
-	clks[IMX7ULP_CLK_FIRC_BUS_CLK]	= imx_clk_divider_gate("firc_bus_clk", "firc", 0, base + 0x304, 8, 3,
+	clks[IMX7ULP_CLK_FIRC_BUS_CLK]	= imx_clk_hw_divider_gate("firc_bus_clk", "firc", 0, base + 0x304, 8, 3,
 							       CLK_DIVIDER_READ_ONLY, ulp_div_table, &imx_ccm_lock);
 
 	imx_check_clk_hws(clks, clk_data->num);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index c9f626e..a1cb2d5 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -468,7 +468,7 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 #define imx8m_clk_composite_critical(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, CLK_IS_CRITICAL)
 
-struct clk_hw *imx_clk_divider_gate(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_divider_gate(const char *name, const char *parent_name,
 		unsigned long flags, void __iomem *reg, u8 shift, u8 width,
 		u8 clk_divider_flags, const struct clk_div_table *table,
 		spinlock_t *lock);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
