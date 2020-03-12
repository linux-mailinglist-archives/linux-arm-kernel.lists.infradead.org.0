Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C16EA182C0C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:10:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pb5WH+TJ80tCWKku61CYK/9gVltc7K3dKq1H+hwh4UM=; b=ZBbgR906MFahgh
	7f0Tt8JjldRiNdiac4rLMVytK3Y2JJvoGmkKNWIBzCbA4bLij8O12XcPmOgKmduHhr2ZX5XJFbeq5
	cXfdGyrHmEH/ajTWJY4ekiEASieoaZqWgAd1/DIHsXQl+zKkA+YwAqOEWypvTVtcQ3//PTtYaGo8+
	Ty87yLytqXJFPb3ysxbbGHW1PKKW35JzPQ+QxD8ivs8H3KhtqbUqYESU8qcqrj3B6eO0eeoyo8LKc
	PCpRs3NJFd1+YzDAC0odgn1eO3OpUr64x936MWygf91JKHYq3tr59yekQ3BUQKPZj7ac45b0RP6rO
	gzIcGmjuejTQ4QJjFF7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCJrN-0006GT-AC; Thu, 12 Mar 2020 09:10:33 +0000
Received: from mail-vi1eur05on2064.outbound.protection.outlook.com
 ([40.107.21.64] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCJps-0003g8-F9
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:09:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GP4HSYTk7PZkLyM30K6MMdjXVUIZWEtbMwZhyMdb/M0XOaoaZKLAp+sG0Me8dvztcFMlqJ1Tz38tCI8o9k12ZwkGJLZKsCP8SfMDwPwPJr7oyB0c6gppbzJwtqlV7Lan/YfJxMukGqHqDXew/FHf3+PmP00mQWz0uq+y6PUZefILZPvQfS8crse/6Di0AlVh6U30CjB7nPKVwE8WYo/y1iqpUUQ2eddmIUELYk/lMvjMK+HZF+wJGQqzr/NP4GMqhlSnCilS2rzYPHz7tXmSh57bdo///D9PkU6uTgEZDlZcdaX2Mu0KeG7rbA80ljPGX35zBTZ5+tCajb7xg+L0Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sw0UaGp/mLCRP8uSJ+lPVICg6XFhksfosyz3Nrvy7tA=;
 b=QBJEPkkupEwnODliF22HGRh8WcECPPH6udIY3GcVO6FYIDWRS9f0Gc2+GlIoFiziPyvQRq+yPELlqOp/2zmI98Y9dXG5HHjWxF6TH3wDI6YvGSUBTgT1kteg2lFeF/jcMk+vP61P8M3630wT/Nza05RWCepJiru7zWNNFJlLApVTSJG1AwgBlkFpxVC6CxCUQdpoMjZYwaZ15g5jm2/rwq0pJwZZBLgpJF+cVWM32fcnhiInQtkIQ0LyRkM8NHRIrIDrMp2YjCXDXuj++dge134RWuHxQQnXFSF3yz/Klkj4Z6HFnKA4xKcnI+raARFNJN9aPcPd0vVrhb4/NNgSQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sw0UaGp/mLCRP8uSJ+lPVICg6XFhksfosyz3Nrvy7tA=;
 b=oFz4ml9e2L0s4+DDPztkbSxNtJaZ2NKhTK0iu8YtB0SLC0DfHlYwORmg8wpVPN/81dwSXP74kEWzVrzeRpuMR+6Bes1du+0Za8+NEjEJviA6wakSJPJuubSEsaB/9rnllVwwF1gW0O3weXqjZpEn5nTQJQLznu1xyf+eO2YSIi8=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4305.eurprd04.prod.outlook.com (52.134.126.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:08:58 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:08:57 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 sboyd@kernel.org, abel.vesa@nxp.com
Subject: [PATCH 07/10] clk: imx: add mux ops for i.MX8M composite clk
Date: Thu, 12 Mar 2020 17:01:29 +0800
Message-Id: <1584003692-25523-8-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
References: <1584003692-25523-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR02CA0052.apcprd02.prod.outlook.com
 (2603:1096:4:54::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0052.apcprd02.prod.outlook.com (2603:1096:4:54::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2814.14 via Frontend Transport; Thu, 12 Mar 2020 09:08:51 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 93b3dd94-89c0-4805-bf22-08d7c664ff31
X-MS-TrafficTypeDiagnostic: AM0PR04MB4305:|AM0PR04MB4305:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB43057976C024EB4E304C86CE88FD0@AM0PR04MB4305.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(366004)(396003)(199004)(478600001)(36756003)(86362001)(2906002)(4326008)(6666004)(316002)(81166006)(81156014)(8936002)(8676002)(2616005)(956004)(186003)(69590400007)(5660300002)(6506007)(26005)(66476007)(66556008)(66946007)(9686003)(16526019)(6486002)(7416002)(52116002)(6512007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4305;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: xK3J7tXJplPBO3kvcXXnwnONaMczFQDlirjEU8UxdlRy1hKTAYMMqe/C06hl6EJMdzNNxN5G7voUXXkw5CbgbGX72q6iedZfxFuSKHlw6PlE5Px4bF8CubSMZ6ZSUIvdqPqAcUbPCGkM7gYeQALpR6uRTn2zTfC2CpYbHx7DSDGcTauzkpFjiMnFJvNKiVVbgtT6pqW64AEYA0W8ltHT1Ox30CfZy3c1EtPlCk5IvDcG8q1OExkVNEJkW3/QG0Wzem29KAWQO/N2LM69rHhAzIeXWYjBIb5Af2rQMT9oJadbepS58vfgmtRFSLAx4CL4HRVGI//AxQJzFHdwhWsEhzUid7Qt6/W88dX15eUoMg+0xe2HNvMCWgmgb1BKkeIwgBWVN3ri37OBcg5zNctTECSq8YYyWi0LYc5t8I4+u2rHjF1f4DZkP3hHuJyhA59zkLBZjqA3dGwoKYjjkdd15+QRjqxlXBGqnBzu1H0MibWzNRn2yxYXqvXmulK+dm6r
X-MS-Exchange-AntiSpam-MessageData: KQVs8e3TAjK4hXZi6wIY6dSVGzyut497IP632ygzt3s1r+QqIUzbpherk7t5AdB6nF0CFWJmUqcLQQrDfVZAO+DCgm88tVSa/RvA7KzKzPYKjUso9Sods7TS3PtdU+/NZlqdfGbXLfHW4a4dCeO+tQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93b3dd94-89c0-4805-bf22-08d7c664ff31
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:08:57.8602 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2xjV4onvgnpi+7PvYWdrPZ7WMogP7h5NF2j9BmWYts5pgz47yiEN/acbg2sS0OyKWddKc8R6V1DV/I8e2rhisA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4305
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_020900_578436_72E4477A 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.21.64 listed in list.dnswl.org]
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

The CORE/BUS root slice has following design, simplied graph:
The difference is core not have pre_div block.
A composite core/bus clk has 8 inputs for mux to select, saying clk[0-7].

            SEL_A  GA
            +--+  +-+
            |  +->+ +------+
CLK[0-7]--->+  |  +-+      |
       |    |  |      +----v---+    +----+
       |    +--+      |pre_diva+---->    |  +---------+
       |              +--------+    |mux +--+post_div |
       |    +--+      |pre_divb+--->+    |  +---------+
       |    |  |      +----^---+    +----+
       +--->+  |  +-+      |
            |  +->+ +------+
            +--+  +-+
            SEL_B  GB

There will be system hang, when doing the following steps:
1. switch mux from clk0 to clk1
2. gate off clk0
3. switch from clk1 to clk2, or gate off clk1

Step 3 triggers system hang.

If we skip step2, keep clk0 on, step 3 will not trigger system hang.
However we have CLK_OPS_PARENT_ENABLE flag, which will unprepare disable
the clk0 which will not be used.

To address this issue, we could use following simplied software flow:
After the first target register set
wait the target register set finished
set the target register set again
wait the target register set finished

The upper flow will make sure SEL_A and SEL_B both set the new mux,
but with only one path gate on.

And there will be no system hang anymore with step3.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 69 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 68 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 99773519b5a5..fe05b3c4d4fc 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -6,6 +6,7 @@
 #include <linux/clk-provider.h>
 #include <linux/errno.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/slab.h>
 
 #include "clk.h"
@@ -24,6 +25,12 @@
 
 #define PCG_CGC_SHIFT		28
 
+#define PRE_REG_OFF		0x30
+#define PRE_MUXA_SHIFT		24
+#define PRE_MUXA_MASK		0x7
+#define PRE_MUXB_SHIFT		8
+#define PRE_MUXB_MASK		0x7
+
 static unsigned long imx8m_clk_composite_divider_recalc_rate(struct clk_hw *hw,
 						unsigned long parent_rate)
 {
@@ -124,6 +131,63 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
 	.set_rate = imx8m_clk_composite_divider_set_rate,
 };
 
+static u8 imx8m_clk_composite_mux_get_parent(struct clk_hw *hw)
+{
+	struct clk_mux *mux = to_clk_mux(hw);
+	u32 val;
+
+	val = readl(mux->reg) >> mux->shift;
+	val &= mux->mask;
+
+	return clk_mux_val_to_index(hw, mux->table, mux->flags, val);
+}
+
+static int imx8m_clk_composite_mux_set_parent(struct clk_hw *hw, u8 index)
+{
+	struct clk_mux *mux = to_clk_mux(hw);
+	u32 val = clk_mux_index_to_val(mux->table, mux->flags, index);
+	unsigned long flags = 0;
+	u32 reg;
+
+	if (mux->lock)
+		spin_lock_irqsave(mux->lock, flags);
+
+	reg = readl(mux->reg);
+	reg &= ~(mux->mask << mux->shift);
+	val = val << mux->shift;
+	reg |= val;
+	writel(reg, mux->reg);
+
+	val = 0xFFFFFFFF;
+	readl_poll_timeout(mux->reg, val, val == reg, 0, 0);
+
+	writel(reg, mux->reg);
+
+	val = 0xFFFFFFFF;
+	readl_poll_timeout(mux->reg, val, val == reg, 0, 0);
+
+	if (mux->lock)
+		spin_unlock_irqrestore(mux->lock, flags);
+
+	return 0;
+}
+
+static int
+imx8m_clk_composite_mux_determine_rate(struct clk_hw *hw,
+				       struct clk_rate_request *req)
+{
+	struct clk_mux *mux = to_clk_mux(hw);
+
+	return clk_mux_determine_rate_flags(hw, req, mux->flags);
+}
+
+
+const struct clk_ops imx8m_clk_composite_mux_ops = {
+	.get_parent = imx8m_clk_composite_mux_get_parent,
+	.set_parent = imx8m_clk_composite_mux_set_parent,
+	.determine_rate = imx8m_clk_composite_mux_determine_rate,
+};
+
 struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 					const char * const *parent_names,
 					int num_parents, void __iomem *reg,
@@ -136,6 +200,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 	struct clk_gate *gate = NULL;
 	struct clk_mux *mux = NULL;
 	const struct clk_ops *divider_ops;
+	const struct clk_ops *mux_ops;
 
 	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 	if (!mux)
@@ -157,10 +222,12 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 		div->shift = PCG_DIV_SHIFT;
 		div->width = PCG_CORE_DIV_WIDTH;
 		divider_ops = &clk_divider_ops;
+		mux_ops = &imx8m_clk_composite_mux_ops;
 	} else {
 		div->shift = PCG_PREDIV_SHIFT;
 		div->width = PCG_PREDIV_WIDTH;
 		divider_ops = &imx8m_clk_composite_divider_ops;
+		mux_ops = &clk_mux_ops;
 	}
 
 	div->lock = &imx_ccm_lock;
@@ -176,7 +243,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 	gate->lock = &imx_ccm_lock;
 
 	hw = clk_hw_register_composite(NULL, name, parent_names, num_parents,
-			mux_hw, &clk_mux_ops, div_hw,
+			mux_hw, mux_ops, div_hw,
 			divider_ops, gate_hw, &clk_gate_ops, flags);
 	if (IS_ERR(hw))
 		goto fail;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
