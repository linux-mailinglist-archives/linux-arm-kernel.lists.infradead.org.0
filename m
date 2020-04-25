Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3897E1B878F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 17:56:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+zssNoguO+hSESld/k6PhjaCXCjVGQCibAEaWVZ3tZY=; b=Leg2zft2c9POCL
	U70/LdXXDdpwkxKWYjgY+elsImnT+nqMS2ZIqt895l6cez6di253RESTwYXcKPoG4m3q+8J8b2MQT
	enBySUhHpWTNaMXITslN6PWEeMW3MnqdN32Oud8Y87Tg0TI+yCS4nht1HhmTKiCm61JcBcL2Rf8HE
	TmPmw/tWxsSL9dXWMdjTf0lFTxniDPxh64WQTMVw1uneu+Hb2clO1iXKQh+OEgNIVmzO+3DUfDu+y
	ddMiXaD0W1dG6mEHdwEp7hIEfhW2tpCw4TKHGVQGKvUjf7n3HfYFMw3+AX/mwT4LQfvDecEtBPn1e
	VjJuZFwNByG9F2p6cUDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSNAO-00079H-66; Sat, 25 Apr 2020 15:56:32 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSN9f-0006ek-Qh
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 15:55:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3BF3E5803BF;
 Sat, 25 Apr 2020 11:55:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 25 Apr 2020 11:55:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=xudYb/gSOwoNebonFD9XGdvc59
 XtcGplDNYOwu4XiUI=; b=oLRotAyWbPWDaOLtuIJgzBAtTHjhY7DmziVPQmclZl
 WUo4BDGpu3mn2Ur5v5gJkCuI2FuyjbSV5vWiUO5y83wQqfcs0k3MAC7HufB+e1RG
 dAYPuJ0HKdiIgqTwVBhFhSnrGzch43Kt7w0D+QArp5ixAgJBTZGgarIVdnLahwVx
 +b18cyqBFvA85lzInhHG+3gxFQ7wPdh1+mvsn6HeOL/PYhI02pwsP7Tp9xGUTp16
 bIcRDYlcnuDpmb9UV4Jt9+VpifYEPliJvzSE3rl+BlXuWbphsflPDjJv0byVxYqm
 BM1JSHXt5UZduBdMGegE3V35ZWN6ce8c/prlQKKpHSpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=xudYb/gSOwoNebonF
 D9XGdvc59XtcGplDNYOwu4XiUI=; b=cGUmEnNLLNp/LIyM+YdFX1OIhSj5qWbs7
 xdYdpL+kmZWHj45VdWNmP6C1NU15B0om5vI6EXHh5sE8H+fSyHN7xKeZXSjQHtQu
 eGCe6mvlh0n7udr4Pk6Qjra5Et7eKo6F4CZ7tJobdRKloU4pDFu/iBf8c+dZ7Mub
 7AQgWu39oJ/Lc/xaIzlt9a2hbX8YikFobNGkS1FRabHivuUwlXmI26XhptbpZM/5
 0aCVCogvbXeMRGJ05zglZkDEQTtdBNHLzQ16CnoznJ362tK2jJnR0KCgXBVgd+DU
 teqVfQCS3u85DKHxZ9lJKqrJrVPHx2KC+n1L6lwxJ3OTgiv+czeUw==
X-ME-Sender: <xms:d12kXppr3YaNqcTfGxpZ5rYR479U31CJOFf3XhgySqVTuXtRy6toxw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrheeggdejvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghirhes
 rghlihhsthgrihhrvdefrdhmvgeqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdroh
 hrghenucfkphepjeefrdelfedrkeegrddvtdeknecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomheprghlihhsthgrihhrsegrlhhishhtrghirhdvfe
 drmhgv
X-ME-Proxy: <xmx:d12kXv4hELo9Q_14xXo5RwPbJbeHJC6CGZmT8PWqL_06m5_k9nzW3g>
 <xmx:d12kXhOaOxPF7zvZn5xNuD2T8hgV1wuO92RlonMqQtf_vsJcjpyQoA>
 <xmx:d12kXpO1UE_kb03adDxVDTHdVyB2yIZCK8Hfs9t-grySCISP6JYpXA>
 <xmx:fV2kXm3Cn9faCTDQ2kM13sFSBciBs76a6XS8akneDfGoC3iYzbTHgw>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 041E83280063;
 Sat, 25 Apr 2020 11:55:33 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v4 1/3] dt-bindings: net: bluetooth: Add rtl8723bs-bluetooth
Date: Sat, 25 Apr 2020 08:55:29 -0700
Message-Id: <20200425155531.2816584-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_085547_998810_527F8EBA 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Alistair Francis <alistair@alistair23.me>,
 linux-arm-kernel@lists.infradead.org, alistair23@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vasily Khoruzhick <anarsoul@gmail.com>

Add binding document for bluetooth part of RTL8723BS/RTL8723CS

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
Signed-off-by: Alistair Francis <alistair@alistair23.me>
---
 .../bindings/net/realtek-bluetooth.yaml       | 54 +++++++++++++++++++
 1 file changed, 54 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek-bluetooth.yaml

diff --git a/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
new file mode 100644
index 000000000000..f15a5e5e4859
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/realtek-bluetooth.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RTL8723BS/RTL8723CS/RTL8822CS Bluetooth Device Tree Bindings
+
+maintainers:
+  - Vasily Khoruzhick <anarsoul@gmail.com>
+  - Alistair Francis <alistair@alistair23.me>
+
+description:
+  RTL8723CS/RTL8723CS/RTL8822CS is WiFi + BT chip. WiFi part is connected over
+  SDIO, while BT is connected over serial. It speaks H5 protocol with few
+  extra commands to upload firmware and change module speed.
+
+properties:
+  compatible:
+    oneOf:
+      - const: "realtek,rtl8723bs-bt"
+      - const: "realtek,rtl8723cs-bt"
+      - const: "realtek,rtl8822cs-bt"
+
+  device-wake-gpios:
+    maxItems: 1
+    description: GPIO specifier, used to wakeup the BT module
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO specifier, used to enable the BT module
+
+  host-wake-gpios:
+    maxItems: 1
+    description: GPIO specifier, used to wakeup the host processor
+
+required:
+  - compatible
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    uart1 {
+        pinctrl-names = "default";
+        pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+        uart-has-rtscts = <1>;
+
+        bluetooth {
+            compatible = "realtek,rtl8723bs-bt";
+            device-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+            host-wakeup-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+        };
+    };
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
