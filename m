Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50746AF925
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:39:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h0x2K8r6eoqSAkz5d8um/IXbsj5l6DSd5Jrhi3/PKRM=; b=lIaATo3/l3B99C
	/byeq468Ng29KyOMJ1PNSgropSEIUoZFxWD3tjxIw9z7/4CHbv7bSCqaUP175kaOpFdbNDmNfQyEg
	XVvygiyx4KVAnaRZiNNbsFV1Jxgn87PpK0Bl0s/JsjdCmYuq027qJIbFjAxUrWlfEj0EeM3ZywRAV
	RsOMepQy4WUvKiTK2wKyYZKiD0dtcj9uUmgA+tB8x8zFJBHzHkVD4B2bN1yDHexuVwDYekz5wOUTj
	wT13rlEzghNMfhw3xRubaZTjZ6f7yVFBYvfme92zLJZ8YfqA9DWeUdMcCPIcFXyk/XnzdfMctxZww
	8C2+vnVuxRlPqgwvWVIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7z6T-0008KA-Ig; Wed, 11 Sep 2019 09:39:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z6F-0008IW-2b; Wed, 11 Sep 2019 09:39:44 +0000
X-UUID: 3feda9386fd84df79fc81d4914a5dcb1-20190911
X-UUID: 3feda9386fd84df79fc81d4914a5dcb1-20190911
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 263677495; Wed, 11 Sep 2019 01:39:39 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 02:39:37 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 17:39:35 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Sep 2019 17:39:35 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC, v3, 2/4] dts: arm64: mt8183: Add Mediatek MDP3 nodes
Date: Wed, 11 Sep 2019 17:39:34 +0800
Message-ID: <20190911093934.5838-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9D995F438363647D75080F339492A24805EDED12792A19AEC1E898DCF0F94B7D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_023943_128315_63F3D10F 
X-CRM114-Status: UNSURE (   6.64  )
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

From: Ping-Hsun Wu <ping-hsun.wu@mediatek.com>

Add device nodes for Media Data Path 3 (MDP3) modules.

Signed-off-by: Ping-Hsun Wu <ping-hsun.wu@mediatek.com>
Signed-off-by: daoyuan huang <daoyuan.huang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 137 +++++++++++++++++++++++
 1 file changed, 137 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 5616d158a4fa..21737fb4eb62 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -478,9 +478,137 @@
 		mmsys: syscon@14000000 {
 			compatible = "mediatek,mt8183-mmsys", "syscon";
 			reg = <0 0x14000000 0 0x1000>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0 0x1000>;
 			#clock-cells = <1>;
 		};
 
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
 		display_components: dispsys@14000000 {
 			compatible = "mediatek,mt8183-display";
 			reg = <0 0x14000000 0 0x1000>;
@@ -580,6 +708,7 @@
 		mutex: mutex@14016000 {
 			compatible = "mediatek,mt8183-disp-mutex";
 			reg = <0 0x14016000 0 0x1000>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0x6000 0x1000>;
 			interrupts = <GIC_SPI 217 IRQ_TYPE_LEVEL_LOW>;
 			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
 		};
@@ -605,6 +734,14 @@
 			power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
 		};
 
+		mdp_ccorr: mdp_ccorr@1401c000 {
+			compatible = "mediatek,mt8183-mdp-ccorr";
+			mediatek,mdp-id = <0>;
+			reg = <0 0x1401c000 0 0x1000>;
+			mediatek,gce-client-reg = <&gce SUBSYS_1401XXXX 0xc000 0x1000>;
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
