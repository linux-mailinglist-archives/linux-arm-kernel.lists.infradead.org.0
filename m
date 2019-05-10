Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B98719670
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 04:02:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aAnAruWC0MiwtoTB4Whqgfa9P6x0jfDGgXTvsT80xgw=; b=pu3I69Rr3SVEWx
	nSJroxrf3Ob7WuLkV/m3tmyAmrI2adZoSnUGr4O+8lMDoiZ5jgpvDVMVYN9z11/cCCrTedYv2FXmu
	Y0fEOdnVCmJuKOL//ccDXeoGNf0DYt5YNrUuhiJjVrijM7SI8XpB7ru3I0EUUJPUQOoeWOLQ8ZJDc
	d688dezoZyqLqc4qUV7T6k3+ClVQIqFJU5M93+KtZUyPvql0QgGwCod4+2NVcumcffLXME6Sc65FM
	bcRGqAGqTL0cPGNqv4NNQog4veAxHkNuUGGkz/Vipv6D/07gGX4IhnB1eeQo4EXJSJ/5RiN2+b8Kf
	PAdPii56mTFOH77w/Tog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOus6-0004RF-HO; Fri, 10 May 2019 02:02:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOurt-0004KQ-8W; Fri, 10 May 2019 02:02:40 +0000
X-UUID: 3e2adcfc84144ab9a7cf06b3603336ef-20190509
X-UUID: 3e2adcfc84144ab9a7cf06b3603336ef-20190509
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2097765028; Thu, 09 May 2019 18:02:32 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 9 May 2019 19:02:30 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 10 May 2019 10:02:28 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 10 May 2019 10:02:28 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hans.verkuil@cisco.com>,
 <laurent.pinchart+renesas@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,V2,04/11] dts: arm64: mt8183: Add ISP Pass 1 nodes
Date: Fri, 10 May 2019 09:57:54 +0800
Message-ID: <20190510015755.51495-5-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <Jungo Lin <jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 994DC7035D47087A22DFA3A364B1B3D460E8C7B4587C2A3605B8DE427128280C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_190237_643863_6654C169 
X-CRM114-Status: UNSURE (   6.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Reply-To: Jungo Lin <jungo.lin@mediatek.com>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com, frankie.chiu@mediatek.com,
 Jungo Lin <jungo.lin@mediatek.com>, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, seraph.huang@mediatek.com,
 zwisler@chromium.org, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nodes for Pass 1 unit of Mediatek's camera ISP system.
Pass 1 unit embedded in Mediatek SoCs, works with the
co-processor to process image signal from the image sensor
and output RAW image data.

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 32 ++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index d5d83a05f8a1..5f195236a762 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -382,5 +382,37 @@
 			reg = <0 0x1a000000 0 0x1000>;
 			#clock-cells = <1>;
 		};
+
+		camisp: camisp@1a000000 {
+			compatible = "mediatek,mt8183-camisp", "syscon";
+			reg = <0 0x1a000000 0 0x1000>,
+			      <0 0x1a003000 0 0x1000>,
+			      <0 0x1a004000 0 0x2000>,
+			      <0 0x1a006000 0 0x2000>;
+			reg-names = "camisp",
+				    "cam1",
+				    "cam2",
+				    "cam3";
+			interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
+				     <GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>;
+			interrupt-names = "cam1",
+					  "cam2",
+					  "cam3";
+			iommus = <&iommu M4U_PORT_CAM_LSCI0>,
+				 <&iommu M4U_PORT_CAM_LSCI1>,
+				 <&iommu M4U_PORT_CAM_BPCI>;
+			#clock-cells = <1>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
+			/* Camera CCF */
+			clocks = <&camsys CLK_CAM_CAM>,
+				 <&camsys CLK_CAM_CAMTG>;
+			clock-names = "CAMSYS_CAM_CGPDN",
+				      "CAMSYS_CAMTG_CGPDN";
+			mediatek,larb = <&larb3>,
+					<&larb6>;
+			mediatek,scp = <&scp>;
+			memory-region = <&cam_mem_reserved>;
+		};
 	};
 };
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
