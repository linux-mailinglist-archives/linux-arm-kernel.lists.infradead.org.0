Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AAFCFA769
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 04:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ofgjhkpDXdcD/cuda4TIbbgQXOueloKH407I3SB8UA=; b=XI1mkkS/YcZuJh
	OIJn2tWhyzPvtRzql5WS1iLDLj1hTCI/oXJq8klDEJ3Gb26QDLNYjP9S/Ww6zsgdH8jgSPk6/r1tM
	v1h+6dsWqOEVYggVE3dwc4H++41a1CA9oPxsTCj1ocg5jPn5FD8MBPtOzc0oAFhzJGq2cJV8PDtLI
	bCu7mOo0KMMbGwH7v23f0Ol65I9lua12x0RNVAfyXUQthhmmBoY5TDjrhK3e82rZCdUou30DU9Hp+
	1z950/g9d/K7IDeC9jHaQVZl/AHtaol67c9zKNd7jj9dki3gmhDpMP3BbNgAV21VrcPC1LXBD/jbt
	ataH7mjSicNx18j5QkeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUjVm-0003an-AL; Wed, 13 Nov 2019 03:40:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUjVH-0003Px-PI; Wed, 13 Nov 2019 03:39:37 +0000
X-UUID: 95651fdbd70b4cbab7d5c884fe770dde-20191112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ojrDnsfdwYe9t3UwwQBjkpkbLrv4GYdPYJSAaR+f3sE=; 
 b=fqR3SopYE2LeOzeacYEtpzgkyJPDV2ukYBObcF3AZkly8vzQD0wJeLlz9nyspKW8vzNRZ/Cg6mw4O8fdOo1rQuv6BwQ2B3jZNicYHZfiaG4y1QibmMNshCX3OXtigki3szfNaVOJ65aukcZXW0NTbhrrCts/qbxh6GM7YLYfEdI=;
X-UUID: 95651fdbd70b4cbab7d5c884fe770dde-20191112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ming-fan.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1669315178; Tue, 12 Nov 2019 19:39:25 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 12 Nov 2019 19:39:25 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 13 Nov 2019 11:39:24 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 13 Nov 2019 11:39:24 +0800
From: Ming-Fan Chen <ming-fan.chen@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1 2/2] memory: mtk-smi: Add bandwidth initial golden setting
 for MT6779
Date: Wed, 13 Nov 2019 11:39:22 +0800
Message-ID: <1573616362-2557-3-git-send-email-ming-fan.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1573616362-2557-1-git-send-email-ming-fan.chen@mediatek.com>
References: <1573616362-2557-1-git-send-email-ming-fan.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_193935_822713_D7D755DB 
X-CRM114-Status: GOOD (  14.63  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Joerg Roedel <jroedel@suse.de>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, linux-mediatek@lists.infradead.org,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SMI bandwidth initial golden setting for MT6779 make sure
better performance of memory control for multimedia modules.

Signed-off-by: Ming-Fan Chen <ming-fan.chen@mediatek.com>
---
 drivers/memory/mtk-smi.c |  141 +++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 139 insertions(+), 2 deletions(-)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 439d7d8..f3618d0 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -41,21 +41,50 @@
 #define SMI_LARB_NONSEC_CON(id)	(0x380 + ((id) * 4))
 #define F_MMU_EN		BIT(0)
 
+#define SMI_LARB_CMD_THRT_CON	 0x24
+#define SMI_LARB_SW_FLAG	 0x40
+#define SMI_LARB_WRR_PORT	 0x100
+#define SMI_LARB_WRR_PORTx(id)	 (SMI_LARB_WRR_PORT + (((id) & 0x1f) << 2))
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
+#define SMI_COMMON_LARB_NR_MAX		8
+#define SMI_LARB_MISC_NR		2
+#define SMI_COMMON_MISC_NR		6
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
+	u16                     *bwl;
+	struct mtk_smi_reg_pair *misc;
 };
 
 struct mtk_smi_larb_gen {
@@ -63,6 +92,8 @@ struct mtk_smi_larb_gen {
 	void (*config_port)(struct device *);
 	unsigned int			larb_direct_to_common_mask;
 	bool				has_gals;
+	u8				*bwl;
+	struct mtk_smi_reg_pair		*misc;
 };
 
 struct mtk_smi {
@@ -160,7 +191,7 @@ static void mtk_smi_larb_config_port_gen2_general(struct device *dev)
 {
 	struct mtk_smi_larb *larb = dev_get_drvdata(dev);
 	u32 reg;
-	int i;
+	int i, id;
 
 	if (BIT(larb->larbid) & larb->larb_gen->larb_direct_to_common_mask)
 		return;
@@ -170,6 +201,20 @@ static void mtk_smi_larb_config_port_gen2_general(struct device *dev)
 		reg |= F_MMU_EN;
 		writel(reg, larb->base + SMI_LARB_NONSEC_CON(i));
 	}
+
+	if (larb->larb_gen->bwl)
+		for (i = 0; i < larb->larb_gen->port_in_larb[larb->larbid]; i++)
+			writel_relaxed(larb->larb_gen->bwl[larb->larbid *
+				       SMI_LARB_PORT_NR_MAX + i],
+				       larb->base + SMI_LARB_OSTDL_PORTx(i));
+
+	if (larb->larb_gen->misc)
+		for (i = 0, id = larb->larbid * SMI_LARB_MISC_NR;
+			i < SMI_LARB_MISC_NR; i++, id++)
+			writel_relaxed(larb->larb_gen->misc[id].value,
+				       larb->base +
+				       larb->larb_gen->misc[id].offset);
+	wmb(); /* make sure settings are written */
 }
 
 static void mtk_smi_larb_config_port_mt8173(struct device *dev)
@@ -246,6 +291,55 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
 				      /* IPU0 | IPU1 | CCU */
 };
 
