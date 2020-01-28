Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B04B614AF1A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 06:29:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sN4ZyFRPssEFEAwgYPeH5RN6hmN+pwfsUoGIlW9wVh4=; b=YC5c2jpdOYHXgq
	OCSvfuhuO2GKo53/M36UMbnDLlmYPVEv1GNbkErjPWne/S9lGLUObanLKxipnZsoRLleRfGrthB67
	OR/L64iUgDvuJGPht6Q9kHIu0Gis/FRymxKCoCy2e81sING+gS75E2z1uTdO8MmxsZeVGCXDXISOE
	mw5d24bAy4FE3Dqe1km6NC287JAhLnNwbxt/ZrZEQfL7ODb/b4WvsBLEkhmUXQRNB9lYGC8TMD7d4
	FbvK19H0C/odTlAnZSLktV4OG2zSZbWbKYOVEcTbqgJO3NddW+VsMXWLGPdfX7DImLHTuMTHEoEHw
	rUD+NdQs8xpucH2jGCYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwJRQ-0002H5-5F; Tue, 28 Jan 2020 05:29:36 +0000
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJQZ-0001nt-Qq
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Jan 2020 05:28:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GjK12UOq3qwvCpDSwcgnWEeHjV0o759YfgnB1Qv2HrxHsjCfM0b7f0Yf2Cp3FFiq2P1as2h21laUmWiANRSlhB9Ccn4Gli88QzSqkw4/fBYoKGZdYAK7bPppo+9fAU1f56sMJSW2VW4Kmhc644ptB4B4AwenA1+mUr+CW9X3RzsHX1qQbJAtwbS10mAUCShDC2no/i+OhSvwtIz1EExwd3oCHIMUTvbKI3e4ctMMuM+E0u24YqbnPhi8FDUAj0BP0pcCUbcvqze4nvebsA29kd1tvXEz2WK3SLuKD0yFn4lx2e0p1r7tm+JhMqeO86tBMdbuJQPolzBxL/4TnADEFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7QomV2iyuDdDfBBb+S8qw0VS/XK5vknZpvEXh1RbFdk=;
 b=kr5YneypvK0RuJh4zdYgBOa6nY09bbsPqI1/3fS/XvkhgFpvNtMKpNcnAnQtKslYtH7YhFe5JIxd1cm2YMpXW3q+dP1NMAEnuF/KYok+mn8c9Ad58vML7UrZi39p1Svshk1jSxUEayaibEAlaKJ1HVvcubZf6Y/lfZGuiSv2aw7GIyfuImwYejUDjED++oXjoqUaZ2pmiwQYIrDGp/vzmWlHJkFnhlfiOy2Y4/6GuIuEuxeu9dJq73alW62unOw/oC8Il8+aCrb5Ji8fFSkFhANGb4YxhjYD3lbNuwMRSyrrtfkLJfSYYA6HQqP4mgj+wOaJqf3bp9NChPTDDaUarg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7QomV2iyuDdDfBBb+S8qw0VS/XK5vknZpvEXh1RbFdk=;
 b=VtCd2wMemMAJjCon/SF8+8veWgiqq8XVC3wOp96mOepRcUsBkJX/IKS4zepHl5M4IkO9y3i+4ctdHbZF3yZg86asE2TfgQcccVOAHbAwLrb0bg21X4L46DWP09Gl0v8izCdeLiX08Dypaw9nfAVZIjk9EZTnYgCSK3TkYoBilqc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5890.eurprd04.prod.outlook.com (20.178.202.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.22; Tue, 28 Jan 2020 05:28:41 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.026; Tue, 28 Jan 2020
 05:28:41 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0113.apcprd03.prod.outlook.com (2603:1096:203:b0::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2665.22 via Frontend Transport; Tue, 28 Jan 2020 05:28:37 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V4 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Topic: [PATCH V4 2/4] clk: imx: imx8mq: use imx8m_clk_hw_composite_core
Thread-Index: AQHV1ZvNSuPHrnVkw0ajxH2uX1Z86Q==
Date: Tue, 28 Jan 2020 05:28:41 +0000
Message-ID: <1580189015-5744-3-git-send-email-peng.fan@nxp.com>
References: <1580189015-5744-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580189015-5744-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:203:b0::29) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2dbaf1f0-d39f-4b0d-c087-08d7a3b2ef78
x-ms-traffictypediagnostic: AM0PR04MB5890:|AM0PR04MB5890:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5890046B19CA96EAB2FD36AF880A0@AM0PR04MB5890.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 029651C7A1
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(366004)(376002)(136003)(396003)(189003)(199004)(36756003)(69590400006)(110136005)(54906003)(4326008)(71200400001)(52116002)(44832011)(66556008)(64756008)(478600001)(66476007)(66946007)(66446008)(2616005)(5660300002)(956004)(316002)(86362001)(6486002)(186003)(8676002)(16526019)(6512007)(81156014)(81166006)(6506007)(6636002)(2906002)(26005)(8936002)(6666004)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5890;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iqPfC4ptr+voFBIKtlbehC19mm6orQ9n7P0jqI+lDcGeUAZPRWbV8pirUeD4fpr9FdP78x73NAYl5feigbS+Qx5YrJH8oVEmEtSN2z7H3NhLfLiKVqPWsa79aM7sixEo2LIRPkIIkiobXb6oNmThpUcIeFYUAdUYSjQFuIyLO8jN0DHaqvdvWIq9NoJCel1a2leL3rhth08FUGcUIq/uNG2jFM76vK5aJC5VPnJoO5EQt5Bf6Y5L458agWzDqRO6AMZ6h/abJ9mxpdMfgi1352OKKeCr39XQ7hztPql3rQBHv0nnoqAHXlAYphBeM4pn8++YI0yGNDIlH3iAXDXbjjkabaxaMzMXD6rLafM2mxnHRAQU1ujIKjQ77CssVavVFXrU8IkX0Qj05D298bnXp5wtUF1FQkfJuYdydYVQAImQRJdJQ3PBXH5Vw+bUufkGA791OO09o2OVPwxLugcm9LYu35pW/Wgj3V+QJywJrbyl1QxGHfm/87gDdV3wkDJ/BpcbFQlEJBzUL1oydsANyNEufZMQYU0VhIk5HtvWyyHdiKnWk34mJVjmSC+hMMzX
x-ms-exchange-antispam-messagedata: bBNq8eCF0XuJBRlYfHlM66Ubi3Sh/gGhLHY0DIq84awREVnq/6tBMbj28SZwNi2VZ7IPoWloZUK1+GlPcvRTwMnrkANf9qwoYGW86NX786fKKDQ3VPJrzDWCL5NHLqVY6CNlO0PtiXNTQD4aXt5Qtw==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dbaf1f0-d39f-4b0d-c087-08d7a3b2ef78
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2020 05:28:41.4961 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oz20OC00wc1tNQySHbAA7x4ma60SPzVqPOmnEtCoQYY0ShFLXlxnJrLpdB9YsHlLghVOWYz/BTvowog3rJ+7MA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5890
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_212843_886901_02443A43 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.41 listed in list.dnswl.org]
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
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Use imx8m_clk_hw_composite_core to simplify code.

