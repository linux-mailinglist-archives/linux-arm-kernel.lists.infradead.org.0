Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83B4182E08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 11:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzZ5+zwefgMC9/iiFcRvHFhGSA7cr0QF/AmF6jhPf+Y=; b=m78SHwYiGanNTc
	nRvnBEW9m5E3HSp3o3SY4Sfcnii6CfsZjuLJdi/0piDxRPz6pRE9oojIhIJLflzNproWrpebYlmfA
	k2kN2KaR6U5/vbhOfTYdD4yPaU8ROMDlmnhEtCKybVuuK5PBEH5unUMx78HzGgMBkWFr8Gp/NQwer
	vH87/6SnbH2/WaolFcMmpUGuW/aIVP6/aQkz9IMphohA6XdOVjS4cfVTHHmVO2ToES6Y8nkt5dMUd
	SusnWKGGj78nwhqpDP+95dGKbuG9ONMFu4Cf6lpXgepiPAEngwMF6FAc8zM3l7FMmM9JEHg9Bv8ZA
	yLANS479vRbxW04pVJ8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCLJD-0006nl-PP; Thu, 12 Mar 2020 10:43:23 +0000
Received: from mail-eopbgr70057.outbound.protection.outlook.com ([40.107.7.57]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCLJ4-0006nK-Oi
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 10:43:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fkfieCfh6kv9Xp4uM0D6L+IEKCHazi/edjttLOgbYOrHLiSePQXAaGaD9Aa9HYlxpSl+14y3kMtBOUvjFamEhlYh7LfT7BGKwUP/ayGyB0thkExVJWJtUwYGUHcr2+v7jshxroB3t9BWZajDy+PwZIsRlFr1ELvNyG8NCUuG7/ZjN92ugpJE25s95WMvFUVnwEgPbk8s0ohbfMgzoTrXVIQWRbybFyiIODhooBfmpdReR0R4I3cpwgk0eHRsz/+CsiIiLeTsKvWw8t6towjDUxA9zBVoH7LG2qzAIEHmpEURt+eYngR2PIGqpBa9RYjJrvfVhyOZuLZjI2hdWHNhvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XitpZMODXlBhzhhdUcIvaO6eQ0Sq0BCK7S0mQufagZY=;
 b=h4pxOm1IvU6wqqFuuquhZOFqI4cphxFKgxZc803Jrx+cefUWaIWQC/87/lsMyxNPFNtogWYmFQzHi3MZE6hvwtiP9nY0kGsaouThbeH7JBbGtXIIR1hT1Klq16X5aZWAoz2t2d+gekiHYwGsIvkDfdsabrLAQc1Xkyz0MqNDLYf+zxGgxQDSFt2m573PO72SIyagIy0ckHafWYSELMCuTIa942otT+ZIIAiUTqku21M9ePm/xjIXlRrgJUCAKtdCzbFjdoWY/TTnS1yYIRJff5hRxfi+MNKeXlKqsfyheD+FJUpkHVk3a9h4s1mSNt0OAJ4tdeCMCrnTXzI6UAosTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XitpZMODXlBhzhhdUcIvaO6eQ0Sq0BCK7S0mQufagZY=;
 b=g2wAdDm3e89k4diM+BfS5sOzkqJr0OLeahi5t08s2unPh6luDj3JW24sALDdcRTJZ2WV5WidyNfyRtjkUvXVUYoGL/TS+14hbuDlrRqy/HK3n5JNTP/5uPC01oSMvf5iuVYWwGPgk+/9DZhH2q37Og/fDP4dpyPb3pSP0MPIUew=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB7171.eurprd04.prod.outlook.com (10.186.130.205) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.15; Thu, 12 Mar 2020 10:27:27 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 10:27:27 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH V2 08/10] clk: imx: add imx8m_clk_hw_composite_bus
