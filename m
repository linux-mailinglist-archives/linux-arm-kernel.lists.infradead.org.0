Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF843B483
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iyx3eerju9hyQUV4EkgI3VGaqsJFAEz4XPDu4gI6Ooo=; b=DLEFou/K0YanMW
	da2zdD+wuV6nU8cv/pZFgGN+yUgFW/wg8VckxDHmiZuxkC247a7ClgB3rSOiv10nKrf10Lvg+j7n3
	gpzjvc8XKBgK2OKlVXydZ2V8jxmclHhRpNLs+I1UL5G4U8I9tiwJzBtFAwqIqGebaQ+Xvr2N5AbhW
	vDBeW6iJ6BbcwFnPReYV3tFarp0hmAmMipcMOZsBJ/TqoiIqSzWPsjptbTVeNT52nnUFDK0AGpOLO
	4DHBjHjAnHe3apgRHcZmlwk4nZ1Vb0dR2P499BDaUpdT6IDTgFolVi3VSudfSwQjt4Fh3h9tq73Ff
	cggs1shV10U5PxjcS0vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJGY-0005cf-LO; Mon, 10 Jun 2019 12:19:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJG4-0005O8-1N; Mon, 10 Jun 2019 12:18:42 +0000
X-UUID: 89376454d10b4ab1a8bd0221d6f10a9e-20190610
X-UUID: 89376454d10b4ab1a8bd0221d6f10a9e-20190610
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1364569015; Mon, 10 Jun 2019 04:18:39 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:18:37 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:18:36 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:18:35 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v7 01/21] dt-bindings: mediatek: Add binding for mt8183 IOMMU
 and SMI
