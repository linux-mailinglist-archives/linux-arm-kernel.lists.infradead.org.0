Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C7C130747
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 11:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FrsWL2QawWCKW2FHKvfp35s6Is6gray4EEWr50MMPXI=; b=MJ8N2JCnPc/SUN
	cf4KGM9PC2r2VDsyfx2h+FfwexoZEESJwleneKobwMkXSs2WMTqrbx/ivBbdX8yK8EK+UCtBUak7G
	xT/4xNZrmtWj6XVLYNowO/aYHRuYc23WTqTbE9LfrYgyZmQlSwr1MwpDzf1kWngFT6bXVNgw06RPg
	Oh2FY3l/yxkFhRA0cfb1r65aQF7iS/DZz/lag5ltY+TsTSLRw2mCN+BjQpN1VcnDqHtpQ7YeXErPB
	/3Fv1eqD4oUD0jrEZtB5FyP0q6wyXsR5O+1uZYSl9qOZBJwLJCvtixqITZoRXFt6zWOCNKahI29W9
	NrKvk7f3IJ6eoPGuBhYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3RI-0000Xl-8z; Sun, 05 Jan 2020 10:47:20 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3Qr-0000Jk-UG; Sun, 05 Jan 2020 10:46:55 +0000
X-UUID: d73cf10e5d9e460eb1242b0d4d6c1741-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=DGmQNidlzNQc5LwY8YiBP+cNsBp8IGVfEGVlTvoknPc=; 
 b=QJ50s3Fdnxa7rfQWW5D+yHvxBf9KMxu+dNigg6clNpkd4PsoUUrSc0EzPDjKwMo5TFlPiVxNMlmhsPDY4ePzqgdUTFWG2/mJC9FSQV6YmGUM0BrE7dLoHZzCnHwamzm/rhpoGqyRb4KhT9blWjc0mA0dluwfNMfCwvlezINKwDk=;
X-UUID: d73cf10e5d9e460eb1242b0d4d6c1741-20200105
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 501296492; Sun, 05 Jan 2020 02:46:49 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 02:46:49 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:46:22 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 Jan 2020 18:45:17 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v2 07/19] iommu/mediatek: Add REG_MMU_WR_LEN reg define
 prepare for mt6779
Date: Sun, 5 Jan 2020 18:45:11 +0800
Message-ID: <20200105104523.31006-8-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200105104523.31006-1-chao.hao@mediatek.com>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_024654_035380_5959659A 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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

When some platforms(ex:later mt6779) define has_wr_len variable,
we need to set REG_MMU_WR_LEN to improve performance. So we add
REG_MMU_WR_LEN register define in this patch.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 11 +++++++++++
 drivers/iommu/mtk_iommu.h |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 5de13ab1094e..ad5690350d6a 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -44,6 +44,8 @@
 
 #define REG_MMU_MISC_CTRL			0x048
 #define REG_MMU_DCM_DIS				0x050
+#define REG_MMU_WR_LEN				0x054
+#define F_MMU_WR_THROT_DIS			(BIT(5) |  BIT(21))
 
 #define REG_MMU_CTRL_REG			0x110
 #define F_MMU_TF_PROT_TO_PROGRAM_ADDR		(2 << 4)
@@ -595,6 +597,13 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 	}
 	writel_relaxed(0, data->base + REG_MMU_DCM_DIS);
 
+	if (data->plat_data->has_wr_len) {
+		/* write command throttling mode */
+		regval = readl_relaxed(data->base + REG_MMU_WR_LEN);
+		regval &= ~F_MMU_WR_THROT_DIS;
+		writel_relaxed(regval, data->base + REG_MMU_WR_LEN);
+	}
+
 	if (data->plat_data->reset_axi)
 		writel_relaxed(0, data->base + REG_MMU_MISC_CTRL);
 
@@ -743,6 +752,7 @@ static int __maybe_unused mtk_iommu_suspend(struct device *dev)
 	struct mtk_iommu_suspend_reg *reg = &data->reg;
 	void __iomem *base = data->base;
 
+	reg->wr_len = readl_relaxed(base + REG_MMU_WR_LEN);
 	reg->standard_axi_mode = readl_relaxed(base +
 					       REG_MMU_MISC_CTRL);
 	reg->dcm_dis = readl_relaxed(base + REG_MMU_DCM_DIS);
@@ -768,6 +778,7 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 		dev_err(data->dev, "Failed to enable clk(%d) in resume\n", ret);
 		return ret;
 	}
+	writel_relaxed(reg->wr_len, base + REG_MMU_WR_LEN);
 	writel_relaxed(reg->standard_axi_mode,
 		       base + REG_MMU_MISC_CTRL);
 	writel_relaxed(reg->dcm_dis, base + REG_MMU_DCM_DIS);
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index d4495230c6e7..0623f199e96f 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -25,6 +25,7 @@ struct mtk_iommu_suspend_reg {
 	u32				int_main_control;
 	u32				ivrp_paddr;
 	u32				vld_pa_rng;
+	u32				wr_len;
 };
 
 enum mtk_iommu_plat {
@@ -43,6 +44,7 @@ struct mtk_iommu_plat_data {
 	bool                has_sub_comm[2];
 	bool                has_vld_pa_rng;
 	bool                reset_axi;
+	bool                has_wr_len;
 	u32                 m4u1_mask;
 	u32                 inv_sel_reg;
 	unsigned char       larbid_remap[2][MTK_LARB_NR_MAX];
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
