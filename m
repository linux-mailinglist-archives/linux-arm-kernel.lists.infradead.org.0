Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 155F2218D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 15:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ga8ja2zBcs9p5bDNzSnHLiat1RGspigkAJ6NLRnE7Ck=; b=vB048G9neSxGzR
	BiaYLc2enGEYecKi+syRT3sX6/r3zJ96JR2OUs6zHFKc7lJiqJPipItinD0e7FRUQauo7jl1y05jB
	B2S/FjSoXMIFYobsZbvyGODB3RacA3kCwUMRqRoPN+wVmyaSfeDrVg8HeGIr5kBNv6LAeMXAKgGcN
	8RHZjoODQ6BL+Y8io2q4QNExMa/KJOgdioZZA4iUMeVrSIhgASMRd6qePCUQRVWH7MHgEywPhh/+q
	RGZDIQAwwtc+Q6uPclAqpelZN2bdamphfzanadphAiIkkyWNVwneCVSK337BDtV6lduTbm0BCQiLA
	DfxFtUlV2+gILDhy9g9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRcX9-0004tA-5J; Fri, 17 May 2019 13:04:23 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRcX0-0004sk-Ge
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 13:04:16 +0000
Received: by mail-it1-x141.google.com with SMTP id q65so11804245itg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 06:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nSmvLlMPjp8GPTgjfRT4+1wOq8buva8Copm17t3k/Ok=;
 b=LlNBb44N18lDVZSooyHcV5gREORU6RUe32tRfENzSkkeAu+UreayGMEEiuDJzmBDAx
 ZeFth7+7wJROZJ2v7MGjtsxozYxggqHxQFnzK7EyDVY4JGlR6o0eMrDfdcnWm51cGIK/
 YlEFA5KBqgT1qRZTRRb7T8zUp3Mq2o6+TlvdWHowBqfuzmOxXj1u4mGlDIJ3LxKLTB3Q
 ENZBMGfzIHUit/PguKyJrCdUuWrRyncitw9i5tJwksATAg7JUubvG2u+kD+lzzEJAyxo
 BNemv6Q+gR6sYtts+ta8ew98vM4eElKRGz6YrEs4gq644rMSsJ5p/a3tLtgqc4vWCRUu
 ZUYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nSmvLlMPjp8GPTgjfRT4+1wOq8buva8Copm17t3k/Ok=;
 b=UVDyv0G/mcGDBIRNeWvje9CcYDQqkFjCPJq9WsQ4h/nYXStQs/ykXDTlmteiBFuvlM
 EkoM1WD8MsO0UDjrsDC0PwJByw6/rxwuQN0vNi4uArYpeBeC0jx0dobFw0FGQLIPd71H
 tByd7PAQqb+C3wAAMUJZcK+g3/r3hLHvp7UHvrUw5O8pFG1M/XT1E4LsEUsEIXyHNYrN
 Ux5EoFtZFhCXv50eAXhs1M0suDpQCEVnm2TLL7FROlX/raIy5VUYYfOHWdw61jjLtxv2
 RaQvqOqWGxitmNj6KU4hjsEvpH+6kyKmsDw2Tk0b8Am/sEeDeNwPYMgt44VH6nOjxmOJ
 11jQ==
X-Gm-Message-State: APjAAAXp82BBU1lj/2tMQYei/A1wlRHFqzKwTQXm7kEWPxCpD+CkumDX
 cSfJ4fgFpt8zGoQwaS22lE2cf1XL3Ef7jdxMi+yLQA==
X-Google-Smtp-Source: APXvYqwhTBJEbrGzKxOEf+otZ4nVcu56+VeRMQxJvYr2ChwOc+/VffrXSJ71JRRwOxvzKCpzs5aUHzVmEE1PwoegE58=
X-Received: by 2002:a24:9fc5:: with SMTP id c188mr2342397ite.104.1558098253295; 
 Fri, 17 May 2019 06:04:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-12-vidyas@nvidia.com>
In-Reply-To: <20190517123846.3708-12-vidyas@nvidia.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Fri, 17 May 2019 15:03:58 +0200
Message-ID: <CAKv+Gu909VM9o9AP4CfO_w6V9u=dgjONrjKhtWDCxZUE-zNwAA@mail.gmail.com>
Subject: Re: [PATCH V7 11/15] arm64: tegra: Add P2U and PCIe controller nodes
 to Tegra194 DT
