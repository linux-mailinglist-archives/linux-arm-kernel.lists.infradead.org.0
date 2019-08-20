Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFF495D37
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:25:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=etiEJOjDOmWpbquIAzVJ6mc+iHG7vFK9fpi3ADqaTpk=; b=m2H9bUoZUGO2qJ
	Gw1B4oN3Za3p2cA5gYMM+MNHy+kVglUyZWyfCV2UZgmAMELUZavIXnPFNDQb/zOOjDHZMLL6XMO2C
	P0yxASaydqMaB/tE/wm2+ngwc4hbDNjKC83tLpD0It94j8AkRlqd1bmRQRMIj0BGxtU2udlEOVy9x
	DfxyIwOPAZpWIENRpC2BYMyojx09an+XysOcnxNAIXBLeaL4YjbVzNXCuZ9Y02Uq9kPSbJ/stSK8C
	5djlouo0zEI3a0mAv1zzq3gi22DOxytv+szUSgTIOz6n+SWLQ7IAmuyuWk46D0So7xT8GHAX6V+Fs
	qCHI5sAp9xWfD6DawIrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02GU-0006dC-TD; Tue, 20 Aug 2019 11:25:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02Fo-0005Yu-Im
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:24:46 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C70B422CF9;
 Tue, 20 Aug 2019 11:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566300284;
 bh=KuPYgScnsq8NVJ17LsXSj/9k1U4/rG3n9SuWLCCohdc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wb67Z2seCCUDAlbUWXeWCDpz7pLI3HW1uAQMwpB/JO2fg//kwMqnlneiIFAjYUtca
 /+k4UU3LtzMs2WvS7Mi6S/mTTOUgrJxrm30AWABxEV2WqWIYHPDm2xBLfRMu9Luj72
 /gj0o0dbaqBdmPXbUl5bb5q4v6JZ21JAVRJxu0Ac=
From: Maxime Ripard <mripard@kernel.org>
To: Hans Verkuil <hans.verkuil@cisco.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH v7 1/5] dt-bindings: media: Add Allwinner A10 CSI binding
Date: Tue, 20 Aug 2019 13:24:32 +0200
Message-Id: <f490b35e62c5fd15174b5241ce1653e991c8fc9e.1566300265.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <cover.b695c63cf668192aff5574a3005d483c601e77f6.1566300265.git-series.maxime.ripard@bootlin.com>
References: <cover.b695c63cf668192aff5574a3005d483c601e77f6.1566300265.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_042444_658317_0D64ADBE 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Rob Herring <robh@kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner A10 CMOS Sensor Interface is a camera capture interface also
used in later (A10s, A13, A20, R8 and GR8) SoCs.

On some SoCs, like the A10, there's multiple instances of that controller,
with one instance supporting more channels and having an ISP.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 107 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 107 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
new file mode 100644
index 000000000000..9000bca344f9
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -0,0 +1,107 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+description: |-
+  The Allwinner A10 and later has a CMOS Sensor Interface to retrieve
+  frames from a parallel or BT656 sensor.
+
+properties:
+  compatible:
+    const: allwinner,sun7i-a20-csi0
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: The CSI interface clock
+      - description: The CSI module clock
+      - description: The CSI ISP clock
+      - description: The CSI DRAM clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+      - const: isp
+      - const: ram
+
+  resets:
+    maxItems: 1
+
+  port:
+    type: object
+    additionalProperties: false
+
+    properties:
+      endpoint:
+        properties:
+          bus-width:
+            const: 8
+            description: Number of data lines actively used.
+
+          data-active: true
+          hsync-active: true
+          pclk-sample: true
+          remote-endpoint: true
+          vsync-active: true
+
+        required:
+          - bus-width
+          - data-active
+          - hsync-active
+          - pclk-sample
+          - remote-endpoint
+          - vsync-active
+
+    required:
+      - endpoint
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun7i-a20-ccu.h>
+    #include <dt-bindings/reset/sun4i-a10-ccu.h>
+
+    csi0: csi@1c09000 {
+        compatible = "allwinner,sun7i-a20-csi0";
+        reg = <0x01c09000 0x1000>;
+        interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&ccu CLK_AHB_CSI0>, <&ccu CLK_CSI0>,
+                 <&ccu CLK_CSI_SCLK>, <&ccu CLK_DRAM_CSI0>;
+        clock-names = "bus", "mod", "isp", "ram";
+        resets = <&ccu RST_CSI0>;
+
+        port {
+            csi_from_ov5640: endpoint {
+                remote-endpoint = <&ov5640_to_csi>;
+                bus-width = <8>;
+                hsync-active = <1>; /* Active high */
+                vsync-active = <0>; /* Active low */
+                data-active = <1>;  /* Active high */
+                pclk-sample = <1>;  /* Rising */
+            };
+        };
+    };
+
+...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
