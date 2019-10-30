Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57273EA2A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 18:32:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yKy60NBJd800SGE0/6PbaCl2xfuQwqSu2s+jEBf1F2I=; b=SDk
	5bVKZ4JKn4cCzuELMPXPYxE/uxWUahA4jimJrf3ga7Ww+htd3j+ekkqOMJiSuEoJHPuBBFFkVNIxn
	1BXD0HJciocnNjMR8zXeW/Hf60d4vHl9ltLLymFdyijqqExwOF23TxDqssnnY1r7ALnRDvWn9ZQvA
	IOGhS90GIzafpYeL7mf9TK3OYnim+1NbMFS0Nmj7ZT5cLvJIgPN6LcHIdbkUV7/24jQ7IlHzCT+lm
	8k2x/feTiu67/6I9lkb8QtSfK88CyimXrvuy/wLJhHJpNG0SIOIJYbekXVvBRcrmKjAhyJRQzHwSM
	Tnj9rMlSiL6z9jgVpWkSrpGue38dg9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPrpm-000382-QM; Wed, 30 Oct 2019 17:32:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPrpb-00036p-T3
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 17:32:30 +0000
Received: from localhost.localdomain (unknown [194.230.155.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9497F2054F;
 Wed, 30 Oct 2019 17:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572456747;
 bh=9KCzCGayn00ir3A6/e9VNLOzsVQtDEOPu1WAna2nRsE=;
 h=From:To:Cc:Subject:Date:From;
 b=arkn9LpDWOvS47Qpy4a6KQAykoy9jkh8Y2sXaQL5wVQmzAb7JybvTSobwkT+f7kGE
 +A83HozHN8b8uICtDL+Kjo0HrUlmWicqM1+qHNvhdZv+CKTnvc/HuCdgxHtjaWRUMZ
 9u/P2AAB2zVYFh0uAjrsDHXzoQjGWnVXn5+HdJA8=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: power: Convert Generic Power Domain
 bindings to json-schema
Date: Wed, 30 Oct 2019 18:32:15 +0100
Message-Id: <20191030173216.5993-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_103227_985170_7ECF7DF1 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.180 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Generic Power Domain bindings to DT schema format using
json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
Acked-by: Stephen Boyd <sboyd@kernel.org>

---

Changes since v2:
1. Keep description of consumers in power-domain.txt,
2. Rename power_domain.txt to power-domain.txt,
3. Indent example with four spaces (more readable).

Changes since v1:
1. Select all nodes for consumers,
2. Remove from consumers duplicated properties with dt-schema,
3. Fix power domain pattern,
4. Remove unneeded types.
Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../devicetree/bindings/arm/arm,scmi.txt      |   2 +-
 .../devicetree/bindings/arm/arm,scpi.txt      |   2 +-
 .../bindings/arm/freescale/fsl,scu.txt        |   2 +-
 .../bindings/clock/renesas,cpg-mssr.txt       |   2 +-
 .../bindings/clock/ti/davinci/psc.txt         |   2 +-
 .../firmware/nvidia,tegra186-bpmp.txt         |   2 +-
 .../bindings/power/amlogic,meson-gx-pwrc.txt  |   2 +-
 .../devicetree/bindings/power/fsl,imx-gpc.txt |   2 +-
 .../bindings/power/fsl,imx-gpcv2.txt          |   2 +-
 .../{power_domain.txt => power-domain.txt}    |  95 +------------
 .../bindings/power/power-domain.yaml          | 133 ++++++++++++++++++
 .../bindings/power/renesas,sysc-rmobile.txt   |   2 +-
 .../bindings/power/xlnx,zynqmp-genpd.txt      |   2 +-
 .../bindings/soc/bcm/brcm,bcm2835-pm.txt      |   2 +-
 .../bindings/soc/mediatek/scpsys.txt          |   2 +-
 .../bindings/soc/ti/sci-pm-domain.txt         |   2 +-
 MAINTAINERS                                   |   2 +-
 17 files changed, 149 insertions(+), 109 deletions(-)
 rename Documentation/devicetree/bindings/power/{power_domain.txt => power-domain.txt} (51%)
 create mode 100644 Documentation/devicetree/bindings/power/power-domain.yaml

diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
index 083dbf96ee00..f493d69e6194 100644
--- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scmi.txt
@@ -100,7 +100,7 @@ Required sub-node properties:
 
 [0] http://infocenter.arm.com/help/topic/com.arm.doc.den0056a/index.html
 [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-[2] Documentation/devicetree/bindings/power/power_domain.txt
+[2] Documentation/devicetree/bindings/power/power-domain.yaml
 [3] Documentation/devicetree/bindings/thermal/thermal.txt
 [4] Documentation/devicetree/bindings/sram/sram.txt
 [5] Documentation/devicetree/bindings/reset/reset.txt
diff --git a/Documentation/devicetree/bindings/arm/arm,scpi.txt b/Documentation/devicetree/bindings/arm/arm,scpi.txt
index 401831973638..7b83ef43b418 100644
--- a/Documentation/devicetree/bindings/arm/arm,scpi.txt
+++ b/Documentation/devicetree/bindings/arm/arm,scpi.txt
@@ -110,7 +110,7 @@ Required properties:
 [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
 [2] Documentation/devicetree/bindings/thermal/thermal.txt
 [3] Documentation/devicetree/bindings/sram/sram.txt
-[4] Documentation/devicetree/bindings/power/power_domain.txt
+[4] Documentation/devicetree/bindings/power/power-domain.yaml
 
 Example:
 
diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index 70c1a624486d..e07735a8c2c7 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -124,7 +124,7 @@ Required properties for Pinctrl sub nodes:
 			CONFIG settings.
 
 [1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-[2] Documentation/devicetree/bindings/power/power_domain.txt
+[2] Documentation/devicetree/bindings/power/power-domain.yaml
 [3] Documentation/devicetree/bindings/pinctrl/fsl,imx-pinctrl.txt
 
 RTC bindings based on SCU Message Protocol
diff --git a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt
index 916a601b76a7..2def42096886 100644
--- a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt
+++ b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.txt
@@ -59,7 +59,7 @@ Required Properties:
 	power-managed through Module Standby should refer to the CPG device
 	node in their "power-domains" property, as documented by the generic PM
 	Domain bindings in
-	Documentation/devicetree/bindings/power/power_domain.txt.
+	Documentation/devicetree/bindings/power/power-domain.yaml.
 
   - #reset-cells: Must be 1
       - The single reset specifier cell must be the module number, as defined
diff --git a/Documentation/devicetree/bindings/clock/ti/davinci/psc.txt b/Documentation/devicetree/bindings/clock/ti/davinci/psc.txt
index dae4ad8e198c..5f746ebf7a2c 100644
--- a/Documentation/devicetree/bindings/clock/ti/davinci/psc.txt
+++ b/Documentation/devicetree/bindings/clock/ti/davinci/psc.txt
@@ -67,5 +67,5 @@ Examples:
 
 Also see:
 - Documentation/devicetree/bindings/clock/clock-bindings.txt
-- Documentation/devicetree/bindings/power/power_domain.txt
+- Documentation/devicetree/bindings/power/power-domain.yaml
 - Documentation/devicetree/bindings/reset/reset.txt
diff --git a/Documentation/devicetree/bindings/firmware/nvidia,tegra186-bpmp.txt b/Documentation/devicetree/bindings/firmware/nvidia,tegra186-bpmp.txt
index ff380dadb5f9..e44a13bc06ed 100644
--- a/Documentation/devicetree/bindings/firmware/nvidia,tegra186-bpmp.txt
+++ b/Documentation/devicetree/bindings/firmware/nvidia,tegra186-bpmp.txt
@@ -32,7 +32,7 @@ implemented by this node:
 
 - .../clock/clock-bindings.txt
 - <dt-bindings/clock/tegra186-clock.h>
-- ../power/power_domain.txt
+- ../power/power-domain.yaml
 - <dt-bindings/power/tegra186-powergate.h>
 - .../reset/reset.txt
 - <dt-bindings/reset/tegra186-reset.h>
diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
index 0fdc3dd1125e..99b5b10cda31 100644
--- a/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
+++ b/Documentation/devicetree/bindings/power/amlogic,meson-gx-pwrc.txt
@@ -10,7 +10,7 @@ The Video Processing Unit power domain is controlled by this power controller,
 but the domain requires some external resources to meet the correct power
 sequences.
 The bindings must respect the power domain bindings as described in the file
-power_domain.txt
+power-domain.yaml
 
 Device Tree Bindings:
 ---------------------
diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt b/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
index 726ec2875223..f0f5553a9e74 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpc.txt
@@ -19,7 +19,7 @@ Required properties:
   - ipg
 
 The power domains are generic power domain providers as documented in
-Documentation/devicetree/bindings/power/power_domain.txt. They are described as
+Documentation/devicetree/bindings/power/power-domain.yaml. They are described as
 subnodes of the power gating controller 'pgc' node of the GPC and should
 contain the following:
 
diff --git a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
index 7c7e972aaa42..61649202f6f5 100644
--- a/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
+++ b/Documentation/devicetree/bindings/power/fsl,imx-gpcv2.txt
@@ -17,7 +17,7 @@ Required properties:
 
 Power domains contained within GPC node are generic power domain
 providers, documented in
-Documentation/devicetree/bindings/power/power_domain.txt, which are
+Documentation/devicetree/bindings/power/power-domain.yaml, which are
 described as subnodes of the power gating controller 'pgc' node,
 which, in turn, is expected to contain the following:
 
diff --git a/Documentation/devicetree/bindings/power/power_domain.txt b/Documentation/devicetree/bindings/power/power-domain.txt
similarity index 51%
rename from Documentation/devicetree/bindings/power/power_domain.txt
rename to Documentation/devicetree/bindings/power/power-domain.txt
index 8f8b25a24b8f..5b09b2deb483 100644
--- a/Documentation/devicetree/bindings/power/power_domain.txt
+++ b/Documentation/devicetree/bindings/power/power-domain.txt
@@ -13,100 +13,7 @@ phandle arguments (so called PM domain specifiers) of length specified by the
 
 ==PM domain providers==
 
-Required properties:
- - #power-domain-cells : Number of cells in a PM domain specifier;
-   Typically 0 for nodes representing a single PM domain and 1 for nodes
-   providing multiple PM domains (e.g. power controllers), but can be any value
-   as specified by device tree binding documentation of particular provider.
-
-Optional properties:
- - power-domains : A phandle and PM domain specifier as defined by bindings of
-                   the power controller specified by phandle.
-   Some power domains might be powered from another power domain (or have
-   other hardware specific dependencies). For representing such dependency
-   a standard PM domain consumer binding is used. When provided, all domains
-   created by the given provider should be subdomains of the domain
-   specified by this binding. More details about power domain specifier are
-   available in the next section.
-
-- domain-idle-states : A phandle of an idle-state that shall be soaked into a
-                generic domain power state. The idle state definitions are
-                compatible with domain-idle-state specified in [1]. phandles
-                that are not compatible with domain-idle-state will be
-                ignored.
-  The domain-idle-state property reflects the idle state of this PM domain and
-  not the idle states of the devices or sub-domains in the PM domain. Devices
-  and sub-domains have their own idle-states independent of the parent
-  domain's idle states. In the absence of this property, the domain would be
-  considered as capable of being powered-on or powered-off.
-
-- operating-points-v2 : Phandles to the OPP tables of power domains provided by
-  a power domain provider. If the provider provides a single power domain only
-  or all the power domains provided by the provider have identical OPP tables,
-  then this shall contain a single phandle. Refer to ../opp/opp.txt for more
-  information.
-
-Example:
-
-	power: power-controller@12340000 {
-		compatible = "foo,power-controller";
-		reg = <0x12340000 0x1000>;
-		#power-domain-cells = <1>;
-	};
-
-The node above defines a power controller that is a PM domain provider and
-expects one cell as its phandle argument.
-
-Example 2:
-
-	parent: power-controller@12340000 {
-		compatible = "foo,power-controller";
-		reg = <0x12340000 0x1000>;
-		#power-domain-cells = <1>;
-	};
-
-	child: power-controller@12341000 {
-		compatible = "foo,power-controller";
-		reg = <0x12341000 0x1000>;
-		power-domains = <&parent 0>;
-		#power-domain-cells = <1>;
-	};
-
-The nodes above define two power controllers: 'parent' and 'child'.
-Domains created by the 'child' power controller are subdomains of '0' power
-domain provided by the 'parent' power controller.
-
-Example 3:
-	parent: power-controller@12340000 {
-		compatible = "foo,power-controller";
-		reg = <0x12340000 0x1000>;
-		#power-domain-cells = <0>;
-		domain-idle-states = <&DOMAIN_RET>, <&DOMAIN_PWR_DN>;
-	};
-
-	child: power-controller@12341000 {
-		compatible = "foo,power-controller";
-		reg = <0x12341000 0x1000>;
-		power-domains = <&parent>;
-		#power-domain-cells = <0>;
-		domain-idle-states = <&DOMAIN_PWR_DN>;
-	};
-
-	DOMAIN_RET: state@0 {
-		compatible = "domain-idle-state";
-		reg = <0x0>;
-		entry-latency-us = <1000>;
-		exit-latency-us = <2000>;
-		min-residency-us = <10000>;
-	};
-
-	DOMAIN_PWR_DN: state@1 {
-		compatible = "domain-idle-state";
-		reg = <0x1>;
-		entry-latency-us = <5000>;
-		exit-latency-us = <8000>;
-		min-residency-us = <7000>;
-	};
+See power-domain.yaml.
 
 ==PM domain consumers==
 
diff --git a/Documentation/devicetree/bindings/power/power-domain.yaml b/Documentation/devicetree/bindings/power/power-domain.yaml
new file mode 100644
index 000000000000..455b573293ae
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/power-domain.yaml
@@ -0,0 +1,133 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/power-domain.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic PM domains
+
+maintainers:
+  - Rafael J. Wysocki <rjw@rjwysocki.net>
+  - Kevin Hilman <khilman@kernel.org>
+  - Ulf Hansson <ulf.hansson@linaro.org>
+
+description: |+
+  System on chip designs are often divided into multiple PM domains that can be
+  used for power gating of selected IP blocks for power saving by reduced leakage
+  current.
+
+  This device tree binding can be used to bind PM domain consumer devices with
+  their PM domains provided by PM domain providers. A PM domain provider can be
+  represented by any node in the device tree and can provide one or more PM
+  domains. A consumer node can refer to the provider by a phandle and a set of
+  phandle arguments (so called PM domain specifiers) of length specified by the
+  \#power-domain-cells property in the PM domain provider node.
+
+properties:
+  $nodename:
+    pattern: "^(power-controller|power-domain)(@.*)?$"
+
+  domain-idle-states:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      A phandle of an idle-state that shall be soaked into a generic domain
+      power state. The idle state definitions are compatible with
+      domain-idle-state specified in
+      Documentation/devicetree/bindings/power/domain-idle-state.txt
+      phandles that are not compatible with domain-idle-state will be ignored.
+      The domain-idle-state property reflects the idle state of this PM domain
+      and not the idle states of the devices or sub-domains in the PM domain.
+      Devices and sub-domains have their own idle-states independent
+      of the parent domain's idle states. In the absence of this property,
+      the domain would be considered as capable of being powered-on
+      or powered-off.
+
+  operating-points-v2:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      Phandles to the OPP tables of power domains provided by a power domain
+      provider. If the provider provides a single power domain only or all
+      the power domains provided by the provider have identical OPP tables,
+      then this shall contain a single phandle. Refer to ../opp/opp.txt
+      for more information.
+
+  "#power-domain-cells":
+    description:
+      Number of cells in a PM domain specifier. Typically 0 for nodes
+      representing a single PM domain and 1 for nodes providing multiple PM
+      domains (e.g. power controllers), but can be any value as specified
+      by device tree binding documentation of particular provider.
+
+  power-domains:
+    description:
+       A phandle and PM domain specifier as defined by bindings of the power
+       controller specified by phandle. Some power domains might be powered
+       from another power domain (or have other hardware specific
+       dependencies). For representing such dependency a standard PM domain
+       consumer binding is used. When provided, all domains created
+       by the given provider should be subdomains of the domain specified
+       by this binding.
+
+required:
+  - "#power-domain-cells"
+
+examples:
+  - |
+    power: power-controller@12340000 {
+        compatible = "foo,power-controller";
+        reg = <0x12340000 0x1000>;
+        #power-domain-cells = <1>;
+    };
+
+    // The node above defines a power controller that is a PM domain provider and
+    // expects one cell as its phandle argument.
+
+  - |
+    parent2: power-controller@12340000 {
+        compatible = "foo,power-controller";
+        reg = <0x12340000 0x1000>;
+        #power-domain-cells = <1>;
+    };
+
+    child2: power-controller@12341000 {
+        compatible = "foo,power-controller";
+        reg = <0x12341000 0x1000>;
+        power-domains = <&parent2 0>;
+        #power-domain-cells = <1>;
+    };
+
+    // The nodes above define two power controllers: 'parent' and 'child'.
+    // Domains created by the 'child' power controller are subdomains of '0' power
+    // domain provided by the 'parent' power controller.
+
+  - |
+    parent3: power-controller@12340000 {
+        compatible = "foo,power-controller";
+        reg = <0x12340000 0x1000>;
+        #power-domain-cells = <0>;
+        domain-idle-states = <&DOMAIN_RET>, <&DOMAIN_PWR_DN>;
+    };
+
+    child3: power-controller@12341000 {
+        compatible = "foo,power-controller";
+        reg = <0x12341000 0x1000>;
+        power-domains = <&parent3>;
+        #power-domain-cells = <0>;
+        domain-idle-states = <&DOMAIN_PWR_DN>;
+    };
+
+    DOMAIN_RET: state@0 {
+        compatible = "domain-idle-state";
+        reg = <0x0 0x0>;
+        entry-latency-us = <1000>;
+        exit-latency-us = <2000>;
+        min-residency-us = <10000>;
+    };
+
+    DOMAIN_PWR_DN: state@1 {
+        compatible = "domain-idle-state";
+        reg = <0x1 0x0>;
+        entry-latency-us = <5000>;
+        exit-latency-us = <8000>;
+        min-residency-us = <7000>;
+    };
diff --git a/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.txt b/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.txt
index beda7d2efc30..49aba15dff8b 100644
--- a/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.txt
+++ b/Documentation/devicetree/bindings/power/renesas,sysc-rmobile.txt
@@ -29,7 +29,7 @@ Optional nodes:
 
 Each of the PM domain nodes represents a PM domain, as documented by the
 generic PM domain bindings in
-Documentation/devicetree/bindings/power/power_domain.txt.
+Documentation/devicetree/bindings/power/power-domain.yaml.
 
 The nodes should be named by the real power area names, and thus their names
 should be unique.
diff --git a/Documentation/devicetree/bindings/power/xlnx,zynqmp-genpd.txt b/Documentation/devicetree/bindings/power/xlnx,zynqmp-genpd.txt
index 8d1b8200ebd0..54b9f9d0f90f 100644
--- a/Documentation/devicetree/bindings/power/xlnx,zynqmp-genpd.txt
+++ b/Documentation/devicetree/bindings/power/xlnx,zynqmp-genpd.txt
@@ -4,7 +4,7 @@ Device Tree Bindings for the Xilinx Zynq MPSoC PM domains
 The binding for zynqmp-power-controller follow the common
 generic PM domain binding[1].
 
-[1] Documentation/devicetree/bindings/power/power_domain.txt
+[1] Documentation/devicetree/bindings/power/power-domain.yaml
 
 == Zynq MPSoC Generic PM Domain Node ==
 
diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
index 3b7d32956391..72ff033565e5 100644
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
@@ -26,7 +26,7 @@ Optional properties:
     system power.  This node follows the power controller bindings[3].
 
 [1] Documentation/devicetree/bindings/reset/reset.txt
-[2] Documentation/devicetree/bindings/power/power_domain.txt
+[2] Documentation/devicetree/bindings/power/power-domain.yaml
 [3] Documentation/devicetree/bindings/power/power-controller.txt
 
 Example:
diff --git a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
index 876693a7ada5..8f469d85833b 100644
--- a/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
+++ b/Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
@@ -8,7 +8,7 @@ The System Power Manager (SPM) inside the SCPSYS is for the MTCMOS power
 domain control.
 
 The driver implements the Generic PM domain bindings described in
-power/power_domain.txt. It provides the power domains defined in
+power/power-domain.yaml. It provides the power domains defined in
 - include/dt-bindings/power/mt8173-power.h
 - include/dt-bindings/power/mt6797-power.h
 - include/dt-bindings/power/mt2701-power.h
diff --git a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
index f541d1f776a2..6217e64309de 100644
--- a/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
+++ b/Documentation/devicetree/bindings/soc/ti/sci-pm-domain.txt
@@ -12,7 +12,7 @@ PM Domain Node
 ==============
 The PM domain node represents the global PM domain managed by the PMMC, which
 in this case is the implementation as documented by the generic PM domain
-bindings in Documentation/devicetree/bindings/power/power_domain.txt.  Because
+bindings in Documentation/devicetree/bindings/power/power-domain.yaml.  Because
 this relies on the TI SCI protocol to communicate with the PMMC it must be a
 child of the pmmc node.
 
diff --git a/MAINTAINERS b/MAINTAINERS
index 9f69d01da3a6..8fde5aa64bda 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -6953,7 +6953,7 @@ L:	linux-pm@vger.kernel.org
 S:	Supported
 F:	drivers/base/power/domain*.c
 F:	include/linux/pm_domain.h
-F:	Documentation/devicetree/bindings/power/power_domain.txt
+F:	Documentation/devicetree/bindings/power/power-domain*
 
 GENERIC RESISTIVE TOUCHSCREEN ADC DRIVER
 M:	Eugen Hristev <eugen.hristev@microchip.com>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
