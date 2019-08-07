Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72EAA84C03
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6tqCfnVA+dtVcN1X5fu+QgDULEv3hjHpSlqNjnTssk=; b=ncuYzCO+OvZsJm
	KIWx/qn2CyaX3JvX1Rq3rC4wWvxI5VuOmSvAClheOwojG6vKIcOuJ44AUaqhDDe+6ZcanQBrQCKEO
	tPSnBCvBYv1ZfD7m1PBIJWpSiXoLgGR5TG8Um6Kh2o/OZRa4porh6tZvz7mJ0vUlH5DIjxwA2Q6ON
	r5J5MhnY2v+vxC7DyE2do5S2F9MLY7F/PzLxiIpynZNkCG4rc+65iBYQ4eI46Gxs/c0p5n6xokSw2
	fG+DKcnB+4CnNPJaBo/Y0bo9kh0REkrWYwnds7GGOHBzCt0Rsy0jy/HujZYdMqT8u+eABJ9MX9b1f
	fttg/iKLN7lTok/xtjVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLNR-0005WE-1q; Wed, 07 Aug 2019 12:49:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLMy-0005LA-M8; Wed, 07 Aug 2019 12:48:46 +0000
X-UUID: abc1cb677744462d8a918f5acf455f25-20190807
X-UUID: abc1cb677744462d8a918f5acf455f25-20190807
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 849730849; Wed, 07 Aug 2019 04:48:40 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 7 Aug 2019 05:48:38 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 7 Aug 2019 20:48:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 7 Aug 2019 20:48:24 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil-cisco@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,v4,1/4] media: dt-bindings: mt8183: Added camera ISP Pass 1
Date: Wed, 7 Aug 2019 20:48:00 +0800
Message-ID: <20190807124803.29884-2-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190807124803.29884-1-jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20190807124803.29884-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_054844_737954_017427B9 
X-CRM114-Status: UNSURE (   9.75  )
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
index 000000000000..fa2713acceca
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
+		camisp: camisp@1a000000 {
+			compatible = "mediatek,mt8183-camisp", "syscon";
+			reg = <0 0x1a000000 0 0x1000>,
+					<0 0x1a003000 0 0x1000>,
+					<0 0x1a004000 0 0x2000>,
+					<0 0x1a006000 0 0x2000>,
+					<0 0x1a008000 0 0x2000>;
+			reg-names = "cam_sys",
+					"cam_uni",
+					"cam_a",
+					"cam_b",
+					"cam_c";
+			interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
+					<GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
+					<GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>,
+					<GIC_SPI 256 IRQ_TYPE_LEVEL_LOW>;
+			interrupt-names = "cam_uni",
+					"cam_a",
+					"cam_b",
+					"cam_c";
+			iommus = <&iommu M4U_PORT_CAM_IMGO>;
+			clocks = <&camsys CLK_CAM_CAM>,
+					<&camsys CLK_CAM_CAMTG>;
+			clock-names = "camsys_cam_cgpdn",
+					"camsys_camtg_cgpdn";
+			mediatek,larb = <&larb3>,
+					<&larb6>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
+			mediatek,scp = <&scp>;
+		};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
