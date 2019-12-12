Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 549B611C3B6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:59:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDouSbKCR/vUyJKLLqmH/EfAWx6jrCpggm/PwsNkTU0=; b=DwfwmGhLB5a1co
	h+Zg57Yeruuta8fQ3rkb/CeUw8ev1a2eVAYYChSjeGQ8cBTqccGvHxvkIm5T3J9k80Y1kam0YYY1H
	G13WYPt0Hh7PzozNIjt0xI1PMsHnHY+VXKIkq4352e3SnAFr/NPn73y45+tSPzmK5NVRDvZspkfe7
	gq2e87tzqTs4oiE3H5dQ7LV7rzAgIVR5V8JtZN3IQAqVrSKtroIjq626XP/A+6RkkEW4XwsU/RN24
	nnqhfAjB7ePC/aYkRxM0hMQAGS/YXpEB63p5mfDGhmL/wceDliKSlnwZWrodj6MJbHDI6sCRhNmqZ
	sUo5X+qGfhXcNAuoarng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifEhk-0001g2-Jn; Thu, 12 Dec 2019 02:59:52 +0000
Received: from mail-eopbgr70044.outbound.protection.outlook.com ([40.107.7.44]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifEgj-00018z-Ou
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:58:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hDXbUtLxjQzHAGofWFh3VERvuvnNnoXtLZgvry992TNNNsQYx7p0kVp4pS8JNzEG1QdKO0bhelY0dhhHpEO4ZfALrGVU/nC0oTwOEmtYj11ogjTkes4GXraCV8eF6f2TtCXRjYsWE3ktBWCpuiC9enuGzPqjZzA4TEErmjZDz90aFKkqDN0dJ/YbgEvsm6OLT8HzRqx/3+JAS+NRA/3F2dSShBUy2Vba4Vy/LAIC+crCtXPndxJmkHDMQKsNXtSwnW2Di+CtdpkA3d4aRQdt10L9O0Y63Y+4ZIOg7OdG8h9glftBRme5xFOcAPvoBxLSA60OsJWNRhxKUkMb8ulTUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vpl+Dx5soGUTxlTaBpLYsaowwaezpsTRUzF190iSDm8=;
 b=OnD9IaVtnY8rZW6Qc6FihUI4szYGHwKo0NRJ4ea6BG/UmshtmrVgVOUmjltXmX4Lh1ZHgjoqPSklwixQ/fTjHVy7Q0RBxl9F2xMYwcdMnHZQi+oqrM8DGW1y30sneiGUwE7XWLCEYBvJV9QLKqV6hDgaqoS+SumBlX6hJWy0A5dEit7dKAd8H39w8dzqQ1aTnHqg3otjK7vTA4K74/gnSoBRBhNI2M2m5R0RdQ7tTDVqDI9d7OttOCc4yfG/4vptiwe/Yq+6NxZyji2QAP17Dk1SZD5nFEwlnHYLqhVxcHH0C0aSauAOkQFEw/8qOPMaFqciW8NT7ACrAyI8qfd9fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vpl+Dx5soGUTxlTaBpLYsaowwaezpsTRUzF190iSDm8=;
 b=NW/I11SnYaWhkkHUQE1wQ8varOrNxZ/Ok4Yk///5dU91cgQlWWzrSxOaZRRVEq/Fs+7UOLYz54C/Nm+Jkqld9sU1YWsa/lFkwWDMvYnV/7Vt0yOhlZlqly4Z26KPkylleR5ynGaTN7cqa7I1r8Yut7/wqovB4v+fNfac7H5AxLc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6196.eurprd04.prod.outlook.com (20.179.34.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Thu, 12 Dec 2019 02:58:48 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2538.017; Thu, 12 Dec 2019
 02:58:48 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V2 2/9] clk: imx: clk-composite-8m: Switch to clk_hw based API
Thread-Topic: [PATCH V2 2/9] clk: imx: clk-composite-8m: Switch to clk_hw
 based API
