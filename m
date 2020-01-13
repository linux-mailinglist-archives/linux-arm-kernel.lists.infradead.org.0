Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C71513988F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 19:15:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1D3UsbVGB//nLEmzNjUiOaHoogVBQadarsUqxyJdI3s=; b=dyrwdWp/84L0kd
	7D8+q00XJHvxF41beVlhSF4BHqqBunqWYDrvNy6X+NRC7wXvc2fRyNtwyPd+/RfbZuSWxj3eYX91Q
	ghNmzdZoV8bzFXl/Kz2Uw2TLx8A/CQNcaUSa87dPj5P0NeUVZDUJXp/l65DHzHBOS2EuCTvDI6cqV
	/CWI8qvWnTCm1Sislr9AaRQhpj6vFa1W/vkjROPUWoqzs0XgAcZwSvgrNb/j9EDrXL3HGGZTPhvhR
	dev7C0XrUomIdDDgQkQ+w77FgdFt7VIQTp0GYCK8LC5lGo4NCOOfn4jyNn4mHO2JnRJNzG52blYmc
	rGXwR7e8neTkhOtIVY9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir4F8-0006Vt-QW; Mon, 13 Jan 2020 18:15:14 +0000
Received: from hqnvemgate24.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir4ET-0006GO-Q6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 18:14:35 +0000
Received: from hqpgpgate102.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate24.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5e1cb3530000>; Mon, 13 Jan 2020 10:13:39 -0800
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate102.nvidia.com (PGP Universal service);
 Mon, 13 Jan 2020 10:14:33 -0800
X-PGP-Universal: processed;
 by hqpgpgate102.nvidia.com on Mon, 13 Jan 2020 10:14:33 -0800
Received: from HQMAIL105.nvidia.com (172.20.187.12) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Mon, 13 Jan
 2020 18:14:32 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL105.nvidia.com
 (172.20.187.12) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Mon, 13 Jan 2020 18:14:32 +0000
