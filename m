Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A94C1FB1B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 15:08:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+L0q7u6YVudDLeB3D78GvBzCQ9IoB/yXdN2KSeLqvo=; b=H1Hp/Ta6kugxf7
	WoafbsHW2p3UwRMznZqRpCKUPmn2kY/eSp9Q//JerFV4r6QGmX53Gha+l0DyswuF3662yM7ErwIFo
	ldVntEjeacZP968sPfGQMjOAlUiRqAc3B1I+Ilpb3FIZu+Rc9/0/1kTNWdz/dwBwwFRfkHVoUyw3S
	OweppxB/isl9ioCb6yF6noFathsXFLMbwijLaSLFBIF6q+0p3IqIrEMsr2xXq6q1VqW4rcmqHNmg6
	APwbr9eEc1/uDLhBrRPzHLmLAjIfpYtHFdsoJlp5EethhdKJkRwmazMN/26iDoxq95bNCTksAJrl9
	yN/X9cxm4+oGcGfB8MYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlBKB-0004dA-8z; Tue, 16 Jun 2020 13:08:23 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlBJy-0004bS-5q; Tue, 16 Jun 2020 13:08:11 +0000
X-UUID: 2d2ca83bf6494c1585f0ee54bf4193f1-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=JC6Ap5lkEUDRzG48YCqQYH/0TW9LXucBJHSVGVhjYFg=; 
 b=BUHqpiA2n9IFk0La2QU4ANUnY+ligdfa+lg806+ZPYrbhwpGPy5la7PkRhcmGEWnhGrUCwlse/LhDmPrRYxAjcluagPSR142r/BKqVTkfz2+ST2+08BDnRRZX9YdT5nXDOeobs1BX0NIeK8Tki8X2vBLLSSj+8+ozEi/gazdc+E=;
X-UUID: 2d2ca83bf6494c1585f0ee54bf4193f1-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 866608372; Tue, 16 Jun 2020 05:07:59 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 05:58:01 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 20:58:02 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 16 Jun 2020 20:57:59 +0800
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: <linus.walleij@linaro.org>, <bgolaszewski@baylibre.com>,
 <mchehab@kernel.org>, <andriy.shevchenko@linux.intel.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <sakari.ailus@linux.intel.com>, 
 <drinkcat@chromium.org>, <tfiga@chromium.org>, <matthias.bgg@gmail.com>,
 <bingbu.cao@intel.com>
Subject: [PATCH V8 1/2] media: dt-bindings: media: i2c: Document DW9768
 bindings
Date: Tue, 16 Jun 2020 20:55:30 +0800
Message-ID: <20200616125531.31671-2-dongchun.zhu@mediatek.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <20200616125531.31671-1-dongchun.zhu@mediatek.com>
References: <20200616125531.31671-1-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_060810_228145_7168439B 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Add DeviceTree Binding Documentation for Dongwoon Anatech DW9768
voice coil actuator.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
---
 .../bindings/media/i2c/dongwoon,dw9768.yaml        | 100 +++++++++++++++++++++
 MAINTAINERS                                        |   7 ++
 2 files changed, 107 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml

diff --git a/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
new file mode 100644
index 0000000..cb96e95
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
@@ -0,0 +1,100 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright (c) 2020 MediaTek Inc.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/i2c/dongwoon,dw9768.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Dongwoon Anatech DW9768 Voice Coil Motor (VCM) Lens Device Tree Bindings
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
+    enum:
+      - dongwoon,dw9768 # for DW9768 VCM
+      - giantec,gt9769  # for GT9769 VCM
+
+  reg:
+    maxItems: 1
+
+  vin-supply:
+    description:
+      Definition of the regulator used as Digital I/O voltage supply.
+
+  vdd-supply:
+    description:
+      Definition of the regulator used as Digital core voltage supply.
+
+  dongwoon,aac-mode:
+    description:
+      Indication of AAC mode select.
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum:
+          - 1    #  AAC2 mode(operation time# 0.48 x Tvib)
+          - 2    #  AAC3 mode(operation time# 0.70 x Tvib)
+          - 3    #  AAC4 mode(operation time# 0.75 x Tvib)
+          - 5    #  AAC8 mode(operation time# 1.13 x Tvib)
+        default: 2
+
+  dongwoon,aac-timing:
+    description:
+      Number of AAC Timing count that controlled by one 6-bit period of
+      vibration register AACT[5:0], the unit of which is 100 us.
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - default: 0x20
+        minimum: 0x00
+        maximum: 0x3f
+
+  dongwoon,clock-presc:
+    description:
+      Indication of VCM internal clock dividing rate select, as one multiple
+      factor to calculate VCM ring periodic time Tvib.
+    allOf:
+      - $ref: "/schemas/types.yaml#/definitions/uint32"
+      - enum:
+          - 0    #  Dividing Rate -  2
+          - 1    #  Dividing Rate -  1
+          - 2    #  Dividing Rate -  1/2
+          - 3    #  Dividing Rate -  1/4
+          - 4    #  Dividing Rate -  8
+          - 5    #  Dividing Rate -  4
+        default: 1
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
+
+    i2c {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        dw9768: camera-lens@c {
+            compatible = "dongwoon,dw9768";
+            reg = <0x0c>;
+
+            vin-supply = <&mt6358_vcamio_reg>;
+            vdd-supply = <&mt6358_vcama2_reg>;
+            dongwoon,aac-timing = <0x39>;
+        };
+    };
+
+...
diff --git a/MAINTAINERS b/MAINTAINERS
index 68f21d4..62690c4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5215,6 +5215,13 @@ T:	git git://linuxtv.org/media_tree.git
 F:	Documentation/devicetree/bindings/media/i2c/dongwoon,dw9714.txt
 F:	drivers/media/i2c/dw9714.c
 
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
