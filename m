Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7BE4114DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rd9Q/XEs1cy9P1BlaQpVQw8sx8vwPIqODphaDzzdaYI=; b=a82WGBsPn61C3S
	5RWcPZHGqTdDEhcexMgijEdLQFFAiuY6S6/Hgs6vSKVUojqIzpGpaozQWVW8nuHQ4WQrufWPN3RV1
	dr5NSIAlb38JFS74qcMgNHwNT2rn+P9weRukhaXEg1BZTk1aE0k7qVThysP2kFZ8+9fZeaaK/Qp26
	Bn4IkLu3as1BbAsgolFHLbcBYRG2C+X+AjNA+5PqwUw1VT5+Gl7nkf1mJgrTl7DYGFRywKOPd9/o1
	+ePoaDEP+HtxJ1kJuPxfM/8Vu6XiZjNZQax0C+Kt72SSEdvAgwQAHoflNRIFKuWHVStW/inXSDzYV
	MDQdwwOLrgSl/GhOBHng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6lh-0007XF-Sc; Thu, 02 May 2019 08:08:37 +0000
Received: from mail-eopbgr30046.outbound.protection.outlook.com ([40.107.3.46]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6k2-0005Pk-3D
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:07:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iB6JI/U9IP2koxwtxgmZTwUooYJEvFlL+3cEF+Rthk0=;
 b=qcTHDtmnTuFVmOKYRsoiNI0vqvlP/fCh+dnmHH6tdz6WIcNWPrJRxMAkVArzqaeLr1tFCu1Il1ZFdQ9bYOpcFfArzcRIs0bi2XB/zUBJRVaMStEHHzV12B0M7lIxOA00vSEzQrPhK5d6z5887915o4kQZbbFmi6MHPhWArsykZA=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB6161.eurprd04.prod.outlook.com (20.179.36.79) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1835.13; Thu, 2 May 2019 08:06:50 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::c19b:5964:bfcb:96a8%7]) with mapi id 15.20.1856.008; Thu, 2 May 2019
 08:06:50 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <fabio.estevam@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [PATCH v2 12/18] clk: imx: Switch wrappers to clk_hw based API
Thread-Topic: [PATCH v2 12/18] clk: imx: Switch wrappers to clk_hw based API
Thread-Index: AQHVAL3/7fvJ+66/RkaUdYEAlP6O0g==
Date: Thu, 2 May 2019 08:06:50 +0000
Message-ID: <1556784376-7191-13-git-send-email-abel.vesa@nxp.com>
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
x-ms-office365-filtering-correlation-id: 082ab51d-9593-476a-e92a-08d6ced52171
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6161; 
x-ms-traffictypediagnostic: AM0PR04MB6161:
x-microsoft-antispam-prvs: <AM0PR04MB61613E4F78FE0CA2F07EEABAF6340@AM0PR04MB6161.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 0025434D2D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(396003)(366004)(376002)(136003)(39860400002)(199004)(189003)(64756008)(66476007)(66446008)(66556008)(66946007)(73956011)(110136005)(54906003)(5660300002)(6512007)(68736007)(53936002)(316002)(386003)(6506007)(26005)(2906002)(186003)(478600001)(102836004)(6436002)(76176011)(52116002)(99286004)(66066001)(6116002)(3846002)(14454004)(25786009)(4326008)(36756003)(256004)(14444005)(86362001)(81156014)(486006)(8676002)(44832011)(81166006)(8936002)(7736002)(446003)(11346002)(2616005)(50226002)(476003)(305945005)(6486002)(71190400001)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6161;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: SH9OeVWGxqsqMrIWc1hjryFML8jOayAfuebuyqQ0sKFLjJm6sjQpWMuhncPFTUFG0KDrsc2jI+seXVm4TWISybV3fXknzeFuz6zeY1VlVtvWjuhBM85W7fXCauRy6azfpYzEDYY/PSy4rUlcNvVvjf2OjOR3eTUwg/9MJ0kwLg0MxRXChR1TX8FzPT34m4q0V3wmtNLrTJ3MzvD/oqltz7JhLtH32LDmWeW6Y5gEo2VDMdokBYKh79jeoTbnCmxd/esJ9Fr/+RObhVAvO1GYrFplnxN6RcQoHuwZ/LoYD4XLlHN8ihSQ2o4/G0qVDAQ19b15gzqkwQoQCJqEulQXLn6kOoLunZqaT4Br9ivN/Qg4E8eRBRnplAaWYNvwOSl6iI30logdLXHLKqfhlIOV/IibRqV12OCpX6aOJgcfM/Y=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 082ab51d-9593-476a-e92a-08d6ced52171
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2019 08:06:50.6551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6161
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_010654_856798_798B50CC 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.46 listed in list.dnswl.org]
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

Switch all the wrappers to clk_hw based API and rename them to indicate
that. Add macros for clk based legacy users. This allows us to move
closer to a clear split between consumer and provider clk APIs.

