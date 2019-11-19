Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81AF4102606
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:10:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krhcDiR6RiIxludmXlDGzPkC45ToWwAb7vmyejsw/yc=; b=H4u0PZpAV1ougS
	R8PctNGy4Xt+kgzPBYjWpbKwDhZZ2LKLpjr42uiuY7nvK1As2YuhyVtL8Brun+sJPct/k1zoHQZCG
	PutR0lmGI0tqZ31uHCXZEIB2obOlcIy9AsRnL5muvSUsWa91PpS5S3msvK9r3Rp8cltYLxd4FQ83R
	qM77+RCxD7/jjudDHY2epdn81GiU/n/zan3ALz25+Xsp+xFBrNSKS1BcBFdccD+JcXLCpXviQ7ze0
	77zA3SWnp/3SoTP9ya+wcruTadQbH7qlFD+H6Dxxs3Oq3jjQ3cAtLM0c4jJt+w0rZm3btzA1nFeMq
	NJBnW7KEVH3XS6/AKpRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4Cy-00023K-AJ; Tue, 19 Nov 2019 14:10:20 +0000
Received: from mail-eopbgr10061.outbound.protection.outlook.com ([40.107.1.61]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4BY-00016E-4h
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:08:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YeZEOE4YVqRACaoha5UeoE6xX8ZOoiPhB/C9IhVi3xsJHISbcbtHiyxTuFtqVJS3KH4q8mXuffzpgm9/snWWr71mwH6GDCNseBOfB/PCv8xnbq2Lix529ZPoaeFry//1HgxUJ5rDFxCUGH2POHuF04T7rRXha38fQlT7kKsQBcJtMVkEg5HTbw1KGGw6y6H1BMAv/DdFvjMvHO95+bMMJ52C+cWxQ18ZERlGEvqidRNFxsDgxoAQIOxF6ILBK6hNMU2Q9iv/CtvAb6OelOUrF6fTfHaHHIYyD5jcM1tpiITZxIxOIZJ7N7zYpQVts+i+eDCIvH0aRFzb7Qnp/vFtSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKo4iETy/t5rcqsD1LTgU3eCYJoZ3zKdixPiu8oLCA8=;
 b=jcz6Zl8p+un3+y1hyhfF8euqVbFlMOidcBE5sEY1WuEtnZDA4RDc+Y4C4kqMfpHlZWKsM5W2TiauYuivbS1qKqS1aJcv/rRhAbKi/vvGOKehYOXiEfpRaCHvIbgx057zbfGwKL+Gydpj3RHnyGhZjOAR3nctsh+xTEnQ0g/o/Fhz+vTCNNrG55uaqd1giP1NGoDWx37g/EfEgQOhRc/3+zdA3uwHEM6NC0B/yNVpYMoi0DWmZMxp1OdiTU8CbQc1Srw8d+2NI6l3wm7uHeO2JOdv+ZtOY2IDuSvDM6RmsuOI4XlMijALrfhplgjY1v+Vvwd4YWQ3Y080VKm80p3wPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xKo4iETy/t5rcqsD1LTgU3eCYJoZ3zKdixPiu8oLCA8=;
 b=naxpto7/fPydbZfiiUKU8+SjMEFuZzr9foiM0ycisu5na6TNWnZ3Ebk6ARXeNK22IG2KabUNyup7eCp27FrK6+80JiVpy4jZSmDUukgjCBs2BS/HegQkQN+NQuvIB6kG2ogiddxQf1OEYfbw+xt2mltmE+ut2hpzlcRbQfH+WR4=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB7044.eurprd04.prod.outlook.com (10.186.128.20) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Tue, 19 Nov 2019 14:08:46 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 14:08:46 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Jacky
 Bai <ping.bai@nxp.com>
Subject: [PATCH 8/9] clk: imx: Rename the imx_clk_divider_gate to imply it's
 clk_hw based
Thread-Topic: [PATCH 8/9] clk: imx: Rename the imx_clk_divider_gate to imply
 it's clk_hw based
Thread-Index: AQHVnuLbBfYfxYumjke+VVHiHCYc0g==
Date: Tue, 19 Nov 2019 14:08:46 +0000
Message-ID: <1574172496-12987-9-git-send-email-abel.vesa@nxp.com>
References: <1574172496-12987-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1574172496-12987-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR04CA0026.eurprd04.prod.outlook.com
 (2603:10a6:208:122::39) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 45feb489-ff2b-47d6-67c3-08d76cf9fe23
x-ms-traffictypediagnostic: AM0PR04MB7044:|AM0PR04MB7044:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB7044E0F4D23F36D34CDCF4EDF64C0@AM0PR04MB7044.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(366004)(396003)(346002)(39860400002)(199004)(189003)(86362001)(66066001)(50226002)(386003)(486006)(102836004)(6506007)(26005)(66946007)(2906002)(6116002)(3846002)(6512007)(6486002)(4326008)(5660300002)(6436002)(7736002)(25786009)(14454004)(76176011)(71200400001)(305945005)(8936002)(6636002)(478600001)(44832011)(476003)(71190400001)(2616005)(446003)(11346002)(36756003)(256004)(14444005)(316002)(66476007)(81156014)(81166006)(186003)(54906003)(110136005)(99286004)(8676002)(66446008)(52116002)(64756008)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7044;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fZa3geh0fojzrEa3l37jIWsmiOT3WZFXUl3s89i4xQVssoeYJ0UdzXkYsXCFgEiGWP2Z7DQRq/7oqQZxtt7ooksDqWoON/BgDscIm9BoX9LTxEAgm+AcFk3Kxc+F7Qympb356RoEcRhPRSHBB+IdZf3DrNSkXEhHRcH+ie5u97EbeoEvRWxNkAWkpkXVfvYjxkwamn/3JRh3QfJeUd2oSnOUkBeTfU7hQRDZCgzBGcjAoYaXGcJnXo2AjDYFpKxYUcZX+nz6279GF79AB18w/6hHLCmW1sN02MrgLTIV2D9dIJI8V/hrQDplqOqTVOrTfK6tHkg7/DKJ2/+SikQeP4xJ2wAeN3DDUL5yCgttH1xTwNaGF7H9nX+B4tGaY5gbIl9JmCETDb3CG84BQ1nR8s4PvOdHBUbnqb1WaoY1n6+4JlZ43RFPfd+PtfSUGlCo
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45feb489-ff2b-47d6-67c3-08d76cf9fe23
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 14:08:46.5002 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JzOo3lYsAjuguyFUPB5nWmL7FWLp0SoRDH0GiX1a0a64110VPWwxU9lZBru/ZRxPq1Ytp+Z2tm3peL+cJAixOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_060852_197262_335619F7 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index afc87e4..5cf2b38 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -461,7 +461,7 @@ struct clk *imx8m_clk_composite_flags(const char *name,
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