Received: from vidyas-desktop.nvidia.com (Not Verified[10.24.37.48]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5e1cb3840001>; Mon, 13 Jan 2020 10:14:32 -0800
From: Vidya Sagar <vidyas@nvidia.com>
To: <lorenzo.pieralisi@arm.com>, <bhelgaas@google.com>, <robh+dt@kernel.org>, 
 <thierry.reding@gmail.com>, <jonathanh@nvidia.com>, <andrew.murray@arm.com>
Subject: [PATCH V3 2/5] dt-bindings: PCI: tegra: Add DT support for PCIe EP
 nodes in Tegra194
Date: Mon, 13 Jan 2020 23:44:08 +0530
Message-ID: <20200113181411.32743-3-vidyas@nvidia.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113181411.32743-1-vidyas@nvidia.com>
References: <20200113181411.32743-1-vidyas@nvidia.com>
X-NVConfidentiality: public
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1578939219; bh=XHVu4FMfgAP0ACuthmQ4h1Xhms0ZkkK18S2i5si97sY=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:X-NVConfidentiality:MIME-Version:
 Content-Type;
 b=WuWfPdywTFDNyXkotGxmVKawTFl8LVY+cPF9KgRWUXHX/f3MVHPluhLYuWqYRMgZA
 27ZsjYXJQMlSCpZdHUL4+K48v6jD5JJI9PqfVwrsFsH2YBxpwxUOnqLGTis9Y+CqiR
 +PnSEmsranHYNVn4OnMJ6ChNVURjx2kONM32CA6lciuarFl3ePf8ee4BykIOCVhpPt
 Ev0EmvJitw4avj4pB+6RqaUny4ZkbE8bjURJuEaxl6xUshGKZ7tRvw5FicUIU0pelz
 +xBfsCicFBAfflrxnbrfQWDAUIegLw9ecHkQggrkvTXOjKYXkhddd6Fz4dR0xiH+nk
 ja8NEw9FHuxUg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_101433_864849_FD0CA0E6 
X-CRM114-Status: GOOD (  11.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-pci@vger.kernel.org, linux-tegra@vger.kernel.org, vidyas@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for PCIe controllers that can operate in endpoint mode
in Tegra194.

Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
V3:
* Added Reviewed-by: Rob Herring <robh@kernel.org>

V2:
* Addressed Thierry's review comments
* Merged EP specific information from tegra194-pcie-ep.txt to tegra194-pcie.txt itself
* Started using the standard 'reset-gpios' for PERST GPIO
* Added 'nvidia,refclk-select-gpios' to enable REFCLK signals

 .../bindings/pci/nvidia,tegra194-pcie.txt     | 125 ++++++++++++++----
 1 file changed, 99 insertions(+), 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
index b739f92da58e..faa3ef5adfbb 100644
--- a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
+++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
@@ -1,11 +1,11 @@
 NVIDIA Tegra PCIe controller (Synopsys DesignWare Core based)
 
-This PCIe host controller is based on the Synopsis Designware PCIe IP
+This PCIe controller is based on the Synopsis Designware PCIe IP
 and thus inherits all the common properties defined in designware-pcie.txt.
+Some of the controller instances are dual mode where in they can work either
+in root port mode or endpoint mode but one at a time.
 
 Required properties:
-- compatible: For Tegra19x, must contain "nvidia,tegra194-pcie".
-- device_type: Must be "pci"
 - power-domains: A phandle to the node that controls power to the respective
   PCIe controller and a specifier name for the PCIe controller. Following are
   the specifiers for the different PCIe controllers
@@ -32,6 +32,32 @@ Required properties:
   entry for each entry in the interrupt-names property.
 - interrupt-names: Must include the following entries:
   "intr": The Tegra interrupt that is asserted for controller interrupts
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
+RC mode:
+- compatible: Tegra19x must contain  "nvidia,tegra194-pcie"
+- device_type: Must be "pci" for RC mode
+- interrupt-names: Must include the following entries:
   "msi": The Tegra interrupt that is asserted when an MSI is received
 - bus-range: Range of bus numbers associated with this controller
 - #address-cells: Address representation for root ports (must be 3)
@@ -60,27 +86,15 @@ Required properties:
 - interrupt-map-mask and interrupt-map: Standard PCI IRQ mapping properties
   Please refer to the standard PCI bus binding document for a more detailed
   explanation.
-- clocks: Must contain an entry for each entry in clock-names.
-  See ../clocks/clock-bindings.txt for details.
-- clock-names: Must include the following entries:
-  - core
-- resets: Must contain an entry for each entry in reset-names.
-  See ../reset/reset.txt for details.
-- reset-names: Must include the following entries:
-  - apb
-  - core
-- phys: Must contain a phandle to P2U PHY for each entry in phy-names.
-- phy-names: Must include an entry for each active lane.
-  "p2u-N": where N ranges from 0 to one less than the total number of lanes
-- nvidia,bpmp: Must contain a pair of phandle to BPMP controller node followed
-  by controller-id. Following are the controller ids for each controller.
-    0: C0
-    1: C1
-    2: C2
-    3: C3
-    4: C4
-    5: C5
-- vddio-pex-ctl-supply: Regulator supply for PCIe side band signals
+
+EP mode:
+In Tegra194, Only controllers C0, C4 & C5 support EP mode.
+- compatible: Tegra19x must contain "nvidia,tegra194-pcie-ep"
+- reg-names: Must include the following entries:
+  "addr_space": Used to map remote RC address space
+- reset-gpios: Must contain a phandle to a GPIO controller followed by
+  GPIO that is being used as PERST input signal. Please refer to pci.txt
+  document.
 
 Optional properties:
 - pinctrl-names: A list of pinctrl state names.
@@ -104,6 +118,8 @@ Optional properties:
    specified in microseconds
 - nvidia,aspm-l0s-entrance-latency-us: ASPM L0s entrance latency to be
    specified in microseconds
+
+RC mode:
 - vpcie3v3-supply: A phandle to the regulator node that supplies 3.3V to the slot
   if the platform has one such slot. (Ex:- x16 slot owned by C5 controller
   in p2972-0000 platform).
@@ -111,11 +127,18 @@ Optional properties:
   if the platform has one such slot. (Ex:- x16 slot owned by C5 controller
   in p2972-0000 platform).
 
+EP mode:
+- nvidia,refclk-select-gpios: Must contain a phandle to a GPIO controller
+  followed by GPIO that is being used to enable REFCLK to controller from host
+
+NOTE:- On Tegra194's P2972-0000 platform, only C5 controller can be enabled to
+operate in the endpoint mode because of the way the platform is designed.
+
 Examples:
 =========
 
-Tegra194:
---------
+Tegra194 RC mode:
+-----------------
 
 	pcie@14180000 {
 		compatible = "nvidia,tegra194-pcie", "snps,dw-pcie";
@@ -169,3 +192,53 @@ Tegra194:
 		       <&p2u_hsio_5>;
 		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3";
 	};
+
+Tegra194 EP mode:
+-----------------
+
+	pcie_ep@141a0000 {
+		compatible = "nvidia,tegra194-pcie-ep", "snps,dw-pcie-ep";
+		power-domains = <&bpmp TEGRA194_POWER_DOMAIN_PCIEX8A>;
+		reg = <0x00 0x141a0000 0x0 0x00020000   /* appl registers (128K)      */
+		       0x00 0x3a040000 0x0 0x00040000   /* iATU_DMA reg space (256K)  */
+		       0x00 0x3a080000 0x0 0x00040000   /* DBI reg space (256K)       */
+		       0x1c 0x00000000 0x4 0x00000000>; /* Address Space (16G)        */
+		reg-names = "appl", "atu_dma", "dbi", "addr_space";
+
+		num-lanes = <8>;
+		num-ib-windows = <2>;
+		num-ob-windows = <8>;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&clkreq_c5_bi_dir_state>;
+
+		clocks = <&bpmp TEGRA194_CLK_PEX1_CORE_5>;
+		clock-names = "core";
+
+		resets = <&bpmp TEGRA194_RESET_PEX1_CORE_5_APB>,
+			 <&bpmp TEGRA194_RESET_PEX1_CORE_5>;
+		reset-names = "apb", "core";
+
+		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;	/* controller interrupt */
+		interrupt-names = "intr";
+
+		nvidia,bpmp = <&bpmp 5>;
+
+		nvidia,aspm-cmrt-us = <60>;
+		nvidia,aspm-pwr-on-t-us = <20>;
+		nvidia,aspm-l0s-entrance-latency-us = <3>;
+
+		vddio-pex-ctl-supply = <&vdd_1v8ao>;
+
+		reset-gpios = <&gpio TEGRA194_MAIN_GPIO(GG, 1) GPIO_ACTIVE_LOW>;
+
+		nvidia,refclk-select-gpios = <&gpio_aon TEGRA194_AON_GPIO(AA, 5)
+					      GPIO_ACTIVE_HIGH>;
+
+		phys = <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
+		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
+		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
+
+		phy-names = "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
+			    "p2u-5", "p2u-6", "p2u-7";
+	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
