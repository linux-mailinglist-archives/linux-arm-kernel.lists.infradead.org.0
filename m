Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 577A734408
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:14:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3/mINf+l4aOOw967JbukL/lLW2rNuIYaVcqDqsJTigo=; b=gn2D+2Whkbbrog
	FB+wEDsuBlk1Ck4hxUM+VCqpnAMCOZDB4C6hq7lof5ie8jIPplGabtQGoWPhN9YjhsPn18Ap+nbTq
	fC+q5IhOwriGC6BiIP2bmX30D5svitq82vJL6TfCk1Vd8/VvnxCMnb2NbPxIlCt/kZpEaNv82Krdk
	g9W+Qkummr/ipQaTwX1JsGRDbuxBZxqCpiqVdtnlvDk5MIdirmwbeVxMSzOIdu1ijijGSdbmoOS4K
	LzA5NJOA+JKSlLysu7RcOD0td7O0tIpotlOApqttklKlm04Kn9K/9UbfKZ60nKVzMxVX1EaBmOy0K
	sstqXgIyBQuJYDS1jOtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6SA-00007I-3g; Tue, 04 Jun 2019 10:14:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RU-0007ik-R4; Tue, 04 Jun 2019 10:13:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bCTjelTnt03ThByfAmQRLF/brd6mutVcubz+hiJzKX8=; b=PFBGtIPFNnW8qgCa7uMj7HQ8O
 7B3ufM5HTA7qTIs4NXpvSemTp4IRfXlwOZSxztvG0haz1m3dsIf88drSVD6McyoiAdfZza7uCPOhp
 IJ9N/N5OvQGUH5Zi/eISHhFRZ3tYnaMo6v8njcuTPSAkvhieBf0G50AUBs+Q2demYO18Q0kVttQp9
 MXUBOeSPa6iXwcIIuU6TPNSa7UR09i6l0NLJ5k58CCKPfhJUHT+DOh/6MNXhOQ5/zRkaXfMAXVK4O
 9OCl1H1lGpJAsaEaTW844g67JffbOKL3tkpNu9W6etDnn7UQi+LCrddCIghDShU4GrI5RksviqYMD
 dXl4hdiLQ==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RR-0003Ur-UO; Tue, 04 Jun 2019 10:13:19 +0000
X-UUID: f5f89d7763994bf29ce7b7a2cea14160-20190604
X-UUID: f5f89d7763994bf29ce7b7a2cea14160-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 143472972; Tue, 04 Jun 2019 02:12:03 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:02 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:11:59 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 03/14] dt-bindings: media: Add camsv binding for MT2712
 MIPI-CSI2
Date: Tue, 4 Jun 2019 18:11:44 +0800
Message-ID: <1559643115-15124-4-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061318_136298_1974B1A9 
X-CRM114-Status: GOOD (  13.15  )
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

Add camsv binding for MT2712 MIPI-CSI2

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../bindings/media/mediatek-mipicsi-camsv.txt | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt
new file mode 100644
index 000000000000..c9b4af9eeeff
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt
@@ -0,0 +1,55 @@
+* Mediatek MIPI-CSI2 receiver camsv
+
+Mediatek MIPI-CSI2 receiver camsv transfer data to DRAM in Mediatek SoCs
+
+These node are refer by mipicsi
+
+Required properties:
+- reg : physical base address of the mipicsi receiver registers and length of
+  memory mapped region.
+- clocks: device clocks, see
+  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
+- interrupts : interrupt number to the interrupt controller.
+
+Example:
+	seninf1_mux_camsv0: seninf_mux_camsv@15002100 {
+		reg = <0 0x15002120 0 0x40>,
+		      <0 0x15004000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV_EN>;
+		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf2_mux_camsv1: seninf_mux_camsv@15002500 {
+		reg = <0 0x15002520 0 0x40>,
+		      <0 0x15005000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV_EN>;
+		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf3_mux_camsv2: seninf_mux_camsv@15002900 {
+		reg = <0 0x15002920 0 0x40>,
+		      <0 0x15006000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV1_EN>;
+		interrupts = <GIC_SPI 268 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf4_mux_camsv3: seninf_mux_camsv@15002D00 {
+		reg = <0 0x15002D20 0 0x40>,
+		      <0 0x15007000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV1_EN>;
+		interrupts = <GIC_SPI 269 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf5_mux_camsv4: seninf_mux_camsv@15003100 {
+		reg = <0 0x15003120 0 0x40>,
+		      <0 0x15008000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV2_EN>;
+		interrupts = <GIC_SPI 270 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf6_mux_camsv5: seninf_mux_camsv@15003500 {
+		reg = <0 0x15003520 0 0x40>,
+		      <0 0x15009000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV2_EN>;
+		interrupts = <GIC_SPI 271 IRQ_TYPE_LEVEL_LOW>;
+	};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
