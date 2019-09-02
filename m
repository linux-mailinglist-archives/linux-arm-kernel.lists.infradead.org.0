Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6892BA5059
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 09:53:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2Fr43MwFrycQ7vIeO9obhiVKmL79tqpjGOuxw/3e9I=; b=uzjelysZGrnbVE
	IZh7wOQvuazEBIYOejdsD7Nve4A0irelSUc5lRL5vnpqVx6A/HK1wUaPdaRdxmNaJboyZzJPja1zG
	6srOcJuQgECU1XXglMmNXczNPB3mXBKbPt+lmWTUcdaf7vWhoewKCbgJwCAazUObgU4hZEGP0I/D2
	ywC057pxaba5G4XWFoFwKPmx6+mDl4DZzjzQ34Opz6S4kiahNtaGPiTMsGEWkUZtpc2LtieEyvAs/
	j6MONGJhR5C4jBJDeQpnK/O6N2GZJUgHUEeXxZVeB8rjW3BNNQngcTBFCtTC+tb49b51cVkEkF9PW
	+XKAsUMqTO1T78dVvnfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4h9B-0007Th-0U; Mon, 02 Sep 2019 07:53:09 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4h83-0006RL-Ba; Mon, 02 Sep 2019 07:52:00 +0000
X-UUID: 7cf47d6f641f43bea22c54c375d8ad0b-20190901
X-UUID: 7cf47d6f641f43bea22c54c375d8ad0b-20190901
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1610077167; Sun, 01 Sep 2019 23:51:54 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 00:51:52 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Sep 2019 15:51:49 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 2 Sep 2019 15:51:51 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil-cisco@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,v5, 1/5] media: dt-bindings: mt8183: Added camera ISP Pass 1
Date: Mon, 2 Sep 2019 15:51:31 +0800
Message-ID: <20190902075135.1332-2-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190902075135.1332-1-jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20190902075135.1332-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6FA7EDA3DF3DBF63BADA5C92253ADB79291539DB5A0F8770415C1E685D1FC89E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_005159_448054_5DE01C2D 
X-CRM114-Status: UNSURE (   8.62  )
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

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 .../bindings/media/mediatek,camisp.txt        | 73 +++++++++++++++++++
 1 file changed, 73 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,camisp.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek,camisp.txt b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
new file mode 100644
index 000000000000..e156f01747d0
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,camisp.txt
@@ -0,0 +1,73 @@
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
+- mediatek,scp : The node of system control processor (SCP), see
+  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
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
+	};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
