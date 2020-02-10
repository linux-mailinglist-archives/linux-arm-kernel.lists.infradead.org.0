Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 908EB1571B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:29:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zxTw897YvMB05rkauu5aCESbzbqxhQiAaBkUDsF1uW8=; b=s3K3cXq75KEw8c
	umVXJVrZX8eucusB+9FMs54mZyg5Oi6fvMlykS9wLxGXF3fERhKrMjb5tW7ffePJPr7AES9WoKMk8
	/YHx+//gUDLNe8C5XD69Eg3cU2Q2Fx8QnsHhgoBaPxebKw174YwSfzevc4UBZCQtEe8UwZN0LZk6Q
	G97ruZyMuyCeXumzragX3iv3HWexm4ZpgUvWvZp+3kwEZWDnteVbjmsykEFcZeSBpWAYyjxQmizJr
	+IMor1zJyj5p9Hk9NguBVteXFefruTCZKT/Hdud6AMN9xE5q8ud1H/H8YSMHjsEvreg41SLiVxjjt
	lc5GQQKqBq8wS4/u9yow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15NZ-00081n-6p; Mon, 10 Feb 2020 09:29:21 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15Lu-0006Yw-Tr
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:27:42 +0000
Received: by mail-lf1-x144.google.com with SMTP id t23so3656555lfk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 01:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9DYrjgcgN/gmkzWo2n47z0tVLHfKB7efeWqTbGxlDWk=;
 b=bnDgasZxqiZxivCthCDYByZp5efUcOrfcdL2EaGagQugoimCM0C2Xqf+Px4BTuxq+t
 2umLTfEl1+JXd5P2tcTsBwllWgCBcvkr51qYbNsLd1n2EAclY186kbSaZo5JbUjbKXVT
 0fN5Zx3odGTVpgQEl0leOKCOek9SgIgdwh0tGg+27QAmbUmBhFa7o5JHMx8xEkVNtNeH
 t5KqXplL9Kqox3I3IfiVnR+7lowGmw4cKu+o/+RmQn0ZKRiJiQBOukUGXnNnLvD/YnHj
 CpaTgyqylQKeNw3FHfNkBpBRqMnuZa0MSbIczIcPlQLQSlJP4+ss0wDE3gJIQ5+pcPmm
 p5tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9DYrjgcgN/gmkzWo2n47z0tVLHfKB7efeWqTbGxlDWk=;
 b=YeJwdV5e11mYNLVsCVOmK/ziN66K57AL3IR+frkYEksFgd76Q634JvOrgdtevokc7n
 VD4liW2i+HkDJ3W3WDfwRxJLu0nFd5vuZ6UAl+5sNCdj+++Z5xB37vjlzTgBpORxQdYW
 t/7GOUOpw5dGHF/ijoEITe1ONMUPKCI44b3iuvnMenhQqkKBssU8DsEdlm/5cNeRf7zd
 EH0W2XXkgTaISN+tLfhJX8I1DCgE6LMUVy+ug8mg5E14tA6aeU1hjplS18rrC6Ij4FMk
 +viC1949fiOCSMUw7U42XIq3JobKwpuN8Pz90diIElOpWpcZ1r8V7DcfvGv33Kwwebd9
 wEaw==
X-Gm-Message-State: APjAAAWa6zfolh4xnVLQT73wZwQ2GcmHHayLLeY/RF4caVV+d4jdDL+z
 PvY8vv5GNHvFTZm5EL5uuNuXpw==
X-Google-Smtp-Source: APXvYqzg7mdOX98+5omh8tNoKKlPahZs74HFUwLcb5mM0PPoHvgZr8PVn/JZSfjN1r1A7oWcIKuguQ==
X-Received: by 2002:a19:ee1a:: with SMTP id g26mr255071lfb.147.1581326857010; 
 Mon, 10 Feb 2020 01:27:37 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id d9sm5989882lja.73.2020.02.10.01.27.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 01:27:36 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 7/7] dt-bindings: arm: Drop the non-YAML bindings
