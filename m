Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C8862C0B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:45:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lItLxA2a0x3bkpqg8RZUW4tkNGUAHQqnhMHW6Ew7qN0=; b=Ah5uS0ZeogsmXG
	9RaPCchNPCGzvQDNjv0ZWCZHIb5d1c+1ZLAoSZIhYg7ZRUAPRJ/K9dT3j8GE5DJ5/DAcJh07Qjkp1
	aR/TGdDFx9+cbviUCVUUDDrqd4pNiXCeF6HKSFSl1Q550pLZ/rr+Vle69pspUyo1aRHI6zqSiKqUn
	Denbq8FaE6WgUdMbcrVIqJIXQjaFPWfuE97WbgTIoswpDnMpa1qezALdCf6snUN2DGJdQxbxGQs+o
	s43d0wd52vrsxgjtvF1yhoePdT1B/WwQz1/h7f44uKGq0id69rTbPOwhywUvtxx0ydTpvhCOI8Hx9
	5mgOMmzIginlch982J8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkcOH-0002bL-Ah; Mon, 08 Jul 2019 22:45:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkcE3-0005qy-NU; Mon, 08 Jul 2019 22:35:14 +0000
X-UUID: 18219cd8355e44fbb5e07241a74949d4-20190708
X-UUID: 18219cd8355e44fbb5e07241a74949d4-20190708
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1959192700; Mon, 08 Jul 2019 14:34:51 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 15:34:50 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 06:34:46 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 06:34:45 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4, 30/33] drm/mediatek: add connection from OVL_2L1 to RDMA1
Date: Tue, 9 Jul 2019 06:34:10 +0800
Message-ID: <1562625253-29254-31-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_153511_982700_6DFB645D 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

This patch add connection from OVL_2L1 to RDMA1

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index 0a63dd0..4d75cef 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -42,9 +42,11 @@
 #define DISP_REG_CONFIG_DPI_SEL			0x064
 
 #define MT8183_DISP_OVL0_2L_MOUT_EN		0xf04
+#define MT8183_DISP_OVL1_2L_MOUT_EN		0xf08
 #define MT8183_DISP_PATH0_SEL_IN		0xf24
 
 #define OVL0_2L_MOUT_EN_DISP_PATH0			BIT(0)
+#define OVL1_2L_MOUT_EN_RDMA1				BIT(4)
 #define DISP_PATH0_SEL_IN_OVL0_2L			0x1
 
 #define MT2701_DISP_MUTEX0_MOD0			0x2c
@@ -325,6 +327,10 @@ static unsigned int mtk_ddp_mout_en(const struct mtk_mmsys_reg_data *data,
 		   next == DDP_COMPONENT_RDMA0) {
 		*addr = MT8183_DISP_OVL0_2L_MOUT_EN;
 		value = OVL0_2L_MOUT_EN_DISP_PATH0;
+	} else if (cur == DDP_COMPONENT_OVL_2L1 &&
+		   next == DDP_COMPONENT_RDMA1) {
+		*addr = MT8183_DISP_OVL1_2L_MOUT_EN;
+		value = OVL1_2L_MOUT_EN_RDMA1;
 	} else {
 		value = 0;
 	}
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
