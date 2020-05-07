Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D367E1C822E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 08:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sQFnojMSUKFOJzx8l8iJ7p7UiTRweMiOimZMrGvzPvw=; b=lHmWBwrMOTtnZ/
	+2HSlBP9bJRbEsxdvAmke/M977QPTHmoRZoBvQJDqkwbFZbVPJFlkxKUN9J9hkjKGyflLOONdbMbT
	4+jfSGdkTTQF2txMgBo1PjA9YzkwDhVHXgM0Jd1O1itjWG85M8nrGE5pSJDD8gXUwfywOMU7Ek6/V
	Bt4nFzBMNq4zYBiMVo9wWMb4wu1zlZiV4aDiqpIk5n03fhiPDsPbK6jNsNpUZTu54Wex+2ugJWO1h
	taAijoQQDF6O8SyXdhQaSoxJeEdTFxz21rtNAEuISfU94m+MN+IREDyiVaY5k5CcDZjO4pqtogu4c
	pTQ1abTEu5vIqpb4fsQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWZhf-0006ba-9x; Thu, 07 May 2020 06:08:15 +0000
Received: from mail-eopbgr140085.outbound.protection.outlook.com
 ([40.107.14.85] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWZfd-0004uh-9r
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 06:06:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WDuOy+Hmyord/LFx2zYRP6o7faMTMlwNprPZuTA6idlbpY02RlL6BS8R4Pssc9pUvY1tpGZStgFb9TfxOXH/eCM+lLPc4hIB0dxBbFR2esTdIMPmVuYg2cEWKfL69O6hcvvidsoFz+UBCy4ZWEanr0L2ilPoaBlSWD5/eoF6LhG2x/POoZFoNHWk7zLDcbUMMKdLVn1tC9WHsQGuYVtyM9PVwGEnf6nwFj0nyyQX/Osx5ceG+jrGLtZLRKu+kjqgGeIIqhwYq6vQkH5EmcXvKR64jX242f7HxtAo82ML7sSFvhWUrj+9YKmnuWEAOsIFALRRxcoCNLpRWU3/D+61rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1prrc16a94EzT4h1S/bMdetWsqziTsJTIbLo39etDw8=;
 b=CqpMsWZ4VhbFaVvJXfv2XRqivnv16jcI8iB2skAIpTvQ/NiEDe6OwrPPryXPt8Dldq9Bm09yKv562gManO1LiD7S9M8kwo5cx1IIZwzFsSdUh+7dwtWWBsJdL6eJZgKFZYqD8zsrHVeBL/Kt+CqlQU1pdiN12LeQ5pz4t3034smDlCEnPG/CmwiOjmERbuqtPYmDs2GtWooQkqDeHZax92KgWECGcpo0j/mcP1zewdGHc8g/f4RpKYA/TMIjnyqG5vICkHVWdP2s3dp2zWwwc8Aws4w9M/sXIN0yuVKCeVAW8MdnX5dn8E92FP8pFGAko5kZz1gKbNfECdaP9s7DdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1prrc16a94EzT4h1S/bMdetWsqziTsJTIbLo39etDw8=;
 b=CgU3rcE/uTeV8AkN28sRL35lB70dBP548gUzQu3R8qDMit8EG0KoJSlAU8eYdLC+qbKj3qBnVWLm+GJ0D4A3RjA3FbauxmFV2+kw4Mu+5JR0iXY9vKnOZmJMDKPU8vFXfm7SZluQxdd3c2xVPK1If/Z3eGoyhyOcz1+8XCJrYHw=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2710.eurprd04.prod.outlook.com (2603:10a6:4:95::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19; Thu, 7 May
 2020 06:06:06 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 06:06:06 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, leonard.crestez@nxp.com,
 abel.vesa@nxp.com, aisheng.dong@nxp.com
Subject: [PATCH V3 07/10] clk: imx: add mux ops for i.MX8M composite clk
Date: Thu,  7 May 2020 13:56:16 +0800
Message-Id: <1588830979-11586-8-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
References: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR01CA0147.apcprd01.prod.exchangelabs.com
 (2603:1096:4:8f::27) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0147.apcprd01.prod.exchangelabs.com (2603:1096:4:8f::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.28 via Frontend
 Transport; Thu, 7 May 2020 06:06:02 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: af0f595e-8b5d-4e31-0d26-08d7f24cbaad
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2710:|DB6PR0402MB2710:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB2710888B87D717D19152A8A388A50@DB6PR0402MB2710.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 03965EFC76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: El+GF6Nynnqdq9YKWnEzoh6UXyjTtlciaojVWPkqT0MFp4uH299Cs6BfFkfGv/DSQcVsZAhZSu1QbAI4wAtB0WcRHL08jwYt9xMG6pxvK4tYRxQdLMzgR4ahd262LFBbk49Zv5IN92khPLgprHnyJ4XsGpyBjvh0asO4u2tPNIApHox5t3Dv3lRyp92WhKkfDrxMLFAF/tQ+agw0qLXO9kRj1Jz1FjTltH8j5YYZtgiOxq9KpGLAVyAATihU6YeTAzgptWiVP4h3wVPRhxJzREbT76lhQr/ASf6MFrtE0LHEOqtvh9jN3qydQO2C+0AAWIDFqUBaH6d0c96k6h1LMgoToxRb4HEaQboiFPjWPzdGUVVlR4zktPw7dOHnJ0P/26vPJ90PNqNnhhnfGH8QIm0sbIhtLuxWNYUx4R2Mw1WQ2/+fWwlxLGJj9N++q7E8vHpXIPLGMFPnXifCEVAEmZCRx04jOSlHO60F9m5oCSP+rtwv7Dn10ZrNPoACUlVQ+dJdTIBU2LEIBfzcI2QGzkfJ0ATPcehSFwMPUUBtmz0nAf66HTwOeliOhWwcT527
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(376002)(346002)(136003)(39860400002)(396003)(33430700001)(316002)(33440700001)(478600001)(2616005)(16526019)(69590400007)(6666004)(4326008)(66476007)(66946007)(86362001)(2906002)(66556008)(956004)(6486002)(52116002)(36756003)(8676002)(26005)(6506007)(8936002)(5660300002)(186003)(6512007)(9686003)(83320400001)(83280400001)(83300400001)(83310400001)(83290400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: YBhUH0Bwn7J/HUGRXa8x472yU+tSy51BbAhCibP4GKKIYksjzDMFJABccfgPwn3EM4rJATABZg8vS0VIeSgq0vOk75Yz+aPnpEQWQzEIdwbdC5f52YTkf88qSfXzgDsS9V13/aUbkndxpAIVaxeaqBJ10XaAHUjjJr5MqDUih7zzjWjAWVZhPvqgm8p0/EXZNvh9Yap7cQDLOymS/in5dfHAwEufABHLb/08Y8AlOSBPibwlic//kmw8hfaTaRugS9hkiDyhZi6pqo2DnWoqbkYgOwffv9n1TntElqn96vF5ZoecEjagGFbCHGZGb7j2YeEMZna35IWDBpPOKw2IRTmFkMnEC08lZSiIvftTKHtJ8VtQ94gZhFV34KcvH9D/t6NxdYOdrZv1dae0Wgk4V9fwGAg8E+nf6Ba9IGsHCL7W1rF5dqVFEWsnRkfZ05Vmr917KG24L0zmdw8SLoKwMRhG47WtiuY+/MaBTBtj+4ba9XnOymDl3JMaLwtF1RZfo8xoKKuMtNYpDGSPTVcIUFdNZbiFvKzO8SnQcnGNrdaVXBKG2RArQ6fzs8NnJyvF6/C3YlvxCNKK/KFy54mMCaDYIsSosLzUWMrExBdVApKuVbksZXpd37Y21s38LI1k1SV+9xXz1LFYvDGhGfXqrqStC9JJSChGw8tlXx/oUbTvvkWMJmj5ZmqP0jkvSw6RokB6GE2WUq+9yA6gJdhTZz5heOK5zKMLkwFR2/LJiko1cQw5/pMB2iizdMB7qEauP2JCEg5bZGfstZidWoTc68sf6InqKT9DJAH/TL216XM=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af0f595e-8b5d-4e31-0d26-08d7f24cbaad
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2020 06:06:06.2112 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sgJyFu6H/7IfkUrpYUiy4gbA138dSjEE1NIfdtIZL/DtMxEzejDFOGKQFGCxtjwx9ttiB8q8v5KOsBcHigdUUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2710
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_230609_369617_3E2810E1 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.85 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.85 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Anson.Huang@nxp.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

The CORE/BUS root slice has following design, simplied graph:
The difference is core not have pre_div block.
A composite core/bus clk has 8 inputs for mux to select, saying clk[0-7].

It support target(smart) interface and normal interface. Target interface
is exported for programmer easy to configure ccm root. Normal interface
is also exported, but we not use it in our driver, because it will
introduce more complexity compared with target interface.

The normal interface simplified as below:
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

The mux in the upper pic is not the target interface MUX, target
interface MUX is hiding SEL_A and SEL_B. When you choose clk[0-7],
you are actually writing SEL_A or SEL_B depends on the internal
counter which will also control the internal "mux".

The target interface simplified as below which is used by Linux Kernel:
CLK[0-7]--->MUX-->Gate-->pre_div-->post_div

A requirement of the Target Interface's software is that the
target clock source is active, it means when setting SEL_A, the
current input clk to SEL_A must be active, same to SEL_B.

We touch target interface, but hardware logic actually also need
configure normal interface.

There will be system hang, when doing the following steps:
The initial state:
  SEL_A/SEL_B are both sourcing from clk0, the internal counter
  choose SEL_A.
1. switch mux from clk0 to clk1
   The hardware logic will choose SEL_B and configure SEL_B to clk1.
   SEL_A no changed.
2. gate off clk0
   Disable clk0, then the input to SEL_A is off.
3. swtich from clk1 to clk2
   The hardware logic will choose SEL_A and configure SEL_A to clk2,
   however the current SEL_A input clk0 is off, the system hang.

The solution to fix the issue is in step 1, write twice to
target interface MUX, it will make SEL_A/SEL_B both sources
from clk1, then no need to care about the state of clk0. And
finally system performs well.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-composite-8m.c | 51 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 50 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 99773519b5a5..8fa60f22d377 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -124,6 +124,52 @@ static const struct clk_ops imx8m_clk_composite_divider_ops = {
 	.set_rate = imx8m_clk_composite_divider_set_rate,
 };
 
+static u8 imx8m_clk_composite_mux_get_parent(struct clk_hw *hw)
+{
+	return clk_mux_ops.get_parent(hw);
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
+	/*
+	 * write twice to make sure non-target interface
+	 * SEL_A/B point the same clk input.
+	 */
+	writel(reg, mux->reg);
+	writel(reg, mux->reg);
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
+	return clk_mux_ops.determine_rate(hw, req);
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
@@ -136,6 +182,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
 	struct clk_gate *gate = NULL;
 	struct clk_mux *mux = NULL;
 	const struct clk_ops *divider_ops;
+	const struct clk_ops *mux_ops;
 
 	mux = kzalloc(sizeof(*mux), GFP_KERNEL);
 	if (!mux)
@@ -157,10 +204,12 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
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
@@ -176,7 +225,7 @@ struct clk_hw *imx8m_clk_hw_composite_flags(const char *name,
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
