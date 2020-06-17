Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F3A1FC47D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 05:11:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpLKnUJKKwt8y2WxaTb5k6DnaitAkYm07Ftn49/z2Bs=; b=sTdftJI//PqVcD
	Hf6sJzugR2e214bdsLZ+J/XTcKfzSxB7Xw5nu351ThEVAoMcAGCf3orhu5/B6XjVcaQDSEZy7qOyV
	uo57vrlSb0sfXqHkHAxllQDfv8gGoMXMQHR4nVdKabdt/RBbnN87+6xE05TirR0wwHHd6/H0odOwE
	3qRYlXYUoLTeZhK0cPiC/Tu92VeBhxgxvuLt1fIKR3I89m18xFZKEgdpzYEWQG1uY0AHb/T958939
	D7YeK7BKZGKNigNrtlJfAIxv+MuVq0UQyRAJjbosdaKr7ziLPAkLqACo/0Hqmy86Ymni2NoUsKiHO
	KpqLBR1TuhE7q7m+Mkiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlOU3-0007kM-Rh; Wed, 17 Jun 2020 03:11:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOTn-0007iG-FM; Wed, 17 Jun 2020 03:11:12 +0000
X-UUID: eac352394ffe4ce980bc1e844893894b-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=obGB75zVx42spPi5Jwg0x1wUXIMIfdt+HD3xUwE7aqY=; 
 b=tCizszyoexIAhk7nU60LNfzTV04ZzYUFck8MSug1ggOROCidDev5iVAfSWlKTRIUwG9FLCfr1C77L1Un5xr4gY9fQEgct4PItfcoQlOuZZTzkcqVkR4v6s+RPK4zhXAmk5GS1xcz+YEoPlRwHMTqusub/BdjmP7VrAEtFWQjQ0c=;
X-UUID: eac352394ffe4ce980bc1e844893894b-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2071330071; Tue, 16 Jun 2020 19:10:56 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 20:01:14 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 11:01:08 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 17 Jun 2020 11:01:06 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v4 6/7] iommu/mediatek: Add REG_MMU_WR_LEN definition
 preparing for mt6779
Date: Wed, 17 Jun 2020 11:00:28 +0800
Message-ID: <20200617030029.4082-7-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200617030029.4082-1-chao.hao@mediatek.com>
References: <20200617030029.4082-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0FCF882F6644A8EDD711C0D26C2B62A8BC8E5A33F27505C775B41045C3A1F06D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_201111_524120_54C4A1D8 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, FY Yang <fy.yang@mediatek.com>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Chao Hao <chao.hao@mediatek.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some platforms(ex: mt6779) have a new register called by REG_MMU_WR_LEN
to improve performance.
This patch add this register definition.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 10 ++++++++++
 drivers/iommu/mtk_iommu.h |  2 ++
 2 files changed, 12 insertions(+)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index a687e8db0e51..c706bca6487e 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -46,6 +46,8 @@
 #define F_MMU_STANDARD_AXI_MODE_BIT		(BIT(3) | BIT(19))
 
 #define REG_MMU_DCM_DIS				0x050
+#define REG_MMU_WR_LEN				0x054
+#define F_MMU_WR_THROT_DIS_BIT			(BIT(5) |  BIT(21))
 
 #define REG_MMU_CTRL_REG			0x110
 #define F_MMU_TF_PROT_TO_PROGRAM_ADDR		(2 << 4)
@@ -581,6 +583,12 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		writel_relaxed(regval, data->base + REG_MMU_VLD_PA_RNG);
 	}
 	writel_relaxed(0, data->base + REG_MMU_DCM_DIS);
+	if (data->plat_data->has_wr_len) {
+		/* write command throttling mode */
+		regval = readl_relaxed(data->base + REG_MMU_WR_LEN);
+		regval &= ~F_MMU_WR_THROT_DIS_BIT;
+		writel_relaxed(regval, data->base + REG_MMU_WR_LEN);
+	}
 
 	if (data->plat_data->reset_axi) {
 		/* The register is called STANDARD_AXI_MODE in this case */
@@ -737,6 +745,7 @@ static int __maybe_unused mtk_iommu_suspend(struct device *dev)
 	struct mtk_iommu_suspend_reg *reg = &data->reg;
 	void __iomem *base = data->base;
 
+	reg->wr_len = readl_relaxed(base + REG_MMU_WR_LEN);
 	reg->misc_ctrl = readl_relaxed(base + REG_MMU_MISC_CTRL);
 	reg->dcm_dis = readl_relaxed(base + REG_MMU_DCM_DIS);
 	reg->ctrl_reg = readl_relaxed(base + REG_MMU_CTRL_REG);
@@ -761,6 +770,7 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 		dev_err(data->dev, "Failed to enable clk(%d) in resume\n", ret);
 		return ret;
 	}
+	writel_relaxed(reg->wr_len, base + REG_MMU_WR_LEN);
 	writel_relaxed(reg->misc_ctrl, base + REG_MMU_MISC_CTRL);
 	writel_relaxed(reg->dcm_dis, base + REG_MMU_DCM_DIS);
 	writel_relaxed(reg->ctrl_reg, base + REG_MMU_CTRL_REG);
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index d51ff99c2c71..9971cedd72ea 100644
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
 	bool		    has_misc_ctrl;
 	bool		    has_sub_comm;
 	bool                has_vld_pa_rng;
+	bool                has_wr_len;
 	bool                reset_axi;
 	u32                 inv_sel_reg;
 	unsigned char       larbid_remap[8][4];
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
