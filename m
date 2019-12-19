Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A789125F3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Q9Nlc2C04PaXIiavI9/isvt0p1OewQwrOJiVUuZqks=; b=EbYU0BKH5ynjDz
	HDCeAllHOeldY7ISsnFtEk1iiD8nWYOUszygdgY+ZRVQOXvabr855ivhN3tjKwQIpsb3f0xS9YyXW
	x5zF2LMqLYoFuSqtJC/IGpq3w71JDzJ63I2w4rrx2xGKYgeX00/CT1ocEyUvcmH5rUvIUYLjO0qWK
	tOm77kAqgxTLZsnFEFpyXMcQX5H6rSiic5YaCwJjlZXxfbBtF32t+1zwzTbj1tHHoR7/coiU72gbi
	BhhPJrC12P4n/sUmOfzgIgILQGiViWoBQnsbnLo4QpDNki5LRbAh6cM9vYTrUE8jSnFtdsbYHiq8+
	cXxEgJJRhf8/nd9gcOCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihtAe-0006Jf-TK; Thu, 19 Dec 2019 10:36:40 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iht9x-0005sU-Mq
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:36:01 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBJAYMK2028212; Thu, 19 Dec 2019 11:35:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=WFGnzKmcN0q8PU3hMEBo0SfslkYQJKnJgOWObfs40/A=;
 b=EjjWxO5TILR+2N0htjl5luyw6TNd43LgY7SkrFErIR8Bj7gP7cv8hQtIvPQOV+Nq7pLM
 1/Kh1MQrKhCogX/b5flFS2MhwnoRxJd5D3CwDUjn1HAMHzzouNMjNcznntE7PS0TC7An
 KHbc2j855UPUbogiG2j95332azSfaLu3sJv/pogaTYZBqUEkN48tv2k3oqde1ChtL9VA
 2RZDQvAsP8R7N59RGkO9G4YxgTr67TLYyTKlOz6VymDVDDQ7y6slsS01QXBJbnTcKvdD
 uRr8Mo8F21+Lzl6AUu55qMczo6KXHM9nav/styvdAjcHEiluLS7HRfLMixsXlbV5IUmd zg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2wvqgq0u7x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 19 Dec 2019 11:35:51 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A90C5100048;
 Thu, 19 Dec 2019 11:35:42 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 16CA12B6A08;
 Thu, 19 Dec 2019 11:35:42 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 19 Dec 2019 11:35:40
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <gregkh@linuxfoundation.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <kgene@kernel.org>, <krzk@kernel.org>, <hminas@synopsys.com>
Subject: [PATCH v2 1/2] dt-bindings: usb: Convert DWC2 bindings to json-schema
Date: Thu, 19 Dec 2019 11:35:35 +0100
Message-ID: <20191219103536.25485-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191219103536.25485-1-benjamin.gaignard@st.com>
References: <20191219103536.25485-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-19_01:2019-12-17,2019-12-19 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_023558_106086_90917BED 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, amelie.delaunay@st.com,
 linux-samsung-soc@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert DWC2 bindings to DT schema format using json-schema.
DWC2 is widely use but a couple of compatibles and properties
(vusb_d-supply,vusb_a-supply) were missing in dwc2.txt, the
patch add them.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
CC: Minas Harutyunyan <hminas@synopsys.com>

changes in version 2:
- put Minas Harutyunyan <hminas@synopsys.com> as maintainer
- remove type and description from phy property
- remove description from compatible items
- simplify samsung,s3c6400-hsotg compatible handling

 Documentation/devicetree/bindings/usb/dwc2.txt  |  64 ----------
 Documentation/devicetree/bindings/usb/dwc2.yaml | 152 ++++++++++++++++++++++++
 2 files changed, 152 insertions(+), 64 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/dwc2.txt
 create mode 100644 Documentation/devicetree/bindings/usb/dwc2.yaml

