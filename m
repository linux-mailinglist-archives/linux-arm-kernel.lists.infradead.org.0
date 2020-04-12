Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E7B1A5BF1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Apr 2020 04:07:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U/u81mHJ1laq+jVUCX9KzCzAJ06vxpuJ2X0Su2aC9do=; b=GzMl1hT9eEH0lA
	xaUazX147RpMn+oH71Av9+8A7ZPTYdbcPn53K0/IjLQmwXoEidZcFftTgvgQ/lSnO1wln+XAggT0j
	LcZi49SoeuVtpUuPi11rViVD/eciEYYpEloHheKn/JpXSlgeMdB57mORpakCha37zaF1M5DBLr1FY
	VqL5UDv4FV5EaYM7gVBRqx+lXbf41TBJE/vdyP5yKLP1JrwmlEpuxqLfYenvT21uKgTXrmUxT/PBC
	YFiOFPiM6OphJ55wFGuzQXMIwFt+JT2+xTB/fhOg21mRAhZtK/opy4LGtFVHIW611GSalLqn1BFPe
	pzKU/Lt2s4+WLzKeqaJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNS1X-0001op-P0; Sun, 12 Apr 2020 02:07:03 +0000
Received: from wnew4-smtp.messagingengine.com ([64.147.123.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNS1P-0001lE-3p
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Apr 2020 02:06:56 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 409EA7B6;
 Sat, 11 Apr 2020 22:06:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Sat, 11 Apr 2020 22:06:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alistair23.me;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=mJv36t1SJnnp+kHy+QoWeejovE
 tqzplumtCjfcbVuS0=; b=BAvR9SNeojzza4R55O1DNwI4mOY1L3ZEbCUW6irq9O
 ZKzSbknXwIXg5u9Y1ynW5mDvlSvDNS4iOwGcqkdVZ5vMn/ihyhVtLEvQlhiHv2q2
 V7SdWI3AIkUHAgHwh0RvIHFAAtq5wxX/4im7NYqYnil/2yMmeFlvDmn3en0X/Wep
 eFzz8wiZQJwb4Bq9SHEIF810jgrKiWT8jGBEE4rOAtBmn0e+/czKsFuCv4an0qSX
 nkiNEPRHL9kMLOMxp5hIvOBLurkRY7e7Cml7w+8ezdfkuH2NKax+jfOTPBxMQePG
 Gvn3WleLZ0iQ0OZnKwbEl5kwBTduNE9AQ4sVc0KyhdNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=mJv36t1SJnnp+kHy+
 QoWeejovEtqzplumtCjfcbVuS0=; b=pQrWuEs87Y/MS9DrPtDbtpSddA2tyCukp
 165eO4XFQx5yf8MvIl639NZNDI7evSMpAav2E+C6qs/bSlCuF816+zf3Szty3Vqt
 JqjaUF2PkypRZ4CHtgiMZfECrjqkB8wviDjem30qpAuq3FWMz+hxrGudgzmMSrT8
 WgA7WXYpnjkH4Lq03cmJxATmuWFk4O9AwADDu8VDCqsm7zG9O5fp76brBKr2ye92
 ZeCLqBvOstcNm9IRzH52St83j5N+/UZKl0kTXXj9oTMu/TUlTBe8cWd8LV6slqWy
 oeWaQj5NPzD9rJ6WNK6VcPrAQ7LyYjQZ7kvMjpN/zOqIEAlj7UeQw==
X-ME-Sender: <xms:uHeSXs7CdNHuQDonf30CVDUev7wuVK4OpcyQxkxC77jmZN77hHT5Ww>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrvdehgdehvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeetlhhishhtrghirhcuhfhrrghntghishcuoegrlhhishhtrghirhes
 rghlihhsthgrihhrvdefrdhmvgeqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdroh
 hrghenucfkphepjeefrdelfedrkeegrddvtdeknecuvehluhhsthgvrhfuihiivgeptden
 ucfrrghrrghmpehmrghilhhfrhhomheprghlihhsthgrihhrsegrlhhishhtrghirhdvfe
 drmhgv
X-ME-Proxy: <xmx:uHeSXhn5ae26nk5rVmHUay3in-XT8b6gEC9pg2PxvhNltF7pekrtmg>
 <xmx:uHeSXkHTbmTJwh5HUy7IEAij9UmrMrF9e5cgU5Qbb3VfjtictQ5Ylg>
 <xmx:uHeSXiigaKMrjSbGeAyrvlyYPCeZ1kr_xoQeHvSlFoauVib5buO1iA>
 <xmx:uHeSXmhzAhI7a7uWDNP8AFgtzi5NmT_p9j9lF5npaVUwMwKB1idG9o-F0yY>
Received: from alistair-xps-14z.alistair23.me
 (c-73-93-84-208.hsd1.ca.comcast.net [73.93.84.208])
 by mail.messagingengine.com (Postfix) with ESMTPA id F2180328005E;
 Sat, 11 Apr 2020 22:06:46 -0400 (EDT)
From: Alistair Francis <alistair@alistair23.me>
To: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, marcel@holtmann.org,
 johan.hedberg@gmail.com, linux-bluetooth@vger.kernel.org,
 mripard@kernel.org, wens@csie.org
Subject: [PATCH v3 1/3] dt-bindings: net: bluetooth: Add rtl8723bs-bluetooth
Date: Sat, 11 Apr 2020 19:06:42 -0700
Message-Id: <20200412020644.355142-1-alistair@alistair23.me>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_190655_195966_5BECCCED 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.18 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 .../bindings/net/realtek,rtl8723bs-bt.yaml    | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml

diff --git a/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml
new file mode 100644
index 000000000000..ebb90356a96e
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/realtek,rtl8723bs-bt.yaml
@@ -0,0 +1,52 @@
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
+    &uart1 {
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