+static u8 mtk_smi_larb_mt6779_bwl[MTK_LARB_NR_MAX][SMI_LARB_PORT_NR_MAX] = {
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
+static struct mtk_smi_reg_pair
+	mtk_smi_larb_mt6779_misc[MTK_LARB_NR_MAX][SMI_LARB_MISC_NR] = {
+	{{SMI_LARB_CMD_THRT_CON, 0x370256}, {SMI_LARB_SW_FLAG, 0x1},},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256}, {SMI_LARB_SW_FLAG, 0x1},},
+	{{SMI_LARB_CMD_THRT_CON, 0x370256}, {SMI_LARB_SW_FLAG, 0x1},},
+	{},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256}, {SMI_LARB_SW_FLAG, 0x1},},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256}, {SMI_LARB_SW_FLAG, 0x1},},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256}, {SMI_LARB_SW_FLAG, 0x1},},
+	{{SMI_LARB_CMD_THRT_CON, 0x300256}, {SMI_LARB_SW_FLAG, 0x1},},
+	{{SMI_LARB_CMD_THRT_CON, 0x370256}, {SMI_LARB_SW_FLAG, 0x1},},
+	{{SMI_LARB_CMD_THRT_CON, 0x370256}, {SMI_LARB_SW_FLAG, 0x1},},
+	{{SMI_LARB_CMD_THRT_CON, 0x370256}, {SMI_LARB_SW_FLAG, 0x1},},
+};
+
+static const struct mtk_smi_larb_gen mtk_smi_larb_mt6779 = {
+	.port_in_larb = {9, 14, 12, 19, 0, 26, 3, 4, 10, 24, 31, 5,},
+	.config_port  = mtk_smi_larb_config_port_gen2_general,
+	.larb_direct_to_common_mask =
+		BIT(4) | BIT(6) | BIT(11) | BIT(12) | BIT(13),
+		/* DUMMY | IPU0 | IPU1 | CCU | MDLA */
+	.bwl  = (u8 *)mtk_smi_larb_mt6779_bwl,
+	.misc = (struct mtk_smi_reg_pair *)mtk_smi_larb_mt6779_misc,
+};
+
 static const struct of_device_id mtk_smi_larb_of_ids[] = {
 	{
 		.compatible = "mediatek,mt8173-smi-larb",
@@ -260,6 +354,10 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
 		.data = &mtk_smi_larb_mt2712
 	},
 	{
+		.compatible = "mediatek,mt6779-smi-larb",
+		.data = &mtk_smi_larb_mt6779
+	},
+	{
 		.compatible = "mediatek,mt8183-smi-larb",
 		.data = &mtk_smi_larb_mt8183
 	},
@@ -393,6 +491,29 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 		    F_MMU1_LARB(7),
 };
 
+static u16 mtk_smi_common_mt6779_bwl[SMI_COMMON_LARB_NR_MAX] = {
+	0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000, 0x1000,
+};
+
+static struct mtk_smi_reg_pair
+	mtk_smi_common_mt6779_misc[SMI_COMMON_MISC_NR] = {
+	{SMI_L1LEN, 0xb},
+	{SMI_M4U_TH, 0xe100e10},
+	{SMI_FIFO_TH1, 0x506090a},
+	{SMI_FIFO_TH2, 0x506090a},
+	{SMI_DCM, 0x4f1},
+	{SMI_DUMMY, 0x1},
+};
+
+static const struct mtk_smi_common_plat mtk_smi_common_mt6779 = {
+	.gen      = MTK_SMI_GEN2,
+	.has_gals = true,
+	.bus_sel  = F_MMU1_LARB(1) | F_MMU1_LARB(2) | F_MMU1_LARB(4) |
+		    F_MMU1_LARB(5) | F_MMU1_LARB(6) | F_MMU1_LARB(7),
+	.bwl      = mtk_smi_common_mt6779_bwl,
+	.misc     = mtk_smi_common_mt6779_misc,
+};
+
 static const struct of_device_id mtk_smi_common_of_ids[] = {
 	{
 		.compatible = "mediatek,mt8173-smi-common",
@@ -407,6 +528,10 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 		.data = &mtk_smi_common_gen2,
 	},
 	{
+		.compatible = "mediatek,mt6779-smi-common",
+		.data = &mtk_smi_common_mt6779,
+	},
+	{
 		.compatible = "mediatek,mt8183-smi-common",
 		.data = &mtk_smi_common_mt8183,
 	},
@@ -484,7 +609,7 @@ static int __maybe_unused mtk_smi_common_resume(struct device *dev)
 {
 	struct mtk_smi *common = dev_get_drvdata(dev);
 	u32 bus_sel = common->plat->bus_sel;
-	int ret;
+	int i, ret;
 
 	ret = mtk_smi_clk_enable(common);
 	if (ret) {
@@ -494,6 +619,18 @@ static int __maybe_unused mtk_smi_common_resume(struct device *dev)
 
 	if (common->plat->gen == MTK_SMI_GEN2 && bus_sel)
 		writel(bus_sel, common->base + SMI_BUS_SEL);
+
+	if (common->plat->bwl)
+		for (i = 0; i < SMI_COMMON_LARB_NR_MAX; i++)
+			writel_relaxed(common->plat->bwl[i],
+				       common->base + SMI_L1ARB(i));
+
+	if (common->plat->misc)
+		for (i = 0; i < SMI_COMMON_MISC_NR; i++)
+			writel_relaxed(common->plat->misc[i].value,
+				       common->base +
+				       common->plat->misc[i].offset);
+	wmb(); /* make sure settings are written */
 	return 0;
 }
 
-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
