Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60CA1FE1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 05:25:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUr/DpClKgRhXYemmNl6WB9p9I/8u5BnAiztPThEQgg=; b=tnFDgo4iPSLyu5
	F2XRsiwsHjvWfgGG90XjZKxtRClZ2pe4QZbXLzRzGLjzHzbXEwsMNkHvs9oOBFZ7Y+2Azg3NFa9Ps
	JbZTgYRip7DsuatTC/iuh6ctO4HuxpXD+Xaa73gqeeEeQOIY2rTedrYhneaY2PInRZnYjheq/GZTP
	w2fJsiAxuYIqushZ1qdEs+XBbO5ENgzp7djP1zevJUwtYwG7BP8dtDzNu/wGhM6ytzFuLpHXYxM6o
	BCZ/Y0H42nPyZvoIMemKp75VM7uukfwQrG7h0orjiaLFVAvAkgh50F4RQm3+WbJNU4yryrA/f/s+/
	FMz1BxFvkvu8Q6bmq/Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR710-0007cg-33; Thu, 16 May 2019 03:25:06 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR708-0006n3-4Z; Thu, 16 May 2019 03:24:15 +0000
X-UUID: a9064cb0a990436caa400ae1a72d0f27-20190515
X-UUID: a9064cb0a990436caa400ae1a72d0f27-20190515
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <daoyuan.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 284957656; Wed, 15 May 2019 19:23:55 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 20:23:53 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 11:23:51 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 11:23:52 +0800
From: Daoyuan Huang <daoyuan.huang@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC v2 1/4] dt-binding: mt8183: Add Mediatek MDP3 dt-bindings
Date: Thu, 16 May 2019 11:23:29 +0800
Message-ID: <20190516032332.56844-2-daoyuan.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 0170F78B1C557B773E988417459CBD8403109AB7001BAF9369A052B854601FA42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202412_256020_894D992F 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, daoyuan huang <daoyuan.huang@mediatek.com>,
 holmes.chiou@mediatek.com, Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 Ping-Hsun Wu <ping-hsun.wu@mediatek.com>, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: daoyuan huang <daoyuan.huang@mediatek.com>

This patch adds DT binding document for Media Data Path 3 (MDP3)
a unit in multimedia system used for scaling and color format convert.

Signed-off-by: Ping-Hsun Wu <ping-hsun.wu@mediatek.com>
Signed-off-by: daoyuan huang <daoyuan.huang@mediatek.com>
---
 .../bindings/media/mediatek,mt8183-mdp3.txt   | 217 ++++++++++++++++++
 1 file changed, 217 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt b/Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt
