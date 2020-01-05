Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB85130796
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 12:01:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTH70RU9PGb1gSMOSpMXNb0EHNfWOgy4PqHswgH/OQ4=; b=hOcQALRWwBmLCw
	rDEJwdLN1uIRmA5NY374lEYPWpF3L6kEYZcPl5iq2m2nAtuP8g+wBwtq5gdfHmDe65TWWPz3MqYrT
	ad9cqmIFytq3KfLD2KLDXGWFbsbTgDSYN+ZGMEksfLhS9uGjQPfusMlxN70KvKXbi/CecnpoR32qf
	313qqDweup/m0B981Fw98vgvlTEjX584sw8QIkdR/yKaVcRKyVqCJVBXQznlAcmCv3aQcFTQMf0OZ
	Zi07RSFzkbkmSfrwfK+6FXcmaQbsG78I+RAsrJFrSPmY8+hotCfDRUW+iD+SMtdqJ4uQg27AGy2YN
	FGjpoX/C1Mu3MGhrla1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3es-0000nA-3E; Sun, 05 Jan 2020 11:01:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3af-0004Jc-39; Sun, 05 Jan 2020 10:57:05 +0000
X-UUID: aae450f959b047e4a8f307a22e3c9863-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=i7uLllswA+30E+RlRxklVQ9qjW8u1U7i80NDkyo2BmA=; 
 b=kVIOo9s/4rgoeRrxtguUS72hJpfrKUE2UPPWPZO7nyf3aIb4nJDuynWpzPFH5Z73bj6nm3JKSO1KgMWjWxcQY3j8oX9ixqeC0nD3EtiFf+EVqQE1W8LNxUFRFFDFNa95aQbGAAL5CVi7P3TESVmHALGZ8p6BNn8De5VROY9xG58=;
X-UUID: aae450f959b047e4a8f307a22e3c9863-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1291933000; Sun, 05 Jan 2020 02:56:57 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 02:46:56 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:46:28 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 Jan 2020 18:45:20 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v2 08/19] iommu/mediatek: Add mt6779 basic support
Date: Sun, 5 Jan 2020 18:45:12 +0800
Message-ID: <20200105104523.31006-9-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200105104523.31006-1-chao.hao@mediatek.com>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_025701_454541_DD740FC7 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Jun Yan <jun.yan@mediatek.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Chao Hao <chao.hao@mediatek.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, Cui Zhang <zhang.cui@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. Add mt6779_data define to support mt6779 IOMMU HW init.
2. For mt6779, there are two IOMMUs, one is MM_IOMMU, the
other is VPU_IOMMU. MM_IOMMU is connected smi_larb to support
multimedia engine to access DRAM, and VPU_IOMMU is connected to
APU_bus to support VPU,MDLA,EDMA to access DRAM. MM_IOMMU and
VPU_IOMMU use the same page table to simplify design by
"mtk_iommu_get_m4u_data".
3. For smi_larb6, it doesn't use MM_IOMMU, so we can distinguish
VPU_IOMMU by it when excutes iommu_probe.
4. For mt6779 APU_IOMMU fault id is irregular, so it was treated specially.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 46 ++++++++++++++++++++++++++++++++++-----
 drivers/iommu/mtk_iommu.h |  2 ++
 2 files changed, 42 insertions(+), 6 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index ad5690350d6a..7829d1fd08dd 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -43,7 +43,10 @@
 #define F_INVLD_EN1				BIT(1)
 
 #define REG_MMU_MISC_CTRL			0x048
+#define REG_MMU_STANDARD_AXI_MODE_MT6779	(BIT(3) | BIT(19))
+
 #define REG_MMU_DCM_DIS				0x050
+
 #define REG_MMU_WR_LEN				0x054
 #define F_MMU_WR_THROT_DIS			(BIT(5) |  BIT(21))
 
@@ -95,8 +98,10 @@
 #define F_MMU_INT_ID_SUB_COMM_ID(a)		(((a) >> 7) & 0x3)
 #define F_MMU_INT_ID_LARB_ID(a)			(((a) >> 7) & 0x7)
 #define F_MMU_INT_ID_PORT_ID(a)			(((a) >> 2) & 0x1f)
+#define F_MMU_INT_ID_COMM_APU_ID(a)		((a) & 0x3)
+#define F_MMU_INT_ID_SUB_APU_ID(a)		(((a) >> 2) & 0x3)
 