Add new definitions, and X_SRC/CG/DIV will be alias to the new
definitions for backwards compatibility

Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c             | 34 ++++++++++++++++++--------------
 include/dt-bindings/clock/imx8mq-clock.h |  7 ++++++-
 2 files changed, 25 insertions(+), 16 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 4c0edca1a6d0..ac9452cd9a82 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -403,22 +403,26 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 
 	/* CORE */
 	hws[IMX8MQ_CLK_A53_SRC] = imx_clk_hw_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mq_a53_sels, ARRAY_SIZE(imx8mq_a53_sels));
-	hws[IMX8MQ_CLK_M4_SRC] = imx_clk_hw_mux2("arm_m4_src", base + 0x8080, 24, 3, imx8mq_arm_m4_sels, ARRAY_SIZE(imx8mq_arm_m4_sels));
-	hws[IMX8MQ_CLK_VPU_SRC] = imx_clk_hw_mux2("vpu_src", base + 0x8100, 24, 3, imx8mq_vpu_sels, ARRAY_SIZE(imx8mq_vpu_sels));
-	hws[IMX8MQ_CLK_GPU_CORE_SRC] = imx_clk_hw_mux2("gpu_core_src", base + 0x8180, 24, 3,  imx8mq_gpu_core_sels, ARRAY_SIZE(imx8mq_gpu_core_sels));
-	hws[IMX8MQ_CLK_GPU_SHADER_SRC] = imx_clk_hw_mux2("gpu_shader_src", base + 0x8200, 24, 3, imx8mq_gpu_shader_sels,  ARRAY_SIZE(imx8mq_gpu_shader_sels));
-
 	hws[IMX8MQ_CLK_A53_CG] = imx_clk_hw_gate3_flags("arm_a53_cg", "arm_a53_src", base + 0x8000, 28, CLK_IS_CRITICAL);
