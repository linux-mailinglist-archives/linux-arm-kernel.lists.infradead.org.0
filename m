Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DB8DA8BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 11:43:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7oepjCuztfIxxOQPy/povjrWfyjS9I8vdg1DFHaFTs=; b=dIA8+0vtsvBToz
	8x0iq9PggmPtgR9UpPr4dEgtp+jrTOeSasME2oPMt4Y+xUxCZntI9351sFcVgVvvO4AJSGGw82YLJ
	ftf4tmJVCq8gaF9iH+KzdDsEmsL1KD5LoJhwZVUyfwcW3iKgya9ODrWe3qLh7l0G9MLmeWQ5Zj6C3
	lHgNbe2fW0qIUHpjCsoI1SmutsgPGLRfqJfG45mzGVmQa9jJOSOX7h8olKsD2uN7TfjT3A+06O856
	LE5wV40PCUw/Ua5CV3R/JgJRq41pIaVvkowlGmFqlDElfz36Q/sEoPTzXWrhvUbGXeZImha79U0OT
	YrDxugLeKka9bZRcaH+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2JP-0001pn-Py; Thu, 17 Oct 2019 09:43:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2IB-0000wX-OT; Thu, 17 Oct 2019 09:42:03 +0000
X-UUID: 3cca6b574b124780b078ff4f0f4e18e1-20191017
X-UUID: 3cca6b574b124780b078ff4f0f4e18e1-20191017
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1603997902; Thu, 17 Oct 2019 01:41:44 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 02:41:33 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 17 Oct 2019 17:41:28 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 17 Oct 2019 17:41:28 +0800
From: <min.guo@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 1/6] dt-bindings: usb: musb: Add support for MediaTek musb
 controller
Date: Thu, 17 Oct 2019 17:41:21 +0800
Message-ID: <20191017094126.29045-2-min.guo@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191017094126.29045-1-min.guo@mediatek.com>
References: <20191017094126.29045-1-min.guo@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4C42AC1DF3E6E64DD7753176B63360E60EEFD50B26B68F67710C7F3377DD046D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_024159_935442_80053D04 
X-CRM114-Status: GOOD (  12.78  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, Min Guo <min.guo@mediatek.com>,
 chunfeng.yun@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Min Guo <min.guo@mediatek.com>

This adds support for MediaTek musb controller in
host, peripheral and otg mode.

Signed-off-by: Min Guo <min.guo@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
changes in v8:
1. Add reviewed by Rob

changes in v7:
1. Modify compatible as
- compatible : should be one of:
               "mediatek,mt2701-musb"
               ...
               followed by "mediatek,mtk-musb"
2. Change usb connector child node compatible as "gpio-usb-b-connector" 

changes in v6:
1. Modify usb connector child node

changes in v5:
suggested by Rob:
1. Modify compatible as 
- compatible : should be one of:
               "mediatek,mt-2701"
               ...
               followed by "mediatek,mtk-musb"
2. Add usb connector child node

changes in v4:
suggested by Sergei:
1. String alignment

changes in v3:
1. no changes

changes in v2:
suggested by Bin:
1. Modify DRC to DRD
suggested by Rob:
2. Drop the "<soc-model>-musb" in compatible
3. Remove phy-names
4. Add space after comma in clock-names
---
 .../devicetree/bindings/usb/mediatek,musb.txt      | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/mediatek,musb.txt

diff --git a/Documentation/devicetree/bindings/usb/mediatek,musb.txt b/Documentation/devicetree/bindings/usb/mediatek,musb.txt
new file mode 100644
index 0000000..e53c482
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/mediatek,musb.txt
@@ -0,0 +1,55 @@
+MediaTek musb DRD/OTG controller
+-------------------------------------------
+
+Required properties:
+ - compatible      : should be one of:
+                     "mediatek,mt2701-musb"
+                     ...
+                     followed by "mediatek,mtk-musb"
+ - reg             : specifies physical base address and size of
+                     the registers
+ - interrupts      : interrupt used by musb controller
+ - interrupt-names : must be "mc"
+ - phys            : PHY specifier for the OTG phy
+ - dr_mode         : should be one of "host", "peripheral" or "otg",
+                     refer to usb/generic.txt
+ - clocks          : a list of phandle + clock-specifier pairs, one for
+                     each entry in clock-names
+ - clock-names     : must contain "main", "mcu", "univpll"
+                     for clocks of controller
+
+Optional properties:
+ - power-domains   : a phandle to USB power domain node to control USB's
+                     MTCMOS
+
+Required child nodes:
+ usb connector node as defined in bindings/connector/usb-connector.txt
+Optional properties:
+ - id-gpios        : input GPIO for USB ID pin.
+ - vbus-gpios      : input GPIO for USB VBUS pin.
+ - vbus-supply     : reference to the VBUS regulator, needed when supports
+                     dual-role mode
+
+Example:
+
+usb2: usb@11200000 {
+	compatible = "mediatek,mt2701-musb",
+		     "mediatek,mtk-musb";
+	reg = <0 0x11200000 0 0x1000>;
+	interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_LOW>;
+	interrupt-names = "mc";
+	phys = <&u2port2 PHY_TYPE_USB2>;
+	dr_mode = "otg";
+	clocks = <&pericfg CLK_PERI_USB0>,
+		 <&pericfg CLK_PERI_USB0_MCU>,
+		 <&pericfg CLK_PERI_USB_SLV>;
+	clock-names = "main","mcu","univpll";
+	power-domains = <&scpsys MT2701_POWER_DOMAIN_IFR_MSC>;
+	connector{
+		compatible = "gpio-usb-b-connector";
+		label = "micro-USB";
+		type = "micro";
+		id-gpios = <&pio 44 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&usb_vbus>;
+	};
+};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
