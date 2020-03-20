Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8BC18D503
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 17:54:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fDpUVs4+fX6TpM8Dg7H1pnJwecoZFunoQZrVeJ+luJw=; b=kUyGmEtdScMao4
	rAD9VpEK7iG+vq4ZoKxqQU4kms4x0wqF75X9216gxoDHt9evr/QkYOAjmj/EGGa4qV2FSyxCUTHR8
	ZDio1wN9fnofeLxTFkNjdtSJawcl/o0REmBztOGaRu2D0n5V3MXPF0e/fL9bPHCGZTwrxis2REL3U
	yyrbW07V/J5bfqvMmAoAdYDnicREiL0j+TwP0cdILfULjQfnXKLahNZa7g9F95mQr4CWXj3nnKNnt
	r78KpsLFZEzX/mYDFqFH2btkOfUDuu0Gv3OK2mRXZWLjEg4dupnJgjl+ahfPXx2gawks/qGw+L6hK
	R526hhrJDImcAsNIiiWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKuw-00049i-7r; Fri, 20 Mar 2020 16:54:42 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKtT-00035c-Tw
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 16:53:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id z5so3560193pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Mar 2020 09:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P4ellv65hyMeNnh0YMq8KimEuDdUHYeCVos/VMmk310=;
 b=CqL9nM86YZP7IkIR+tQE1NVE5v6Nurh7syC1+0Jez1HK6lcDBoHS6kWsP4PNxOa1IV
 FT8shGmLboYydq7xogDiWsgYSXCPVdTMEcOiIVIt3U8yBWP1/bZVrl3v9hgWB8QiTnpt
 5nCChEx6suXPeOb3fPFdfIla1iLhgKf98gAFaXTUCm8KSazwJDspY72CUU/rL83wQBX6
 pC+JRJH/vUW5um1AFWZlLcT6YanSvqdXGA9NND7TcIErf4WPTO2gYyiOCSYRU1zlxp0Q
 lKnAO4FTQDnK2z/HxVOpu6Z54DAzZtpcK1FUnqCjbII/tw+B7TAjL1PKAEWeMS81/DQx
 LX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P4ellv65hyMeNnh0YMq8KimEuDdUHYeCVos/VMmk310=;
 b=FL3FZqbQpcJ75SYWRTzBOBpjJO/a8ihewbuvrH7ldFtbHvQTqDXYA4VWKYiIAfp0gG
 IpBqWcgctQ0u4bF7AUsB5Ef93uvAYEEONCpk1sEL2R7C0gnHVOCajypZ/UyxQgvTZ19a
 2/F5JHSi5Jfav+DzU8yz6FrKUiYCp0chYC8+6AulnN337/boBORY4WXOv4KOxkHWggpC
 Ycke1L3MinKO3bp5g18a2gBoBLnqmdUm/1TOvQ1xbhdhv43kaorQ3LNNglhMxzThtC5N
 s8gj+0bZZD9EMpmrYD0xghEHqSWFqumnoiTbZGqy0lGRMPzwcH0hHn0y2IStmHreth0v
 jemg==
X-Gm-Message-State: ANhLgQ0sl0eT8I5+8KUFGABhdC6X3oaDHVYsbgcep4hkWAQCqnoh0c+Q
 F8lxT3xbzGHqE0DTZdCriH0jEw==
X-Google-Smtp-Source: ADFU+vtTSyQpEf/y4vjtOMKU4Df3qeFRQqw20e7RDspZ6NJ3gTDHpvn+2Y/DCA8H7tBrdvGU0l8gLw==
X-Received: by 2002:a62:6dc1:: with SMTP id i184mr2409787pfc.25.1584723190890; 
 Fri, 20 Mar 2020 09:53:10 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x17sm6064216pfn.16.2020.03.20.09.53.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2020 09:53:10 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v11 05/12] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions
Date: Fri, 20 Mar 2020 10:52:56 -0600
Message-Id: <20200320165303.13681-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200320165303.13681-1-mathieu.poirier@linaro.org>
References: <20200320165303.13681-1-mathieu.poirier@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_095312_000173_61B4EF85 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: suzuki.poulose@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, mike.leach@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mike Leach <mike.leach@linaro.org>

Adds new coresight-cti.yaml file describing the bindings required to define
CTI in the device trees.

Adds an include file to dt-bindings/arm to define constants describing
common signal functionality used in CoreSight and generic usage.

Signed-off-by: Mike Leach <mike.leach@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 .../bindings/arm/coresight-cti.yaml           | 336 ++++++++++++++++++
 .../devicetree/bindings/arm/coresight.txt     |   7 +
 MAINTAINERS                                   |   2 +
 include/dt-bindings/arm/coresight-cti-dt.h    |  37 ++
 4 files changed, 382 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
 create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h