diff --git a/Documentation/devicetree/bindings/usb/dwc2.txt b/Documentation/devicetree/bindings/usb/dwc2.txt
deleted file mode 100644
index aafff3a6904d..000000000000
--- a/Documentation/devicetree/bindings/usb/dwc2.txt
+++ /dev/null
@@ -1,64 +0,0 @@
-Platform DesignWare HS OTG USB 2.0 controller
------------------------------------------------------
-
-Required properties:
-- compatible : One of:
-  - brcm,bcm2835-usb: The DWC2 USB controller instance in the BCM2835 SoC.
-  - hisilicon,hi6220-usb: The DWC2 USB controller instance in the hi6220 SoC.
-  - rockchip,rk3066-usb: The DWC2 USB controller instance in the rk3066 Soc;
-  - "rockchip,px30-usb", "rockchip,rk3066-usb", "snps,dwc2": for px30 Soc;
-  - "rockchip,rk3188-usb", "rockchip,rk3066-usb", "snps,dwc2": for rk3188 Soc;
-  - "rockchip,rk3288-usb", "rockchip,rk3066-usb", "snps,dwc2": for rk3288 Soc;
-  - "lantiq,arx100-usb": The DWC2 USB controller instance in Lantiq ARX SoCs;
-  - "lantiq,xrx200-usb": The DWC2 USB controller instance in Lantiq XRX SoCs;
-  - "amlogic,meson8-usb": The DWC2 USB controller instance in Amlogic Meson8 SoCs;
-  - "amlogic,meson8b-usb": The DWC2 USB controller instance in Amlogic Meson8b SoCs;
-  - "amlogic,meson-gxbb-usb": The DWC2 USB controller instance in Amlogic S905 SoCs;
-  - "amlogic,meson-g12a-usb": The DWC2 USB controller instance in Amlogic G12A SoCs;
-  - "amcc,dwc-otg": The DWC2 USB controller instance in AMCC Canyonlands 460EX SoCs;
-  - snps,dwc2: A generic DWC2 USB controller with default parameters.
-  - "st,stm32f4x9-fsotg": The DWC2 USB FS/HS controller instance in STM32F4x9 SoCs
-  configured in FS mode;
-  - "st,stm32f4x9-hsotg": The DWC2 USB HS controller instance in STM32F4x9 SoCs
-  configured in HS mode;
-  - "st,stm32f7-hsotg": The DWC2 USB HS controller instance in STM32F7 SoCs
-    configured in HS mode;
-- reg : Should contain 1 register range (address and length)
-- interrupts : Should contain 1 interrupt
-- clocks: clock provider specifier
-- clock-names: shall be "otg"
-Refer to clk/clock-bindings.txt for generic clock consumer properties
-
-Optional properties:
-- phys: phy provider specifier
-- phy-names: shall be "usb2-phy"
-- vbus-supply: reference to the VBUS regulator. Depending on the current mode
-  this is enabled (in "host" mode") or disabled (in "peripheral" mode). The
-  regulator is updated if the controller is configured in "otg" mode and the
-  status changes between "host" and "peripheral".
-Refer to phy/phy-bindings.txt for generic phy consumer properties
-- dr_mode: shall be one of "host", "peripheral" and "otg"
-  Refer to usb/generic.txt
-- g-rx-fifo-size: size of rx fifo size in gadget mode.
-- g-np-tx-fifo-size: size of non-periodic tx fifo size in gadget mode.
-- g-tx-fifo-size: size of periodic tx fifo per endpoint (except ep0) in gadget mode.
-- snps,need-phy-for-wake: If present indicates that the phy needs to be left
-                          on for remote wakeup during suspend.
-- snps,reset-phy-on-wake: If present indicates that we need to reset the PHY when
-                          we detect a wakeup.  This is due to a hardware errata.
-
-Deprecated properties:
-- g-use-dma: gadget DMA mode is automatically detected
-
-Example:
-
-        usb@101c0000 {
-                compatible = "ralink,rt3050-usb, snps,dwc2";
-                reg = <0x101c0000 40000>;
-                interrupts = <18>;
-		clocks = <&usb_otg_ahb_clk>;
-		clock-names = "otg";
-		phys = <&usbphy>;
-		phy-names = "usb2-phy";
-		snps,need-phy-for-wake;
-        };
diff --git a/Documentation/devicetree/bindings/usb/dwc2.yaml b/Documentation/devicetree/bindings/usb/dwc2.yaml
new file mode 100644
index 000000000000..e29dfcd2466c
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/dwc2.yaml
@@ -0,0 +1,152 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/dwc2.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DesignWare HS OTG USB 2.0 controller Bindings
+
+maintainers:
+  - Minas Harutyunyan <hminas@synopsys.com>
+
+properties:
+  compatible:
+    oneOf:
+      - const: brcm,bcm2835-usb
+      - const: hisilicon,hi6220-usb
+      - items:
+          - const: rockchip,rk3066-usb
+          - const: snps,dwc2
+      - items:
+          - const: rockchip,px30-usb
+          - const: rockchip,rk3066-usb
+          - const: snps,dwc2
+      - items:
+          - const: rockchip,rk3036-usb
+          - const: rockchip,rk3066-usb
+          - const: snps,dwc2
+      - items:
+          - const: rockchip,rv1108-usb
+          - const: rockchip,rk3066-usb
+          - const: snps,dwc2
+      - items:
+          - const: rockchip,rk3188-usb
+          - const: rockchip,rk3066-usb
+          - const: snps,dwc2
+      - items:
+          - const: rockchip,rk3228-usb
+          - const: rockchip,rk3066-usb
+          - const: snps,dwc2
+      - items:
+          - const: rockchip,rk3288-usb
+          - const: rockchip,rk3066-usb
+          - const: snps,dwc2
+      - const: lantiq,arx100-usb
+      - const: lantiq,xrx200-usb
+      - items:
+          - const: amlogic,meson8-usb
+          - const: snps,dwc2
+      - items:
+          - const: amlogic,meson8b-usb
+          - const: snps,dwc2
+      - const: amlogic,meson-gxbb-usb
+      - items:
+          - const: amlogic,meson-g12a-usb
+          - const: snps,dwc2
+      - const: amcc,dwc-otg
+      - const: snps,dwc2
+      - const: st,stm32f4x9-fsotg
+      - const: st,stm32f4x9-hsotg
+      - const: st,stm32f7-hsotg
+      - const: samsung,s3c6400-hsotg
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  clock-names:
+    items:
+      - const: otg
+
+  resets:
+    items:
+     - description: common reset
+     - description: ecc reset
+    minItems: 1
+
+  reset-names:
+    items:
+     - const: dwc2
+     - const: dwc2-ecc
+    minItems: 1
+
+  phys:
+    maxItems: 1
+
+  phy-names:
+    const: usb2-phy
+
+  vbus-supply:
+    description: reference to the VBUS regulator. Depending on the current mode
+      this is enabled (in "host" mode") or disabled (in "peripheral" mode). The
+      regulator is updated if the controller is configured in "otg" mode and the
+      status changes between "host" and "peripheral".
+
+  vusb_d-supply:
+    description: phandle to voltage regulator of digital section,
+
+  vusb_a-supply:
+    description: phandle to voltage regulator of analog section.
+
+  dr_mode:
+    enum: [host, peripheral, otg]
+
+  g-rx-fifo-size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: size of rx fifo size in gadget mode.
+
+  g-np-tx-fifo-size:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: size of non-periodic tx fifo size in gadget mode.
+
+  g-tx-fifo-size:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description: size of periodic tx fifo per endpoint (except ep0) in gadget mode.
+
+  snps,need-phy-for-wake:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: If present indicates that the phy needs to be left on for remote wakeup during suspend.
+
+  snps,reset-phy-on-wake:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: If present indicates that we need to reset the PHY when we detect a wakeup.
+                 This is due to a hardware errata.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+      usb@101c0000 {
+        compatible = "ralink,rt3050-usb, snps,dwc2";
+        reg = <0x101c0000 40000>;
+        interrupts = <18>;
+        clocks = <&usb_otg_ahb_clk>;
+        clock-names = "otg";
+        phys = <&usbphy>;
+        phy-names = "usb2-phy";
+        snps,need-phy-for-wake;
+      };
+
+...
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
