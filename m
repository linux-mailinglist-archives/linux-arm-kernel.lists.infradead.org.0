Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9019102611
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 15:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5Mqq2iBrgcRtDqAjVguGDaDQibZ46ZTHVw1El7K8dw=; b=kYocotQ0M9RNL0
	3rogApwzXgEPLCGS9SnPPDmUoE3lhQFCV7WGVX23B4Zl5cynx2tNTGmSC3h+Rcxr40CYc6WdOmAxx
	JVTq7hTY1WleYboXgMXOjm9Gro8mS1wnt5f2XQje0z8oOAX9A3vA4JnXp7vJ3NRGtkzFaqx9mUMwq
	wMGHRgMWv/xXf87pQ/Czv4l+N/iKloBCuEZ2cmv8msIUWviM14cl/yzF8k1F7C23SHgDHl+uOZlaj
	y9chkyowlbswSguX0btpX9dL5YTwKEI2Ca2YpQ87NWcdBfXVuvusY/Ze6w4sn3+iZTUPNPA/U1CZK
	TXjB4QxILiven8qLM6eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX4ED-0004TB-Uj; Tue, 19 Nov 2019 14:11:38 +0000
Received: from mail-eopbgr00084.outbound.protection.outlook.com ([40.107.0.84]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX4Bb-000184-S0
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 14:08:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gsIGOv4pB6qrNHEm4tpW/BXogeKroFYkqd8RFhsKjxPlvXCpXjEtVu7bZFEi755kwlALKE00e9pgKeFexxfmrajBb84o8ExNYm1lcphgLXZb4riNNFn2Lrw1j9EZ8COOC6cYCCDV3xl8yyG76kVmAY9wDbMFYilfVzN3vvUqXGSY52sYL0fBd+/vhVksHhL+FAaeP89slahv8/6JuIItW09z8gk3kqH+rZROBXqE0XHaKdYLUjHvrs5vJnLWG4C3z9h2y8JBZaOfP6zEdW0mUs7h2WW4WQtjSwmpeQrXihw4raKjPSAyb4VfjZ1/z+buT05IrvaXVgGTyWY8Gya6SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=66s2Aw7dxP/eyz96U0KNgNLcES/gPmfT1c44nvQ8NCg=;
 b=AGoo1RHdiluYlbgZEIBPUp5rlPl+2TCSWrU2u/N+z5sZc8SfGk0GEArsTWkTqt59wEazo30PHjtoAc5Gd+dh+XJ5CWhTJWzTfDWF93aGRZuoaWA5wO6/eJON4qSgWnr+ru1BKbuQ2Omb4KMDxv6unjJxmz7nTnZhPeTMJIu7p0ALej5yv0yqSHqrqa/bdmjD1p9wz0OGjG5dkbfoug3fxTXZ2YyTJZ8Ag02IouDafhBkMdshy59uwttYp0wEAcwMFQZ5rSXaBrctCmnRcyAi7ieIX2jg0B774tCP53xEJ6+t7LwJZHXICKzzrjs37rErVlQ6FBBHP2BaKumSs9/RkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=66s2Aw7dxP/eyz96U0KNgNLcES/gPmfT1c44nvQ8NCg=;
 b=fS7EkJ7uPii4Bs95m+FSHuREuq6vERrfyHdriN5dncRB3A9aFOucPUwtKuSPxp+XzIEz7lzxCSC0f0ktL0DsdxCY5bebOcfzPI/8+irTBxJcL0L3XvJRP6Hf5T0kBXCqOwtlHLFY/zFW7J25GMm7WZUT1YgyJtky2mpvUkMmXbc=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB5428.eurprd04.prod.outlook.com (20.178.113.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Tue, 19 Nov 2019 14:08:44 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2451.029; Tue, 19 Nov 2019
 14:08:44 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>, Jacky
 Bai <ping.bai@nxp.com>
Subject: [PATCH 6/9] clk: imx: Rename the imx_clk_pllv4 to imply it's clk_hw
 based
Thread-Topic: [PATCH 6/9] clk: imx: Rename the imx_clk_pllv4 to imply it's
 clk_hw based
Thread-Index: AQHVnuLah5niBuRWuUeefZLYUMdtgw==
Date: Tue, 19 Nov 2019 14:08:44 +0000
Message-ID: <1574172496-12987-7-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: fab66bf9-096c-4004-e3f0-08d76cf9fd09
x-ms-traffictypediagnostic: AM0PR04MB5428:|AM0PR04MB5428:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5428D4C1B547AD30568128FBF64C0@AM0PR04MB5428.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1247;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(189003)(199004)(110136005)(256004)(86362001)(316002)(66446008)(66556008)(66476007)(64756008)(66946007)(36756003)(446003)(7736002)(305945005)(186003)(3846002)(6116002)(26005)(5660300002)(478600001)(52116002)(76176011)(99286004)(2616005)(66066001)(54906003)(2906002)(11346002)(6506007)(476003)(44832011)(386003)(6636002)(486006)(6486002)(102836004)(25786009)(8936002)(71200400001)(81156014)(81166006)(71190400001)(50226002)(6512007)(4326008)(6436002)(8676002)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5428;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bRUJ+b5mHbzDjrk93mSO+UFbk3JNcNeq+07EE0u4v0ym5KD6nBY5kwKPuv5Oenv70U7cOb2cEXW087ekB3lH+Bo6k63hMG715gJQoqEdoJaQssSXC9aRkdKWLZ7lKHJyzoWysprsC/KelQxBERc+Zry1wqdE+ImNsCwQM/tvaNVQaiyLo70zRsrCzevG2zFx96v53VjLIWun5HMKG5NyFDApIgBO6e38uvY2LRz8kHDAfTD3tMb0roZWcRBOCTePxSecIrDA4ppjRsQABHXbnmtzwKP6WhMK7rPVC41DjIskzekmGFl4Z6+dg7+/lhvOvHJ6E3ghBHVAK49GXZSpnhvIuaudVd49egHjNN1R6DZ6KLU1EUk/VU/d0NeyUCBVqeabWKn4xYdz6b1PUnelj3gv8U9r/tDJ41BqFg0rQYXMAeiXK6t3V8fg/cQk2M+d
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fab66bf9-096c-4004-e3f0-08d76cf9fd09
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 14:08:44.6223 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N3F+w2UAvi1kZvb6od5jQ7qPbKwVhG+JtkQ8askCocQ1rSDRhdgmXU1fRz1/4HvDqpBQNNZGnTR3SKOFe5moGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5428
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_060855_988745_596ED5FE 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.84 listed in list.dnswl.org]
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

Renaming the imx_clk_pllv4 register function to imx_clk_hw_pllv4 to be
more obvious it is clk_hw based.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-imx7ulp.c | 4 ++--
 drivers/clk/imx/clk-pllv4.c   | 2 +-
 drivers/clk/imx/clk.h         | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index 64b79a8..afd2c2c 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -90,8 +90,8 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_SPLL_PRE_DIV]	= imx_clk_hw_divider_flags("spll_pre_div", "spll_pre_sel", base + 0x608,	8,	3,	CLK_SET_RATE_GATE);
 
 	/*						name	 parent_name	 base */
