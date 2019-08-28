Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 265CB9FE47
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 11:17:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xCbCfzn1BKedpgnT7MpNLCHDpS++SDtC9Tqi8/tpBc=; b=Zf2lb5H0LTYdSA
	4KhNi8gL6qhF7l2xepstMwPJyL/Q7yU2BJwquXHaxu+uA1M/f9lXnrP0ZkKw3mquyuRDxAsbgieOf
	ukmOvYXuRY3vPCGlEHutywIo0ymk3cscQtKnctOHwdzGh3Ag+zeOuzhdKY+duKFp7HmMTBXTZmN/m
	M4GW4CXC2JO4oV4up5L0oPz2c/Aoy756/ICechOeL8bgAsGheHxfeyH32lVJSzNU0qL+RChvrI9ky
	WSlKi6BPnbTRx8y7hsmAdPevsa3WAdv3c2bYpX1nAtxPp6ZkXICTQ4Ui71zLpKC0B6o6frD8l2aN2
	hG08E8nIMRLCbMf0mdfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2u5L-0007aX-0m; Wed, 28 Aug 2019 09:17:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2u04-0002a0-Te; Wed, 28 Aug 2019 09:12:22 +0000
X-UUID: 026be4c680ba47b7be8210c89b5ae2d0-20190828
X-UUID: 026be4c680ba47b7be8210c89b5ae2d0-20190828
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1895009971; Wed, 28 Aug 2019 01:12:22 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 02:12:21 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 17:12:05 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 17:12:05 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v7 13/13] arm64: dts: Add power controller device node of
 MT8183
Date: Wed, 28 Aug 2019 17:11:46 +0800
Message-ID: <1566983506-26598-14-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1566983506-26598-1-git-send-email-weiyi.lu@mediatek.com>
References: <1566983506-26598-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_021220_971769_E140DF61 
X-CRM114-Status: UNSURE (   8.92  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add power controller node and smi-common node for MT8183
In scpsys node, it contains clocks and regmapping of
infracfg and smi-common for bus protection.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 62 ++++++++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4..66aaa07 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/mt8183-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/power/mt8183-power.h>
 #include "mt8183-pinfunc.h"
 
 / {
@@ -238,6 +239,62 @@
 			#interrupt-cells = <2>;
 		};
 
+		scpsys: syscon@10006000 {
+			compatible = "mediatek,mt8183-scpsys", "syscon";
+			#power-domain-cells = <1>;
+			reg = <0 0x10006000 0 0x1000>;
+			clocks = <&topckgen CLK_TOP_MUX_AUD_INTBUS>,
+				 <&infracfg CLK_INFRA_AUDIO>,
+				 <&infracfg CLK_INFRA_AUDIO_26M_BCLK>,
+				 <&topckgen CLK_TOP_MUX_MFG>,
+				 <&topckgen CLK_TOP_MUX_MM>,
+				 <&topckgen CLK_TOP_MUX_CAM>,
+				 <&topckgen CLK_TOP_MUX_IMG>,
+				 <&topckgen CLK_TOP_MUX_IPU_IF>,
+				 <&topckgen CLK_TOP_MUX_DSP>,
+				 <&topckgen CLK_TOP_MUX_DSP1>,
+				 <&topckgen CLK_TOP_MUX_DSP2>,
+				 <&mmsys CLK_MM_SMI_COMMON>,
+				 <&mmsys CLK_MM_SMI_LARB0>,
+				 <&mmsys CLK_MM_SMI_LARB1>,
+				 <&mmsys CLK_MM_GALS_COMM0>,
+				 <&mmsys CLK_MM_GALS_COMM1>,
+				 <&mmsys CLK_MM_GALS_CCU2MM>,
+				 <&mmsys CLK_MM_GALS_IPU12MM>,
+				 <&mmsys CLK_MM_GALS_IMG2MM>,
+				 <&mmsys CLK_MM_GALS_CAM2MM>,
+				 <&mmsys CLK_MM_GALS_IPU2MM>,
+				 <&imgsys CLK_IMG_LARB5>,
+				 <&imgsys CLK_IMG_LARB2>,
+				 <&camsys CLK_CAM_LARB6>,
+				 <&camsys CLK_CAM_LARB3>,
+				 <&camsys CLK_CAM_SENINF>,
+				 <&camsys CLK_CAM_CAMSV0>,
+				 <&camsys CLK_CAM_CAMSV1>,
+				 <&camsys CLK_CAM_CAMSV2>,
+				 <&camsys CLK_CAM_CCU>,
+				 <&ipu_conn CLK_IPU_CONN_IPU>,
+				 <&ipu_conn CLK_IPU_CONN_AHB>,
+				 <&ipu_conn CLK_IPU_CONN_AXI>,
+				 <&ipu_conn CLK_IPU_CONN_ISP>,
+				 <&ipu_conn CLK_IPU_CONN_CAM_ADL>,
+				 <&ipu_conn CLK_IPU_CONN_IMG_ADL>;
+			clock-names = "audio", "audio1", "audio2",
+				      "mfg", "mm", "cam",
+				      "isp", "vpu", "vpu1",
+				      "vpu2", "vpu3", "mm-0",
+				      "mm-1", "mm-2", "mm-3",
+				      "mm-4", "mm-5", "mm-6",
+				      "mm-7", "mm-8", "mm-9",
+				      "isp-0", "isp-1", "cam-0",
+				      "cam-1", "cam-2", "cam-3",
+				      "cam-4", "cam-5", "cam-6",
+				      "vpu-0", "vpu-1", "vpu-2",
+				      "vpu-3", "vpu-4", "vpu-5";
+			infracfg = <&infracfg>;
+			smi_comm = <&smi_common>;
+		};
+
 		apmixedsys: syscon@1000c000 {
 			compatible = "mediatek,mt8183-apmixedsys", "syscon";
 			reg = <0 0x1000c000 0 0x1000>;
@@ -396,6 +453,11 @@
 			#clock-cells = <1>;
 		};
 
+		smi_common: smi@14019000 {
+			compatible = "mediatek,mt8183-smi-common", "syscon";
+			reg = <0 0x14019000 0 0x1000>;
+		};
+
 		imgsys: syscon@15020000 {
 			compatible = "mediatek,mt8183-imgsys", "syscon";
 			reg = <0 0x15020000 0 0x1000>;
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
