Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4BC1C1ED6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 22:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q5TBniCRhuCyGHjXAgiI1dngwaNnn8LDm11dzUi1Sjc=; b=Tyg3kwX9Bj0ckM
	MBpyq94WGvVtW5OAD5Bj0PW4WH4m/bMxd6Th/qxTQIK9THKdSIhOM9t9cI2jQ7AdmKX9vawzqfFQv
	VppBACx2UgJ9oZ33gW98j90exHd4PCWtQSIb81F/bE3E+r1t+gs5cDiaaPSpd/vMvQ+zelOmbsiLI
	gW9wDKDPEeIw0gNJlsBJ+rNLbHZVzkHPGVorPTjgJUXqBL9BQsN8ydhJbmKqfHPD69xMzZGQXcf5R
	wd46FdHdhFMWu5XIPH0ZNsoiXadALKf04rF/vaC68wf6t2Ef6X8hvNiedjrf0XQ1as2TQEH79MvUC
	JmkkYzYY9Z0CZkEA6qVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUccT-0000sC-0s; Fri, 01 May 2020 20:50:49 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUcc5-0000kv-Nq
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 20:50:27 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 041KoMtU011926;
 Fri, 1 May 2020 15:50:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588366222;
 bh=qN0Xb9wQCu3JbxXp4EMURVZTD0wb2cLpIsPzt8Vp0jg=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=lztPcqDdAGo1TLlVfh8yNtFo7IvkzZ1iYn7pF7TlEi96XXbcNaDQ1q+zLEz8AqsIs
 /IvBeTYPoQc8MmZtV6p3PR6tWBd3P5q1IEiRLjk8Ro72SnrJnc3ad//jG5csNvsQZ3
 9GGvRuaOPzfTPjco+t18S27xIwkcbZnYm6rdU1Jk=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 041KoMpv040054
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 1 May 2020 15:50:22 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 1 May
 2020 15:50:22 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 1 May 2020 15:50:22 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 041KoKBY026260;
 Fri, 1 May 2020 15:50:21 -0500
From: Grygorii Strashko <grygorii.strashko@ti.com>
To: Richard Cochran <richardcochran@gmail.com>, Murali Karicheri
 <m-karicheri2@ti.com>, "David S. Miller" <davem@davemloft.net>, Rob Herring
 <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>
Subject: [PATCH net-next 1/7] dt-binding: ti: am65x: document common platform
 time sync cpts module
Date: Fri, 1 May 2020 23:50:05 +0300
Message-ID: <20200501205011.14899-2-grygorii.strashko@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200501205011.14899-1-grygorii.strashko@ti.com>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_135025_857848_C6E42912 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, netdev@vger.kernel.org,
 Sekhar Nori <nsekhar@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document device tree bindings for TI AM654/J721E SoC The Common Platform
Time Sync (CPTS) module. The CPTS module is used to facilitate host control
of time sync operations. Main features of CPTS module are:
  - selection of multiple external clock sources
  - 64-bit timestamp mode in ns with ppm and nudge adjustment.
  - control of time sync events via interrupt or polling
  - hardware timestamp of ext. events (HWx_TS_PUSH)
  - periodic generator function outputs (TS_GENFx)
  - PPS in combination with timesync router
  - Depending on integration it enables compliance with the IEEE 1588-2008
standard for a precision clock synchronization protocol, Ethernet Enhanced
Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
Measurement (PTM).

Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 .../bindings/net/ti,k3-am654-cpsw-nuss.yaml   |   7 +
 .../bindings/net/ti,k3-am654-cpts.yaml        | 152 ++++++++++++++++++
 2 files changed, 159 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml

diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
index 78bf511e2892..0f3fde45e200 100644
--- a/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
@@ -144,6 +144,13 @@ patternProperties:
     description:
       CPSW MDIO bus.
 
+  "^cpts$":
+    type: object
+    allOf:
+      - $ref: "ti,am654-cpts.yaml#"
+    description:
+      CPSW Common Platform Time Sync (CPTS) module.
+
 required:
   - compatible
   - reg