-	clks[IMX7ULP_CLK_APLL]		= imx_clk_pllv4("apll",  "apll_pre_div", base + 0x500);
-	clks[IMX7ULP_CLK_SPLL]		= imx_clk_pllv4("spll",  "spll_pre_div", base + 0x600);
+	clks[IMX7ULP_CLK_APLL]		= imx_clk_hw_pllv4("apll",  "apll_pre_div", base + 0x500);
+	clks[IMX7ULP_CLK_SPLL]		= imx_clk_hw_pllv4("spll",  "spll_pre_div", base + 0x600);
 
 	/* APLL PFDs */
 	clks[IMX7ULP_CLK_APLL_PFD0]	= imx_clk_pfdv2("apll_pfd0", "apll", base + 0x50c, 0);
diff --git a/drivers/clk/imx/clk-pllv4.c b/drivers/clk/imx/clk-pllv4.c
index 8155b12..f51a800 100644
--- a/drivers/clk/imx/clk-pllv4.c
+++ b/drivers/clk/imx/clk-pllv4.c
@@ -206,7 +206,7 @@ static const struct clk_ops clk_pllv4_ops = {
 	.is_enabled	= clk_pllv4_is_enabled,
 };
 
-struct clk_hw *imx_clk_pllv4(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
 			  void __iomem *base)
 {
 	struct clk_pllv4 *pll;
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 15c6f54..0ac6614 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -175,7 +175,7 @@ struct clk_hw *imx_clk_hw_pllv3(enum imx_pllv3_type type, const char *name,
 		.kdiv	=	(_k),			\
 	}
 
-struct clk_hw *imx_clk_pllv4(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_pllv4(const char *name, const char *parent_name,
 			     void __iomem *base);
 
 struct clk_hw *clk_hw_register_gate2(struct device *dev, const char *name,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
