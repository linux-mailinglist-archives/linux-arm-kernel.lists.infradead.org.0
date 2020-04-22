Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2671B35CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 05:54:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0yTxva9Z2GEg1F5DgjwEgoyiB44nOD+yQJDHC20s5TU=; b=hhwDY94mDSSfjG
	W5gKzDZ/+AsJMcwcJA2GKES87ZKbLMZZeo17yAvQULJ1rtul95Ljzj+ru8oFvFi7Zkx5BKi/bhQqU
	DxbyvwThI56ueXlBAn4c+4Nhu0+9PsTrgOSXk2dc/+c3N5bdMuFt1j4D50zbREkhTF3BctA6uMKGe
	Lwhsjj+x44gYHcX49gkdRcU0HFQoSQg0EQl9JE8K2OEfsYdzgy+/mg+AJMpJDwwNJmi+/foFAZNHS
	6IjVW0JczPsdywWq6BN1SGbyJUrBl8MxsELnb8kuWLAr4KCdiGgMROy0sOz2B61DffnXXhHY/nC1n
	VLOfHx4BXC+zvFFnaGLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR6Sj-0002Og-0s; Wed, 22 Apr 2020 03:54:13 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR6SG-0002CH-NF
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 03:53:46 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0053E5801C2;
 Tue, 21 Apr 2020 23:53:40 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 21 Apr 2020 23:53:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=+EfqkUSWnK5oB5LHgnO1Rxb0VK
 C+TbEqPBLo0jnqFfY=; b=Vv5txikFjhlLvXI1tIKdx81CnUOtqX04ItqrZd++y+
 ylJ31YHwF9JMljYOhGIr0CzgOzvU/p2AtiHnJCBQO2aNv4D0S7Uo11jpZT9bzM3b
 k9Zvk2D00RhMXhgO0bdcOTcL0p+VteTb9+w+O6Sp/bh5YUTvtDUw94xN+Kbl9sFL
 kvMjh8pPqD7n9bVAdcJxSzMkKIbg3R4s/L249Gi4aYRjqieTpehR7x8+CvR+sok2
 hEbvykXcCj1lGXw8kV2i4sfjkJw6GFykcqpRq45d/fwJVKQIDOp582m9frc+CYjD
 rUBPqYpRaNU9Gl8V8XsQDtYHtXMP/LSu/peBI2yQRCQg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=+EfqkUSWnK5oB5LHg
 nO1Rxb0VKC+TbEqPBLo0jnqFfY=; b=nZ+ub6QOBaRpvVC0ToDUQ/DS9jU1jSut6
 8xhF9m2WCT9D1g7LqyhyMWu+DMzvzYkRSfJVjb5hikK/Pg4rLuzPt+Rrp+DMnY/w
 qqE2v6M3Shup8k2wJxpf5T38BgSprvn72s9eTAeZBgiBi70/05lEkh42UNOQTEUz
 U3ZzTHD/xNt61V7THd04ZuTvHZgyWoV/kYz441BNOke/5wNGbtVtR0GL33p4ksRX
 ljtf6iLNfKk1dSpy4V3hqBUg2X5vfYSQ4vq/8PYsJgJocah0GLKl1UEmnNoMWOeY
 m6pe7yc3Ohrikuf93td82cEEmMDhnr3rL1+yGNIPymRV6neLJJ0xQ==
X-ME-Sender: <xms:xL-fXtryYa-E56bp_MQzrv-ZweNWTYg05pQAnuoEmzx1HfOe41hu5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrgeeigdejhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghirhes
 rghlihhsthgrihhrvdefrdhmvgeqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdroh
 hrghenucfkphepjeefrdelfedrkeegrddvtdeknecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomheprghlihhsthgrihhrsegrlhhishhtrghirhdvfe
 drmhgv
X-ME-Proxy: <xmx:xL-fXr8vh1tErFKMmMRrFOTVByOqqyMkfXEtEH26SDrz7EFWnS9uqA>
 <xmx:xL-fXs_3hyJxHZuB3nFymkNYyhhsZBAf5w077Be9d4wkzft2tzpbUQ>
 <xmx:xL-fXqsc8KlVQcN7vc5oQgLnA133RjHzuQpd1eKLFoSrVfeFhSkT9g>
 <xmx:xL-fXhodnDceTjkOrAp2U-6b0io9GgFzDco_ANuCj-16ht-gxFtHhg>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id 15DD33280063;
 Tue, 21 Apr 2020 23:53:39 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v4 1/3] dt-bindings: net: bluetooth: Add rtl8723bs-bluetooth
Date: Tue, 21 Apr 2020 20:53:31 -0700
Message-Id: <20200422035333.1118351-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_205344_922772_C80956D6 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
index 000000000000..4eb141b00fcb
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek-bluetooth.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/realtek,rtl8723bs-bt.yaml#
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