new file mode 100644
index 000000000000..cf3e808b7146
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt
@@ -0,0 +1,217 @@
+* Mediatek Media Data Path 3
+
+Media Data Path 3 (MDP3) is used for scaling and color space conversion.
+
+Required properties (controller node):
+- compatible: "mediatek,mt8183-mdp"
+- mediatek,scp: the node of system control processor (SCP), using the
+  remoteproc & rpmsg framework, see
+  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
+- mediatek,mmsys: the node of mux(multiplexer) controller for HW connections.
+- mediatek,mm-mutex: the node of sof(start of frame) signal controller.
+- mediatek,mailbox-gce: the node of global command engine (GCE), used to
+  read/write registers with critical time limitation, see
+  Documentation/devicetree/bindings/mailbox/mtk-gce.txt for details.
+- mboxes: mailbox number used to communicate with GCE.
+- gce-subsys: sub-system id corresponding to the register address.
+- gce-event-names: in use event name list, used to correspond to event IDs.
+- gce-events: in use event IDs list, all IDs are defined in
+  'dt-bindings/gce/mt8183-gce.h'.
+
+Required properties (all function blocks, child node):
+- compatible: Should be one of
+        "mediatek,mt8183-mdp-rdma"  - read DMA
+        "mediatek,mt8183-mdp-rsz"   - resizer
+        "mediatek,mt8183-mdp-wdma"  - write DMA
+        "mediatek,mt8183-mdp-wrot"  - write DMA with rotation
+        "mediatek,mt8183-mdp-ccorr" - color correction with 3X3 matrix
+- reg: Physical base address and length of the function block register space
+- clocks: device clocks, see
+  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
+- power-domains: a phandle to the power domain, see
+  Documentation/devicetree/bindings/power/power_domain.txt for details.
+- mediatek,mdp-id: HW index to distinguish same functionality modules.
+
+Required properties (DMA function blocks, child node):
+- compatible: Should be one of
+        "mediatek,mt8183-mdp-rdma"
+        "mediatek,mt8183-mdp-wdma"
+        "mediatek,mt8183-mdp-wrot"
+- iommus: should point to the respective IOMMU block with master port as
+  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
+  for details.
+- mediatek,larb: must contain the local arbiters in the current Socs, see
+  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
+  for details.
+
+Required properties (input path selection node):
+- compatible:
+        "mediatek,mt8183-mdp-dl"    - MDP direct link input source selection
+- reg: Physical base address and length of the function block register space
+- clocks: device clocks, see
+  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
+- mediatek,mdp-id: HW index to distinguish same functionality modules.
+
+Required properties (ISP PASS2 (DIP) module path selection node):
+- compatible:
+        "mediatek,mt8183-mdp-imgi"  - input DMA of ISP PASS2 (DIP) module for raw image input
+- reg: Physical base address and length of the function block register space
+- mediatek,mdp-id: HW index to distinguish same functionality modules.
+
+Required properties (SW node):
+- compatible: Should be one of
+        "mediatek,mt8183-mdp-exto"  - output DMA of ISP PASS2 (DIP) module for yuv image output
+        "mediatek,mt8183-mdp-path"  - MDP output path selection
+- mediatek,mdp-id: HW index to distinguish same functionality modules.
+
+Example:
+		mdp_camin@14000000 {
+			compatible = "mediatek,mt8183-mdp-dl";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14000000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_DL_TXCK>,
+				<&mmsys CLK_MM_MDP_DL_RX>;
+		};
+
+		mdp_camin2@14000000 {
+			compatible = "mediatek,mt8183-mdp-dl";
+			mediatek,mdp-id = <1>;
+			reg = <0 0x14000000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_IPU_DL_TXCK>,
+				<&mmsys CLK_MM_IPU_DL_RX>;
+		};
+
+		mdp_rdma0: mdp_rdma0@14001000 {
+			compatible = "mediatek,mt8183-mdp-rdma", "mediatek,mt8183-mdp3";
+			mediatek,scp = <&scp>;
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14001000 0 0x1000>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
+			clocks = <&mmsys CLK_MM_MDP_RDMA0>,
+				<&mmsys CLK_MM_MDP_RSZ1>;
+			iommus = <&iommu M4U_PORT_MDP_RDMA0>;
+			mediatek,larb = <&larb0>;
+			mediatek,mmsys = <&mmsys>;
+			mediatek,mm-mutex = <&mutex>;
+			mediatek,mailbox-gce = <&gce>;
+			mboxes = <&gce 20 0 CMDQ_THR_PRIO_LOWEST>,
+				<&gce 21 0 CMDQ_THR_PRIO_LOWEST>,
+				<&gce 22 0 CMDQ_THR_PRIO_LOWEST>,
+				<&gce 23 0 CMDQ_THR_PRIO_LOWEST>;
+			gce-subsys = <&gce 0x14000000 SUBSYS_1400XXXX>,
+				<&gce 0x14010000 SUBSYS_1401XXXX>,
+				<&gce 0x14020000 SUBSYS_1402XXXX>,
+				<&gce 0x15020000 SUBSYS_1502XXXX>;
+			gce-event-names = "rdma0_sof",
+				"rsz0_sof",
+				"rsz1_sof",
+				"tdshp0_sof",
+				"wrot0_sof",
+				"wdma0_sof",
+				"rdma0_done",
+				"wrot0_done",
+				"wdma0_done",
+				"isp_p2_0_done",
+				"isp_p2_1_done",
+				"isp_p2_2_done",
+				"isp_p2_3_done",
+				"isp_p2_4_done",
+				"isp_p2_5_done",
+				"isp_p2_6_done",
+				"isp_p2_7_done",
+				"isp_p2_8_done",
+				"isp_p2_9_done",
+				"isp_p2_10_done",
+				"isp_p2_11_done",
+				"isp_p2_12_done",
+				"isp_p2_13_done",
+				"isp_p2_14_done",
+				"wpe_done",
+				"wpe_b_done";
+			gce-events = <&gce CMDQ_EVENT_MDP_RDMA0_SOF>,
+				<&gce CMDQ_EVENT_MDP_RSZ0_SOF>,
+				<&gce CMDQ_EVENT_MDP_RSZ1_SOF>,
+				<&gce CMDQ_EVENT_MDP_TDSHP_SOF>,
+				<&gce CMDQ_EVENT_MDP_WROT0_SOF>,
+				<&gce CMDQ_EVENT_MDP_WDMA0_SOF>,
+				<&gce CMDQ_EVENT_MDP_RDMA0_EOF>,
+				<&gce CMDQ_EVENT_MDP_WROT0_EOF>,
+				<&gce CMDQ_EVENT_MDP_WDMA0_EOF>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_0>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_1>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_2>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_3>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_4>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_5>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_6>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_7>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_8>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_9>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_10>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_11>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_12>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_13>,
+				<&gce CMDQ_EVENT_ISP_FRAME_DONE_P2_14>,
+				<&gce CMDQ_EVENT_WPE_A_DONE>,
+				<&gce CMDQ_EVENT_SPE_B_DONE>;
+		};
+
+		mdp_imgi@15020000 {
+			compatible = "mediatek,mt8183-mdp-imgi";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x15020000 0 0x1000>;
+		};
+
+		mdp_img2o@15020000 {
+			compatible = "mediatek,mt8183-mdp-exto";
+			mediatek,mdp-id = <1>;
+		};
+
+		mdp_rsz0: mdp_rsz0@14003000 {
+			compatible = "mediatek,mt8183-mdp-rsz";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14003000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_RSZ0>;
+		};
+
+		mdp_rsz1: mdp_rsz1@14004000 {
+			compatible = "mediatek,mt8183-mdp-rsz";
+			mediatek,mdp-id = <1>;
+			reg = <0 0x14004000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_RSZ1>;
+		};
+
+		mdp_wrot0: mdp_wrot0@14005000 {
+			compatible = "mediatek,mt8183-mdp-wrot";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14005000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_WROT0>;
+			iommus = <&iommu M4U_PORT_MDP_WROT0>;
+			mediatek,larb = <&larb0>;
+		};
+
+		mdp_path0_sout@14005000 {
+			compatible = "mediatek,mt8183-mdp-path";
+			mediatek,mdp-id = <0>;
+		};
+
+		mdp_wdma: mdp_wdma@14006000 {
+			compatible = "mediatek,mt8183-mdp-wdma";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14006000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_WDMA0>;
+			iommus = <&iommu M4U_PORT_MDP_WDMA0>;
+			mediatek,larb = <&larb0>;
+		};
+
+		mdp_path1_sout@14006000 {
+			compatible = "mediatek,mt8183-mdp-path";
+			mediatek,mdp-id = <1>;
+		};
+
+		mdp_ccorr: mdp_ccorr@1401c000 {
+			compatible = "mediatek,mt8183-mdp-ccorr";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x1401c000 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_CCORR>;
+		};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
