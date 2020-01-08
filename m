Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 346A0133BDD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 07:43:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5e2Pg3qZULg5TucMokGmkMZLompsOpCSiRUVU8SDjOI=; b=nVt5t3b7wO9UYU
	qW+BE2MzatJxSq/GtjUec9qOQ1CZwHoPxX5bbPyBBMlpT0B4yNlldiZJ71GGqVissPe6IY/9woZMi
	x/KtbklD0ifThF1XlZx3B0rLi+9iYDHtQjjrbEvF9E1izwDK1pt/cXtjJ1lOP/c4LlgrzcBZBYCeP
	jjWSw52vuAyrYN8nWwG7qbv8yS8hvlLaA5bwK+9tWvdN3i3yEXpDqDFOxiFw30AKKvqIvm4d43UVk
	1laRgx94W87kEcxww4LYmQpfhO3cTA1fQ16Sg2Lhz3FGQQ7GFeq5wrVk9mBwCbruLdNtdZ1FmoPB+
	puzEO/wKI5s9hBXrmT8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip53Z-0002fz-MF; Wed, 08 Jan 2020 06:43:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip52E-0001UK-Af; Wed, 08 Jan 2020 06:41:44 +0000
X-UUID: cb36fe832000426c8240d9d669d3c7a1-20200107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=YZUHtY5Et7Z+h9F0lLzp+7QIBnsI3mM9pQonsoRaQYM=; 
 b=NxTLHYrQSPGOGLKqi6c32DnpCn2ku7VyFkiF6DZhhq5UMwu4kkj5qvcpr84XAZvQMK0sT9DeZi4iAp9PXRvFk3Lh12cOzeUIxsheBecp7pBUrSX+6hvcZHo4vOmkGZJ/994NWKHTlzgtITC+bLLuKYesrCw3okZuUubxClDF1wo=;
X-UUID: cb36fe832000426c8240d9d669d3c7a1-20200107
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ming-fan.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1359956608; Tue, 07 Jan 2020 22:41:35 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 22:42:08 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 14:41:08 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 8 Jan 2020 14:39:59 +0800
From: Ming-Fan Chen <ming-fan.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 3/3] memory: mtk-smi: Add bandwidth initial golden setting
Date: Wed, 8 Jan 2020 14:41:31 +0800
Message-ID: <1578465691-30692-5-git-send-email-ming-fan.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1578465691-30692-1-git-send-email-ming-fan.chen@mediatek.com>
References: <1578465691-30692-1-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_224142_460435_173FD025 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Joerg
 Roedel <jroedel@suse.de>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>, Ming-Fan
 Chen <ming-fan.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SMI bandwidth initial golden setting for MT6779 make sure
better performance of memory control for multimedia modules.

changelog since v2:
Define local variable from long to short
Merge writel_relaxed into one line
Remove SMI_LARB_SW_FLAG in smi-larb

Signed-off-by: Ming-Fan Chen <ming-fan.chen@mediatek.com>
---
 drivers/memory/mtk-smi.c |  118 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 117 insertions(+), 1 deletion(-)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index d0b747a..222ac7e 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -41,21 +41,47 @@
 #define SMI_LARB_NONSEC_CON(id)	(0x380 + ((id) * 4))
 #define F_MMU_EN		BIT(0)
 
+#define SMI_LARB_CMD_THRT_CON	 0x24
+#define SMI_LARB_OSTDL_PORT	 0x200
+#define SMI_LARB_OSTDL_PORTx(id) (SMI_LARB_OSTDL_PORT + (((id) & 0x1f) << 2))
+
 /* SMI COMMON */
+#define SMI_L1LEN			0x100
+#define SMI_L1ARB0			0x104
+#define SMI_L1ARB(id)			(SMI_L1ARB0 + (((id) & 0x7) << 2))
+
 #define SMI_BUS_SEL			0x220
 #define SMI_BUS_LARB_SHIFT(larbid)	((larbid) << 1)
 /* All are MMU0 defaultly. Only specialize mmu1 here. */
 #define F_MMU1_LARB(larbid)		(0x1 << SMI_BUS_LARB_SHIFT(larbid))
 
