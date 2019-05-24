Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFE429FD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 22:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i52alQNRIA5+iRNhHRv4YVWTM+sm3xv7d0j1uczJtTk=; b=TyNE4G/EbL9MhW
	32xK8JFn9hng2faRobkQ8eyNCTurKd2zlczQlRyWF85AyXBhbLM47Co5l2QkadT7sEx5ARgj1mmSo
	to3dEf/eU/kT8hT2r+0vZGQIOybUAVRJ58/nRqLsa17tJfV4fcyG3ytMqdo+mifDt9wnTUKtK6tBo
	Fac+ON0smbUHyWhl74D040aJhnn2XqGxDaJGs0EMmPOmZCB0rfADCWIDE+R6QqDyA8fqItpAWzW+y
	AgfYsFk6yZbFV0z6N0ednLVi4XPCxXbSuA7bygbMsl/tD2YIVTUBB25yEWRc9Ls/hGJbT13fFss8i
	U8Ia0tw1gg1OjKqFgNRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGm9-0006nk-Fv; Fri, 24 May 2019 20:26:49 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGm0-0006mc-B2
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 20:26:42 +0000
Received: by mail-ot1-f67.google.com with SMTP id l25so9821666otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 13:26:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mvBAwt9WWubdl7IYzZOmu14RUPxpDepEHFKYmJGI5ak=;
 b=HWoTh91V1F/v7nN2e9Zd8jVALAmIOsIuBkZUBz02uj2kQnUG/tIsXEOhlWUzQHAy7c
 2cnGSnuDxFttr3atfDq2qGUrbYDSuqsV36ym1rz7qe4C+BcXeknsimI1UJMXYWPB3n/l
 CT7jZg75/0Cw5Bj8qJOubRVvwh37S5JPA0zsho5mhBSh59SRAuR3hLLc7g5CFJ7QQJeW
 VYi/tSD377DjqBaXZMFd0Q9Kgmtac34XExYpBO5cbG5u6sj8ePw/oPE/RLcHNO2ydrvD
 URmHl18Q2wLzxG6RCrKlPoCENg8SfvXsZmHKCYGQPY1mZZbphdtxU9yUR5YWTqngJCHT
 9JJQ==
X-Gm-Message-State: APjAAAUtpuTMRg4ijQ7zEqVJGOXFsiwPXza8xMf/B+bIWdQ/mxDSeOdK
 hApos79PC/ZWZOxstyJqWw==
X-Google-Smtp-Source: APXvYqy+ITFT9EWaatWw4aVRJoU8lxKpaccY6Y5l4RFBY3ED4DWOYN8EPu9IXx9LjRH121uQLRD1VA==
X-Received: by 2002:a9d:460d:: with SMTP id y13mr38482740ote.244.1558729599271; 
 Fri, 24 May 2019 13:26:39 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l30sm1330746ota.63.2019.05.24.13.26.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 13:26:38 -0700 (PDT)
Date: Fri, 24 May 2019 15:26:37 -0500
From: Rob Herring <robh@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 09/15] dt-bindings: PCI: tegra: Add device tree
 support for Tegra194