-	hws[IMX8MQ_CLK_M4_CG] = imx_clk_hw_gate3("arm_m4_cg", "arm_m4_src", base + 0x8080, 28);
-	hws[IMX8MQ_CLK_VPU_CG] = imx_clk_hw_gate3("vpu_cg", "vpu_src", base + 0x8100, 28);
-	hws[IMX8MQ_CLK_GPU_CORE_CG] = imx_clk_hw_gate3("gpu_core_cg", "gpu_core_src", base + 0x8180, 28);
-	hws[IMX8MQ_CLK_GPU_SHADER_CG] = imx_clk_hw_gate3("gpu_shader_cg", "gpu_shader_src", base + 0x8200, 28);
-
 	hws[IMX8MQ_CLK_A53_DIV] = imx_clk_hw_divider2("arm_a53_div", "arm_a53_cg", base + 0x8000, 0, 3);
-	hws[IMX8MQ_CLK_M4_DIV] = imx_clk_hw_divider2("arm_m4_div", "arm_m4_cg", base + 0x8080, 0, 3);
-	hws[IMX8MQ_CLK_VPU_DIV] = imx_clk_hw_divider2("vpu_div", "vpu_cg", base + 0x8100, 0, 3);
-	hws[IMX8MQ_CLK_GPU_CORE_DIV] = imx_clk_hw_divider2("gpu_core_div", "gpu_core_cg", base + 0x8180, 0, 3);
-	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = imx_clk_hw_divider2("gpu_shader_div", "gpu_shader_cg", base + 0x8200, 0, 3);
+
+	hws[IMX8MQ_CLK_M4_CORE] = imx8m_clk_hw_composite_core("arm_m4_core", imx8mq_arm_m4_sels, base + 0x8080);
+	hws[IMX8MQ_CLK_VPU_CORE] = imx8m_clk_hw_composite_core("vpu_core", imx8mq_vpu_sels, base + 0x8100);
+	hws[IMX8MQ_CLK_GPU_CORE] = imx8m_clk_hw_composite_core("gpu_core", imx8mq_gpu_core_sels, base + 0x8180);
+	hws[IMX8MQ_CLK_GPU_SHADER] = imx8m_clk_hw_composite("gpu_shader", imx8mq_gpu_shader_sels, base + 0x8200);
+	/* For backwards compatibility */
+	hws[IMX8MQ_CLK_M4_SRC] = hws[IMX8MQ_CLK_M4_CORE];
+	hws[IMX8MQ_CLK_M4_CG] = hws[IMX8MQ_CLK_M4_CORE];
+	hws[IMX8MQ_CLK_M4_DIV] = hws[IMX8MQ_CLK_M4_CORE];
+	hws[IMX8MQ_CLK_VPU_SRC] = hws[IMX8MQ_CLK_VPU_CORE];
+	hws[IMX8MQ_CLK_VPU_CG] = hws[IMX8MQ_CLK_VPU_CORE];
+	hws[IMX8MQ_CLK_VPU_DIV] = hws[IMX8MQ_CLK_VPU_CORE];
+	hws[IMX8MQ_CLK_GPU_CORE_SRC] = hws[IMX8MQ_CLK_GPU_CORE];
+	hws[IMX8MQ_CLK_GPU_CORE_CG] = hws[IMX8MQ_CLK_GPU_CORE];
+	hws[IMX8MQ_CLK_GPU_CORE_DIV] = hws[IMX8MQ_CLK_GPU_CORE];
+	hws[IMX8MQ_CLK_GPU_SHADER_SRC] = hws[IMX8MQ_CLK_GPU_SHADER];
+	hws[IMX8MQ_CLK_GPU_SHADER_CG] = hws[IMX8MQ_CLK_GPU_SHADER];
+	hws[IMX8MQ_CLK_GPU_SHADER_DIV] = hws[IMX8MQ_CLK_GPU_SHADER];
 
 	/* BUS */
 	hws[IMX8MQ_CLK_MAIN_AXI] = imx8m_clk_hw_composite_critical("main_axi", imx8mq_main_axi_sels, base + 0x8800);