Signed-off-by: Abel Vesa <abel.vesa@nxp.com>
---
 drivers/clk/imx/clk.h | 91 ++++++++++++++++++++++++++++++++++++---------------
 1 file changed, 65 insertions(+), 26 deletions(-)

diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index e1a47396..76cd201 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -78,6 +78,45 @@ struct imx_pll14xx_clk {
 #define imx_clk_fixup_mux(name, reg, shift, width, parents, num_parents, fixup) \
 	imx_clk_hw_fixup_mux(name, reg, shift, width, parents, num_parents, fixup)->clk
 
+#define imx_clk_mux_ldb(name, reg, shift, width, parents, num_parents) \
+	imx_clk_hw_mux_ldb(name, reg, shift, width, parents, num_parents)->clk
+
+#define imx_clk_fixed_factor(name, parent, mult, div) \
+	imx_clk_hw_fixed_factor(name, parent, mult, div)->clk
+
+#define imx_clk_divider2(name, parent, reg, shift, width) \
+	imx_clk_hw_divider2(name, parent, reg, shift, width)->clk
+
+#define imx_clk_gate_dis(name, parent, reg, shift) \
+	imx_clk_hw_gate_dis(name, parent, reg, shift)->clk
+
+#define imx_clk_gate_dis_flags(name, parent, reg, shift, flags) \
+	imx_clk_hw_gate_dis_flags(name, parent, reg, shift, flags)->clk
+
+#define imx_clk_gate_flags(name, parent, reg, shift, flags) \
+	imx_clk_hw_gate_flags(name, parent, reg, shift, flags)->clk
+
+#define imx_clk_gate2(name, parent, reg, shift) \
+	imx_clk_hw_gate2(name, parent, reg, shift)->clk
+
+#define imx_clk_gate2_flags(name, parent, reg, shift, flags) \
+	imx_clk_hw_gate2_flags(name, parent, reg, shift, flags)->clk
+
+#define imx_clk_gate2_shared(name, parent, reg, shift, share_count) \
+	imx_clk_hw_gate2_shared(name, parent, reg, shift, share_count)->clk
+
+#define imx_clk_gate2_shared2(name, parent, reg, shift, share_count) \
+	imx_clk_hw_gate2_shared2(name, parent, reg, shift, share_count)->clk
+
+#define imx_clk_gate3(name, parent, reg, shift) \
+	imx_clk_hw_gate3(name, parent, reg, shift)->clk
+
+#define imx_clk_gate4(name, parent, reg, shift) \
+	imx_clk_hw_gate4(name, parent, reg, shift)->clk
+
+#define imx_clk_mux(name, reg, shift, width, parents, num_parents) \
+	imx_clk_hw_mux(name, reg, shift, width, parents, num_parents)->clk
+
 struct clk *imx_clk_pll14xx(const char *name, const char *parent_name,
 		 void __iomem *base, const struct imx_pll14xx_clk *pll_clk);
 
@@ -172,19 +211,19 @@ static inline struct clk_hw *imx_clk_hw_fixed(const char *name, int rate)
 	return clk_hw_register_fixed_rate(NULL, name, NULL, 0, rate);
 }
 
