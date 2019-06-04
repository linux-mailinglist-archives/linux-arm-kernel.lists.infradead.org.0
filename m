Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4042A343FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lKjAnMWTg9aDk9n8MYYUB6Vo7Tc1epED/0ZMgeC/qEc=; b=Yk5CszpYPrgIst
	k9qph+bJlCJe0ovisOHgkKHCgm6BJ6T85hiw2cgy50pGYZkchHLAcliKjLDmBDhVHTraAdAeS9bFD
	hMKiFh2ioYUPfrMxsLlb3M2PJJB8S1MamzPEaLmfYQAKhhMigFB72u8c1m5/AqXIECz/57ZpaMbtP
	q1SsmGoIGuIG+GFBBqQsI5rgg+T2aco3L9w8LYePHkkl+Tt5Gz+l+u6VPCJzg8sMKGQFCTBZ6tz8q
	Q1DppjLCtFqTYppa3syKrU8vUncVnwVWpAaShTJN2jiJJBuY+DlCKr/D1dGdKTy9MKayfrOGOaSnv
	oLEAqKM58CqxPaP81ySg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6RY-0007iO-JO; Tue, 04 Jun 2019 10:13:24 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RS-0007hz-2R; Tue, 04 Jun 2019 10:13:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=N0CtAybMHNf6nCj+LggDU2kongJEp1YXdFF9QtL60i8=; b=mZPhDz+yrciA3YidID4BOq81z
 6fabh530KwiO5QrMiSr58hiSZzReTnugQ7dFksvW8P5HFb0VMPh7jdLSEV+UTaq/orgyw2x4ps2KI
 tqHSuzU05j9SsYr2KD9pRYY/kuisJz8LBipZKUHmher1/r/1VfR162BAl881Zt3Xbbzc1HcvSo9sJ
 bc4/gRGihM5yoI5Sah999PInXUMZWf5rykMCDgjr2HFy68Ae9q9aLf9x1zFIauWWIEudS4hIYCecv
 BUxf5puswCuFnqmN+IXMIjUWPMHoK+s0HHuY6HevMvfdmyXkEMUFp0pX41wFiqbndEsoVK0R1hhSm
 zrCFzLq2Q==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RO-0003Us-Rw; Tue, 04 Jun 2019 10:13:16 +0000
X-UUID: 73a1527e5d8c4d5b9f6d4c232c586fa7-20190604
X-UUID: 73a1527e5d8c4d5b9f6d4c232c586fa7-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1161822060; Tue, 04 Jun 2019 02:12:03 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:02 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:01 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 08/14] [media] mtk-mipicsi: enable/disable cmos for mt2712
Date: Tue, 4 Jun 2019 18:11:49 +0800
Message-ID: <1559643115-15124-9-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061315_030863_607A69C5 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enable/disable cmos setting for mt2712 when
streaming start/stop streaming.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index ea1edbc6401b..8bb40656bcb1 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -88,9 +88,11 @@
 #define CAMSV_MODULE_EN					0x10
 #define CAMSV_FMT_SEL					0x14
 #define CAMSV_INT_EN					0x18
+#define CAMSV_SW_CTL					0x20
 #define CAMSV_CLK_EN					0x30
 
 #define CAMSV_TG_SEN_MODE				0x500
+#define CAMSV_TG_VF_CON					0x504
 #define CAMSV_TG_SEN_GRAB_PXL				0x508
 #define CAMSV_TG_SEN_GRAB_LIN				0x50C
 #define CAMSV_TG_PATH_CFG				0x510
@@ -541,11 +543,41 @@ static void mtk_mipicsi_vb2_queue(struct vb2_buffer *vb)
 	spin_unlock(&mipicsi->queue_lock);
 }
 
+static void mtk_mipicsi_cmos_vf_enable(struct mtk_mipicsi_dev *mipicsi,
+				       unsigned int max_camsv_num,
+				       bool enable)
+{
+	void __iomem *base = NULL;
+	u32 mask = enable ? (u32)1 : ~(u32)1;
+	int i;
+
+	for (i = 0; i < max_camsv_num; i++)
+		if (((mipicsi->link_reg_val >> i) & 0x01U) == 0x01U) {
+			if (enable) {
+				/*enable cmos_en and vf_en*/
+				base = mipicsi->camsv[i];
+				writel(readl(base + CAMSV_TG_SEN_MODE) | mask,
+				       base + CAMSV_TG_SEN_MODE);
+				writel(readl(base + CAMSV_TG_VF_CON) | mask,
+				       base + CAMSV_TG_VF_CON);
+			} else {
+				/*disable cmos_en and vf_en*/
+				base = mipicsi->camsv[i];
+				writel(readl(base + CAMSV_TG_SEN_MODE) & mask,
+					base + CAMSV_TG_SEN_MODE);
+				writel(readl(base + CAMSV_TG_VF_CON) & mask,
+					base + CAMSV_TG_VF_CON);
+			}
+		}
+}
+
 static int mtk_mipicsi_vb2_start_streaming(struct vb2_queue *vq,
 		unsigned int count)
 {
 	struct mtk_mipicsi_dev *mipicsi = vb2_get_drv_priv(vq);
 
+	mtk_mipicsi_cmos_vf_enable(mipicsi, mipicsi->camsv_num, true);
+
 	mipicsi->streamon = true;
 
 	return 0;
@@ -558,6 +590,8 @@ static void mtk_mipicsi_vb2_stop_streaming(struct vb2_queue *vq)
 	struct mtk_mipicsi_buf *tmp = NULL;
 	unsigned int index = 0;
 
+	mtk_mipicsi_cmos_vf_enable(mipicsi, mipicsi->camsv_num, false);
+
 	spin_lock(&mipicsi->queue_lock);
 	while (list_empty(&(mipicsi->fb_list)) == 0) {
 		list_for_each_entry_safe(buf, tmp, &(mipicsi->fb_list), queue) {
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
