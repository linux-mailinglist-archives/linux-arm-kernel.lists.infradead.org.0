Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D4A01FE16
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 05:24:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G1KBTA4RMgKFf2IkPOms/87Lb6eXOhlmc2mG/phaWTs=; b=GDAEftevYZbpwT
	HNcoAhcqG1MCAYYo4UzL6ZvsMSfWtQyblPGKTj6S9yPBS+w+bCtM9p6NP6I8NO6avWalGAO91xRSt
	203fuTNybOoFu5bzwuJR/eUNIj5onbINGm6EDOYnL/EOczi4zFE3NsqaBxQXodv/hvnAOqi1M0Y8+
	O7BnlMgM9Ulgh4Szs+XisDXjBVYONheadFT2d8N1UIBer0slUzpzRo9rsPYc6VGXn2NAZP+OI0+Bk
	HPm2Zy0s4PiEvvA5kI8amKe8bx8hYsPbUZB4nq8lWQIcutF0KEStSbuBuew2VuvLRruQphUKwXqOj
	+FrceWmnx6rz0D3BExNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR70U-00072Q-Bn; Thu, 16 May 2019 03:24:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR705-0006ld-Ue; Thu, 16 May 2019 03:24:11 +0000
X-UUID: 59da1b79c0a0422f94c938ced2607ce3-20190515
X-UUID: 59da1b79c0a0422f94c938ced2607ce3-20190515
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <daoyuan.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1558477896; Wed, 15 May 2019 19:23:57 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 20:23:56 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 11:23:54 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 11:23:55 +0800
From: Daoyuan Huang <daoyuan.huang@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC v2 2/4] dts: arm64: mt8183: Add Mediatek MDP3 nodes
Date: Thu, 16 May 2019 11:23:30 +0800
Message-ID: <20190516032332.56844-3-daoyuan.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202409_988696_1F0594A7 
X-CRM114-Status: UNSURE (   7.47  )
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

Add device nodes for Media Data Path 3 (MDP3) modules.

Signed-off-by: Ping-Hsun Wu <ping-hsun.wu@mediatek.com>
Signed-off-by: daoyuan huang <daoyuan.huang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 173 +++++++++++++++++++++++
 1 file changed, 173 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c3a516e63141..e3e4c3bcd7b6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -418,14 +418,187 @@
 		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8183-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1400XXXX 0 0x1000>;
 			#clock-cells = <1>;
 		};
 
+		mdp_camin@14000000 {
+			compatible = "mediatek,mt8183-mdp-dl";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14000000 0 0x1000>;
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1400XXXX 0 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_DL_TXCK>,
+				<&mmsys CLK_MM_MDP_DL_RX>;
+		};
+
+		mdp_camin2@14000000 {
+			compatible = "mediatek,mt8183-mdp-dl";
+			mediatek,mdp-id = <1>;
+			reg = <0 0x14000000 0 0x1000>;
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1400XXXX 0 0x1000>;
+			clocks = <&mmsys CLK_MM_IPU_DL_TXCK>,
+				<&mmsys CLK_MM_IPU_DL_RX>;
+		};
+
+		mdp_rdma0: mdp_rdma0@14001000 {
+			compatible = "mediatek,mt8183-mdp-rdma",
+				     "mediatek,mt8183-mdp3";
+			mediatek,vpu = <&vpu>;
+			mediatek,scp = <&scp>;
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14001000 0 0x1000>;
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1400XXXX 0x1000 0x1000>;
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
+			mediatek,gce-event-names = "rdma0_sof",
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
+			mediatek,gce-events = <&gce CMDQ_EVENT_MDP_RDMA0_SOF>,
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
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1502XXXX 0 0x1000>;
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
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1400XXXX 0x3000 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_RSZ0>;
+		};
+
+		mdp_rsz1: mdp_rsz1@14004000 {
+			compatible = "mediatek,mt8183-mdp-rsz";
+			mediatek,mdp-id = <1>;
+			reg = <0 0x14004000 0 0x1000>;
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1400XXXX 0x4000 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_RSZ1>;
+		};
+
+		mdp_wrot0: mdp_wrot0@14005000 {
+			compatible = "mediatek,mt8183-mdp-wrot";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x14005000 0 0x1000>;
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1400XXXX 0x5000 0x1000>;
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
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1400XXXX 0x6000 0x1000>;
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
 		smi_common: smi@14019000 {
 			compatible = "mediatek,mt8183-smi-common", "syscon";
 			reg = <0 0x14019000 0 0x1000>;
 		};
 
+		mdp_ccorr: mdp_ccorr@1401c000 {
+			compatible = "mediatek,mt8183-mdp-ccorr";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x1401c000 0 0x1000>;
+			mediatek,gce-client-reg =
+					<&gce SUBSYS_1401XXXX 0xc000 0x1000>;
+			clocks = <&mmsys CLK_MM_MDP_CCORR>;
+		};
+
 		imgsys: syscon@15020000 {
 			compatible = "mediatek,mt8183-imgsys", "syscon";
 			reg = <0 0x15020000 0 0x1000>;
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
