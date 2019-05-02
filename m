Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB8DE114C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yMfOhOBJeqfH3IuZTJ5b+gVO5QO4L30GLRMpw0Zxkow=; b=AwgIJw0U+rpgTs
	wGOOCbRj31W9IC0QM3ICTvz22ElIORDVVHnx0VHqf3QmTgF6+0FXQ9XnmLoksPL4o89H2QhjKV/+D
	vqOHYTi+tK0ZpR266ePtAQAQIfHe1mUFIa4th4xG8tsDaOkR2GYWtxRQc7w9l9pE4Qs3As3tGp+LR
	TBf3Zy5WIDN5H23moIwP36fIr3HLVuaNYkG8Y5dZNxLPuBLBkvoEd1gc3HwUcU+goBJ6BLZFotF7h
	ZfiBZCnyfWWOI60sHwAKQiSmk4OhOG9MpLFS6FcpOhi+g4UD1mYbSSBCpCjLv8VwdM1fiXXQTwX71
	1I5N9Dd7sqAGqeM9IsqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6ku-0006UW-Bl; Thu, 02 May 2019 08:07:48 +0000
Received: from mail-eopbgr140089.outbound.protection.outlook.com
 ([40.107.14.89] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6jz-0005KE-JC
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:06:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fU9hgqhH3jkqXN9AOga6Ufjv3CVZVmbn2cVdURBdquw=;
 b=rXk1avO+VZXLoeb2vbcGejio+q+ZQ8QEnl9W0I8h+CclEw873GgEfWWo0F0AmDVkZRYogt93OVMMPuhNrJj/n3OSmJ7MHS4m0BfeBEhr7MQVNzVvrY/ZhK/zir7o196GugTqeV6bTzhbiWji0fCc/XgJi9xrbFn/wWyF14RHNa8=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4563.eurprd04.prod.outlook.com (52.135.144.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.15; Thu, 2 May 2019 08:06:43 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:43 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 04/18] clk: imx: clk-busy: Switch to clk_hw based API
Thread-Topic: [PATCH v2 04/18] clk: imx: clk-busy: Switch to clk_hw based API
Thread-Index: AQHVAL36vz1DOlgX/0W3T3j2TCSTMQ==
Date: Thu, 2 May 2019 08:06:43 +0000
Message-ID: <1556784376-7191-5-git-send-email-abel.vesa@nxp.com>
References: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
In-Reply-To: <1556784376-7191-1-git-send-email-abel.vesa@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0501CA0041.eurprd05.prod.outlook.com
 (2603:10a6:800:60::27) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.7.4
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5548ec4a-3a8a-4770-89d1-08d6ced51d0d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4563; 
x-ms-traffictypediagnostic: AM0PR04MB4563:
x-microsoft-antispam-prvs: <AM0PR04MB4563433852185E036B0736E2F6340@AM0PR04MB4563.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:962;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(136003)(39860400002)(376002)(346002)(366004)(199004)(189003)(53936002)(66476007)(66556008)(64756008)(66946007)(73956011)(66446008)(66066001)(6116002)(36756003)(3846002)(305945005)(86362001)(6486002)(81156014)(6512007)(81166006)(25786009)(8676002)(4326008)(71200400001)(71190400001)(99286004)(8936002)(14454004)(76176011)(50226002)(11346002)(446003)(2616005)(68736007)(478600001)(386003)(2906002)(6506007)(52116002)(316002)(44832011)(54906003)(110136005)(26005)(7736002)(5660300002)(256004)(102836004)(186003)(14444005)(486006)(476003)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4563;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SDrdYh/PzO2xSg4tQwEIjfjmLlC4i/HCBEufwiMWhoDZVG9y0jeuM7A9QWURM5uCDv5rPPpPSM733NKzHo3Y/kR+/a1a0QCv88rDxK6rK5IKv0w0gZhNrsFAyI4gVlppTlUiguNxbowP5y+B1RqrXsSDezBhzVUycpZDlipSh5ncMkcF+K13lni3aWnNCvTO4CXOvdOlvAtnFynKeLredBbPKwokxHziMpHBpBW7BRey7tV5jASngRgeeZZcuBSEubODhlC3eFQ3H/c0AmDhw8vaI7cRSInOhXbs2axG3X83jEtlWaNatD/8/fKqHjrEGL0nZBuCTKrD6HQJE6Dwdy3tUVKHq6XsnGE35+4m13lmcH0epkw/mviVSbnbc0x1eiL0MH4+uEaNTRtW5Ta6GQ+4DkKe5wyPAAZTzyOKtWQ=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5548ec4a-3a8a-4770-89d1-08d6ced51d0d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:43.6032 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4563
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010651_895716_36C9BE6A 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.89 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch all the clk_busy clock registering functions to clk_hw based API.
Keep around some clk based wrappers to be used by older imx platforms.
This allows us to move closer to a clear split of consumer and provider
clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk-busy.c | 30 ++++++++++++++++++++----------
 drivers/clk/imx/clk.h      | 11 +++++++++--
 2 files changed, 29 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/imx/clk-busy.c b/drivers/clk/imx/clk-busy.c
index e695622..51f75500 100644
--- a/drivers/clk/imx/clk-busy.c
+++ b/drivers/clk/imx/clk-busy.c
@@ -78,13 +78,14 @@ static const struct clk_ops clk_busy_divider_ops = {
 	.set_rate = clk_busy_divider_set_rate,
 };
 
-struct clk *imx_clk_busy_divider(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_busy_divider(const char *name, const char *parent_name,
 				 void __iomem *reg, u8 shift, u8 width,
 				 void __iomem *busy_reg, u8 busy_shift)
 {
 	struct clk_busy_divider *busy;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	busy = kzalloc(sizeof(*busy), GFP_KERNEL);
 	if (!busy)
@@ -107,11 +108,15 @@ struct clk *imx_clk_busy_divider(const char *name, const char *parent_name,
 
 	busy->div.hw.init = &init;
 
-	clk = clk_register(NULL, &busy->div.hw);
-	if (IS_ERR(clk))
+	hw = &busy->div.hw;
+
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
 		kfree(busy);
+		return ERR_PTR(ret);
+	}
 
-	return clk;
+	return hw;
 }
 
 struct clk_busy_mux {
@@ -152,13 +157,14 @@ static const struct clk_ops clk_busy_mux_ops = {
 	.set_parent = clk_busy_mux_set_parent,
 };
 
-struct clk *imx_clk_busy_mux(const char *name, void __iomem *reg, u8 shift,
+struct clk_hw *imx_clk_hw_busy_mux(const char *name, void __iomem *reg, u8 shift,
 			     u8 width, void __iomem *busy_reg, u8 busy_shift,
 			     const char * const *parent_names, int num_parents)
 {
 	struct clk_busy_mux *busy;
-	struct clk *clk;
+	struct clk_hw *hw;
 	struct clk_init_data init;
+	int ret;
 
 	busy = kzalloc(sizeof(*busy), GFP_KERNEL);
 	if (!busy)
@@ -181,9 +187,13 @@ struct clk *imx_clk_busy_mux(const char *name, void __iomem *reg, u8 shift,
 
 	busy->mux.hw.init = &init;
 
-	clk = clk_register(NULL, &busy->mux.hw);
-	if (IS_ERR(clk))
+	hw = &busy->mux.hw;
+
+	ret = clk_hw_register(NULL, hw);
+	if (ret) {
 		kfree(busy);
+		return ERR_PTR(ret);
+	}
 
-	return clk;
+	return hw;
 }
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index f76fa22..ead668e1 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -10,6 +10,7 @@ extern spinlock_t imx_ccm_lock;
 void imx_check_clocks(struct clk *clks[], unsigned int count);
 void imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
 void imx_register_uart_clocks(struct clk ** const clks[]);
+void imx_register_uart_clocks_hws(struct clk_hw ** const hws[]);
 
 extern void imx_cscmr1_fixup(u32 *val);
 
@@ -48,6 +49,12 @@ struct imx_pll14xx_clk {
 	int flags;
 };
 
+#define imx_clk_busy_divider(name, parent_name, reg, shift, width, busy_reg, busy_shift) \
+	imx_clk_hw_busy_divider(name, parent_name, reg, shift, width, busy_reg, busy_shift)->clk
+
+#define imx_clk_busy_mux(name, reg, shift, width, busy_reg, busy_shift, parent_names, num_parents) \
+	imx_clk_hw_busy_mux(name, reg, shift, width, busy_reg, busy_shift, parent_names, num_parents)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -110,11 +117,11 @@ struct clk *imx_clk_pfd(const char *name, const char *parent_name,
 struct clk_hw *imx_clk_pfdv2(const char *name, const char *parent_name,
 			     void __iomem *reg, u8 idx);
 
-struct clk *imx_clk_busy_divider(const char *name, const char *parent_name,
+struct clk_hw *imx_clk_hw_busy_divider(const char *name, const char *parent_name,
 				 void __iomem *reg, u8 shift, u8 width,
 				 void __iomem *busy_reg, u8 busy_shift);
 
-struct clk *imx_clk_busy_mux(const char *name, void __iomem *reg, u8 shift,
+struct clk_hw *imx_clk_hw_busy_mux(const char *name, void __iomem *reg, u8 shift,
 			     u8 width, void __iomem *busy_reg, u8 busy_shift,
 			     const char * const *parent_names, int num_parents);
 
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