Date: Thu, 12 Mar 2020 18:19:42 +0800
Message-Id: <1584008384-11578-9-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
References: <1584008384-11578-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR03CA0113.apcprd03.prod.outlook.com
 (2603:1096:4:91::17) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR03CA0113.apcprd03.prod.outlook.com (2603:1096:4:91::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 10:27:19 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: ada521f3-d97f-43f5-d811-08d7c66ff53c
X-MS-TrafficTypeDiagnostic: AM0PR04MB7171:|AM0PR04MB7171:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB7171B30D2B583325B989773188FD0@AM0PR04MB7171.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(366004)(376002)(346002)(199004)(478600001)(4326008)(8676002)(5660300002)(956004)(6506007)(7416002)(2616005)(16526019)(6486002)(186003)(2906002)(9686003)(86362001)(6666004)(69590400007)(36756003)(81166006)(26005)(66476007)(8936002)(6512007)(81156014)(66946007)(66556008)(52116002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB7171;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bk+gDk5kI3JbMZaUab89EhHwBzRXjRLaRSRdtlW1xQR2mYpMzBwyKhSCR47k0LDQyp9H0cyFPlVR7Rc2ZUGaBIcEF1J7QbX4ww1ht7Icfk4Hw2YkwBw1Efcf0BIy5BeLdhbS39dH/WgiB6SoeRofUGNvlPgnSCdPB24OTyOdqi7OIufN60TpWWDg8yVYOh9ue4rHBKtpgZFibGskzxFaaB/SL/OXh2qxKC5xO17X7x6imiuH4q1SB3Iaib3FATN4oiGbZxUZ+YaMHG7d3O3pgs7X6A6J3yMo4B6gY4jwRLJRZwYyeEFDxSZeY0Inx/kjbmrLu90/h38CabD2CvYfkcCM43NCaQs12HAMDEckmhl1MqUnSkR7IbGvKXQSYLiImmd5v9F66KEvaJkfNUsCl8qDQ5uRuETTt5q5uJrYukCrfUKnYU4+EaVbS1cFFnKHCInRqC9xPO9Ee8sVnbnzSpyl/Xu7xA1uQPcJn63800Pj7f0tLiOXWUnm2ElfmewU
X-MS-Exchange-AntiSpam-MessageData: WzCOAxSQTWpaaUjXVcOm/AaZORLNACMMUwxFyHipNMFWfwqoAFRz9BkzTkJSv8zQ1e9LHPn8zJrflT6oSsfp0anZrrmFQTJbyiagSZRhDIEQ0tLctTgLmSn7JgytxzsE3Er9+GCvleoCKfeTUTtbgA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ada521f3-d97f-43f5-d811-08d7c66ff53c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 10:27:27.5967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1xO5RqXce9sZX5zCbcQyA5B8l4eoUXiDhSQT4+u2uzHSQ5AGplNT7ETkvmtnXIs/Pcj4OYoDm6rugTT+KiI/4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB7171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_034314_808103_55A2D4DA 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, fugang.duan@nxp.com, ping.bai@nxp.com,
 Anson.Huang@nxp.com, andrew.smirnov@gmail.com, daniel.baluta@nxp.com,
 agx@sigxcpu.org, angus@akkea.ca, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, aford173@gmail.com,
 l.stach@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Introduce imx8m_clk_hw_composite_bus api for bus clk root slice usage.
Because the mux switch sequence issue, we could not reuse Peripheral
Clock Slice code, need use composite specific mux operation.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 5 +++++
 drivers/clk/imx/clk.h              | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index eae02c151ced..ec28643426c2 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -216,6 +216,11 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 		div->width = PCG_CORE_DIV_WIDTH;
 		divider_ops = &clk_divider_ops;
 		mux_ops = &imx8m_clk_composite_mux_ops;
+	} else if (composite_flags & IMX_COMPOSITE_BUS) {
+		div->shift = PCG_PREDIV_SHIFT;
+		div->width = PCG_PREDIV_WIDTH;
+		divider_ops = &imx8m_clk_composite_divider_ops;
+		mux_ops = &imx8m_clk_composite_mux_ops;
 	} else {
 		div->shift = PCG_PREDIV_SHIFT;
 		div->width = PCG_PREDIV_WIDTH;
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index f074dd8ec42e..d4ea1609bcb7 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -478,6 +478,7 @@ struct clk_hw *imx_clk_hw_cpu(const char *name, const char *parent_name,
 		struct clk *step);
 
 #define IMX_COMPOSITE_CORE	BIT(0)
+#define IMX_COMPOSITE_BUS	BIT(1)
 
 struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					    const char * const *parent_names,
@@ -486,6 +487,12 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					    u32 composite_flags,
 					    unsigned long flags);
 
+#define imx8m_clk_hw_composite_bus(name, parent_names, reg)	\
+	imx8m_clk_hw_composite_flags(name, parent_names, \
+			ARRAY_SIZE(parent_names), reg, \
+			IMX_COMPOSITE_BUS, \
+			CLK_SET_RATE_NO_REPARENT | CLK_OPS_PARENT_ENABLE)
+
 #define imx8m_clk_hw_composite_core(name, parent_names, reg)	\
 	imx8m_clk_hw_composite_flags(name, parent_names, \
 			ARRAY_SIZE(parent_names), reg, \
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
