Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 527CD130775
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 11:58:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqBzB1K+VsN2WjVQZymkW7zYqs90/E6qt5oPGwP0ixY=; b=jJ94jfe9g4Qj3B
	jhxurAAVBJlvFuseOOs+lxZJieMBXONxKx6G9+Zm6jSZO+MJjUnNfFrCkWZVR2suW1rCmWLJU6bGI
	xXFMPVbhTB610Bggm92aCPIlUscJWQ66hleikQ4Vj6XYdKoOD7b/c4To1VT7oHa9+qxAlw621KpJZ
	IX0i1VIEbdoaq/B2IzNHbZLncqxKBqwEFEQDLmUWl1mGWY4r+ViWhidhlEwZshRailEWDcfNwb+98
	nL5bVLCvm0OFvlYvZg59Ng4qnhyxl4pBu32xDgnGd0nKkKpi7kpOy8mG/rfLOvAdojsIfD2fWjvb8
	qiS2iPlx0ShyyMlb+3iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3c7-0005Od-9C; Sun, 05 Jan 2020 10:58:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3aG-0003wZ-Dh; Sun, 05 Jan 2020 10:56:37 +0000
X-UUID: 2ef7e684a96549919040751b8c5b9e87-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=O7bsaDAzWJe4pXQR0EOb47U3pYGGOvWkg6UdghMGuqI=; 
 b=kbln8owUkNDBoqMRGpAXGcY6AVp9/gai5pIvAh+bfRuIpeOnAfm6RPa36YieEbrqtT9hEtAM6RtNu+Tl3dpOm3zpOstj2s03mSfL64a9NwknsutxcPlWjPmJanXFwEhVfP3jZHmZdzaijfXxPNyB0ZibN7jcfhQb3FoUIBrCBkc=;
X-UUID: 2ef7e684a96549919040751b8c5b9e87-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 501591660; Sun, 05 Jan 2020 02:56:31 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 02:47:14 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:46:18 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 Jan 2020 18:45:15 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v2 06/19] iommu/mediatek: Add new flow to get SUB_COMMON ID in
 translation fault
Date: Sun, 5 Jan 2020 18:45:10 +0800
Message-ID: <20200105104523.31006-7-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200105104523.31006-1-chao.hao@mediatek.com>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_025636_480918_9FD19F53 
X-CRM114-Status: GOOD (  11.27  )
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

When the number of smi_larb is more than seven, smi_larb id
will be divided into COMMON_ID(high three bits, bit[11:9]) and
SUB_COMMON_ID(low two bits,bit[8:7]). So we can analyse translation
fault id by SUB_COMMON_ID and COMMON_ID. We can distinguish if
has SUB_COMMON_ID and SUB_COMMON_ID by has_sub_comm variable.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 16 ++++++++++++----
 drivers/iommu/mtk_iommu.h |  1 +
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index b61785a87764..5de13ab1094e 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -89,6 +89,8 @@
 #define REG_MMU1_INVLD_PA			0x148
 #define REG_MMU0_INT_ID				0x150
 #define REG_MMU1_INT_ID				0x154
+#define F_MMU_INT_ID_COMM_ID(a)			(((a) >> 9) & 0x7)
+#define F_MMU_INT_ID_SUB_COMM_ID(a)		(((a) >> 7) & 0x3)
 #define F_MMU_INT_ID_LARB_ID(a)			(((a) >> 7) & 0x7)
 #define F_MMU_INT_ID_PORT_ID(a)			(((a) >> 2) & 0x1f)
 
@@ -227,7 +229,7 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
 	struct mtk_iommu_data *data = dev_id;
 	struct mtk_iommu_domain *dom = data->m4u_dom;
 	u32 int_state, regval, fault_iova, fault_pa;
-	unsigned int fault_larb, fault_port;
+	unsigned int fault_larb, fault_port, sub_comm = 0;
 	bool layer, write;
 
 	/* Read error info from registers */
@@ -243,8 +245,13 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
 	}
 	layer = fault_iova & F_MMU_FAULT_VA_LAYER_BIT;
 	write = fault_iova & F_MMU_FAULT_VA_WRITE_BIT;
-	fault_larb = F_MMU_INT_ID_LARB_ID(regval);
 	fault_port = F_MMU_INT_ID_PORT_ID(regval);
+	if (data->plat_data->has_sub_comm[data->m4u_id]) {
+		fault_larb = F_MMU_INT_ID_COMM_ID(regval);
+		sub_comm = F_MMU_INT_ID_SUB_COMM_ID(regval);
+	} else {
+		fault_larb = F_MMU_INT_ID_LARB_ID(regval);
+	}
 
 	fault_larb = data->plat_data->larbid_remap[data->m4u_id][fault_larb];
 
@@ -252,8 +259,9 @@ static irqreturn_t mtk_iommu_isr(int irq, void *dev_id)
 			       write ? IOMMU_FAULT_WRITE : IOMMU_FAULT_READ)) {
 		dev_err_ratelimited(
 			data->dev,
-			"fault type=0x%x iova=0x%x pa=0x%x larb=%d port=%d layer=%d %s\n",
-			int_state, fault_iova, fault_pa, fault_larb, fault_port,
+			"fault type=0x%x iova=0x%x pa=0x%x larb=%d sub_comm=%d port=%d regval=0x%x layer=%d %s\n",
+			int_state, fault_iova, fault_pa, fault_larb,
+			sub_comm, fault_port, regval,
 			layer, write ? "write" : "read");
 	}
 
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index ec3011a50728..d4495230c6e7 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -40,6 +40,7 @@ struct mtk_iommu_plat_data {
 
 	/* HW will use the EMI clock if there isn't the "bclk". */
 	bool                has_bclk;
+	bool                has_sub_comm[2];
 	bool                has_vld_pa_rng;
 	bool                reset_axi;
 	u32                 m4u1_mask;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