Message-ID: <20190524202637.GA24385@bogus>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-10-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517123846.3708-10-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_132640_378365_78E077E0 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 06:08:40PM +0530, Vidya Sagar wrote:
> Add support for Tegra194 PCIe controllers. These controllers are based
> on Synopsys DesignWare core IP.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v6]:
> * Changed description of the property "nvidia,bpmp".
> * Removed property "nvidia,disable-aspm-states".
> 
> Changes since [v5]:
> * Removed 'max-link-speed' as it is going to be a common sub-system property
> * Removed 'nvidia,init-link-speed' as there isn't much value addition
> * Removed 'nvidia,wake-gpios' for now
> * Addressed review comments from Thierry and Rob in general
> 
> Changes since [v4]:
> * None
> 
> Changes since [v3]:
> * None
> 
> Changes since [v2]:
> * Using only 'Cx' (x-being controller number) format to represent a controller
> * Changed to 'value: description' format where applicable
> * Changed 'nvidia,init-speed' to 'nvidia,init-link-speed'
> * Provided more documentation for 'nvidia,init-link-speed' property
> * Changed 'nvidia,pex-wake' to 'nvidia,wake-gpios'
> 
> Changes since [v1]:
> * Added documentation for 'power-domains' property
> * Removed 'window1' and 'window2' properties
> * Removed '_clk' and '_rst' from clock and reset names
> * Dropped 'pcie' from phy-names
> * Added entry for BPMP-FW handle
> * Removed offsets for some of the registers and added them in code and would be pickedup based on
>   controller ID
> * Changed 'nvidia,max-speed' to 'max-link-speed' and is made as an optional
> * Changed 'nvidia,disable-clock-request' to 'supports-clkreq' with inverted operation
> * Added more documentation for 'nvidia,update-fc-fixup' property
> * Removed 'nvidia,enable-power-down' and 'nvidia,plat-gpios' properties
> * Added '-us' to all properties that represent time in microseconds
> * Moved P2U documentation to a separate file
> 
>  .../bindings/pci/nvidia,tegra194-pcie.txt     | 158 ++++++++++++++++++
>  1 file changed, 158 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> 
> diff --git a/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> new file mode 100644
> index 000000000000..0119f40bbd11
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/nvidia,tegra194-pcie.txt
> @@ -0,0 +1,158 @@
> +NVIDIA Tegra PCIe controller (Synopsys DesignWare Core based)
> +
> +This PCIe host controller is based on the Synopsis Designware PCIe IP
> +and thus inherits all the common properties defined in designware-pcie.txt.
> +
> +Required properties:
> +- compatible: For Tegra19x, must contain "nvidia,tegra194-pcie".
> +- device_type: Must be "pci"
> +- power-domains: A phandle to the node that controls power to the respective
> +  PCIe controller and a specifier name for the PCIe controller. Following are
> +  the specifiers for the different PCIe controllers
> +    TEGRA194_POWER_DOMAIN_PCIEX8B: C0
> +    TEGRA194_POWER_DOMAIN_PCIEX1A: C1
> +    TEGRA194_POWER_DOMAIN_PCIEX1A: C2
> +    TEGRA194_POWER_DOMAIN_PCIEX1A: C3
> +    TEGRA194_POWER_DOMAIN_PCIEX4A: C4
> +    TEGRA194_POWER_DOMAIN_PCIEX8A: C5
> +  these specifiers are defined in
> +  "include/dt-bindings/power/tegra194-powergate.h" file.
> +- reg: A list of physical base address and length pairs for each set of
> +  controller registers. Must contain an entry for each entry in the reg-names
> +  property.
> +- reg-names: Must include the following entries:
> +  "appl": Controller's application logic registers
> +  "config": As per the definition in designware-pcie.txt
> +  "atu_dma": iATU and DMA registers. This is where the iATU (internal Address
> +             Translation Unit) registers of the PCIe core are made available
> +             for SW access.
> +  "dbi": The aperture where root port's own configuration registers are
> +         available
> +- interrupts: A list of interrupt outputs of the controller. Must contain an
> +  entry for each entry in the interrupt-names property.
> +- interrupt-names: Must include the following entries:
> +  "intr": The Tegra interrupt that is asserted for controller interrupts
> +  "msi": The Tegra interrupt that is asserted when an MSI is received
> +- bus-range: Range of bus numbers associated with this controller
> +- #address-cells: Address representation for root ports (must be 3)
> +  - cell 0 specifies the bus and device numbers of the root port:
> +    [23:16]: bus number
> +    [15:11]: device number
> +  - cell 1 denotes the upper 32 address bits and should be 0
> +  - cell 2 contains the lower 32 address bits and is used to translate to the
> +    CPU address space
> +- #size-cells: Size representation for root ports (must be 2)
> +- ranges: Describes the translation of addresses for root ports and standard
> +  PCI regions. The entries must be 7 cells each, where the first three cells
> +  correspond to the address as described for the #address-cells property
> +  above, the fourth and fifth cells are for the physical CPU address to
> +  translate to and the sixth and seventh cells are as described for the
> +  #size-cells property above.
> +  - Entries setup the mapping for the standard I/O, memory and
> +    prefetchable PCI regions. The first cell determines the type of region
> +    that is setup:
> +    - 0x81000000: I/O memory region
> +    - 0x82000000: non-prefetchable memory region
> +    - 0xc2000000: prefetchable memory region
> +  Please refer to the standard PCI bus binding document for a more detailed
> +  explanation.
> +- #interrupt-cells: Size representation for interrupts (must be 1)
> +- interrupt-map-mask and interrupt-map: Standard PCI IRQ mapping properties
> +  Please refer to the standard PCI bus binding document for a more detailed
> +  explanation.
> +- clocks: Must contain an entry for each entry in clock-names.
> +  See ../clocks/clock-bindings.txt for details.
> +- clock-names: Must include the following entries:
> +  - core
> +- resets: Must contain an entry for each entry in reset-names.
> +  See ../reset/reset.txt for details.
> +- reset-names: Must include the following entries:
> +  - core_apb
> +  - core
> +- phys: Must contain a phandle to P2U PHY for each entry in phy-names.
> +- phy-names: Must include an entry for each active lane.
> +  "p2u-N": where N ranges from 0 to one less than the total number of lanes
> +- nvidia,bpmp: Must contain a pair of phandle to BPMP controller node followed
> +  by controller-id. Following are the controller ids for each controller.
> +    0: C0
> +    1: C1
> +    2: C2
> +    3: C3
> +    4: C4
> +    5: C5
> +- vddio-pex-ctl-supply: Regulator supply for PCIe side band signals
> +
> +Optional properties:
> +- supports-clkreq: Refer to Documentation/devicetree/bindings/pci/pci.txt
> +- nvidia,update-fc-fixup: This is a boolean property and needs to be present to
> +    improve perf when a platform is designed in such a way that it satisfies at
> +    least one of the following conditions thereby enabling root port to
> +    exchange optimum number of FC (Flow Control) credits with downstream devices
> +    1. If C0/C4/C5 run at x1/x2 link widths (irrespective of speed and MPS)
> +    2. If C0/C1/C2/C3/C4/C5 operate at their respective max link widths and
> +       a) speed is Gen-2 and MPS is 256B
> +       b) speed is >= Gen-3 with any MPS
> +- "nvidia,aspm-cmrt-us": Common Mode Restore time for proper operation of ASPM
> +   to be specified in microseconds
> +- "nvidia,aspm-pwr-on-t-us": Power On time for proper operation of ASPM to be
> +   specified in microseconds
> +- "nvidia,aspm-l0s-entrance-latency-us": ASPM L0s entrance latency to be
> +   specified in microseconds
> +
> +Examples:
> +=========
> +
> +Tegra194:
> +--------
> +
> +SoC DTSI:
> +
> +	pcie@14180000 {
> +		compatible = "nvidia,tegra194-pcie", "snps,dw-pcie";
> +		power-domains = <&bpmp TEGRA194_POWER_DOMAIN_PCIEX8B>;
> +		reg = <0x00 0x14180000 0x0 0x00020000   /* appl registers (128K)      */
> +		       0x00 0x38000000 0x0 0x00040000   /* configuration space (256K) */
> +		       0x00 0x38040000 0x0 0x00040000>; /* iATU_DMA reg space (256K)  */
> +		reg-names = "appl", "config", "atu_dma";
> +
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +		device_type = "pci";
> +		num-lanes = <8>;
> +		linux,pci-domain = <0>;
> +
> +		clocks = <&bpmp TEGRA194_CLK_PEX0_CORE_0>;
> +		clock-names = "core";
> +
> +		resets = <&bpmp TEGRA194_RESET_PEX0_CORE_0_APB>,
> +			 <&bpmp TEGRA194_RESET_PEX0_CORE_0>;
> +		reset-names = "core_apb", "core";
> +
> +		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,	/* controller interrupt */
> +			     <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;	/* MSI interrupt */
> +		interrupt-names = "intr", "msi";
> +
> +		#interrupt-cells = <1>;
> +		interrupt-map-mask = <0 0 0 0>;
> +		interrupt-map = <0 0 0 0 &gic 0 72 0x04>;
> +
> +		nvidia,bpmp = <&bpmp>;

Need to update the example here.

With that,

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