To: Vidya Sagar <vidyas@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_060414_622767_D030B685 
X-CRM114-Status: GOOD (  17.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, mperttunen@nvidia.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Jon Hunter <jonathanh@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-pci <linux-pci@vger.kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, gustavo.pimentel@synopsys.com,
 Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Kishon <kishon@ti.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 17 May 2019 at 14:41, Vidya Sagar <vidyas@nvidia.com> wrote:
>
> Add P2U (PIPE to UPHY) and PCIe controller nodes to device tree.
> The Tegra194 SoC contains six PCIe controllers and twenty P2U instances
> grouped into two different PHY bricks namely High-Speed IO (HSIO-12 P2Us)
> and NVIDIA High Speed (NVHS-8 P2Us) respectively.
>
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v6]:
> * Removed properties "nvidia,disable-aspm-states" & "nvidia,controller-id".
> * Modified property "nvidia,bpmp" to include controller-id as well.
>
> Changes since [v5]:
> * Changes 'p2u@xxxxxxxx' to 'phy@xxxxxxxx'
> * Arranged all PCIe nodes in the order of their addresses
>
> Changes since [v4]:
> * None
>
> Changes since [v3]:
> * None
>
> Changes since [v2]:
> * Included 'hsio' or 'nvhs' in P2U node's label names to reflect which brick
>   they belong to
> * Removed leading zeros in unit address
>
> Changes since [v1]:
> * Flattened all P2U nodes by removing 'hsio-p2u' and 'nvhs-p2u' super nodes
> * Changed P2U nodes compatible string from 'nvidia,tegra194-phy-p2u' to 'nvidia,tegra194-p2u'
> * Changed reg-name from 'base' to 'ctl'
> * Updated all PCIe nodes according to the changes made to DT documentation file
>
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi | 437 +++++++++++++++++++++++
>  1 file changed, 437 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> index c77ca211fa8f..838202150823 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> @@ -884,6 +884,166 @@
>                                 nvidia,interface = <3>;
>                         };
>                 };
> +
> +               p2u_hsio_0: phy@3e10000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03e10000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_1: phy@3e20000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03e20000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_2: phy@3e30000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03e30000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_3: phy@3e40000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03e40000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_4: phy@3e50000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03e50000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_5: phy@3e60000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03e60000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_6: phy@3e70000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03e70000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_7: phy@3e80000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03e80000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_8: phy@3e90000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03e90000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_9: phy@3ea0000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03ea0000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_nvhs_0: phy@3eb0000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03eb0000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_nvhs_1: phy@3ec0000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03ec0000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_nvhs_2: phy@3ed0000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03ed0000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_nvhs_3: phy@3ee0000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03ee0000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_nvhs_4: phy@3ef0000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03ef0000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_nvhs_5: phy@3f00000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03f00000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_nvhs_6: phy@3f10000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03f10000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_nvhs_7: phy@3f20000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03f20000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_10: phy@3f30000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03f30000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
> +
> +               p2u_hsio_11: phy@3f40000 {
> +                       compatible = "nvidia,tegra194-p2u";
> +                       reg = <0x03f40000 0x10000>;
> +                       reg-names = "ctl";
> +
> +                       #phy-cells = <0>;
> +               };
>         };
>
>         sysram@40000000 {
> @@ -1054,4 +1214,281 @@
>                                 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
>                 interrupt-parent = <&gic>;
>         };
> +
> +       pcie@14100000 {
> +               compatible = "nvidia,tegra194-pcie", "snps,dw-pcie";
> +               power-domains = <&bpmp TEGRA194_POWER_DOMAIN_PCIEX1A>;
> +               reg = <0x00 0x14100000 0x0 0x00020000   /* appl registers (128K)      */
> +                      0x00 0x30000000 0x0 0x00040000   /* configuration space (256K) */
> +                      0x00 0x30040000 0x0 0x00040000   /* iATU_DMA reg space (256K)  */
> +                      0x00 0x30080000 0x0 0x00040000>; /* DBI reg space (256K)       */
> +               reg-names = "appl", "config", "atu_dma", "dbi";
> +
> +               status = "disabled";
> +
> +               #address-cells = <3>;
> +               #size-cells = <2>;
> +               device_type = "pci";
> +               num-lanes = <1>;
> +               num-viewport = <8>;
> +               linux,pci-domain = <1>;
> +
> +               clocks = <&bpmp TEGRA194_CLK_PEX0_CORE_1>;
> +               clock-names = "core";
> +
> +               resets = <&bpmp TEGRA194_RESET_PEX0_CORE_1_APB>,
> +                        <&bpmp TEGRA194_RESET_PEX0_CORE_1>;
> +               reset-names = "core_apb", "core";
> +
> +               interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,  /* controller interrupt */
> +                            <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>;  /* MSI interrupt */
> +               interrupt-names = "intr", "msi";
> +
> +               #interrupt-cells = <1>;
> +               interrupt-map-mask = <0 0 0 0>;
> +               interrupt-map = <0 0 0 0 &gic 0 45 0x04>;

Please use the GIC_SPI and IRQ_TYPE_LEVEL_HIGH macros here as well.

> +
> +               nvidia,bpmp = <&bpmp 1>;
> +
> +               supports-clkreq;
> +               nvidia,aspm-cmrt-us = <60>;
> +               nvidia,aspm-pwr-on-t-us = <20>;
> +               nvidia,aspm-l0s-entrance-latency-us = <3>;
> +
> +               bus-range = <0x0 0xff>;
> +               ranges = <0x81000000 0x0 0x30100000 0x0 0x30100000 0x0 0x00100000    /* downstream I/O (1MB) */
> +                         0xc2000000 0x12 0x00000000 0x12 0x00000000 0x0 0x30000000  /* prefetchable memory (768MB) */
> +                         0x82000000 0x0 0x40000000 0x12 0x30000000 0x0 0x10000000>; /* non-prefetchable memory (256MB) */
> +       };
> +
> +       pcie@14120000 {
> +               compatible = "nvidia,tegra194-pcie", "snps,dw-pcie";
> +               power-domains = <&bpmp TEGRA194_POWER_DOMAIN_PCIEX1A>;
> +               reg = <0x00 0x14120000 0x0 0x00020000   /* appl registers (128K)      */
> +                      0x00 0x32000000 0x0 0x00040000   /* configuration space (256K) */
> +                      0x00 0x32040000 0x0 0x00040000   /* iATU_DMA reg space (256K)  */
> +                      0x00 0x32080000 0x0 0x00040000>; /* DBI reg space (256K)       */
> +               reg-names = "appl", "config", "atu_dma", "dbi";
> +
> +               status = "disabled";
> +
> +               #address-cells = <3>;
> +               #size-cells = <2>;
> +               device_type = "pci";
> +               num-lanes = <1>;
> +               num-viewport = <8>;
> +               linux,pci-domain = <2>;
> +
> +               clocks = <&bpmp TEGRA194_CLK_PEX0_CORE_2>;
> +               clock-names = "core";
> +
> +               resets = <&bpmp TEGRA194_RESET_PEX0_CORE_2_APB>,
> +                        <&bpmp TEGRA194_RESET_PEX0_CORE_2>;
> +               reset-names = "core_apb", "core";
> +
> +               interrupts = <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>,  /* controller interrupt */
> +                            <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;  /* MSI interrupt */
> +               interrupt-names = "intr", "msi";
> +
> +               #interrupt-cells = <1>;
> +               interrupt-map-mask = <0 0 0 0>;
> +               interrupt-map = <0 0 0 0 &gic 0 47 0x04>;
> +
> +               nvidia,bpmp = <&bpmp 2>;
> +
> +               supports-clkreq;
> +               nvidia,aspm-cmrt-us = <60>;
> +               nvidia,aspm-pwr-on-t-us = <20>;
> +               nvidia,aspm-l0s-entrance-latency-us = <3>;
> +
> +               bus-range = <0x0 0xff>;
> +               ranges = <0x81000000 0x0 0x32100000 0x0 0x32100000 0x0 0x00100000    /* downstream I/O (1MB) */
> +                         0xc2000000 0x12 0x40000000 0x12 0x40000000 0x0 0x30000000  /* prefetchable memory (768MB) */
> +                         0x82000000 0x0 0x40000000 0x12 0x70000000 0x0 0x10000000>; /* non-prefetchable memory (256MB) */
> +       };
> +
> +       pcie@14140000 {
> +               compatible = "nvidia,tegra194-pcie", "snps,dw-pcie";
> +               power-domains = <&bpmp TEGRA194_POWER_DOMAIN_PCIEX1A>;
> +               reg = <0x00 0x14140000 0x0 0x00020000   /* appl registers (128K)      */
> +                      0x00 0x34000000 0x0 0x00040000   /* configuration space (256K) */
> +                      0x00 0x34040000 0x0 0x00040000   /* iATU_DMA reg space (256K)  */
> +                      0x00 0x34080000 0x0 0x00040000>; /* DBI reg space (256K)       */
> +               reg-names = "appl", "config", "atu_dma", "dbi";
> +
> +               status = "disabled";
> +
> +               #address-cells = <3>;
> +               #size-cells = <2>;
> +               device_type = "pci";
> +               num-lanes = <1>;
> +               num-viewport = <8>;
> +               linux,pci-domain = <3>;
> +
> +               clocks = <&bpmp TEGRA194_CLK_PEX0_CORE_3>;
> +               clock-names = "core";
> +
> +               resets = <&bpmp TEGRA194_RESET_PEX0_CORE_3_APB>,
> +                        <&bpmp TEGRA194_RESET_PEX0_CORE_3>;
> +               reset-names = "core_apb", "core";
> +
> +               interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,  /* controller interrupt */
> +                            <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;  /* MSI interrupt */
> +               interrupt-names = "intr", "msi";
> +
> +               #interrupt-cells = <1>;
> +               interrupt-map-mask = <0 0 0 0>;
> +               interrupt-map = <0 0 0 0 &gic 0 49 0x04>;
> +
> +               nvidia,bpmp = <&bpmp 3>;
> +
> +               supports-clkreq;
> +               nvidia,aspm-cmrt-us = <60>;
> +               nvidia,aspm-pwr-on-t-us = <20>;
> +               nvidia,aspm-l0s-entrance-latency-us = <3>;
> +
> +               bus-range = <0x0 0xff>;
> +               ranges = <0x81000000 0x0 0x34100000 0x0 0x34100000 0x0 0x00100000    /* downstream I/O (1MB) */
> +                         0xc2000000 0x12 0x80000000 0x12 0x80000000 0x0 0x30000000  /* prefetchable memory (768MB) */
> +                         0x82000000 0x0 0x40000000 0x12 0xb0000000 0x0 0x10000000>; /* non-prefetchable memory (256MB) */
> +       };
> +
> +       pcie@14160000 {
> +               compatible = "nvidia,tegra194-pcie", "snps,dw-pcie";
> +               power-domains = <&bpmp TEGRA194_POWER_DOMAIN_PCIEX4A>;
> +               reg = <0x00 0x14160000 0x0 0x00020000   /* appl registers (128K)      */
> +                      0x00 0x36000000 0x0 0x00040000   /* configuration space (256K) */
> +                      0x00 0x36040000 0x0 0x00040000   /* iATU_DMA reg space (256K)  */
> +                      0x00 0x36080000 0x0 0x00040000>; /* DBI reg space (256K)       */
> +               reg-names = "appl", "config", "atu_dma", "dbi";
> +
> +               status = "disabled";
> +
> +               #address-cells = <3>;
> +               #size-cells = <2>;
> +               device_type = "pci";
> +               num-lanes = <4>;
> +               num-viewport = <8>;
> +               linux,pci-domain = <4>;
> +
> +               clocks = <&bpmp TEGRA194_CLK_PEX0_CORE_4>;
> +               clock-names = "core";
> +
> +               resets = <&bpmp TEGRA194_RESET_PEX0_CORE_4_APB>,
> +                        <&bpmp TEGRA194_RESET_PEX0_CORE_4>;
> +               reset-names = "core_apb", "core";
> +
> +               interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>,  /* controller interrupt */
> +                            <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;  /* MSI interrupt */
> +               interrupt-names = "intr", "msi";
> +
> +               #interrupt-cells = <1>;
> +               interrupt-map-mask = <0 0 0 0>;
> +               interrupt-map = <0 0 0 0 &gic 0 51 0x04>;
> +
> +               nvidia,bpmp = <&bpmp 4>;
> +
> +               supports-clkreq;
> +               nvidia,aspm-cmrt-us = <60>;
> +               nvidia,aspm-pwr-on-t-us = <20>;
> +               nvidia,aspm-l0s-entrance-latency-us = <3>;
> +
> +               bus-range = <0x0 0xff>;
> +               ranges = <0x81000000 0x0 0x36100000 0x0 0x36100000 0x0 0x00100000    /* downstream I/O (1MB) */
> +                         0xc2000000 0x14 0x00000000 0x14 0x00000000 0x3 0x40000000  /* prefetchable memory (13GB) */
> +                         0x82000000 0x0 0x40000000 0x17 0x40000000 0x0 0xc0000000>; /* non-prefetchable memory (3GB) */
> +       };
> +
> +       pcie@14180000 {
> +               compatible = "nvidia,tegra194-pcie", "snps,dw-pcie";
> +               power-domains = <&bpmp TEGRA194_POWER_DOMAIN_PCIEX8B>;
> +               reg = <0x00 0x14180000 0x0 0x00020000   /* appl registers (128K)      */
> +                      0x00 0x38000000 0x0 0x00040000   /* configuration space (256K) */
> +                      0x00 0x38040000 0x0 0x00040000   /* iATU_DMA reg space (256K)  */
> +                      0x00 0x38080000 0x0 0x00040000>; /* DBI reg space (256K)       */
> +               reg-names = "appl", "config", "atu_dma", "dbi";
> +
> +               status = "disabled";
> +
> +               #address-cells = <3>;
> +               #size-cells = <2>;
> +               device_type = "pci";
> +               num-lanes = <8>;
> +               num-viewport = <8>;
> +               linux,pci-domain = <0>;
> +
> +               clocks = <&bpmp TEGRA194_CLK_PEX0_CORE_0>;
> +               clock-names = "core";
> +
> +               resets = <&bpmp TEGRA194_RESET_PEX0_CORE_0_APB>,
> +                        <&bpmp TEGRA194_RESET_PEX0_CORE_0>;
> +               reset-names = "core_apb", "core";
> +
> +               interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,  /* controller interrupt */
> +                            <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;  /* MSI interrupt */
> +               interrupt-names = "intr", "msi";
> +
> +               #interrupt-cells = <1>;
> +               interrupt-map-mask = <0 0 0 0>;
> +               interrupt-map = <0 0 0 0 &gic 0 72 0x04>;
> +
> +               nvidia,bpmp = <&bpmp 0>;
> +
> +               supports-clkreq;
> +               nvidia,aspm-cmrt-us = <60>;
> +               nvidia,aspm-pwr-on-t-us = <20>;
> +               nvidia,aspm-l0s-entrance-latency-us = <3>;
> +
> +               bus-range = <0x0 0xff>;
> +               ranges = <0x81000000 0x0 0x38100000 0x0 0x38100000 0x0 0x00100000    /* downstream I/O (1MB) */
> +                         0xc2000000 0x18 0x00000000 0x18 0x00000000 0x3 0x40000000  /* prefetchable memory (13GB) */
> +                         0x82000000 0x0 0x40000000 0x1b 0x40000000 0x0 0xc0000000>; /* non-prefetchable memory (3GB) */
> +       };
> +
> +       pcie@141a0000 {
> +               compatible = "nvidia,tegra194-pcie", "snps,dw-pcie";
> +               power-domains = <&bpmp TEGRA194_POWER_DOMAIN_PCIEX8A>;
> +               reg = <0x00 0x141a0000 0x0 0x00020000   /* appl registers (128K)      */
> +                      0x00 0x3a000000 0x0 0x00040000   /* configuration space (256K) */
> +                      0x00 0x3a040000 0x0 0x00040000   /* iATU_DMA reg space (256K)  */
> +                      0x00 0x3a080000 0x0 0x00040000>; /* DBI reg space (256K)       */
> +               reg-names = "appl", "config", "atu_dma", "dbi";
> +
> +               status = "disabled";
> +
> +               #address-cells = <3>;
> +               #size-cells = <2>;
> +               device_type = "pci";
> +               num-lanes = <8>;
> +               num-viewport = <8>;
> +               linux,pci-domain = <5>;
> +
> +               clocks = <&bpmp TEGRA194_CLK_PEX1_CORE_5>,
> +                       <&bpmp TEGRA194_CLK_PEX1_CORE_5M>;
> +               clock-names = "core", "core_m";
> +
> +               resets = <&bpmp TEGRA194_RESET_PEX1_CORE_5_APB>,
> +                        <&bpmp TEGRA194_RESET_PEX1_CORE_5>;
> +               reset-names = "core_apb", "core";
> +
> +               interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>,  /* controller interrupt */
> +                            <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;  /* MSI interrupt */
> +               interrupt-names = "intr", "msi";
> +
> +               nvidia,bpmp = <&bpmp 5>;
> +
> +               #interrupt-cells = <1>;
> +               interrupt-map-mask = <0 0 0 0>;
> +               interrupt-map = <0 0 0 0 &gic 0 53 0x04>;
> +
> +               supports-clkreq;
> +               nvidia,aspm-cmrt-us = <60>;
> +               nvidia,aspm-pwr-on-t-us = <20>;
> +               nvidia,aspm-l0s-entrance-latency-us = <3>;
> +
> +               bus-range = <0x0 0xff>;
> +               ranges = <0x81000000 0x0 0x3a100000 0x0 0x3a100000 0x0 0x00100000    /* downstream I/O (1MB) */
> +                         0xc2000000 0x1c 0x00000000 0x1c 0x00000000 0x3 0x40000000  /* prefetchable memory (13GB) */
> +                         0x82000000 0x0 0x40000000 0x1f 0x40000000 0x0 0xc0000000>; /* non-prefetchable memory (3GB) */
> +       };
>  };
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