+#define SMI_M4U_TH			0x234
+#define SMI_FIFO_TH1			0x238
+#define SMI_FIFO_TH2			0x23c
+#define SMI_DCM				0x300
+#define SMI_DUMMY			0x444
+
+#define SMI_LARB_PORT_NR_MAX		32
+#define SMI_LARB_MISC_NR		1
+
 enum mtk_smi_gen {
 	MTK_SMI_GEN1,
 	MTK_SMI_GEN2
 };
 
+struct mtk_smi_reg_pair {
+	u16	offset;
+	u32	value;
+};
+
 struct mtk_smi_common_plat {
 	enum mtk_smi_gen gen;
 	bool             has_gals;
 	u32              bus_sel; /* Balance some larbs to enter mmu0 or mmu1 */
+	bool                          has_bwc;
+	u8                            larb_nr;
+	const u16                     *l1arb;
+	const struct mtk_smi_reg_pair *misc;
 };
 
 struct mtk_smi_larb_gen {
@@ -63,6 +89,9 @@ struct mtk_smi_larb_gen {
 	void (*config_port)(struct device *);
 	unsigned int			larb_direct_to_common_mask;
 	bool				has_gals;
+	bool				has_bwc;
+	const u8			(*ostdl)[SMI_LARB_PORT_NR_MAX];
+	const struct mtk_smi_reg_pair	(*misc)[SMI_LARB_MISC_NR];
 };
 
 struct mtk_smi {
@@ -159,6 +188,8 @@ void mtk_smi_larb_put(struct device *larbdev)
 static void mtk_smi_larb_config_port_gen2_general(struct device *dev)
 {
 	struct mtk_smi_larb *larb = dev_get_drvdata(dev);
+	const struct mtk_smi_reg_pair *misc;
+	const u8 *ostdl;
 	u32 reg;
 	int i;
 
@@ -170,6 +201,18 @@ static void mtk_smi_larb_config_port_gen2_general(struct device *dev)
 		reg |= F_MMU_EN;
 		writel(reg, larb->base + SMI_LARB_NONSEC_CON(i));
 	}
+
+	if (!larb->larb_gen->has_bwc)
+		return;
+
+	for (i = 0, ostdl = larb->larb_gen->ostdl[larb->larbid];
+		i < SMI_LARB_PORT_NR_MAX; i++)
+		writel_relaxed(ostdl[i], larb->base + SMI_LARB_OSTDL_PORTx(i));
+
+	for (i = 0, misc = larb->larb_gen->misc[larb->larbid];
+		i < SMI_LARB_MISC_NR; i++)
+		writel_relaxed(misc[i].value, larb->base + misc[i].offset);
+	wmb(); /* make sure settings are written */
 }
 
 static void mtk_smi_larb_config_port_mt8173(struct device *dev)
@@ -239,11 +282,53 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
 	.larb_direct_to_common_mask = BIT(8) | BIT(9),      /* bdpsys */
 };
 
