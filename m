Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCEC11BD6B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:47:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W0s1/6R0tsSmKDMIPgykxptK/tY1JQ/AlYOqXLJY/sk=; b=HHqHpHGr1i89k0Qa14Ri2nw4an
	ZThdwP+l2iVIfKV8+izWDlad7wv+9gOc54auav7idty0XH+TM/1q4xbDGqE8ENn/9SN2Q/DA8xe+Q
	+lSTygeepg5+EDS7/HczBcNPszicQODKm5y+VdNyKC2rLHvrSFEy8/Fu2fBh7zDUF67YrDz1ssbeB
	fK6pDyRMmrJMbWp+HIshl9ng/No5cqjj/LddC56NnlTYtAtu1l3zfTx1+0nm6tcYVvZkE33xeG377
	3+HYUecrQoyekC2Ipxh2Lhx/NxNg4LR3Uo4/b8iwGqRRnvsVgGlK74doidY6VzocCoL7YV+O1E5/D
	FJ/7dKGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7wx-0005RS-Td; Wed, 11 Dec 2019 19:47:07 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7wL-00058O-Sj
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:46:31 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 11:46:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="216033795"
Received: from yoojae-mobl1.amr.corp.intel.com (HELO ubuntu.jf.intel.com)
 ([10.7.153.143])
 by orsmga003.jf.intel.com with ESMTP; 11 Dec 2019 11:46:29 -0800
From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
To: Rob Herring <robh+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Mark Rutland <mark.rutland@arm.com>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Jonathan Corbet <corbet@lwn.net>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "Darrick J . Wong" <darrick.wong@oracle.com>,
 Eric Sandeen <sandeen@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Wu Hao <hao.wu@intel.com>, Tomohiro Kusumi <kusumi.tomohiro@gmail.com>,
 "Bryant G . Ly" <bryantly@linux.vnet.ibm.com>,
 Frederic Barrat <fbarrat@linux.vnet.ibm.com>,
 "David S . Miller" <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>,
 Philippe Ombredanne <pombredanne@nexb.com>, Vinod Koul <vkoul@kernel.org>,
 Stephen Boyd <sboyd@codeaurora.org>,
 David Kershner <david.kershner@unisys.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Sagar Dharia <sdharia@codeaurora.org>, Johan Hovold <johan@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Juergen Gross <jgross@suse.com>,
 Cyrille Pitchen <cyrille.pitchen@wedev4u.fr>,
 Tomer Maimon <tmaimon77@gmail.com>
