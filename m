Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B50B1AADB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 08:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UH9lU7DV1IubN+H0f7FjrMsdvNTKIzmtkHgIzz7pKw=; b=cY8rzt+ItOQCbc
	C6po2uiHLL5VyOp9iT3J2e4L5ZUoMn59VQldKHfbu18N8pSDBWYh5Kte4Low1mGuy7P7seGk6mque
	xPudmDY+auB99mlSDBkZKXW1VYzdYNwWxEXK7/uxYZOIFCjQPcd6uXJaXnAQzN/AXbONqBL9XLqcO
	GIXJY8OmYzEvi0ES5XJieBLiVJFGLDN//IOGEUY1p0B28ZWsvDxb8yTXHwnEsKg4vpJ6/MYxJewch
	JD/hwjLLAVEs3riDivg0wTFTm68avuO//mXHdgxe+95DmCL/1R86xC1h6dwxMZUHrhKUSveJXgqlT
	93acCv1Q6NcfZ0mX3Paw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPhXi-0006bD-Dq; Sun, 12 May 2019 06:01:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPhXZ-0006ZY-28; Sun, 12 May 2019 06:00:54 +0000
X-UUID: a0c9adc13147490f8c15986e3cc5ceff-20190511
X-UUID: a0c9adc13147490f8c15986e3cc5ceff-20190511
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <louis.kuo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1811880101; Sat, 11 May 2019 22:00:32 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 11 May 2019 23:00:31 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 12 May 2019 14:00:19 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 12 May 2019 14:00:19 +0800
From: Louis Kuo <louis.kuo@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <keiichiw@chromium.org>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC PATCH V2 4/4] dts: arm64: mt8183: Add sensor interface nodes
Date: Sun, 12 May 2019 14:00:05 +0800
Message-ID: <20190512060005.5444-5-louis.kuo@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190512060005.5444-1-louis.kuo@mediatek.com>
References: <20190512060005.5444-1-louis.kuo@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_230053_107380_1A71B4DD 
X-CRM114-Status: UNSURE (   7.92  )
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, holmes.chiou@mediatek.com,
 Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 Louis Kuo <louis.kuo@mediatek.com>, christie.yu@mediatek.com,
 frederic.chen@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add nodes for Mediatek's sensor interface device. Sensor interface module
embedded in Mediatek SOCs, works as a HW camera interface controller
intended for image and data transmission between cameras and host devices.

Signed-off-by: Louis Kuo <louis.kuo@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 34 ++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c3a516e63141..2fe97e8544ad 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -474,4 +474,38 @@
 			#clock-cells = <1>;
 		};
 	};
+
+	seninf: seninf@1a040000 {
+		compatible = "mediatek,mt8183-seninf";
+		reg = <0 0x1a040000 0 0x8000>,
+		      <0 0x11C80000 0 0x6000>;
+		reg-names = "base_reg", "rx_reg";
+		interrupts = <GIC_SPI 251 IRQ_TYPE_LEVEL_LOW>;
+		power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
+		clocks =
+			<&camsys CLK_CAM_SENINF>,
+			<&topckgen CLK_TOP_MUX_SENINF>;
+		clock-names =
+			"CLK_CAM_SENINF", "CLK_TOP_MUX_SENINF";
+		status = "disabled";
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			port@0 {
+				reg = <0>;
+				mipi_in_cam0: endpoint@0 {
+					reg = <0>;
+					data-lanes = <1 3>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				mipi_in_cam1: endpoint@0 {
+					reg = <1>;
+					data-lanes = <1 3>;
+				};
+			};
+		};
+	};
 };
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
