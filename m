Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 033FC97047
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 05:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hrcYxA0NhLIc17V58BHsqgi69Xg4jH0XTAehFfm1gk=; b=O8eatWt/VOZMY/
	tNTDdi6c/sXOzBnG1tTg4EE6cHJOpKYUbBDlnw94Rv21p/rT+VQpSeXGosxthnjqu1omJhZ10WYFn
	Fq3LkqbC5AJLV1Xk6SH2ekqjCocairyfCNKxhJfgKViqtVeVPnRhJRuoBM7h8t7jcQQCO/kxLb7cr
	5bEnxu+Fdg7kJo2+BOoiRLhmNJp4lC1VmYifcv9FwfkjqG5wZvBgP5pMaVWoJzMrem3EfWz3+8LIC
	P7rupw3ukuYBPmyo90zMvqVfjHXTlOcXmNoYJZqQRwucCu3KsfoQ7F5tLAgK0OX8a5vQvUEp+OVlJ
	3PMDs14xWTVjNc9vq9pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0HHe-00081A-MZ; Wed, 21 Aug 2019 03:27:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0HF9-0006LZ-St; Wed, 21 Aug 2019 03:25:06 +0000
X-UUID: 1744436a0cb14bd6931c95e252e17480-20190820
X-UUID: 1744436a0cb14bd6931c95e252e17480-20190820
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1343351256; Tue, 20 Aug 2019 00:36:44 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 01:36:43 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 16:36:34 +0800
Received: from mtkslt209.mediatek.inc (10.21.15.96) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 20 Aug 2019 16:36:34 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Jassi Brar <jassisinghbrar@gmail.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>, CK HU
 <ck.hu@mediatek.com>
Subject: [PATCH v13 02/12] dt-binding: gce: add gce header file for mt8183
Date: Tue, 20 Aug 2019 16:36:25 +0800
Message-ID: <20190820083635.5404-3-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190820083635.5404-1-bibby.hsieh@mediatek.com>
References: <20190820083635.5404-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_202504_033242_C7BF17C3 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Daniel Kurtz <djkurtz@chromium.org>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for the mt8183 gce.

Add gce header file defined the gce hardware event,
subsys number and constant for mt8183.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mailbox/mtk-gce.txt   |   6 +-
 include/dt-bindings/gce/mt8183-gce.h          | 175 ++++++++++++++++++
 2 files changed, 178 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/gce/mt8183-gce.h

diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
index cfe40b01d164..1f7f8f2a3f49 100644
--- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
+++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
@@ -9,7 +9,7 @@ CMDQ driver uses mailbox framework for communication. Please refer to
 mailbox.txt for generic information about mailbox device-tree bindings.
 
 Required properties:
-- compatible: Must be "mediatek,mt8173-gce"
+- compatible: can be "mediatek,mt8173-gce" or "mediatek,mt8183-gce"
 - reg: Address range of the GCE unit
 - interrupts: The interrupt signal from the GCE block
 - clock: Clocks according to the common clock binding
@@ -28,8 +28,8 @@ Required properties for a client device:
 - mediatek,gce-subsys: u32, specify the sub-system id which is corresponding
   to the register address.
 
-Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'. Such as
-sub-system ids, thread priority, event ids.
+Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'
+or 'dt-binding/gce/mt8183-gce.h'. Such as sub-system ids, thread priority, event ids.
 
 Example:
 
