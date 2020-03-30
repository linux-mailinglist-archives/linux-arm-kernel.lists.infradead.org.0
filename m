Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B345197C35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 14:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEIGknv6oormQQopn1p33imBNLFobXX/6spRPWP7ec0=; b=NssMjWxlnW0tYK
	WAGw6Hl8kv0K7K3RZ3ojFToLCam1tlM0hrphX5m9H4p2lSdm27SAHoviK/58cQNn9WzzuXnVzeIJr
	fe+H9k1aVgC1EPkX7gB3HgOatDoWHU2t8oFLywDCnbETRHQMIiAqZKbslr1YJlhFMYkXsyQkdHH5B
	eb7B+4y6a1u6VTWpkrcWDutCAwWwYxfFgzG39HFE6OOOknmz4ACaUTeBu2ucmMJi8nwAAw3jiPnO7
	sr3h7oYDSe8wrKa/t+Qt5Kl7xYiA8pyno9G0LIlkE3T02xsE6im2e7RFuDotm8NwRvIR1/SDw0sKO
	2Vu2C+0lz4eqPHnbWQVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jItob-0001YT-LA; Mon, 30 Mar 2020 12:46:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jItoO-0001WP-Sx; Mon, 30 Mar 2020 12:46:42 +0000
X-UUID: b35fe6af75e14a1a9187e741f8ec6aa7-20200330
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=vKZ2EjPZ/y2qtamzYyVm0qfJ+kD0edNKbJeAfcXDOkc=; 
 b=FoFQfCFX0Hk9vbVF3R5KgSroaT9HK9c7B0vUUpJXUZc5dRmRI4ulost6hQeXUughmH7lR8r9VOOa/XUuUZgUAlbxrdhDjniKwDOtNLaKtj2LiYxCx83mGxfqky6OE1atCBuu2vo6xm81MMU068sI6UdQcnDI4NtUAYI+Pemxz18=;
X-UUID: b35fe6af75e14a1a9187e741f8ec6aa7-20200330
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1045664949; Mon, 30 Mar 2020 04:46:41 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Mar 2020 05:36:35 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Mar 2020 20:36:28 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 30 Mar 2020 20:36:27 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [V4, 1/2] media: i2c: dw9768: Add DT support and MAINTAINERS entry
Date: Mon, 30 Mar 2020 20:36:33 +0800
Message-ID: <20200330123634.363-2-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20200330123634.363-1-dongchun.zhu@mediatek.com>
References: <20200330123634.363-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D4B238AFE7EE4988C1108ED15035833D549164685550A449E551F0E1740931472000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_054640_950516_51893D6E 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 shengnan.wang@mediatek.com, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 louis.kuo@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is to add the Devicetreee binding documentation and
MAINTAINERS entry for dw9768 actuator.

Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
---
 .../bindings/media/i2c/dongwoon,dw9768.yaml        | 62 ++++++++++++++++++++++
 MAINTAINERS                                        |  7 +++
 2 files changed, 69 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
new file mode 100644
index 0000000..8a353dc
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2020 MediaTek Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/dongwoon,dw9768.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Dongwoon Anatech DW9768 Voice Coil Motor (VCM) Device Tree Bindings
+
+maintainers:
+  - Dongchun Zhu <dongchun.zhu@mediatek.com>
+
+description: |-
+  The Dongwoon DW9768 is a single 10-bit digital-to-analog (DAC) converter
+  with 100 mA output current sink capability. VCM current is controlled with
+  a linear mode driver. The DAC is controlled via a 2-wire (I2C-compatible)
+  serial interface that operates at clock rates up to 1MHz. This chip
+  integrates Advanced Actuator Control (AAC) technology and is intended for
+  driving voice coil lenses in camera modules.
+
+properties:
+  compatible:
+    const: dongwoon,dw9768
+
+  reg:
+    maxItems: 1
+
+  vin-supply:
+    description:
+      Definition of the regulator used as I2C I/O interface power supply.
+    maxItems: 1
+
+  vdd-supply:
+    description:
+      Definition of the regulator used as VCM chip power supply.
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - vin-supply
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    i2c2: i2c@11009000 {
+        clock-frequency = <400000>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        dw9768: camera-lens@c {
+            compatible = "dongwoon,dw9768";
+            reg = <0x0c>;
+
+            vin-supply = <&mt6358_vcamio_reg>;
+            vdd-supply = <&mt6358_vcama2_reg>;
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 38fe2f3..5e124d2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5134,6 +5134,13 @@ S:	Maintained
 F:	drivers/media/i2c/dw9714.c
 F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.txt
 
+DONGWOON DW9768 LENS VOICE COIL DRIVER
+M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
+L:	linux-media@vger.kernel.org
+S:	Maintained
+T:	git git://linuxtv.org/media_tree.git
+F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
+
 DONGWOON DW9807 LENS VOICE COIL DRIVER
 M:	Sakari Ailus <sakari.ailus@linux.intel.com>
 L:	linux-media@vger.kernel.org
-- 
2.9.2
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