+static const u8 mtk_smi_larb_mt6779_ostdl[][SMI_LARB_PORT_NR_MAX] = {
+	{0x28, 0x28, 0x01, 0x28, 0x01, 0x01, 0x0a, 0x0a, 0x28,},
+	{0x28, 0x01, 0x28, 0x28, 0x0a, 0x01, 0x01, 0x0d, 0x0d, 0x07,
+	 0x01, 0x07, 0x01, 0x28,},
+	{0x18, 0x01, 0x08, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02,
+	 0x01, 0x01},
+	{0x01, 0x03, 0x02, 0x01, 0x01, 0x01, 0x01, 0x04, 0x02, 0x01,
+	 0x04, 0x01, 0x01, 0x01, 0x01, 0x04, 0x0b, 0x13, 0x14,},
+	{},
+	{0x13, 0x0f, 0x0d, 0x07, 0x07, 0x04, 0x03, 0x01, 0x03, 0x01,
+	 0x05, 0x0c, 0x01, 0x01, 0x08, 0x06, 0x02, 0x01, 0x08, 0x08,
+	 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,},
+	{0x01, 0x01, 0x01,},
+	{0x01, 0x01, 0x01, 0x01,},
+	{0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,},
+	{0x1f, 0x1a, 0x02, 0x04, 0x1f, 0x02, 0x14, 0x01, 0x1f, 0x04,
+	 0x04, 0x01, 0x01, 0x01, 0x02, 0x02, 0x04, 0x02, 0x01, 0x02,
+	 0x04, 0x02, 0x02, 0x01,},
+	{0x1f, 0x1a, 0x02, 0x04, 0x1f, 0x02, 0x14, 0x01, 0x1f, 0x1a,
+	 0x02, 0x04, 0x1f, 0x02, 0x14, 0x01, 0x01, 0x02, 0x02, 0x04,
+	 0x02, 0x0a, 0x02, 0x02, 0x04, 0x02, 0x0a, 0x02, 0x04, 0x02, 0x04,},
+	{0x01, 0x01, 0x01, 0x01, 0x01,},
+};
+
+static const struct mtk_smi_reg_pair
+mtk_smi_larb_mt6779_misc[][SMI_LARB_MISC_NR] = {
+	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
+	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
+	{},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256},},
+	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
+	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
+	{{SMI_LARB_CMD_THRT_CON, 0x370256},},
+};
+
 static const struct mtk_smi_larb_gen mtk_smi_larb_mt6779 = {
 	.config_port  = mtk_smi_larb_config_port_gen2_general,
 	.larb_direct_to_common_mask =
 		BIT(4) | BIT(6) | BIT(11) | BIT(12) | BIT(13),
 		/* DUMMY | IPU0 | IPU1 | CCU | MDLA */
+	.has_bwc = true,
+	.ostdl   = mtk_smi_larb_mt6779_ostdl,
+	.misc    = mtk_smi_larb_mt6779_misc,
 };
 
 static const struct mtk_smi_larb_gen mtk_smi_larb_mt8183 = {
@@ -397,11 +482,30 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 	.gen = MTK_SMI_GEN2,
 };
 
+static const u16 mtk_smi_common_mt6779_l1arb[] = {
+	0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000,
+};
+
+static const struct
+mtk_smi_reg_pair mtk_smi_common_mt6779_misc[SMI_COMMON_MISC_NR] = {
+	{SMI_L1LEN, 0xb},
+	{SMI_M4U_TH, 0xe100e10},
+	{SMI_FIFO_TH1, 0x506090a},
+	{SMI_FIFO_TH2, 0x506090a},
+	{SMI_DCM, 0x4f1},
+	{SMI_DUMMY, 0x1},
+};
+
 static const struct mtk_smi_common_plat mtk_smi_common_mt6779 = {
 	.gen		= MTK_SMI_GEN2,
 	.has_gals	= true,
 	.bus_sel	= F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(4) |
 			  F_MMU1_LARB(5) | F_MMU1_LARB(6) | F_MMU1_LARB(7),
+	.has_bwc	= true,
+	.larb_nr	= ARRAY_SIZE(mtk_smi_common_mt6779_l1arb),
+	.l1arb		= mtk_smi_common_mt6779_l1arb,
+	.misc_nr	= ARRAY_SIZE(mtk_smi_common_mt6779_misc),
+	.misc		= mtk_smi_common_mt6779_misc,
 };
 
 static const struct mtk_smi_common_plat mtk_smi_common_mt8183 = {
@@ -506,7 +610,7 @@ static int __maybe_unused mtk_smi_common_resume(struct device *dev)
 {
 	struct mtk_smi *common = dev_get_drvdata(dev);
 	u32 bus_sel = common->plat->bus_sel;
-	int ret;
+	int i, ret;
 
 	ret = mtk_smi_clk_enable(common);
 	if (ret) {
@@ -516,6 +620,18 @@ static int __maybe_unused mtk_smi_common_resume(struct device *dev)
 
 	if (common->plat->gen == MTK_SMI_GEN2 && bus_sel)
 		writel(bus_sel, common->base + SMI_BUS_SEL);
+
+	if (!common->plat->has_bwc)
+		return 0;
+
+	for (i = 0; i < common->plat->larb_nr; i++)
+		writel_relaxed(common->plat->l1arb[i],
+			       common->base + SMI_L1ARB(i));
+
+	for (i = 0; i < common->plat->misc_nr; i++)
+		writel_relaxed(common->plat->misc[i].value,
+			       common->base + common->plat->misc[i].value);
+	wmb(); /* make sure settings are written */
 	return 0;
 }
 
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