-static inline struct clk *imx_clk_mux_ldb(const char *name, void __iomem *reg,
+static inline struct clk_hw *imx_clk_hw_mux_ldb(const char *name, void __iomem *reg,
 			u8 shift, u8 width, const char * const *parents,
 			int num_parents)
 {
-	return clk_register_mux(NULL, name, parents, num_parents,
+	return clk_hw_register_mux(NULL, name, parents, num_parents,
 			CLK_SET_RATE_NO_REPARENT | CLK_SET_RATE_PARENT, reg,
 			shift, width, CLK_MUX_READ_ONLY, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_fixed_factor(const char *name,
+static inline struct clk_hw *imx_clk_hw_fixed_factor(const char *name,
 		const char *parent, unsigned int mult, unsigned int div)
 {
-	return clk_register_fixed_factor(NULL, name, parent,
+	return clk_hw_register_fixed_factor(NULL, name, parent,
 			CLK_SET_RATE_PARENT, mult, div);
 }
 
@@ -221,10 +260,10 @@ static inline struct clk_hw *imx_clk_hw_divider_flags(const char *name,
 				       reg, shift, width, 0, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_divider2(const char *name, const char *parent,
+static inline struct clk_hw *imx_clk_hw_divider2(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, u8 width)
 {
-	return clk_register_divider(NULL, name, parent,
+	return clk_hw_register_divider(NULL, name, parent,
 			CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,
 			reg, shift, width, 0, &imx_ccm_lock);
 }
@@ -245,10 +284,10 @@ static inline struct clk *imx_clk_gate(const char *name, const char *parent,
 			shift, 0, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_gate_flags(const char *name, const char *parent,
+static inline struct clk_hw *imx_clk_hw_gate_flags(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, unsigned long flags)
 {
-	return clk_register_gate(NULL, name, parent, flags | CLK_SET_RATE_PARENT, reg,
+	return clk_hw_register_gate(NULL, name, parent, flags | CLK_SET_RATE_PARENT, reg,
 			shift, 0, &imx_ccm_lock);
 }
 
@@ -259,47 +298,47 @@ static inline struct clk_hw *imx_clk_hw_gate(const char *name, const char *paren
 				    shift, 0, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_gate_dis(const char *name, const char *parent,
+static inline struct clk_hw *imx_clk_hw_gate_dis(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_register_gate(NULL, name, parent, CLK_SET_RATE_PARENT, reg,
+	return clk_hw_register_gate(NULL, name, parent, CLK_SET_RATE_PARENT, reg,
 			shift, CLK_GATE_SET_TO_DISABLE, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_gate_dis_flags(const char *name, const char *parent,
+static inline struct clk_hw *imx_clk_hw_gate_dis_flags(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, unsigned long flags)
 {
-	return clk_register_gate(NULL, name, parent, flags | CLK_SET_RATE_PARENT, reg,
+	return clk_hw_register_gate(NULL, name, parent, flags | CLK_SET_RATE_PARENT, reg,
 			shift, CLK_GATE_SET_TO_DISABLE, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_gate2(const char *name, const char *parent,
+static inline struct clk_hw *imx_clk_hw_gate2(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_register_gate2(NULL, name, parent, CLK_SET_RATE_PARENT, reg,
+	return clk_hw_register_gate2(NULL, name, parent, CLK_SET_RATE_PARENT, reg,
 			shift, 0x3, 0, &imx_ccm_lock, NULL);
 }
 
-static inline struct clk *imx_clk_gate2_flags(const char *name, const char *parent,
+static inline struct clk_hw *imx_clk_hw_gate2_flags(const char *name, const char *parent,
 		void __iomem *reg, u8 shift, unsigned long flags)
 {
-	return clk_register_gate2(NULL, name, parent, flags | CLK_SET_RATE_PARENT, reg,
+	return clk_hw_register_gate2(NULL, name, parent, flags | CLK_SET_RATE_PARENT, reg,
 			shift, 0x3, 0, &imx_ccm_lock, NULL);
 }
 
-static inline struct clk *imx_clk_gate2_shared(const char *name,
+static inline struct clk_hw *imx_clk_hw_gate2_shared(const char *name,
 		const char *parent, void __iomem *reg, u8 shift,
 		unsigned int *share_count)
 {
-	return clk_register_gate2(NULL, name, parent, CLK_SET_RATE_PARENT, reg,
+	return clk_hw_register_gate2(NULL, name, parent, CLK_SET_RATE_PARENT, reg,
 			shift, 0x3, 0, &imx_ccm_lock, share_count);
 }
 
-static inline struct clk *imx_clk_gate2_shared2(const char *name,
+static inline struct clk_hw *imx_clk_hw_gate2_shared2(const char *name,
 		const char *parent, void __iomem *reg, u8 shift,
 		unsigned int *share_count)
 {
-	return clk_register_gate2(NULL, name, parent, CLK_SET_RATE_PARENT |
+	return clk_hw_register_gate2(NULL, name, parent, CLK_SET_RATE_PARENT |
 				  CLK_OPS_PARENT_ENABLE, reg, shift, 0x3, 0,
 				  &imx_ccm_lock, share_count);
 }
@@ -311,10 +350,10 @@ static inline struct clk *imx_clk_gate2_cgr(const char *name,
 			shift, cgr_val, 0, &imx_ccm_lock, NULL);
 }
 
-static inline struct clk *imx_clk_gate3(const char *name, const char *parent,
+static inline struct clk_hw *imx_clk_hw_gate3(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_register_gate(NULL, name, parent,
+	return clk_hw_register_gate(NULL, name, parent,
 			CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,
 			reg, shift, 0, &imx_ccm_lock);
 }
@@ -328,10 +367,10 @@ static inline struct clk *imx_clk_gate3_flags(const char *name,
 			reg, shift, 0, &imx_ccm_lock);
 }
 
-static inline struct clk *imx_clk_gate4(const char *name, const char *parent,
+static inline struct clk_hw *imx_clk_hw_gate4(const char *name, const char *parent,
 		void __iomem *reg, u8 shift)
 {
-	return clk_register_gate2(NULL, name, parent,
+	return clk_hw_register_gate2(NULL, name, parent,
 			CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE,
 			reg, shift, 0x3, 0, &imx_ccm_lock, NULL);
 }
@@ -345,11 +384,11 @@ static inline struct clk *imx_clk_gate4_flags(const char *name,
 			reg, shift, 0x3, 0, &imx_ccm_lock, NULL);
 }
 
-static inline struct clk *imx_clk_mux(const char *name, void __iomem *reg,
+static inline struct clk_hw *imx_clk_hw_mux(const char *name, void __iomem *reg,
 			u8 shift, u8 width, const char * const *parents,
 			int num_parents)
 {
-	return clk_register_mux(NULL, name, parents, num_parents,
+	return clk_hw_register_mux(NULL, name, parents, num_parents,
 			CLK_SET_RATE_NO_REPARENT, reg, shift,
 			width, 0, &imx_ccm_lock);
 }
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