diff --git a/Documentation/devicetree/bindings/arm/coresight-cti.yaml b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
new file mode 100644
index 000000000000..3db3642bd532
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
@@ -0,0 +1,336 @@
+# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
+# Copyright 2019 Linaro Ltd.
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/coresight-cti.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ARM Coresight Cross Trigger Interface (CTI) device.
+
+description: |
+  The CoreSight Embedded Cross Trigger (ECT) consists of CTI devices connected
+  to one or more CoreSight components and/or a CPU, with CTIs interconnected in
+  a star topology via the Cross Trigger Matrix (CTM), which is not programmable.
+  The ECT components are not part of the trace generation data path and are thus
+  not part of the CoreSight graph described in the general CoreSight bindings
+  file coresight.txt.
+
+  The CTI component properties define the connections between the individual
+  CTI and the components it is directly connected to, consisting of input and
+  output hardware trigger signals. CTIs can have a maximum number of input and
+  output hardware trigger signals (8 each for v1 CTI, 32 each for v2 CTI). The
+  number is defined at design time, the maximum of each defined in the DEVID
+  register.
+
+  CTIs are interconnected in a star topology via the CTM, using a number of
+  programmable channels, usually 4, but again implementation defined and
+  described in the DEVID register. The star topology is not required to be
+  described in the bindings as the actual connections are software
+  programmable.
+
+  In general the connections between CTI and components via the trigger signals
+  are implementation defined, except when the CTI is connected to an ARM v8
+  architecture core and optional ETM.
+
+  In this case the ARM v8 architecture defines the required signal connections
+  between CTI and the CPU core and ETM if present. In the case of a v8
+  architecturally connected CTI an additional compatible string is used to
+  indicate this feature (arm,coresight-cti-v8-arch).
+
+  When CTI trigger connection information is unavailable then a minimal driver
+  binding can be declared with no explicit trigger signals. This will result
+  the driver detecting the maximum available triggers and channels from the
+  DEVID register and make them all available for use as a single default
+  connection. Any user / client application will require additional information
+  on the connections between the CTI and other components for correct operation.
+  This information might be found by enabling the Integration Test registers in
+  the driver (set CONFIG_CORESIGHT_CTI_INTEGRATION_TEST in Kernel
+  configuration). These registers may be used to explore the trigger connections
+  between CTI and other CoreSight components.
+
+  Certain triggers between CoreSight devices and the CTI have specific types
+  and usages. These can be defined along with the signal indexes with the
+  constants defined in <dt-bindings/arm/coresight-cti-dt.h>
+
+  For example a CTI connected to a core will usually have a DBGREQ signal. This
+  is defined in the binding as type PE_EDBGREQ. These types will appear in an
+  optional array alongside the signal indexes. Omitting types will default all
+  signals to GEN_IO.
+
+  Note that some hardware trigger signals can be connected to non-CoreSight
+  components (e.g. UART etc) depending on hardware implementation.
+
+maintainers:
+  - Mike Leach <mike.leach@linaro.org>
+
+allOf:
+  - $ref: /schemas/arm/primecell.yaml#
+
+# Need a custom select here or 'arm,primecell' will match on lots of nodes
+select:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - arm,coresight-cti
+  required:
+    - compatible
+
+properties:
+  $nodename:
+    pattern: "^cti(@[0-9a-f]+)$"
+  compatible:
+    oneOf:
+      - items:
+        - const: arm,coresight-cti
+        - const: arm,primecell
+      - items:
+        - const: arm,coresight-cti-v8-arch
+        - const: arm,coresight-cti
+        - const: arm,primecell
+
+  reg:
+    maxItems: 1
+
+  cpu:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      Handle to cpu this device is associated with. This must appear in the
+      base cti node if compatible string arm,coresight-cti-v8-arch is used,
+      or may appear in a trig-conns child node when appropriate.
+
+  arm,cti-ctm-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      Defines the CTM this CTI is connected to, in large systems with multiple
+      separate CTI/CTM nets. Typically multi-socket systems where the CTM is
+      propagated between sockets.
+
+  arm,cs-dev-assoc:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      defines a phandle reference to an associated CoreSight trace device.
+      When the associated trace device is enabled, then the respective CTI
+      will be enabled. Use in a trig-conns node, or in CTI base node when
+      compatible string arm,coresight-cti-v8-arch used. If the associated
+      device has not been registered then the node name will be stored as
+      the connection name for later resolution. If the associated device is
+      not a CoreSight device or not registered then the node name will remain
+      the connection name and automatic enabling will not occur.
+
+  # size cells and address cells required if trig-conns node present.
+  "#size-cells":
+    const: 0
+
+  "#address-cells":
+    const: 1
+
+patternProperties:
+  '^trig-conns@([0-9]+)$':
+    type: object
+    description:
+      A trigger connections child node which describes the trigger signals
+      between this CTI and another hardware device. This device may be a CPU,
+      CoreSight device, any other hardware device or simple external IO lines.
+      The connection may have both input and output triggers, or only one or the
+      other.
+
+    properties:
+      reg:
+        maxItems: 1
+
+      arm,trig-in-sigs:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+        minItems: 1
+        maxItems: 32
+        description:
+          List of CTI trigger in signal numbers in use by a trig-conns node.
+
+      arm,trig-in-types:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+        minItems: 1
+        maxItems: 32
+        description:
+          List of constants representing the types for the CTI trigger in
+          signals. Types in this array match to the corresponding signal in the
+          arm,trig-in-sigs array. If the -types array is smaller, or omitted
+          completely, then the types will default to GEN_IO.
+
+      arm,trig-out-sigs:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+        minItems: 1
+        maxItems: 32
+        description:
+          List of CTI trigger out signal numbers in use by a trig-conns node.
+
+      arm,trig-out-types:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+        minItems: 1
+        maxItems: 32
+        description:
+          List of constants representing the types for the CTI trigger out
+          signals. Types in this array match to the corresponding signal
+          in the arm,trig-out-sigs array. If the "-types" array is smaller,
+          or omitted completely, then the types will default to GEN_IO.
+
+      arm,trig-filters:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-array
+        minItems: 1
+        maxItems: 32
+        description:
+          List of CTI trigger out signals that will be blocked from becoming
+          active, unless filtering is disabled on the driver.
+
+      arm,trig-conn-name:
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/string
+        description:
+          Defines a connection name that will be displayed, if the cpu or
+          arm,cs-dev-assoc properties are not being used in this connection.
+          Principle use for CTI that are connected to non-CoreSight devices, or
+          external IO.
+
+    anyOf:
+      - required:
+        - arm,trig-in-sigs
+      - required:
+        - arm,trig-out-sigs
+    oneOf:
+      - required:
+        - arm,trig-conn-name
+      - required:
+        - cpu
+      - required:
+        - arm,cs-dev-assoc
+    required:
+      - reg
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: arm,coresight-cti-v8-arch
+
+then:
+  required:
+    - cpu
+
+examples:
+  # minimum CTI definition. DEVID register used to set number of triggers.
+  - |
+    cti@20020000 {
+      compatible = "arm,coresight-cti", "arm,primecell";
+      reg = <0x20020000 0x1000>;
+
+      clocks = <&soc_smc50mhz>;
+      clock-names = "apb_pclk";
+    };
+  #  v8 architecturally defined CTI - CPU + ETM connections generated by the
+  #  driver according to the v8 architecture specification.
+  - |
+    cti@859000 {
+      compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
+                   "arm,primecell";
+      reg = <0x859000 0x1000>;
+
+      clocks = <&soc_smc50mhz>;
+      clock-names = "apb_pclk";
+
+      cpu = <&CPU1>;
+      arm,cs-dev-assoc = <&etm1>;
+    };
+  # Implementation defined CTI - CPU + ETM connections explicitly defined..
+  # Shows use of type constants from dt-bindings/arm/coresight-cti-dt.h
+  # #size-cells and #address-cells are required if trig-conns@ nodes present.
+  - |
+    #include <dt-bindings/arm/coresight-cti-dt.h>
+
+    cti@858000 {
+      compatible = "arm,coresight-cti", "arm,primecell";
+      reg = <0x858000 0x1000>;
+
+      clocks = <&soc_smc50mhz>;
+      clock-names = "apb_pclk";
+
+      arm,cti-ctm-id = <1>;
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      trig-conns@0 {
+            reg = <0>;
+            arm,trig-in-sigs = <4 5 6 7>;
+            arm,trig-in-types = <ETM_EXTOUT
+                                 ETM_EXTOUT
+                                 ETM_EXTOUT
+                                 ETM_EXTOUT>;
+            arm,trig-out-sigs = <4 5 6 7>;
+            arm,trig-out-types = <ETM_EXTIN
+                                  ETM_EXTIN
+                                  ETM_EXTIN
+                                  ETM_EXTIN>;
+            arm,cs-dev-assoc = <&etm0>;
+      };
+
+      trig-conns@1 {
+            reg = <1>;
+            cpu = <&CPU0>;
+            arm,trig-in-sigs = <0 1>;
+            arm,trig-in-types = <PE_DBGTRIGGER
+                                 PE_PMUIRQ>;
+            arm,trig-out-sigs=<0 1 2 >;
+            arm,trig-out-types = <PE_EDBGREQ
+                                  PE_DBGRESTART
+                                  PE_CTIIRQ>;
+
+            arm,trig-filters = <0>;
+      };
+    };
+  # Implementation defined CTI - non CoreSight component connections.
+  - |
+    cti@20110000 {
+      compatible = "arm,coresight-cti", "arm,primecell";
+      reg = <0 0x20110000 0 0x1000>;
+
+      clocks = <&soc_smc50mhz>;
+      clock-names = "apb_pclk";
+
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      trig-conns@0 {
+        reg = <0>;
+        arm,trig-in-sigs=<0>;
+        arm,trig-in-types=<GEN_INTREQ>;
+        arm,trig-out-sigs=<0>;
+        arm,trig-out-types=<GEN_HALTREQ>;
+        arm,trig-conn-name = "sys_profiler";
+      };
+
+      trig-conns@1 {
+        reg = <1>;
+        arm,trig-out-sigs=<2 3>;
+        arm,trig-out-types=<GEN_HALTREQ GEN_RESTARTREQ>;
+        arm,trig-conn-name = "watchdog";
+      };
+
+      trig-conns@2 {
+        reg = <2>;
+        arm,trig-in-sigs=<1 6>;
+        arm,trig-in-types=<GEN_HALTREQ GEN_RESTARTREQ>;
+        arm,trig-conn-name = "g_counter";
+      };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
index d02c42d21f2f..846f6daae71b 100644
--- a/Documentation/devicetree/bindings/arm/coresight.txt
+++ b/Documentation/devicetree/bindings/arm/coresight.txt
@@ -45,6 +45,10 @@ its hardware characteristcs.
 		- Coresight Address Translation Unit (CATU)
 			"arm,coresight-catu", "arm,primecell";
 
+		- Coresight Cross Trigger Interface (CTI):
+			"arm,coresight-cti", "arm,primecell";
+			See coresight-cti.yaml for full CTI definitions.
+
 	* reg: physical base address and length of the register
 	  set(s) of the component.
 
@@ -72,6 +76,9 @@ its hardware characteristcs.
 	* reg-names: the only acceptable values are "stm-base" and
 	  "stm-stimulus-base", each corresponding to the areas defined in "reg".
 
+* Required properties for Coresight Cross Trigger Interface (CTI)
+	See coresight-cti.yaml for full CTI definitions.
+
 * Required properties for devices that don't show up on the AMBA bus, such as
   non-configurable replicators and non-configurable funnels:
 
diff --git a/MAINTAINERS b/MAINTAINERS
index f6d07ade8e2e..847d1da852f9 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1679,9 +1679,11 @@ R:	Suzuki K Poulose <suzuki.poulose@arm.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	drivers/hwtracing/coresight/*
+F:	include/dt-bindings/arm/coresight-cti-dt.h
 F:	Documentation/trace/coresight/*
 F:	Documentation/devicetree/bindings/arm/coresight.txt
 F:	Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt
+F:	Documentation/devicetree/bindings/arm/coresight-cti.yaml
 F:	Documentation/ABI/testing/sysfs-bus-coresight-devices-*
 F:	tools/perf/arch/arm/util/pmu.c
 F:	tools/perf/arch/arm/util/auxtrace.c
diff --git a/include/dt-bindings/arm/coresight-cti-dt.h b/include/dt-bindings/arm/coresight-cti-dt.h
new file mode 100644
index 000000000000..61e7bdf8ea6e
--- /dev/null
+++ b/include/dt-bindings/arm/coresight-cti-dt.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This header provides constants for the defined trigger signal
+ * types on CoreSight CTI.
+ */
+
+#ifndef _DT_BINDINGS_ARM_CORESIGHT_CTI_DT_H
+#define _DT_BINDINGS_ARM_CORESIGHT_CTI_DT_H
+
+#define GEN_IO		0
+#define GEN_INTREQ	1
+#define GEN_INTACK	2
+#define GEN_HALTREQ	3
+#define GEN_RESTARTREQ	4
+#define PE_EDBGREQ	5
+#define PE_DBGRESTART	6
+#define PE_CTIIRQ	7
+#define PE_PMUIRQ	8
+#define PE_DBGTRIGGER	9
+#define ETM_EXTOUT	10
+#define ETM_EXTIN	11
+#define SNK_FULL	12
+#define SNK_ACQCOMP	13
+#define SNK_FLUSHCOMP	14
+#define SNK_FLUSHIN	15
+#define SNK_TRIGIN	16
+#define STM_ASYNCOUT	17
+#define STM_TOUT_SPTE	18
+#define STM_TOUT_SW	19
+#define STM_TOUT_HETE	20
+#define STM_HWEVENT	21
+#define ELA_TSTART	22
+#define ELA_TSTOP	23
+#define ELA_DBGREQ	24
+#define CTI_TRIG_MAX	25
+
+#endif /*_DT_BINDINGS_ARM_CORESIGHT_CTI_DT_H */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