@@ -567,7 +571,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MQ_CLK_WDOG2_ROOT] = imx_clk_hw_gate4("wdog2_root_clk", "wdog", base + 0x4540, 0);
 	hws[IMX8MQ_CLK_WDOG3_ROOT] = imx_clk_hw_gate4("wdog3_root_clk", "wdog", base + 0x4550, 0);
 	hws[IMX8MQ_CLK_VPU_G1_ROOT] = imx_clk_hw_gate2_flags("vpu_g1_root_clk", "vpu_g1", base + 0x4560, 0, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
-	hws[IMX8MQ_CLK_GPU_ROOT] = imx_clk_hw_gate4("gpu_root_clk", "gpu_core_div", base + 0x4570, 0);
+	hws[IMX8MQ_CLK_GPU_ROOT] = imx_clk_hw_gate4("gpu_root_clk", "gpu_core", base + 0x4570, 0);
 	hws[IMX8MQ_CLK_VPU_G2_ROOT] = imx_clk_hw_gate2_flags("vpu_g2_root_clk", "vpu_g2", base + 0x45a0, 0, CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
 	hws[IMX8MQ_CLK_DISP_ROOT] = imx_clk_hw_gate2_shared2("disp_root_clk", "disp_dc8000", base + 0x45d0, 0, &share_count_dcss);
 	hws[IMX8MQ_CLK_DISP_AXI_ROOT]  = imx_clk_hw_gate2_shared2("disp_axi_root_clk", "disp_axi", base + 0x45d0, 0, &share_count_dcss);
diff --git a/include/dt-bindings/clock/imx8mq-clock.h b/include/dt-bindings/clock/imx8mq-clock.h
index 3bab9b21c8d7..2b88723310bd 100644
--- a/include/dt-bindings/clock/imx8mq-clock.h
+++ b/include/dt-bindings/clock/imx8mq-clock.h
@@ -424,6 +424,11 @@
 #define IMX8MQ_SYS2_PLL_500M_CG			283
 #define IMX8MQ_SYS2_PLL_1000M_CG		284
 
-#define IMX8MQ_CLK_END				285
+#define IMX8MQ_CLK_GPU_CORE			285
+#define IMX8MQ_CLK_GPU_SHADER			286
+#define IMX8MQ_CLK_M4_CORE			287
+#define IMX8MQ_CLK_VPU_CORE			288
+
+#define IMX8MQ_CLK_END				289
 
 #endif /* __DT_BINDINGS_CLOCK_IMX8MQ_H */
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
