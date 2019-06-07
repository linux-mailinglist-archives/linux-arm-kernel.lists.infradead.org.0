Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E02EF38E16
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:51:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wTMb0+Q8/02a8mWCD5ibCt5oq2Z/xVYN9fIzGcwuhDA=; b=BjK8HLBktuD7yF
	gm7gdZmBWN7FIwdmeKmNA0vhaB4VrGgiNAUqrR0vrBjHSw5YPD9Ua31tzqm8tiAo8zvM4JH8WoAzF
	Xpi2LKSPqk+foMRtHpJgPBPbkkinoox+nRpwaOax3656N+J81awV1ASkdTzadw7ag74DKIeZG9X/t
	2oHSWzLvkp7/Go1yTXEVw42TINLYBAPKhDg+7hDhRQ2nZDadyUPFGxMqI4RBUEVUsR66mMlSeE5TO
	tW0fVDb3bKT+gS26Bc5ow3dxsJZxpn3hIGP8vV4vFzinb4p/KIfwBPqsDXKC3nlS1ZK5Yq0+jeWXj
	sOO08LbTGpcFBq9Lscaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGDN-0005ma-Lm; Fri, 07 Jun 2019 14:51:33 +0000
Received: from hqemgate16.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZGAR-0001ug-UI
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:48:34 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate16.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5cfa793f0001>; Fri, 07 Jun 2019 07:48:31 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Fri, 07 Jun 2019 07:48:31 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Fri, 07 Jun 2019 07:48:31 -0700
Received: from HQMAIL110.nvidia.com (172.18.146.15) by HQMAIL104.nvidia.com
 (172.18.146.11) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 7 Jun
 2019 14:48:31 +0000
Received: from HQMAIL105.nvidia.com (172.20.187.12) by hqmail110.nvidia.com
 (172.18.146.15) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 7 Jun
 2019 14:48:31 +0000
Received: from hqnvemgw01.nvidia.com (172.20.150.20) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Fri, 7 Jun 2019 14:48:31 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.38]) by
 hqnvemgw01.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5cfa79390000>; Fri, 07 Jun 2019 07:48:30 -0700
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <mark.rutland@arm.com>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <kishon@ti.com>, <catalin.marinas@arm.com>, <will.deacon@arm.com>,
 <jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>
Subject: [PATCH V9 09/15] dt-bindings: PCI: tegra: Add device tree support for
 Tegra194
Date: Fri, 7 Jun 2019 20:16:34 +0530
Message-ID: <20190607144640.13427-10-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190607144640.13427-1-vidyas@nvidia.com>
References: <20190607144640.13427-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1559918911; bh=uQ/rCR0nZarEm8N44Na3ZpKsrLNGl2oYg0XRLThYWMk=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=k9/c4ZTXlkkTF7fyIlL7w9bSfB6tRBs6M9CX+QXUVm0CTXCat4vimuXM+qpT3b/Ec
 0fDKqC4m2qRTbv1dWJcUrDMFjiaFLNUe+Ufa/h1r01SzIkaOVYirg+IGKGoGzeMQTl
 3nEj20OwZ5UQZigBm/kcjQVYNKISaWLDCDKZJjScLHZont4U/Wal9cyIi7e2NWB8u6
 hUhDkCnvYq+IYvANEOD8axDweiTh0BXJK4UatO5cPGiHILMVnFv7AyZwM1P6bx21cK
 p8E+D0Q4jKh64IZwWRdUWjXFkyPYg3JsQQKMyAz4osyJT4ZUd7tjorf2JeaOz8rR7n
 SejKxP0ruz87w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_074832_073052_97DDBBAC 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, mperttunen@nvidia.com,
 linux-tegra@vger.kernel.org, digetx@gmail.com, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for Tegra194 PCIe controllers. These controllers are based
on Synopsys DesignWare core IP.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Thierry Reding <treding@nvidia.com>
---
Changes since [v8]:
* Added Acked-by from Thierry

Changes since [v7]:
* Addressed review comments from Thierry
* Modified DT example to reflect new changes

Changes since [v6]:
* Changed description of the property "nvidia,bpmp".
* Removed property "nvidia,disable-aspm-states".

Changes since [v5]:
* Removed 'max-link-speed' as it is going to be a common sub-system property
* Removed 'nvidia,init-link-speed' as there isn't much value addition
* Removed 'nvidia,wake-gpios' for now
* Addressed review comments from Thierry and Rob in general

Changes since [v4]:
* None

Changes since [v3]:
* None