Thread-Index: AQHVsJgTdY4qYDarhkq5MjuDwQda7w==
Date: Thu, 12 Dec 2019 02:58:48 +0000
Message-ID: <1576119353-26679-3-git-send-email-peng.fan@nxp.com>
References: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1576119353-26679-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0022.apcprd04.prod.outlook.com
 (2603:1096:202:2::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 21ca3453-2c2f-45fa-142e-08d77eaf35e8
x-ms-traffictypediagnostic: AM0PR04MB6196:|AM0PR04MB6196:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6196E4D44C349C79D79D74D788550@AM0PR04MB6196.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(199004)(189003)(81156014)(8936002)(316002)(81166006)(8676002)(36756003)(52116002)(478600001)(6512007)(6486002)(71200400001)(110136005)(54906003)(86362001)(186003)(66476007)(4326008)(5660300002)(2906002)(66446008)(64756008)(44832011)(26005)(6636002)(66946007)(6506007)(2616005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6196;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YxlRVIjaK4vsGTwqwEaSEZQ802eMVL9ucPmnGRgK+Cq+OVmP3eteXhnczH7D/qn+OCygXqr3pFaq9OeYgRfIVPC5S6s5ER+SqfO87Uj9LedUCWQdi1eDvZ6+9xLE2yI0kN2oD4k2VghCHYSrlw+ilKchIaVsa54t4XoYgf9HMKJ8l/Kc15SWA6m2jxbQtY0U9VsNQ4sqPFWV/P1j56VbG1dI+pKP3Dk2PWJFZ+fSFHmZyRykmVtUI9HsMjyy9HToelStmBQFEN3Zthh2HJhsN0rLl3qBw9Izq/EdvzIN/ysZo2auhZ/x2F17kQnRtmYI7eoBRWUlFYR/PH4xwB0N9zbSIBDptZNjk+0iOeW4S0lpif7iI0QrCBzBQ2/dhN/sC4Zuy0isLaiLEQXLYRTbvXJjdrYxIf8z7ccM86hQES4u5iJj2gsfJzAuRVURbY02
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21ca3453-2c2f-45fa-142e-08d77eaf35e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:58:48.6921 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4g+oRr9sf19X/MjdLioxf6oC7oBKuSF/uubUV1+MXa2fs2qFaTZKwV1DV4KeduQcXurldvxT1fJLBGSsb9nAmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6196
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_185849_831944_118408B6 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Switch the imx8m_clk_hw_composite_flags function to clk_hw based API,
rename accordingly and add a macro for clk based legacy. This allows
us to move closer to a clear split between consumer and provider clk
APIs.

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c |  4 ++--
 drivers/clk/imx/clk.h              | 29 ++++++++++++++++++++++-------
 2 files changed, 24 insertions(+), 9 deletions(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index d3486ee79ab5..20f7c91c03d2 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -123,7 +123,7 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
 	.set_rate = imx8m_clk_composite_divider_set_rate,
 };
 
-struct clk *imx8m_clk_composite_flags(const char *name,
+struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					const char * const *parent_names,
 					int num_parents, void __iomem *reg,
 					unsigned long flags)
@@ -171,7 +171,7 @@ struct clk *imx8m_clk_composite_flags(const char *name,
 	if (IS_ERR(hw))
 		goto fail;
 
-	return hw->clk;
+	return hw;
 
 fail:
 	kfree(gate);
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index caee661664c1..46cbac4d89a5 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -460,19 +460,34 @@ struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *div, struct clk *mux, struct clk *pll,
 		struct clk *step);
 
-struct clk *imx8m_clk_composite_flags(const char *name,
-					const char * const *parent_names,
-					int num_parents, void __iomem *reg,
-					unsigned long flags);
-
-#define __imx8m_clk_composite(name, parent_names, reg, flags) \
-	imx8m_clk_composite_flags(name, parent_names, \
+struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
+					    const char * const *parent_names,
+					    int num_parents,
+					    void __iomem *reg,
+					    unsigned long flags);
+
+#define imx8m_clk_composite_flags(name, parent_names, num_parents, reg, \
+				  flags) \
+	to_clk(imx8m_clk_hw_composite_flags(name, parent_names, \
+				num_parents, reg, flags))
+
+#define __imx8m_clk_hw_composite(name, parent_names, reg, flags) \
+	imx8m_clk_hw_composite_flags(name, parent_names, \
 		ARRAY_SIZE(parent_names), reg, \
 		flags | CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
 
+#define __imx8m_clk_composite(name, parent_names, reg, flags) \
+	to_clk(__imx8m_clk_hw_composite(name, parent_names, reg, flags))
+
+#define imx8m_clk_hw_composite(name, parent_names, reg) \
+	__imx8m_clk_hw_composite(name, parent_names, reg, 0)
+
 #define imx8m_clk_composite(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, 0)
 
+#define imx8m_clk_hw_composite_critical(name, parent_names, reg) \
+	__imx8m_clk_hw_composite(name, parent_names, reg, CLK_IS_CRITICAL)
+
 #define imx8m_clk_composite_critical(name, parent_names, reg) \
 	__imx8m_clk_composite(name, parent_names, reg, CLK_IS_CRITICAL)
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