diff --git a/include/dt-bindings/gce/mt8183-gce.h b/include/dt-bindings/gce/mt8183-gce.h
new file mode 100644
index 000000000000..29c967476f73
--- /dev/null
+++ b/include/dt-bindings/gce/mt8183-gce.h
@@ -0,0 +1,175 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: Bibby Hsieh <bibby.hsieh@mediatek.com>
+ *
+ */
+
+#ifndef _DT_BINDINGS_GCE_MT8183_H
+#define _DT_BINDINGS_GCE_MT8183_H
+
+#define CMDQ_NO_TIMEOUT		0xffffffff
+
+/* GCE HW thread priority */
+#define CMDQ_THR_PRIO_LOWEST	0
+#define CMDQ_THR_PRIO_HIGHEST	1
+
+/* GCE SUBSYS */
+#define SUBSYS_1300XXXX		0
+#define SUBSYS_1400XXXX		1
+#define SUBSYS_1401XXXX		2
+#define SUBSYS_1402XXXX		3
+#define SUBSYS_1502XXXX		4
+#define SUBSYS_1880XXXX		5
+#define SUBSYS_1881XXXX		6
+#define SUBSYS_1882XXXX		7
+#define SUBSYS_1883XXXX		8
+#define SUBSYS_1884XXXX		9
+#define SUBSYS_1000XXXX		10
+#define SUBSYS_1001XXXX		11
+#define SUBSYS_1002XXXX		12
+#define SUBSYS_1003XXXX		13
+#define SUBSYS_1004XXXX		14
+#define SUBSYS_1005XXXX		15
+#define SUBSYS_1020XXXX		16
+#define SUBSYS_1028XXXX		17
+#define SUBSYS_1700XXXX		18
+#define SUBSYS_1701XXXX		19
+#define SUBSYS_1702XXXX		20
+#define SUBSYS_1703XXXX		21
+#define SUBSYS_1800XXXX		22
+#define SUBSYS_1801XXXX		23
+#define SUBSYS_1802XXXX		24
+#define SUBSYS_1804XXXX		25
+#define SUBSYS_1805XXXX		26
+#define SUBSYS_1808XXXX		27
+#define SUBSYS_180aXXXX		28
+#define SUBSYS_180bXXXX		29
+
+#define CMDQ_EVENT_DISP_RDMA0_SOF					0
+#define CMDQ_EVENT_DISP_RDMA1_SOF					1
+#define CMDQ_EVENT_MDP_RDMA0_SOF					2
+#define CMDQ_EVENT_MDP_RSZ0_SOF						4
+#define CMDQ_EVENT_MDP_RSZ1_SOF						5
+#define CMDQ_EVENT_MDP_TDSHP_SOF					6
+#define CMDQ_EVENT_MDP_WROT0_SOF					7
+#define CMDQ_EVENT_MDP_WDMA0_SOF					8
+#define CMDQ_EVENT_DISP_OVL0_SOF					9
+#define CMDQ_EVENT_DISP_OVL0_2L_SOF					10
+#define CMDQ_EVENT_DISP_OVL1_2L_SOF					11
+#define CMDQ_EVENT_DISP_WDMA0_SOF					12
+#define CMDQ_EVENT_DISP_COLOR0_SOF					13
+#define CMDQ_EVENT_DISP_CCORR0_SOF					14
+#define CMDQ_EVENT_DISP_AAL0_SOF					15
+#define CMDQ_EVENT_DISP_GAMMA0_SOF					16
+#define CMDQ_EVENT_DISP_DITHER0_SOF					17
+#define CMDQ_EVENT_DISP_PWM0_SOF					18
+#define CMDQ_EVENT_DISP_DSI0_SOF					19
+#define CMDQ_EVENT_DISP_DPI0_SOF					20
+#define CMDQ_EVENT_DISP_RSZ_SOF						22
+#define CMDQ_EVENT_MDP_AAL_SOF						23
+#define CMDQ_EVENT_MDP_CCORR_SOF					24
+#define CMDQ_EVENT_DISP_DBI_SOF						25
+#define CMDQ_EVENT_DISP_RDMA0_EOF					26
+#define CMDQ_EVENT_DISP_RDMA1_EOF					27
+#define CMDQ_EVENT_MDP_RDMA0_EOF					28
+#define CMDQ_EVENT_MDP_RSZ0_EOF						30
+#define CMDQ_EVENT_MDP_RSZ1_EOF						31
+#define CMDQ_EVENT_MDP_TDSHP_EOF					32
+#define CMDQ_EVENT_MDP_WROT0_EOF					33
+#define CMDQ_EVENT_MDP_WDMA0_EOF					34
+#define CMDQ_EVENT_DISP_OVL0_EOF					35
+#define CMDQ_EVENT_DISP_OVL0_2L_EOF					36
+#define CMDQ_EVENT_DISP_OVL1_2L_EOF					37
+#define CMDQ_EVENT_DISP_WDMA0_EOF					38
+#define CMDQ_EVENT_DISP_COLOR0_EOF					39
+#define CMDQ_EVENT_DISP_CCORR0_EOF					40
+#define CMDQ_EVENT_DISP_AAL0_EOF					41
+#define CMDQ_EVENT_DISP_GAMMA0_EOF					42
+#define CMDQ_EVENT_DISP_DITHER0_EOF					43
+#define CMDQ_EVENT_DSI0_EOF						44
+#define CMDQ_EVENT_DPI0_EOF						45
+#define CMDQ_EVENT_DISP_RSZ_EOF						47
+#define CMDQ_EVENT_MDP_AAL_EOF						48
+#define CMDQ_EVENT_MDP_CCORR_EOF					49
+#define CMDQ_EVENT_DBI_EOF						50
+#define CMDQ_EVENT_MUTEX_STREAM_DONE0					130
+#define CMDQ_EVENT_MUTEX_STREAM_DONE1					131
+#define CMDQ_EVENT_MUTEX_STREAM_DONE2					132
+#define CMDQ_EVENT_MUTEX_STREAM_DONE3					133
+#define CMDQ_EVENT_MUTEX_STREAM_DONE4					134
+#define CMDQ_EVENT_MUTEX_STREAM_DONE5					135
+#define CMDQ_EVENT_MUTEX_STREAM_DONE6					136
+#define CMDQ_EVENT_MUTEX_STREAM_DONE7					137
+#define CMDQ_EVENT_MUTEX_STREAM_DONE8					138
+#define CMDQ_EVENT_MUTEX_STREAM_DONE9					139
+#define CMDQ_EVENT_MUTEX_STREAM_DONE10					140
+#define CMDQ_EVENT_MUTEX_STREAM_DONE11					141
+#define CMDQ_EVENT_DISP_RDMA0_BUF_UNDERRUN_EVEN				142
+#define CMDQ_EVENT_DISP_RDMA1_BUF_UNDERRUN_EVEN				143
+#define CMDQ_EVENT_DSI0_TE_EVENT					144
+#define CMDQ_EVENT_DSI0_IRQ_EVENT					145
+#define CMDQ_EVENT_DSI0_DONE_EVENT					146
+#define CMDQ_EVENT_DISP_WDMA0_SW_RST_DONE				150
+#define CMDQ_EVENT_MDP_WDMA_SW_RST_DONE					151
+#define CMDQ_EVENT_MDP_WROT0_SW_RST_DONE				152
+#define CMDQ_EVENT_MDP_RDMA0_SW_RST_DONE				154
+#define CMDQ_EVENT_DISP_OVL0_FRAME_RST_DONE_PULE			155
+#define CMDQ_EVENT_DISP_OVL0_2L_FRAME_RST_DONE_ULSE			156
+#define CMDQ_EVENT_DISP_OVL1_2L_FRAME_RST_DONE_ULSE			157
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_0					257
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_1					258
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_2					259
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_3					260
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_4					261
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_5					262
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_6					263
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_7					264
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_8					265
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_9					266
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_10					267
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_11					268
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_12					269
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_13					270
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_14					271
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_15					272
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_16					273
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_17					274
+#define CMDQ_EVENT_ISP_FRAME_DONE_P2_18					275
+#define CMDQ_EVENT_AMD_FRAME_DONE					276
+#define CMDQ_EVENT_DVE_DONE						277
+#define CMDQ_EVENT_WMFE_DONE						278
+#define CMDQ_EVENT_RSC_DONE						279
+#define CMDQ_EVENT_MFB_DONE						280
+#define CMDQ_EVENT_WPE_A_DONE						281
+#define CMDQ_EVENT_SPE_B_DONE						282
+#define CMDQ_EVENT_OCC_DONE						283
+#define CMDQ_EVENT_VENC_CMDQ_FRAME_DONE					289
+#define CMDQ_EVENT_JPG_ENC_CMDQ_DONE					290
+#define CMDQ_EVENT_JPG_DEC_CMDQ_DONE					291
+#define CMDQ_EVENT_VENC_CMDQ_MB_DONE					292
+#define CMDQ_EVENT_VENC_CMDQ_128BYTE_DONE				293
+#define CMDQ_EVENT_ISP_FRAME_DONE_A					321
+#define CMDQ_EVENT_ISP_FRAME_DONE_B					322
+#define CMDQ_EVENT_CAMSV0_PASS1_DONE					323
+#define CMDQ_EVENT_CAMSV1_PASS1_DONE					324
+#define CMDQ_EVENT_CAMSV2_PASS1_DONE					325
+#define CMDQ_EVENT_TSF_DONE						326
+#define CMDQ_EVENT_SENINF_CAM0_FIFO_FULL				327
+#define CMDQ_EVENT_SENINF_CAM1_FIFO_FULL				328
+#define CMDQ_EVENT_SENINF_CAM2_FIFO_FULL				329
+#define CMDQ_EVENT_SENINF_CAM3_FIFO_FULL				330
+#define CMDQ_EVENT_SENINF_CAM4_FIFO_FULL				331
+#define CMDQ_EVENT_SENINF_CAM5_FIFO_FULL				332
+#define CMDQ_EVENT_SENINF_CAM6_FIFO_FULL				333
+#define CMDQ_EVENT_SENINF_CAM7_FIFO_FULL				334
+#define CMDQ_EVENT_IPU_CORE0_DONE0					353
+#define CMDQ_EVENT_IPU_CORE0_DONE1					354
+#define CMDQ_EVENT_IPU_CORE0_DONE2					355
+#define CMDQ_EVENT_IPU_CORE0_DONE3					356
+#define CMDQ_EVENT_IPU_CORE1_DONE0					385
+#define CMDQ_EVENT_IPU_CORE1_DONE1					386
+#define CMDQ_EVENT_IPU_CORE1_DONE2					387
+#define CMDQ_EVENT_IPU_CORE1_DONE3					388
+
+#endif
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