Date: Mon, 10 Feb 2020 10:27:13 +0100
Message-Id: <20200210092713.279105-8-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200210092713.279105-1-linus.walleij@linaro.org>
References: <20200210092713.279105-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_012739_315935_0BB35515 
X-CRM114-Status: GOOD (  19.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We created new bindings for the ARM Board using YAML
so delete the old human-parseable-only bindings.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../devicetree/bindings/arm/arm-boards        | 237 ------------------
 .../devicetree/bindings/arm/vexpress.txt      | 229 -----------------
 2 files changed, 466 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/arm-boards
 delete mode 100644 Documentation/devicetree/bindings/arm/vexpress.txt

diff --git a/Documentation/devicetree/bindings/arm/arm-boards b/Documentation/devicetree/bindings/arm/arm-boards
deleted file mode 100644
index 96b1dad58253..000000000000
--- a/Documentation/devicetree/bindings/arm/arm-boards
+++ /dev/null
@@ -1,237 +0,0 @@
-ARM Integrator/AP (Application Platform) and Integrator/CP (Compact Platform)
------------------------------------------------------------------------------
-ARM's oldest Linux-supported platform with connectors for different core
-tiles of ARMv4, ARMv5 and ARMv6 type.
-
-Required properties (in root node):
-	compatible = "arm,integrator-ap";  /* Application Platform */
-	compatible = "arm,integrator-cp";  /* Compact Platform */
-
-FPGA type interrupt controllers, see the versatile-fpga-irq binding doc.
-
-Required nodes:
-
-- core-module: the root node to the Integrator platforms must have
-  a core-module with regs and the compatible string
-  "arm,core-module-integrator"
-- external-bus-interface: the root node to the Integrator platforms
-  must have an external bus interface with regs and the
-  compatible-string "arm,external-bus-interface"
-
-  Required properties for the core module:
-  - regs: the location and size of the core module registers, one
-    range of 0x200 bytes.
-
-- syscon: the root node of the Integrator platforms must have a
-  system controller node pointing to the control registers,
-  with the compatible string
-  "arm,integrator-ap-syscon"
-  "arm,integrator-cp-syscon"
-  respectively.
-
-  Required properties for the system controller:
-  - regs: the location and size of the system controller registers,
-    one range of 0x100 bytes.
-
-  Required properties for the AP system controller:
-  - interrupts: the AP syscon node must include the logical module
-    interrupts, stated in order of module instance <module 0>,
-    <module 1>, <module 2> ... for the CP system controller this
-    is not required not of any use.
-
-/dts-v1/;
-/include/ "integrator.dtsi"
-
-/ {
-	model = "ARM Integrator/AP";
-	compatible = "arm,integrator-ap";
-
-	core-module@10000000 {
-		compatible = "arm,core-module-integrator";
-		reg = <0x10000000 0x200>;
-	};
-
-	ebi@12000000 {
-		compatible = "arm,external-bus-interface";
-		reg = <0x12000000 0x100>;
-	};
-
-	syscon {
-		compatible = "arm,integrator-ap-syscon";
-		reg = <0x11000000 0x100>;
-		interrupt-parent = <&pic>;
-		/* These are the logic module IRQs */
-		interrupts = <9>, <10>, <11>, <12>;
-	};
-};
-
-
-ARM Versatile Application and Platform Baseboards
--------------------------------------------------
-ARM's development hardware platform with connectors for customizable
-core tiles.  The hardware configuration of the Versatile boards is
-highly customizable.
-
-Required properties (in root node):
-	compatible = "arm,versatile-ab";  /* Application baseboard */
-	compatible = "arm,versatile-pb";  /* Platform baseboard */
-
-Interrupt controllers:
-- VIC required properties:
-	compatible = "arm,versatile-vic";
-	interrupt-controller;
-	#interrupt-cells = <1>;
-
-- SIC required properties:
-	compatible = "arm,versatile-sic";
-	interrupt-controller;
-	#interrupt-cells = <1>;
-
-Required nodes:
-
-- core-module: the root node to the Versatile platforms must have
-  a core-module with regs and the compatible strings
-  "arm,core-module-versatile", "syscon"
-
-Optional nodes:
-
-- arm,versatile-ib2-syscon : if the Versatile has an IB2 interface
-  board mounted, this has a separate system controller that is
-  defined in this node.
-  Required properties:
-  compatible = "arm,versatile-ib2-syscon", "syscon"
-
-ARM RealView Boards
--------------------
-The RealView boards cover tailored evaluation boards that are used to explore
-the ARM11 and Cortex A-8 and Cortex A-9 processors.
-
-Required properties (in root node):
-	/* RealView Emulation Baseboard */
-	compatible = "arm,realview-eb";
-	 /* RealView Platform Baseboard for ARM1176JZF-S */
-	compatible = "arm,realview-pb1176";
-	/* RealView Platform Baseboard for ARM11 MPCore */
-	compatible = "arm,realview-pb11mp";
-	/* RealView Platform Baseboard for Cortex A-8 */
-	compatible = "arm,realview-pba8";
-	/* RealView Platform Baseboard Explore for Cortex A-9 */
-	compatible = "arm,realview-pbx";
-
-Required nodes:
-
-- soc: some node of the RealView platforms must be the SoC
-  node that contain the SoC-specific devices, with the compatible
-  string set to one of these tuples:
-   "arm,realview-eb-soc", "simple-bus"
-   "arm,realview-pb1176-soc", "simple-bus"
-   "arm,realview-pb11mp-soc", "simple-bus"
-   "arm,realview-pba8-soc", "simple-bus"
-   "arm,realview-pbx-soc", "simple-bus"
-
-- syscon: some subnode of the RealView SoC node must be a
-  system controller node pointing to the control registers,
-  with the compatible string set to one of these:
-   "arm,realview-eb11mp-revb-syscon", "arm,realview-eb-syscon", "syscon"
-   "arm,realview-eb11mp-revc-syscon", "arm,realview-eb-syscon", "syscon"
-   "arm,realview-eb-syscon", "syscon"
-   "arm,realview-pb1176-syscon", "syscon"
-   "arm,realview-pb11mp-syscon", "syscon"
-   "arm,realview-pba8-syscon", "syscon"
-   "arm,realview-pbx-syscon", "syscon"
-
-  Required properties for the system controller:
-  - regs: the location and size of the system controller registers,
-    one range of 0x1000 bytes.
-
-Example:
-
-/dts-v1/;
-#include <dt-bindings/interrupt-controller/irq.h>
-
-/ {
-	model = "ARM RealView PB1176 with device tree";
-	compatible = "arm,realview-pb1176";
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	soc {
-		#address-cells = <1>;
-		#size-cells = <1>;
-		compatible = "arm,realview-pb1176-soc", "simple-bus";
-		ranges;
-
-		syscon: syscon@10000000 {
-			compatible = "arm,realview-syscon", "syscon";
-			reg = <0x10000000 0x1000>;
-		};
-
-	};
-};
-
-ARM Versatile Express Boards
------------------------------
-For details on the device tree bindings for ARM Versatile Express boards
-please consult the vexpress.txt file in the same directory as this file.
-
-ARM Juno Boards
-----------------
-The Juno boards are targeting development for AArch64 systems. The first
-iteration, Juno r0, is a vehicle for evaluating big.LITTLE on AArch64,
-with the second iteration, Juno r1, mainly aimed at development of PCIe
-based systems. Juno r1 also has support for AXI masters placed on the TLX
-connectors to join the coherency domain.
-
-Juno boards are described in a similar way to ARM Versatile Express boards,
-with the motherboard part of the hardware being described in a separate file
-to highlight the fact that is part of the support infrastructure for the SoC.
-Juno device tree bindings also share the Versatile Express bindings as
-described under the RS1 memory mapping.
-
-Required properties (in root node):
-	compatible = "arm,juno";	/* For Juno r0 board */
-	compatible = "arm,juno-r1";	/* For Juno r1 board */
-	compatible = "arm,juno-r2";	/* For Juno r2 board */
-
-Required nodes:
-The description for the board must include:
-   - a "psci" node describing the boot method used for the secondary CPUs.
-     A detailed description of the bindings used for "psci" nodes is present
-     in the psci.yaml file.
-   - a "cpus" node describing the available cores and their associated
-     "enable-method"s. For more details see cpus.yaml file.
-
-Example:
-
-/dts-v1/;
-/ {
-	model = "ARM Juno development board (r0)";
-	compatible = "arm,juno", "arm,vexpress";
-	interrupt-parent = <&gic>;
-	#address-cells = <2>;
-	#size-cells = <2>;
-
-	cpus {
-		#address-cells = <2>;
-		#size-cells = <0>;
-
-		A57_0: cpu@0 {
-			compatible = "arm,cortex-a57";
-			reg = <0x0 0x0>;
-			device_type = "cpu";
-			enable-method = "psci";
-		};
-
-		.....
-
-		A53_0: cpu@100 {
-			compatible = "arm,cortex-a53";
-			reg = <0x0 0x100>;
-			device_type = "cpu";
-			enable-method = "psci";
-		};
-
-		.....
-	};
-
-};
diff --git a/Documentation/devicetree/bindings/arm/vexpress.txt b/Documentation/devicetree/bindings/arm/vexpress.txt
deleted file mode 100644
index 39844cd0bcce..000000000000
--- a/Documentation/devicetree/bindings/arm/vexpress.txt
+++ /dev/null
@@ -1,229 +0,0 @@
-ARM Versatile Express boards family
------------------------------------
-
-ARM's Versatile Express platform consists of a motherboard and one
-or more daughterboards (tiles). The motherboard provides a set of
-peripherals. Processor and RAM "live" on the tiles.
-
-The motherboard and each core tile should be described by a separate
-Device Tree source file, with the tile's description including
-the motherboard file using a /include/ directive. As the motherboard
-can be initialized in one of two different configurations ("memory
-maps"), care must be taken to include the correct one.
-
-
-Root node
----------
-
-Required properties in the root node:
-- compatible value:
-	compatible = "arm,vexpress,<model>", "arm,vexpress";
-  where <model> is the full tile model name (as used in the tile's
-    Technical Reference Manual), eg.:
-    - for Coretile Express A5x2 (V2P-CA5s):
-	compatible = "arm,vexpress,v2p-ca5s", "arm,vexpress";
-    - for Coretile Express A9x4 (V2P-CA9):
-	compatible = "arm,vexpress,v2p-ca9", "arm,vexpress";
-  If a tile comes in several variants or can be used in more then one
-  configuration, the compatible value should be:
-	compatible = "arm,vexpress,<model>,<variant>", \
-				"arm,vexpress,<model>", "arm,vexpress";
-  eg:
-    - Coretile Express A15x2 (V2P-CA15) with Tech Chip 1:
-	compatible = "arm,vexpress,v2p-ca15,tc1", \
-				"arm,vexpress,v2p-ca15", "arm,vexpress";
-    - LogicTile Express 13MG (V2F-2XV6) running Cortex-A7 (3 cores) SMM:
-	compatible = "arm,vexpress,v2f-2xv6,ca7x3", \
-				"arm,vexpress,v2f-2xv6", "arm,vexpress";
-
-Optional properties in the root node:
-- tile model name (use name from the tile's Technical Reference
-  Manual, eg. "V2P-CA5s")
-	model = "<model>";
-- tile's HBI number (unique ARM's board model ID, visible on the
-  PCB's silkscreen) in hexadecimal transcription:
-	arm,hbi = <0xhbi>
-  eg:
-  - for Coretile Express A5x2 (V2P-CA5s) HBI-0191:
-	arm,hbi = <0x191>;
-  - Coretile Express A9x4 (V2P-CA9) HBI-0225:
-	arm,hbi = <0x225>;
-
-
-CPU nodes
----------
-
-Top-level standard "cpus" node is required. It must contain a node
-with device_type = "cpu" property for every available core, eg.:
-
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu@0 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a5";
-			reg = <0>;
-		};
-	};
-
-
-Configuration infrastructure
-----------------------------
-
-The platform has an elaborated configuration system, consisting of
-microcontrollers residing on the mother- and daughterboards known
-as Motherboard/Daughterboard Configuration Controller (MCC and DCC).
-The controllers are responsible for the platform initialization
-(reset generation, flash programming, FPGA bitfiles loading etc.)
-but also control clock generators, voltage regulators, gather
-environmental data like temperature, power consumption etc. Even
-the video output switch (FPGA) is controlled that way.
-
-The controllers are not mapped into normal memory address space
-and must be accessed through bridges - other devices capable
-of generating transactions on the configuration bus.
-
-The nodes describing configuration controllers must define
-the following properties:
-- compatible value:
-	compatible = "arm,vexpress,config-bus";
-- bridge phandle:
-	arm,vexpress,config-bridge = <phandle>;
-and children describing available functions.
-
-
-Platform topology
------------------
-
-As Versatile Express can be configured in number of physically
-different setups, the device tree should describe platform topology.
-Root node and main motherboard node must define the following
-property, describing physical location of the children nodes:
-- site number:
-	arm,vexpress,site = <number>;
-  where 0 means motherboard, 1 or 2 are daugtherboard sites,
-  0xf means "master" site (site containing main CPU tile)
-- when daughterboards are stacked on one site, their position
-  in the stack be be described with:
-	arm,vexpress,position = <number>;
-- when describing tiles consisting more than one DCC, its number
-  can be described with:
-	arm,vexpress,dcc = <number>;
-
-Any of the numbers above defaults to zero if not defined in
-the node or any of its parent.
-
-
-Motherboard
------------
-
-The motherboard description file provides a single "motherboard" node
-using 2 address cells corresponding to the Static Memory Bus used
-between the motherboard and the tile. The first cell defines the Chip
-Select (CS) line number, the second cell address offset within the CS.
-All interrupt lines between the motherboard and the tile are active
-high and are described using single cell.
-
-Optional properties of the "motherboard" node:
-- motherboard's memory map variant:
-	arm,v2m-memory-map = "<name>";
-  where name is one of:
-  - "rs1" - for RS1 map (i.a. peripherals on CS3); this map is also
-            referred to as "ARM Cortex-A Series memory map":
-	arm,v2m-memory-map = "rs1";
-  When this property is missing, the motherboard is using the original
-  memory map (also known as the "Legacy memory map", primarily used
-  with the original CoreTile Express A9x4) with peripherals on CS7.
-
-Motherboard .dtsi files provide a set of labelled peripherals that
-can be used to obtain required phandle in the tile's "aliases" node:
-- UARTs, note that the numbers correspond to the physical connectors
-  on the motherboard's back panel:
-	v2m_serial0, v2m_serial1, v2m_serial2 and v2m_serial3
-- I2C controllers:
-	v2m_i2c_dvi and v2m_i2c_pcie
-- SP804 timers:
-	v2m_timer01 and v2m_timer23
-
-The tile description should define a "smb" node, describing the
-Static Memory Bus between the tile and motherboard. It must define
-the following properties:
-- "simple-bus" compatible value (to ensure creation of the children)
-	compatible = "simple-bus";
-- mapping of the SMB CS/offset addresses into main address space:
-	#address-cells = <2>;
-	#size-cells = <1>;
-	ranges = <...>;
-- interrupts mapping:
-	#interrupt-cells = <1>;
-	interrupt-map-mask = <0 0 63>;
-	interrupt-map = <...>;
-
-
-Example of a VE tile description (simplified)
----------------------------------------------
-
-/dts-v1/;
-
-/ {
-	model = "V2P-CA5s";
-	arm,hbi = <0x225>;
-	arm,vexpress,site = <0xf>;
-	compatible = "arm,vexpress-v2p-ca5s", "arm,vexpress";
-	interrupt-parent = <&gic>;
-	#address-cells = <1>;
-	#size-cells = <1>;
-
-	chosen { };
-
-	aliases {
-		serial0 = &v2m_serial0;
-	};
-
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu@0 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a5";
-			reg = <0>;
-		};
-	};
-
-	gic: interrupt-controller@2c001000 {
-		compatible = "arm,cortex-a9-gic";
-		#interrupt-cells = <3>;
-		#address-cells = <0>;
-		interrupt-controller;
-		reg = <0x2c001000 0x1000>,
-		      <0x2c000100 0x100>;
-	};
-
-	dcc {
-		compatible = "arm,vexpress,config-bus";
-		arm,vexpress,config-bridge = <&v2m_sysreg>;
-
-		osc@0 {
-			compatible = "arm,vexpress-osc";
-		};
-	};
-
-	smb {
-		compatible = "simple-bus";
-
-		#address-cells = <2>;
-		#size-cells = <1>;
-		/* CS0 is visible at 0x08000000 */
-		ranges = <0 0 0x08000000 0x04000000>;
-
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 63>;
-		/* Active high IRQ 0 is connected to GIC's SPI0 */
-		interrupt-map = <0 0 0 &gic 0 0 4>;
-
-		/include/ "vexpress-v2m-rs1.dtsi"
-	};
-};
-
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