diff --git a/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
new file mode 100644
index 000000000000..1b535d41e5c6
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/ti,k3-am654-cpts.yaml
@@ -0,0 +1,152 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/ti,am654-cpts.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: The TI AM654x/J721E Common Platform Time Sync (CPTS) module Device Tree Bindings
+
+maintainers:
+  - Grygorii Strashko <grygorii.strashko@ti.com>
+  - Sekhar Nori <nsekhar@ti.com>
+
+description: |+
+  The TI AM654x/J721E CPTS module is used to facilitate host control of time
+  sync operations.
+  Main features of CPTS module are
+  - selection of multiple external clock sources
+  - Software control of time sync events via interrupt or polling
+  - 64-bit timestamp mode in ns with PPM and nudge adjustment.
+  - hardware timestamp push inputs (HWx_TS_PUSH)
+  - timestamp counter compare output (TS_COMP)
+  - timestamp counter bit output (TS_SYNC)
+  - periodic Generator function outputs (TS_GENFx)
+  - Ethernet Enhanced Scheduled Traffic Operations (CPTS_ESTFn) (TSN)
+  - external hardware timestamp push inputs (HWx_TS_PUSH) timestamping
+
+   Depending on integration it enables compliance with the IEEE 1588-2008
+   standard for a precision clock synchronization protocol, Ethernet Enhanced
+   Scheduled Traffic Operations (CPTS_ESTFn) and PCIe Subsystem Precision Time
+   Measurement (PTM).
+
+  TI AM654x/J721E SoCs has several similar CPTS modules integrated into the
+  different parts of the system which could be synchronized with each other
+  - Main CPTS
+  - MCU CPSW CPTS with IEEE 1588-2008 support
+  - PCIe subsystem CPTS for PTM support
+
+  Depending on CPTS module integration and when CPTS is integral part of
+  another module (MCU CPSW for example) "compatible" and "reg" can
+  be omitted - parent module is fully responsible for CPTS enabling and
+  configuration.
+
+properties:
+  $nodename:
+    pattern: "^cpts(@.*|-[0-9a-f])*$"
+
+  compatible:
+    oneOf:
+      - const: ti,am65-cpts
+      - const: ti,j721e-cpts
+
+  reg:
+    maxItems: 1
+    description:
+       The physical base address and size of CPTS IO range
+
+  reg-names:
+    items:
+      - const: cpts
+
+  clocks:
+    description: CPTS reference clock
+
+  clock-names:
+    items:
+      - const: cpts
+
+  interrupts-extended:
+    items:
+      - description: CPTS events interrupt
+
+  interrupt-names:
+    items:
+      - const: "cpts"
+
+  ti,cpts-ext-ts-inputs:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    maximum: 8
+    description:
+        Number of hardware timestamp push inputs (HWx_TS_PUSH)
+
+  ti,cpts-periodic-outputs:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+    maximum: 8
+    description:
+         Number of timestamp Generator function outputs (TS_GENFx)
+
+  refclk-mux:
+    type: object
+    description: CPTS reference clock multiplexer clock
+    properties:
+      '#clock-cells':
+        const: 0
+
+      clocks:
+        maxItems: 8
+
+      assigned-clocks:
+        maxItems: 1
+
+      assigned-clocks-parents:
+        maxItems: 1
+
+    required:
+      - clocks
+
+required:
+  - clocks
+  - clock-names
+  - interrupts-extended
+  - interrupt-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/irq.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    cpts@310d0000 {
+         compatible = "ti,am65-cpts";
+         reg = <0x0 0x310d0000 0x0 0x400>;
+         reg-names = "cpts";
+         clocks = <&main_cpts_mux>;
+         clock-names = "cpts";
+         interrupts-extended = <&k3_irq 163 0 IRQ_TYPE_LEVEL_HIGH>;
+         interrupt-names = "cpts";
+         ti,cpts-periodic-outputs = <6>;
+         ti,cpts-ext-ts-inputs = <8>;
+
+         main_cpts_mux: refclk-mux {
+               #clock-cells = <0>;
+               clocks = <&k3_clks 118 5>, <&k3_clks 118 11>,
+                        <&k3_clks 157 91>, <&k3_clks 157 77>,
+                        <&k3_clks 157 102>, <&k3_clks 157 80>,
+                        <&k3_clks 120 3>, <&k3_clks 121 3>;
+               assigned-clocks = <&main_cpts_mux>;
+               assigned-clock-parents = <&k3_clks 118 11>;
+         };
+    };
+  - |
+
+    cpts {
+             clocks = <&k3_clks 18 2>;
+             clock-names = "cpts";
+             interrupts-extended = <&gic500 GIC_SPI 858 IRQ_TYPE_LEVEL_HIGH>;
+             interrupt-names = "cpts";
+             ti,cpts-ext-ts-inputs = <4>;
+             ti,cpts-periodic-outputs = <2>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