Subject: [PATCH v11 01/14] dt-bindings: Add PECI subsystem document
Date: Wed, 11 Dec 2019 11:46:11 -0800
Message-Id: <20191211194624.2872-2-jae.hyun.yoo@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
References: <20191211194624.2872-1-jae.hyun.yoo@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_114629_977116_38F22AE2 
X-CRM114-Status: GOOD (  19.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>, linux-doc@vger.kernel.org,
 openbmc@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This commit adds PECI subsystem document.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: Joel Stanley <joel@jms.id.au>
Signed-off-by: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
---
Changes since v10:
- Changed documents format to DT schema format so I dropped all review tags.
  Please review it again.

 .../devicetree/bindings/peci/peci-bus.yaml    | 129 ++++++++++++++++++
 .../devicetree/bindings/peci/peci-client.yaml |  54 ++++++++
 2 files changed, 183 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/peci/peci-bus.yaml
 create mode 100644 Documentation/devicetree/bindings/peci/peci-client.yaml

diff --git a/Documentation/devicetree/bindings/peci/peci-bus.yaml b/Documentation/devicetree/bindings/peci/peci-bus.yaml
new file mode 100644
index 000000000000..b085e67089cf
--- /dev/null
+++ b/Documentation/devicetree/bindings/peci/peci-bus.yaml
@@ -0,0 +1,129 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/peci/peci-bus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic Device Tree Bindings for PECI bus
+
+maintainers:
+  - Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
+
+description: |
+  PECI (Platform Environment Control Interface) is a one-wire bus interface that
+  provides a communication channel from Intel processors and chipset components
+  to external monitoring or control devices. PECI is designed to support the
+  following sideband functions:
+
+  * Processor and DRAM thermal management
+    - Processor fan speed control is managed by comparing Digital Thermal
+      Sensor (DTS) thermal readings acquired via PECI against the
+      processor-specific fan speed control reference point, or TCONTROL. Both
+      TCONTROL and DTS thermal readings are accessible via the processor PECI
+      client. These variables are referenced to a common temperature, the TCC
+      activation point, and are both defined as negative offsets from that
+      reference.
+    - PECI based access to the processor package configuration space provides
+      a means for Baseboard Management Controllers (BMC) or other platform
+      management devices to actively manage the processor and memory power
+      and thermal features.
+
+  * Platform Manageability
+    - Platform manageability functions including thermal, power, and error
+      monitoring. Note that platform 'power' management includes monitoring
+      and control for both the processor and DRAM subsystem to assist with
+      data center power limiting.
+    - PECI allows read access to certain error registers in the processor MSR
+      space and status monitoring registers in the PCI configuration space
+      within the processor and downstream devices.
+    - PECI permits writes to certain registers in the processor PCI
+      configuration space.
+
+  * Processor Interface Tuning and Diagnostics
+    - Processor interface tuning and diagnostics capabilities
+      (Intel Interconnect BIST). The processors Intel Interconnect Built In
+      Self Test (Intel IBIST) allows for infield diagnostic capabilities in
+      the Intel UPI and memory controller interfaces. PECI provides a port to
+      execute these diagnostics via its PCI Configuration read and write
+      capabilities.
+
+  * Failure Analysis
+    - Output the state of the processor after a failure for analysis via
+      Crashdump.
+
+  PECI uses a single wire for self-clocking and data transfer. The bus
+  requires no additional control lines. The physical layer is a self-clocked
+  one-wire bus that begins each bit with a driven, rising edge from an idle
+  level near zero volts. The duration of the signal driven high depends on
+  whether the bit value is a logic '0' or logic '1'. PECI also includes
+  variable data transfer rate established with every message. In this way, it
+  is highly flexible even though underlying logic is simple.
+
+  The interface design was optimized for interfacing between an Intel
+  processor and chipset components in both single processor and multiple
+  processor environments. The single wire interface provides low board
+  routing overhead for the multiple load connections in the congested routing
+  area near the processor and chipset components. Bus speed, error checking,
+  and low protocol overhead provides adequate link bandwidth and reliability
+  to transfer critical device operating conditions and configuration
+  information.
+
+  PECI subsystem provides single or multiple bus nodes support so each bus can
+  have one adapter node and multiple device specific client nodes that can be
+  attached to the PECI bus so each processor client's features can be supported
+  by the client node through an adapter connection in the bus.
+
+properties:
+  compatible:
+    const: simple-bus
+
+  "#address-cells":
+    # Required to define bus device control resource address.
+    const: 1
+
+  "#size-cells":
+    # Required to define bus device control resource address.
+    const: 1
+
+  ranges: true
+
+required:
+  - compatible
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/ast2600-clock.h>
+    peci: bus@1e78b000 {
+        compatible = "simple-bus";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0x0 0x1e78b000 0x200>;
+
+        peci0: peci-bus@0 {
+            compatible = "aspeed,ast2600-peci";
+            reg = <0x0 0x100>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
+            resets = <&syscon ASPEED_RESET_PECI>;
+            clock-frequency = <24000000>;
+        };
+
+        // Just an example. ast2600 doesn't have a second PECI module actually.
+        peci1: peci-bus@100 {
+            compatible = "aspeed,ast2600-peci";
+            reg = <0x100 0x100>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
+            resets = <&syscon ASPEED_RESET_PECI>;
+            clock-frequency = <24000000>;
+        };
+    };
+...
diff --git a/Documentation/devicetree/bindings/peci/peci-client.yaml b/Documentation/devicetree/bindings/peci/peci-client.yaml
new file mode 100644
index 000000000000..fc7c4110e929
--- /dev/null
+++ b/Documentation/devicetree/bindings/peci/peci-client.yaml
@@ -0,0 +1,54 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/peci/peci-client.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic Device Tree Bindings for PECI clients
+
+maintainers:
+  - Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
+
+properties:
+  compatible:
+    enum:
+      - intel,peci-client
+
+  reg:
+    description: |
+      Address of a client CPU. According to the PECI specification, client
+      addresses start from 0x30.
+    maxItems: 1
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/ast2600-clock.h>
+    peci: bus@1e78b000 {
+        compatible = "simple-bus";
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0x0 0x1e78b000 0x60>;
+
+        peci0: peci-bus@0 {
+            compatible = "aspeed,ast2600-peci";
+            reg = <0x0 0x100>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+            interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
+            resets = <&syscon ASPEED_RESET_PECI>;
+            clock-frequency = <24000000>;
+
+            peci-client@30 {
+                compatible = "intel,peci-client";
+                reg = <0x30>;
+            };
+
+            peci-client@31 {
+                compatible = "intel,peci-client";
+                reg = <0x31>;
+            };
+        };
+    };
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
