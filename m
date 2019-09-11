Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6B13AF8FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KR3OnTRq08035iC8CSjUL0IQ/xbVibhaCN+/VWhP9hQ=; b=JvnEAaQibGYZTm
	qypPolzboZuBQ+9Ncipwq7wfXYIVX44AGPRPxAKEFdNCgopzaZo2pNMbh8Poc0OR3s7e5CneZNH3S
	+AN9St1GUmlMNBvNEeCE6JJhQZwPtbmWladOcZeMloNxTu0GgfJpnabKLE3jV9XF0Y/1tKe+iX4H9
	x7mnU/nT7h7JGxVe5P6SLW7GWFE0Mmok3xkfX9MVgFM+afatXp+S6IkI0nsRJAB7QH5fEc+GPV3Iw
	Fs34H1FZxC7Cp+lhLeCjf7qX2jHbDlixvcACxKCMWtNp7jXkV+CwA8Z793qEbchBK+WH0xy8XYdVe
	FH/d1StsSWSjIWBebePA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7z1E-00066x-VU; Wed, 11 Sep 2019 09:34:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z0y-00064x-Sm; Wed, 11 Sep 2019 09:34:18 +0000
X-UUID: 0b50c13533e84032969cc07f67337cec-20190911
X-UUID: 0b50c13533e84032969cc07f67337cec-20190911
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1535139697; Wed, 11 Sep 2019 01:34:10 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 02:34:09 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 17:34:08 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Sep 2019 17:34:08 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC, v3, 1/4] dt-binding: mt8183: Add Mediatek MDP3 dt-bindings
Date: Wed, 11 Sep 2019 17:34:03 +0800
Message-ID: <20190911093406.5688-2-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190911093406.5688-1-bibby.hsieh@mediatek.com>
References: <20190911093406.5688-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_023416_935246_BF9C5623 
X-CRM114-Status: UNSURE (   9.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 .../bindings/media/mediatek,mt8183-mdp3.txt   | 201 ++++++++++++++++++
 1 file changed, 201 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt b/Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt
new file mode 100644
index 000000000000..0d15326d12c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt
@@ -0,0 +1,201 @@
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
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_DL_TXCK>,
+				<&mmsys CLK_MM_MDP_DL_RX>;
+		};
+
+		mdp_camin2@14000000 {
+			compatible = "mediatek,mt8183-mdp-dl";
+			mediatek,mdp-id = <1>;
+			reg = <0 0x14000000 0 0x1000>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
+			clocks = <&mmsys CLK_MM_IPU_DL_TXCK>,
+				<&mmsys CLK_MM_IPU_DL_RX>;
+		};
+
+		mdp_rdma0: mdp_rdma0@14001000 {
+			compatible = "mediatek,mt8183-mdp-rdma",
+				     "mediatek,mt8183-mdp3";
+			mediatek,scp = <&scp>;
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14001000 0 0x1000>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x1000 0x1000>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
+			clocks = <&mmsys CLK_MM_MDP_RDMA0>,
+				<&mmsys CLK_MM_MDP_RSZ1>;
+			iommus = <&iommu M4U_PORT_MDP_RDMA0>;
+			mediatek,larb = <&larb0>;
+			mediatek,mmsys = <&mmsys>;
+			mediatek,mm-mutex = <&mutex>;
+			mediatek,mailbox-gce = <&gce>;
+			mboxes = <&gce 20 CMDQ_THR_PRIO_LOWEST 0>,
+				<&gce 21 CMDQ_THR_PRIO_LOWEST 0>,
+				<&gce 22 CMDQ_THR_PRIO_LOWEST 0>,
+				<&gce 23 CMDQ_THR_PRIO_LOWEST 0>;
+			gce-subsys = <&gce 0x14000000 SUBSYS_1400XXXX>,
+				<&gce 0x14010000 SUBSYS_1401XXXX>,
+				<&gce 0x14020000 SUBSYS_1402XXXX>,
+				<&gce 0x15020000 SUBSYS_1502XXXX>;
+			mediatek,gce-events = <CMDQ_EVENT_MDP_RDMA0_SOF>,
+				<CMDQ_EVENT_MDP_RDMA0_EOF>,
+				<CMDQ_EVENT_MDP_RSZ0_SOF>,
+				<CMDQ_EVENT_MDP_RSZ1_SOF>,
+				<CMDQ_EVENT_MDP_TDSHP_SOF>,
+				<CMDQ_EVENT_MDP_WROT0_SOF>,
+				<CMDQ_EVENT_MDP_WROT0_EOF>,
+				<CMDQ_EVENT_MDP_WDMA0_SOF>,
+				<CMDQ_EVENT_MDP_WDMA0_EOF>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_0>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_1>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_2>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_3>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_4>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_5>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_6>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_7>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_8>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_9>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_10>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_11>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_12>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_13>,
+				<CMDQ_EVENT_ISP_FRAME_DONE_P2_14>,
+				<CMDQ_EVENT_WPE_A_DONE>,
+				<CMDQ_EVENT_SPE_B_DONE>;
+		};
+
+		mdp_imgi@15020000 {
+			compatible = "mediatek,mt8183-mdp-imgi";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x15020000 0 0x1000>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1502XXXX 0 0x1000>;
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
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_RSZ0>;
+		};
+
+		mdp_rsz1: mdp_rsz1@14004000 {
+			compatible = "mediatek,mt8183-mdp-rsz";
+			mediatek,mdp-id = <1>;
+			reg = <0 0x14004000 0 0x1000>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x4000 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_RSZ1>;
+		};
+
+		mdp_wrot0: mdp_wrot0@14005000 {
+			compatible = "mediatek,mt8183-mdp-wrot";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14005000 0 0x1000>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x5000 0x1000>;
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
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x6000 0x1000>;
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
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0xc000 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_CCORR>;
+		};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
