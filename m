Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF896125AF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 06:50:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hQYCorMpkl1qkBTxqVRBUZj7O1SwXlcuBW+sN8IFrKw=; b=IHLXUm8SKyadUg
	YsMuvIjyKHFenaYCgsOHiJKW8LGEm9G3UGYiERPLX8IeGqYfHUPHkHT2UCZ7QyIb6ubRd4zTgL/CS
	SSTz8rbxrqkKt11xboCnh5USuHqtG7HTUmCnhNsUZb5B3X9Xqrj0HkKjjPykjudR/KZS4tzAhrb55
	kim9MCB0Dph2r9vWBhvi4tUS9+jdnBkIS7EacRGqEiyCded7D48iClUTn5BP4/DOksZ2HGkQQJokU
	dEtzfQHl0Nm0P/tapILnvCcYOSTMn0DNUx5GW3BWBXw0CA28fkmUqvmLwNPzR72lsjX4qOqwk9HtG
	huf2vKvrTbpa+plNtZEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihohf-0007Pa-Qm; Thu, 19 Dec 2019 05:50:27 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihohS-0006V6-W8; Thu, 19 Dec 2019 05:50:16 +0000
X-UUID: 0d496d9b5cd54846aad32e14aff1cc6f-20191218
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=u/vWTAbZlH4j2bhnD+Ag+oO8onBzT6jpu+qmICQf9Ow=; 
 b=tr/nwbGqcaGoaE72kPiTaqCQU//ZnnqQGCiOssNfBUgW0Tyz6NFJkRL1M+BQrrzKOaYYJx4gm5waoYu+EPRnNhDVYpUwUsJl5jOmYKrOaKg4wQPkAoF9DI+VTbFvne4S0Zh+Z8ybOI3zWsJgIbDayqe1s49Iqx4ef4py+nbJxjU=;
X-UUID: 0d496d9b5cd54846aad32e14aff1cc6f-20191218
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 943656058; Wed, 18 Dec 2019 21:50:08 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Dec 2019 21:50:21 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 13:49:31 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 19 Dec 2019 13:50:08 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil-cisco@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [v6, 1/5] media: dt-bindings: mt8183: Added camera ISP Pass 1
Date: Thu, 19 Dec 2019 13:49:26 +0800
Message-ID: <20191219054930.29513-2-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191219054930.29513-1-jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20191219054930.29513-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3424BFE6CB592FD6D869534D12E758F930287C42C4EAF56ABF1438AC5279C5E72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_215015_054858_87F7FE97 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Reply-To: Jungo Lin <jungo.lin@mediatek.com>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 robh@kernel.org, ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com,
 frankie.chiu@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 ddavenport@chromium.org, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds DT binding document for the Pass 1 (P1) unit
in Mediatek's camera ISP system. The Pass 1 unit grabs the sensor
data out from the sensor interface, applies ISP image effects
from tuning data and outputs the image data or statistics data to DRAM.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
Changes from v6:
 - Add port node description in the dt-binding document.
---
 .../bindings/media/mediatek,camisp.txt        | 83 +++++++++++++++++++
 1 file changed, 83 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,camisp.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek,camisp.txt b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
new file mode 100644
index 000000000000..a85f37c0b87d
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
@@ -0,0 +1,83 @@
+* Mediatek Image Signal Processor Pass 1 (ISP P1)
+
+The Pass 1 unit of Mediatek's camera ISP system grabs the sensor data out
+from the sensor interface, applies ISP effects from tuning data and outputs
+the image data and statistics data to DRAM. Furthermore, Pass 1 unit has
+the ability to output two different resolutions frames at the same time to
+increase the performance of the camera application.
+
+Required properties:
+- compatible: Must be "mediatek,mt8183-camisp" for MT8183.
+- reg: Physical base address of the camera function block register and
+  length of memory mapped region. Must contain an entry for each entry
+  in reg-names.
+- reg-names: Must include the following entries:
+  "cam_sys": Camera base function block
+  "cam_uni": Camera UNI function block
+  "cam_a": Camera ISP P1 hardware unit A
+  "cam_b": Camera ISP P1 hardware unit B
+  "cam_c": Camera ISP P1 hardware unit C
+- interrupts: Must contain an entry for each entry in interrupt-names.
+- interrupt-names : Must include the following entries:
+  "cam_uni": Camera UNI interrupt
+  "cam_a": Camera unit A interrupt
+  "cam_b": Camera unit B interrupt
+  "cam_c": Camera unit C interrupt
+- iommus: Shall point to the respective IOMMU block with master port
+  as argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
+  for details.
+- clocks: A list of phandle and clock specifier pairs as listed
+  in clock-names property, see
+  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
+- clock-names: Must be "camsys_cam_cgpdn" and "camsys_camtg_cgpdn".
+- mediatek,larb: Must contain the local arbiters in the current SoCs, see
+  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
+  for details.
+- power-domains: a phandle to the power domain, see
+  Documentation/devicetree/bindings/power/power_domain.txt for details.
+- mediatek,scp: The node of system control processor (SCP), see
+  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
+- port: child port node corresponding to the data input, in accordance with
+  the video interface bindings defined in
+  Documentation/devicetree/bindings/media/video-interfaces.txt. The port
+  node must contain at least one endpoint.
+
+Example:
+SoC specific DT entry:
+
+	camisp: camisp@1a000000 {
+		compatible = "mediatek,mt8183-camisp";
+		reg = <0 0x1a000000 0 0x1000>,
+				<0 0x1a003000 0 0x1000>,
+				<0 0x1a004000 0 0x2000>,
+				<0 0x1a006000 0 0x2000>,
+				<0 0x1a008000 0 0x2000>;
+		reg-names = "cam_sys",
+				"cam_uni",
+				"cam_a",
+				"cam_b",
+				"cam_c";
+		interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
+				<GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
+				<GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>,
+				<GIC_SPI 256 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "cam_uni",
+				"cam_a",
+				"cam_b",
+				"cam_c";
+		iommus = <&iommu M4U_PORT_CAM_IMGO>;
+		clocks = <&camsys CLK_CAM_CAM>,
+				<&camsys CLK_CAM_CAMTG>;
+		clock-names = "camsys_cam_cgpdn",
+				"camsys_camtg_cgpdn";
+		mediatek,larb = <&larb3>,
+				<&larb6>;
+		power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
+		mediatek,scp = <&scp>;
+
+		port {
+			camisp_endpoint: endpoint {
+				remote-endpoint = <&seninf_camisp_endpoint>;
+			};
+		};
+	};
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