Date: Mon, 10 Jun 2019 20:17:40 +0800
Message-ID: <1560169080-27134-2-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_051840_203421_F1D5F0B0 
X-CRM114-Status: GOOD (  18.63  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com, Will
 Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds decriptions for mt8183 IOMMU and SMI.

mt8183 has only one M4U like mt8173 and is also MTK IOMMU gen2 which
uses ARM Short-Descriptor translation table format.

The mt8183 M4U-SMI HW diagram is as below:

                          EMI
                           |
                          M4U
                           |
                       ----------
                       |        |
                   gals0-rx   gals1-rx
                       |        |
                       |        |
                   gals0-tx   gals1-tx
                       |        |
                      ------------
                       SMI Common
                      ------------
                           |
  +-----+-----+--------+-----+-----+-------+-------+
  |     |     |        |     |     |       |       |
  |     |  gals-rx  gals-rx  |   gals-rx gals-rx gals-rx
  |     |     |        |     |     |       |       |
  |     |     |        |     |     |       |       |
  |     |  gals-tx  gals-tx  |   gals-tx gals-tx gals-tx
  |     |     |        |     |     |       |       |
larb0 larb1  IPU0    IPU1  larb4  larb5  larb6    CCU
disp  vdec   img     cam    venc   img    cam

All the connections are HW fixed, SW can NOT adjust it.

Compared with mt8173, we add a GALS(Global Async Local Sync) module
between SMI-common and M4U, and additional GALS between larb2/3/5/6
and SMI-common. GALS can help synchronize for the modules in different
clock frequency, it can be seen as a "asynchronous fifo".

GALS can only help transfer the command/data while it doesn't have
the configuring register, thus it has the special "smi" clock and it
doesn't have the "apb" clock. From the diagram above, we add "gals0"
and "gals1" clocks for smi-common and add a "gals" clock for smi-larb.

From the diagram above, IPU0/IPU1(Image Processor Unit) and CCU(Camera
Control Unit) is connected with smi-common directly, we can take them
as "larb2", "larb3" and "larb7", and their register spaces are
different with the normal larb.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 .../devicetree/bindings/iommu/mediatek,iommu.txt   |  30 ++++-
 .../memory-controllers/mediatek,smi-common.txt     |  12 +-
 .../memory-controllers/mediatek,smi-larb.txt       |   4 +
 include/dt-bindings/memory/mt8183-larb-port.h      | 130 +++++++++++++++++++++
 4 files changed, 170 insertions(+), 6 deletions(-)
 create mode 100644 include/dt-bindings/memory/mt8183-larb-port.h

diff --git a/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt b/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
index 6922db5..ce59a50 100644
--- a/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
+++ b/Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
@@ -11,10 +11,23 @@ ARM Short-Descriptor translation table format for address translation.
                |
               m4u (Multimedia Memory Management Unit)
                |
+          +--------+
+          |        |
+      gals0-rx   gals1-rx    (Global Async Local Sync rx)
+          |        |
+          |        |
+      gals0-tx   gals1-tx    (Global Async Local Sync tx)
+          |        |          Some SoCs may have GALS.
+          +--------+
+               |
            SMI Common(Smart Multimedia Interface Common)
                |
        +----------------+-------
        |                |
+       |             gals-rx        There may be GALS in some larbs.
+       |                |
+       |                |
+       |             gals-tx
        |                |
    SMI larb0        SMI larb1   ... SoCs have several SMI local arbiter(larb).
    (display)         (vdec)
@@ -36,6 +49,10 @@ each local arbiter.
 like display, video decode, and camera. And there are different ports
 in each larb. Take a example, There are many ports like MC, PP, VLD in the
 video decode local arbiter, all these ports are according to the video HW.
+  In some SoCs, there may be a GALS(Global Async Local Sync) module between
+smi-common and m4u, and additional GALS module between smi-larb and
+smi-common. GALS can been seen as a "asynchronous fifo" which could help
+synchronize for the modules in different clock frequency.
 
 Required properties:
 - compatible : must be one of the following string:
@@ -44,18 +61,25 @@ Required properties:
 	"mediatek,mt7623-m4u", "mediatek,mt2701-m4u" for mt7623 which uses
 						     generation one m4u HW.
 	"mediatek,mt8173-m4u" for mt8173 which uses generation two m4u HW.
+	"mediatek,mt8183-m4u" for mt8183 which uses generation two m4u HW.
 - reg : m4u register base and size.
 - interrupts : the interrupt of m4u.
 - clocks : must contain one entry for each clock-names.
-- clock-names : must be "bclk", It is the block clock of m4u.
+- clock-names : Only 1 optional clock:
+  - "bclk": the block clock of m4u.
+  Here is the list which require this "bclk":
+  - mt2701, mt2712, mt7623 and mt8173.
+  Note that m4u use the EMI clock which always has been enabled before kernel
+  if there is no this "bclk".
 - mediatek,larbs : List of phandle to the local arbiters in the current Socs.
 	Refer to bindings/memory-controllers/mediatek,smi-larb.txt. It must sort
 	according to the local arbiter index, like larb0, larb1, larb2...
 - iommu-cells : must be 1. This is the mtk_m4u_id according to the HW.
 	Specifies the mtk_m4u_id as defined in
 	dt-binding/memory/mt2701-larb-port.h for mt2701, mt7623
-	dt-binding/memory/mt2712-larb-port.h for mt2712, and
-	dt-binding/memory/mt8173-larb-port.h for mt8173.
+	dt-binding/memory/mt2712-larb-port.h for mt2712,
+	dt-binding/memory/mt8173-larb-port.h for mt8173, and
+	dt-binding/memory/mt8183-larb-port.h for mt8183.
 
 Example:
 	iommu: iommu@10205000 {
diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
index e937ddd..b478ade 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-common.txt
@@ -2,9 +2,10 @@ SMI (Smart Multimedia Interface) Common
 
 The hardware block diagram please check bindings/iommu/mediatek,iommu.txt
 
-Mediatek SMI have two generations of HW architecture, mt2712 and mt8173 use
-the second generation of SMI HW while mt2701 uses the first generation HW of
-SMI.
+Mediatek SMI have two generations of HW architecture, here is the list
+which generation the SoCs use:
+generation 1: mt2701 and mt7623.
+generation 2: mt2712, mt8173 and mt8183.
 
 There's slight differences between the two SMI, for generation 2, the
 register which control the iommu port is at each larb's register base. But
@@ -19,6 +20,7 @@ Required properties:
 	"mediatek,mt2712-smi-common"
 	"mediatek,mt7623-smi-common", "mediatek,mt2701-smi-common"
 	"mediatek,mt8173-smi-common"
+	"mediatek,mt8183-smi-common"
 - reg : the register and size of the SMI block.
 - power-domains : a phandle to the power domain of this local arbiter.
 - clocks : Must contain an entry for each entry in clock-names.
@@ -30,6 +32,10 @@ Required properties:
 	    They may be the same if both source clocks are the same.
   - "async" : asynchronous clock, it help transform the smi clock into the emi
 	      clock domain, this clock is only needed by generation 1 smi HW.
+  and these 2 option clocks for generation 2 smi HW:
+  - "gals0": the path0 clock of GALS(Global Async Local Sync).
+  - "gals1": the path1 clock of GALS(Global Async Local Sync).
+  Here is the list which has this GALS: mt8183.
 
 Example:
 	smi_common: smi@14022000 {
diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
index 94eddca..4b369b3 100644
--- a/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
@@ -8,6 +8,7 @@ Required properties:
 		"mediatek,mt2712-smi-larb"
 		"mediatek,mt7623-smi-larb", "mediatek,mt2701-smi-larb"
 		"mediatek,mt8173-smi-larb"
+		"mediatek,mt8183-smi-larb"
 - reg : the register and size of this local arbiter.
 - mediatek,smi : a phandle to the smi_common node.
 - power-domains : a phandle to the power domain of this local arbiter.
@@ -16,6 +17,9 @@ Required properties:
   - "apb" : Advanced Peripheral Bus clock, It's the clock for setting
 	    the register.
   - "smi" : It's the clock for transfer data and command.
+  and this optional clock name:
+  - "gals": the clock for GALS(Global Async Local Sync).
+  Here is the list which has this GALS: mt8183.
 
 Required property for mt2701, mt2712 and mt7623:
 - mediatek,larb-id :the hardware id of this larb.
diff --git a/include/dt-bindings/memory/mt8183-larb-port.h b/include/dt-bindings/memory/mt8183-larb-port.h
new file mode 100644
index 0000000..2c579f3
--- /dev/null
+++ b/include/dt-bindings/memory/mt8183-larb-port.h
@@ -0,0 +1,130 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2018 MediaTek Inc.
+ * Author: Yong Wu <yong.wu@mediatek.com>
+ */
+#ifndef __DTS_IOMMU_PORT_MT8183_H
+#define __DTS_IOMMU_PORT_MT8183_H
+
+#define MTK_M4U_ID(larb, port)		(((larb) << 5) | (port))
+
+#define M4U_LARB0_ID			0
+#define M4U_LARB1_ID			1
+#define M4U_LARB2_ID			2
+#define M4U_LARB3_ID			3
+#define M4U_LARB4_ID			4
+#define M4U_LARB5_ID			5
+#define M4U_LARB6_ID			6
+#define M4U_LARB7_ID			7
+
+/* larb0 */
+#define	M4U_PORT_DISP_OVL0		MTK_M4U_ID(M4U_LARB0_ID, 0)
+#define	M4U_PORT_DISP_2L_OVL0_LARB0     MTK_M4U_ID(M4U_LARB0_ID, 1)
+#define	M4U_PORT_DISP_2L_OVL1_LARB0     MTK_M4U_ID(M4U_LARB0_ID, 2)
+#define	M4U_PORT_DISP_RDMA0		MTK_M4U_ID(M4U_LARB0_ID, 3)
+#define	M4U_PORT_DISP_RDMA1		MTK_M4U_ID(M4U_LARB0_ID, 4)
+#define	M4U_PORT_DISP_WDMA0		MTK_M4U_ID(M4U_LARB0_ID, 5)
+#define	M4U_PORT_MDP_RDMA0		MTK_M4U_ID(M4U_LARB0_ID, 6)
+#define	M4U_PORT_MDP_WROT0		MTK_M4U_ID(M4U_LARB0_ID, 7)
+#define	M4U_PORT_MDP_WDMA0		MTK_M4U_ID(M4U_LARB0_ID, 8)
+#define	M4U_PORT_DISP_FAKE0		MTK_M4U_ID(M4U_LARB0_ID, 9)
+
+/* larb1 */
+#define	M4U_PORT_HW_VDEC_MC_EXT		MTK_M4U_ID(M4U_LARB1_ID, 0)
+#define	M4U_PORT_HW_VDEC_PP_EXT         MTK_M4U_ID(M4U_LARB1_ID, 1)
+#define	M4U_PORT_HW_VDEC_VLD_EXT	MTK_M4U_ID(M4U_LARB1_ID, 2)
+#define	M4U_PORT_HW_VDEC_AVC_MV_EXT     MTK_M4U_ID(M4U_LARB1_ID, 3)
+#define	M4U_PORT_HW_VDEC_PRED_RD_EXT	MTK_M4U_ID(M4U_LARB1_ID, 4)
+#define	M4U_PORT_HW_VDEC_PRED_WR_EXT	MTK_M4U_ID(M4U_LARB1_ID, 5)
+#define	M4U_PORT_HW_VDEC_PPWRAP_EXT	MTK_M4U_ID(M4U_LARB1_ID, 6)
+
+/* larb2 VPU0 */
+#define	M4U_PORT_IMG_IPUO		MTK_M4U_ID(M4U_LARB2_ID, 0)
+#define	M4U_PORT_IMG_IPU3O		MTK_M4U_ID(M4U_LARB2_ID, 1)
+#define	M4U_PORT_IMG_IPUI		MTK_M4U_ID(M4U_LARB2_ID, 2)
+
+/* larb3 VPU1 */
+#define	M4U_PORT_CAM_IPUO		MTK_M4U_ID(M4U_LARB3_ID, 0)
+#define	M4U_PORT_CAM_IPU2O		MTK_M4U_ID(M4U_LARB3_ID, 1)
+#define	M4U_PORT_CAM_IPU3O		MTK_M4U_ID(M4U_LARB3_ID, 2)
+#define	M4U_PORT_CAM_IPUI		MTK_M4U_ID(M4U_LARB3_ID, 3)
+#define	M4U_PORT_CAM_IPU2I		MTK_M4U_ID(M4U_LARB3_ID, 4)
+
+/* larb4 */
+#define	M4U_PORT_VENC_RCPU		MTK_M4U_ID(M4U_LARB4_ID, 0)
+#define	M4U_PORT_VENC_REC		MTK_M4U_ID(M4U_LARB4_ID, 1)
+#define	M4U_PORT_VENC_BSDMA		MTK_M4U_ID(M4U_LARB4_ID, 2)
+#define	M4U_PORT_VENC_SV_COMV		MTK_M4U_ID(M4U_LARB4_ID, 3)
+#define	M4U_PORT_VENC_RD_COMV		MTK_M4U_ID(M4U_LARB4_ID, 4)
+#define	M4U_PORT_JPGENC_RDMA		MTK_M4U_ID(M4U_LARB4_ID, 5)
+#define	M4U_PORT_JPGENC_BSDMA		MTK_M4U_ID(M4U_LARB4_ID, 6)
+#define	M4U_PORT_VENC_CUR_LUMA		MTK_M4U_ID(M4U_LARB4_ID, 7)
+#define	M4U_PORT_VENC_CUR_CHROMA	MTK_M4U_ID(M4U_LARB4_ID, 8)
+#define	M4U_PORT_VENC_REF_LUMA		MTK_M4U_ID(M4U_LARB4_ID, 9)
+#define	M4U_PORT_VENC_REF_CHROMA	MTK_M4U_ID(M4U_LARB4_ID, 10)
+
+/* larb5 */
+#define	M4U_PORT_CAM_IMGI		MTK_M4U_ID(M4U_LARB5_ID, 0)
+#define	M4U_PORT_CAM_IMG2O		MTK_M4U_ID(M4U_LARB5_ID, 1)
+#define	M4U_PORT_CAM_IMG3O		MTK_M4U_ID(M4U_LARB5_ID, 2)
+#define	M4U_PORT_CAM_VIPI		MTK_M4U_ID(M4U_LARB5_ID, 3)
+#define	M4U_PORT_CAM_LCEI		MTK_M4U_ID(M4U_LARB5_ID, 4)
+#define	M4U_PORT_CAM_SMXI		MTK_M4U_ID(M4U_LARB5_ID, 5)
+#define	M4U_PORT_CAM_SMXO		MTK_M4U_ID(M4U_LARB5_ID, 6)
+#define	M4U_PORT_CAM_WPE0_RDMA1		MTK_M4U_ID(M4U_LARB5_ID, 7)
+#define	M4U_PORT_CAM_WPE0_RDMA0		MTK_M4U_ID(M4U_LARB5_ID, 8)
+#define	M4U_PORT_CAM_WPE0_WDMA		MTK_M4U_ID(M4U_LARB5_ID, 9)
+#define	M4U_PORT_CAM_FDVT_RP		MTK_M4U_ID(M4U_LARB5_ID, 10)
+#define	M4U_PORT_CAM_FDVT_WR		MTK_M4U_ID(M4U_LARB5_ID, 11)
+#define	M4U_PORT_CAM_FDVT_RB		MTK_M4U_ID(M4U_LARB5_ID, 12)
+#define	M4U_PORT_CAM_WPE1_RDMA0		MTK_M4U_ID(M4U_LARB5_ID, 13)
+#define	M4U_PORT_CAM_WPE1_RDMA1		MTK_M4U_ID(M4U_LARB5_ID, 14)
+#define	M4U_PORT_CAM_WPE1_WDMA		MTK_M4U_ID(M4U_LARB5_ID, 15)
+#define	M4U_PORT_CAM_DPE_RDMA		MTK_M4U_ID(M4U_LARB5_ID, 16)
+#define	M4U_PORT_CAM_DPE_WDMA		MTK_M4U_ID(M4U_LARB5_ID, 17)
+#define	M4U_PORT_CAM_MFB_RDMA0		MTK_M4U_ID(M4U_LARB5_ID, 18)
+#define	M4U_PORT_CAM_MFB_RDMA1		MTK_M4U_ID(M4U_LARB5_ID, 19)
+#define	M4U_PORT_CAM_MFB_WDMA		MTK_M4U_ID(M4U_LARB5_ID, 20)
+#define	M4U_PORT_CAM_RSC_RDMA0		MTK_M4U_ID(M4U_LARB5_ID, 21)
+#define	M4U_PORT_CAM_RSC_WDMA		MTK_M4U_ID(M4U_LARB5_ID, 22)
+#define	M4U_PORT_CAM_OWE_RDMA		MTK_M4U_ID(M4U_LARB5_ID, 23)
+#define	M4U_PORT_CAM_OWE_WDMA		MTK_M4U_ID(M4U_LARB5_ID, 24)
+
+/* larb6 */
+#define	M4U_PORT_CAM_IMGO		MTK_M4U_ID(M4U_LARB6_ID, 0)
+#define	M4U_PORT_CAM_RRZO		MTK_M4U_ID(M4U_LARB6_ID, 1)
+#define	M4U_PORT_CAM_AAO		MTK_M4U_ID(M4U_LARB6_ID, 2)
+#define	M4U_PORT_CAM_AFO		MTK_M4U_ID(M4U_LARB6_ID, 3)
+#define	M4U_PORT_CAM_LSCI0		MTK_M4U_ID(M4U_LARB6_ID, 4)
+#define	M4U_PORT_CAM_LSCI1		MTK_M4U_ID(M4U_LARB6_ID, 5)
+#define	M4U_PORT_CAM_PDO		MTK_M4U_ID(M4U_LARB6_ID, 6)
+#define	M4U_PORT_CAM_BPCI		MTK_M4U_ID(M4U_LARB6_ID, 7)
+#define	M4U_PORT_CAM_LCSO		MTK_M4U_ID(M4U_LARB6_ID, 8)
+#define	M4U_PORT_CAM_CAM_RSSO_A		MTK_M4U_ID(M4U_LARB6_ID, 9)
+#define	M4U_PORT_CAM_UFEO		MTK_M4U_ID(M4U_LARB6_ID, 10)
+#define	M4U_PORT_CAM_SOCO		MTK_M4U_ID(M4U_LARB6_ID, 11)
+#define	M4U_PORT_CAM_SOC1		MTK_M4U_ID(M4U_LARB6_ID, 12)
+#define	M4U_PORT_CAM_SOC2		MTK_M4U_ID(M4U_LARB6_ID, 13)
+#define	M4U_PORT_CAM_CCUI		MTK_M4U_ID(M4U_LARB6_ID, 14)
+#define	M4U_PORT_CAM_CCUO		MTK_M4U_ID(M4U_LARB6_ID, 15)
+#define	M4U_PORT_CAM_RAWI_A		MTK_M4U_ID(M4U_LARB6_ID, 16)
+#define	M4U_PORT_CAM_CCUG		MTK_M4U_ID(M4U_LARB6_ID, 17)
+#define	M4U_PORT_CAM_PSO		MTK_M4U_ID(M4U_LARB6_ID, 18)
+#define	M4U_PORT_CAM_AFO_1		MTK_M4U_ID(M4U_LARB6_ID, 19)
+#define	M4U_PORT_CAM_LSCI_2		MTK_M4U_ID(M4U_LARB6_ID, 20)
+#define	M4U_PORT_CAM_PDI		MTK_M4U_ID(M4U_LARB6_ID, 21)
+#define	M4U_PORT_CAM_FLKO		MTK_M4U_ID(M4U_LARB6_ID, 22)
+#define	M4U_PORT_CAM_LMVO		MTK_M4U_ID(M4U_LARB6_ID, 23)
+#define	M4U_PORT_CAM_UFGO		MTK_M4U_ID(M4U_LARB6_ID, 24)
+#define	M4U_PORT_CAM_SPARE		MTK_M4U_ID(M4U_LARB6_ID, 25)
+#define	M4U_PORT_CAM_SPARE_2		MTK_M4U_ID(M4U_LARB6_ID, 26)
+#define	M4U_PORT_CAM_SPARE_3		MTK_M4U_ID(M4U_LARB6_ID, 27)
+#define	M4U_PORT_CAM_SPARE_4		MTK_M4U_ID(M4U_LARB6_ID, 28)
+#define	M4U_PORT_CAM_SPARE_5		MTK_M4U_ID(M4U_LARB6_ID, 29)
+#define	M4U_PORT_CAM_SPARE_6		MTK_M4U_ID(M4U_LARB6_ID, 30)
+
+/* CCU */
+#define	M4U_PORT_CCU0			MTK_M4U_ID(M4U_LARB7_ID, 0)
+#define	M4U_PORT_CCU1			MTK_M4U_ID(M4U_LARB7_ID, 1)
+
+#endif
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
