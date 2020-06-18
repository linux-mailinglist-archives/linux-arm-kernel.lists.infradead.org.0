Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3311FF416
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 16:01:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+NC4lVh3Gc/2jkgbaI73KCtrqF3KnXKZlApBw5cXEQ=; b=S72/O+CiD1MB/G
	TdlOnMcXH/DALHdlnUtk+tzirS9yEJGOnPsdonydhhRW79waIbPdZEDjXL0aPt3hSJIgYIwda2KSA
	XPQFzIx6Qn5zz85SrPjOlJG5cGeQfJnSgebtanN+bBFZhhoNHoamyuhZ/QH2HrhDB8+lQipEYPc6H
	d0Gd8+G1XE+wMIxakjApLDdR+9xFo7TGvwfyOLgiEnv/VBw5VHNiT9fdOqqFAx+i7mm0/128xuFBj
	kZJLK0YfdeWq0lYhw/G7W7IS3lMsNwbNqbfdURbR8zycQKD5lqkqOMsaONHqxR+BJh6DoJdfbmxLG
	22RQLgM442YIgSKyEUww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlv6B-0007d5-4H; Thu, 18 Jun 2020 14:00:59 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlv5V-0005PP-Do
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 14:00:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592488817; x=1624024817;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gkdLjz1r6NMau5QrEq+reINzcOHhHZuLk5kWu8BYMO4=;
 b=fFAzafQt66bv6iN48UMFIOL+9J5fcLdo+v0Ld44ceZixXAu2TWsQmPdq
 Gx1CvQlii6htcGFwBhV6fwWLRFrLgJjl8TsiQR12W0kaHttOnAkY8td6r
 w08bYPfWMC3FHjZRwlJ+QRNo0bYGB3y0hthBwCiTGItO8MuQjclMgvYeV
 oRW3ndQ9qxQS/IiL45Ly4fG4LYcDWJkhCfP73GLo374EIdMCoRr4P7daQ
 Sty1U2wfc1KULL2/TT3/6+v9XPXLDZUa1k3zTlFLJ/U+j0k5RMoFMhy1h
 U4O7RRul8VrNLw+kkMDdjFvKdSKwOWrQvlSdj71JIdUhJ66BXBK3D7OIu w==;
IronPort-SDR: iWFye+NSDrpdrt/TXSNCG8Ww8ZuGVR8DSE8TxSiboicYkJD1qJYFVy3bcIbjzQ84gWunlp2qsz
 ffdOTTrcBziLMbIauqoSRf6TPM9/kZbNMcKK8MCE6yw/A3+etCwzZjwpa0U9ZmL4AIerWg2Gld
 vx24e8s57HmMAR6xfQOxoYxZ7Ga0O7ZnVZWulXc7FO6I92tzQh410+YGiD9qr/U21VRvJsyNj4
 T+eEbqIBoeiCwZLut6Mg1frYg+7kqxArLLm4E2tOGy4IJANQEoZ2VWdLPmAVqJarFkZ+ham6ao
 LKA=
X-IronPort-AV: E=Sophos;i="5.73,526,1583218800"; d="scan'208";a="84138404"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 18 Jun 2020 07:00:12 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 18 Jun 2020 07:00:04 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 18 Jun 2020 07:00:08 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 1/3] dt-bindings: hwmon: Add Sparx5 temperature sensor
Date: Thu, 18 Jun 2020 15:59:49 +0200
Message-ID: <20200618135951.25441-2-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200618135951.25441-1-lars.povlsen@microchip.com>
References: <20200618135951.25441-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_070018_379426_838AA1A5 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add the DT binding specification for the Sparx5 temperature
sensor.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../bindings/hwmon/microchip,sparx5-temp.yaml | 44 +++++++++++++++++++
 1 file changed, 44 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml

diff --git a/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml b/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
new file mode 100644
index 0000000000000..76be625d56460
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/microchip,sparx5-temp.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwmon/microchip,sparx5-temp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Sparx5 Temperature Monitor
+
+maintainers:
+  - Lars Povlsen <lars.povlsen@microchip.com>
+
+description: |
+  Microchip Sparx5 embedded temperature monitor
+
+properties:
+  compatible:
+    enum:
+      - microchip,sparx5-temp
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: AHB reference clock
+
+  '#thermal-sensor-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    tmon0: tmon@610508110 {
+        compatible = "microchip,sparx5-temp";
+        reg = <0x10508110 0xc>;
+        #thermal-sensor-cells = <0>;
+        clocks = <&ahb_clk>;
+    };
--
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