Changes since [v2]:
* Using only 'Cx' (x-being controller number) format to represent a controller
* Changed to 'value: description' format where applicable
* Changed 'nvidia,init-speed' to 'nvidia,init-link-speed'
* Provided more documentation for 'nvidia,init-link-speed' property
* Changed 'nvidia,pex-wake' to 'nvidia,wake-gpios'

Changes since [v1]:
* Added documentation for 'power-domains' property
* Removed 'window1' and 'window2' properties
* Removed '_clk' and '_rst' from clock and reset names
* Dropped 'pcie' from phy-names
* Added entry for BPMP-FW handle
* Removed offsets for some of the registers and added them in code and would be pickedup based on
  controller ID
* Changed 'nvidia,max-speed' to 'max-link-speed' and is made as an optional
* Changed 'nvidia,disable-clock-request' to 'supports-clkreq' with inverted operation
* Added more documentation for 'nvidia,update-fc-fixup' property
* Removed 'nvidia,enable-power-down' and 'nvidia,plat-gpios' properties
* Added '-us' to all properties that represent time in microseconds
* Moved P2U documentation to a separate file

 .../bindings/pci/nvidia,tegra194-pcie.txt     | 155 ++++++++++++++++++
 1 file changed, 155 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt

diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
new file mode 100644
index 000000000000..674e5adb2895
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
@@ -0,0 +1,155 @@
+NVIDIA Tegra PCIe controller (Synopsys DesignWare Core based)
+
+This PCIe host controller is based on the Synopsis Designware PCIe IP
+and thus inherits all the common properties defined in designware-pcie.txt.
+
+Required properties:
+- compatible: For Tegra19x, must contain "nvidia,tegra194-pcie".
+- device_type: Must be "pci"
+- power-domains: A phandle to the node that controls power to the respective
+  PCIe controller and a specifier name for the PCIe controller. Following are
+  the specifiers for the different PCIe controllers
+    TEGRA194_POWER_DOMAIN_PCIEX8B: C0
+    TEGRA194_POWER_DOMAIN_PCIEX1A: C1
+    TEGRA194_POWER_DOMAIN_PCIEX1A: C2
+    TEGRA194_POWER_DOMAIN_PCIEX1A: C3
+    TEGRA194_POWER_DOMAIN_PCIEX4A: C4
+    TEGRA194_POWER_DOMAIN_PCIEX8A: C5
+  these specifiers are defined in
+  "include/dt-bindings/power/tegra194-powergate.h" file.
+- reg: A list of physical base address and length pairs for each set of
+  controller registers. Must contain an entry for each entry in the reg-names
+  property.
+- reg-names: Must include the following entries:
+  "appl": Controller's application logic registers
+  "config": As per the definition in designware-pcie.txt
+  "atu_dma": iATU and DMA registers. This is where the iATU (internal Address
+             Translation Unit) registers of the PCIe core are made available
+             for SW access.
+  "dbi": The aperture where root port's own configuration registers are
+         available
+- interrupts: A list of interrupt outputs of the controller. Must contain an
+  entry for each entry in the interrupt-names property.
+- interrupt-names: Must include the following entries:
+  "intr": The Tegra interrupt that is asserted for controller interrupts
+  "msi": The Tegra interrupt that is asserted when an MSI is received
+- bus-range: Range of bus numbers associated with this controller
+- #address-cells: Address representation for root ports (must be 3)
+  - cell 0 specifies the bus and device numbers of the root port:
+    [23:16]: bus number
+    [15:11]: device number
+  - cell 1 denotes the upper 32 address bits and should be 0
+  - cell 2 contains the lower 32 address bits and is used to translate to the
+    CPU address space
+- #size-cells: Size representation for root ports (must be 2)
+- ranges: Describes the translation of addresses for root ports and standard
+  PCI regions. The entries must be 7 cells each, where the first three cells
+  correspond to the address as described for the #address-cells property
+  above, the fourth and fifth cells are for the physical CPU address to
+  translate to and the sixth and seventh cells are as described for the
+  #size-cells property above.
+  - Entries setup the mapping for the standard I/O, memory and
+    prefetchable PCI regions. The first cell determines the type of region
+    that is setup:
+    - 0x81000000: I/O memory region
+    - 0x82000000: non-prefetchable memory region
+    - 0xc2000000: prefetchable memory region
+  Please refer to the standard PCI bus binding document for a more detailed
+  explanation.
+- #interrupt-cells: Size representation for interrupts (must be 1)
+- interrupt-map-mask and interrupt-map: Standard PCI IRQ mapping properties
+  Please refer to the standard PCI bus binding document for a more detailed
+  explanation.
+- clocks: Must contain an entry for each entry in clock-names.
+  See ../clocks/clock-bindings.txt for details.
+- clock-names: Must include the following entries:
+  - core
+- resets: Must contain an entry for each entry in reset-names.
+  See ../reset/reset.txt for details.
+- reset-names: Must include the following entries:
+  - apb
+  - core
+- phys: Must contain a phandle to P2U PHY for each entry in phy-names.
+- phy-names: Must include an entry for each active lane.
+  "p2u-N": where N ranges from 0 to one less than the total number of lanes
+- nvidia,bpmp: Must contain a pair of phandle to BPMP controller node followed
+  by controller-id. Following are the controller ids for each controller.
+    0: C0
+    1: C1
+    2: C2
+    3: C3
+    4: C4
+    5: C5
+- vddio-pex-ctl-supply: Regulator supply for PCIe side band signals
+
+Optional properties:
+- supports-clkreq: Refer to Documentation/devicetree/bindings/pci/pci.txt
+- nvidia,update-fc-fixup: This is a boolean property and needs to be present to
+    improve performance when a platform is designed in such a way that it
+    satisfies at least one of the following conditions thereby enabling root
+    port to exchange optimum number of FC (Flow Control) credits with
+    downstream devices
+    1. If C0/C4/C5 run at x1/x2 link widths (irrespective of speed and MPS)
+    2. If C0/C1/C2/C3/C4/C5 operate at their respective max link widths and
+       a) speed is Gen-2 and MPS is 256B
+       b) speed is >= Gen-3 with any MPS
+- nvidia,aspm-cmrt-us: Common Mode Restore Time for proper operation of ASPM
+   to be specified in microseconds
+- nvidia,aspm-pwr-on-t-us: Power On time for proper operation of ASPM to be
+   specified in microseconds
+- nvidia,aspm-l0s-entrance-latency-us: ASPM L0s entrance latency to be
+   specified in microseconds
+
+Examples:
+=========
+
+Tegra194:
+--------
+
+	pcie@14180000 {
+		compatible = "nvidia,tegra194-pcie", "snps,dw-pcie";
+		power-domains = <&bpmp TEGRA194_POWER_DOMAIN_PCIEX8B>;
+		reg = <0x00 0x14180000 0x0 0x00020000   /* appl registers (128K)      */
+		       0x00 0x38000000 0x0 0x00040000   /* configuration space (256K) */
+		       0x00 0x38040000 0x0 0x00040000>; /* iATU_DMA reg space (256K)  */
+		reg-names = "appl", "config", "atu_dma";
+
+		#address-cells = <3>;
+		#size-cells = <2>;
+		device_type = "pci";
+		num-lanes = <8>;
+		linux,pci-domain = <0>;
+
+		clocks = <&bpmp TEGRA194_CLK_PEX0_CORE_0>;
+		clock-names = "core";
+
+		resets = <&bpmp TEGRA194_RESET_PEX0_CORE_0_APB>,
+			 <&bpmp TEGRA194_RESET_PEX0_CORE_0>;
+		reset-names = "apb", "core";
+
+		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,	/* controller interrupt */
+			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;	/* MSI interrupt */
+		interrupt-names = "intr", "msi";
+
+		#interrupt-cells = <1>;
+		interrupt-map-mask = <0 0 0 0>;
+		interrupt-map = <0 0 0 0 &gic GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+
+		nvidia,bpmp = <&bpmp 0>;
+
+		supports-clkreq;
+		nvidia,aspm-cmrt-us = <60>;
+		nvidia,aspm-pwr-on-t-us = <20>;
+		nvidia,aspm-l0s-entrance-latency-us = <3>;
+
+		bus-range = <0x0 0xff>;
+		ranges = <0x81000000 0x0  0x38100000 0x0  0x38100000 0x0 0x00100000    /* downstream I/O (1MB) */
+			  0x82000000 0x0  0x38200000 0x0  0x38200000 0x0 0x01E00000    /* non-prefetchable memory (30MB) */
+			  0xc2000000 0x18 0x00000000 0x18 0x00000000 0x4 0x00000000>;  /* prefetchable memory (16GB) */
+
+		vddio-pex-ctl-supply = <&vdd_1v8ao>;
+
+		phys = <&p2u_hsio_2>, <&p2u_hsio_3>, <&p2u_hsio_4>,
+		       <&p2u_hsio_5>;
+		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3";
+	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