-#define MTK_PROTECT_PA_ALIGN			128
+#define MTK_PROTECT_PA_ALIGN			256
 
 /*
  * Get the local arbiter ID and the portid within the larb arbiter
@@ -249,8 +254,15 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
 	write = fault_iova & F_MMU_FAULT_VA_WRITE_BIT;
 	fault_port = F_MMU_INT_ID_PORT_ID(regval);
 	if (data->plat_data->has_sub_comm[data->m4u_id]) {
-		fault_larb = F_MMU_INT_ID_COMM_ID(regval);
-		sub_comm = F_MMU_INT_ID_SUB_COMM_ID(regval);
+		/* m4u1 is VPU in mt6779.*/
+		if (data->m4u_id && data->plat_data->m4u_plat == M4U_MT6779) {
+			fault_larb = F_MMU_INT_ID_COMM_APU_ID(regval);
+			sub_comm = F_MMU_INT_ID_SUB_APU_ID(regval);
+			fault_port = 0; /* for mt6779 APU ID is irregular */
+		} else {
+			fault_larb = F_MMU_INT_ID_COMM_ID(regval);
+			sub_comm = F_MMU_INT_ID_SUB_COMM_ID(regval);
+		}
 	} else {
 		fault_larb = F_MMU_INT_ID_LARB_ID(regval);
 	}
@@ -556,11 +568,12 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		return ret;
 	}
 
+	regval = readl_relaxed(data->base + REG_MMU_CTRL_REG);
 	if (data->plat_data->m4u_plat == M4U_MT8173)
-		regval = F_MMU_PREFETCH_RT_REPLACE_MOD |
+		regval |= F_MMU_PREFETCH_RT_REPLACE_MOD |
 			 F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173;
 	else
-		regval = F_MMU_TF_PROT_TO_PROGRAM_ADDR;
+		regval |= F_MMU_TF_PROT_TO_PROGRAM_ADDR;
 	writel_relaxed(regval, data->base + REG_MMU_CTRL_REG);
 
 	regval = F_L2_MULIT_HIT_EN |
@@ -604,8 +617,16 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		writel_relaxed(regval, data->base + REG_MMU_WR_LEN);
 	}
 
-	if (data->plat_data->reset_axi)
+	if (data->plat_data->has_misc_ctrl[data->m4u_id]) {
+		/* special settings for mmu0 (multimedia iommu) */
+		regval = readl_relaxed(data->base + REG_MMU_MISC_CTRL);
+		/* non-standard AXI mode */
+		regval &= ~REG_MMU_STANDARD_AXI_MODE_MT6779;
+		writel_relaxed(regval, data->base + REG_MMU_MISC_CTRL);
+	} else if (data->plat_data->reset_axi) {
+		/*disable standard axi when it is REG_MMU_STANDARD_AXI_MODE */
 		writel_relaxed(0, data->base + REG_MMU_MISC_CTRL);
+	}
 
 	if (devm_request_irq(data->dev, data->irq, mtk_iommu_isr, 0,
 			     dev_name(data->dev), (void *)data)) {
@@ -806,6 +827,18 @@ static const struct mtk_iommu_plat_data mt2712_data = {
 	.inv_sel_reg = REG_MMU_INV_SEL,
 };
 
+static const struct mtk_iommu_plat_data mt6779_data = {
+	.m4u_plat = M4U_MT6779,
+	.larbid_remap[0] = {0, 1, 2, 3, 5, 7, 10, 9},
+	/* vp6a, vp6b, mdla/core2, mdla/edmc*/
+	.larbid_remap[1] = {2, 0, 3, 1},
+	.has_sub_comm = {true, true},
+	.has_wr_len = true,
+	.has_misc_ctrl = {true, false},
+	.inv_sel_reg = REG_MMU_INV_SEL_MT6779,
+	.m4u1_mask =  BIT(6),
+};
+
 static const struct mtk_iommu_plat_data mt8173_data = {
 	.m4u_plat     = M4U_MT8173,
 	.has_4gb_mode = true,
@@ -824,6 +857,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
 
 static const struct of_device_id mtk_iommu_of_ids[] = {
 	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
+	{ .compatible = "mediatek,mt6779-m4u", .data = &mt6779_data},
 	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
 	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
 	{}
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 0623f199e96f..2b207dcadd06 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -31,6 +31,7 @@ struct mtk_iommu_suspend_reg {
 enum mtk_iommu_plat {
 	M4U_MT2701,
 	M4U_MT2712,
+	M4U_MT6779,
 	M4U_MT8173,
 	M4U_MT8183,
 };
@@ -45,6 +46,7 @@ struct mtk_iommu_plat_data {
 	bool                has_vld_pa_rng;
 	bool                reset_axi;
 	bool                has_wr_len;
+	bool                has_misc_ctrl[2];
 	u32                 m4u1_mask;
 	u32                 inv_sel_reg;
 	unsigned char       larbid_remap[2][MTK_LARB_NR_MAX];
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
