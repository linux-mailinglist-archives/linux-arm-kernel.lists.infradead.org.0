Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3400D169BC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 02:28:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/+NAiLcN6axW8i2PM3e027mmxzpDNRM9CuqReqAP5bQ=; b=EEI7HB/yHoLFy/
	i4312xW/xJusFw2rUU8WPfO4ReFEhjYZ12IhdANrJ6FgaFvwjO0MFur0iPL+REr188YUgBke+GoYf
	hLxgb58rzzU57hVPGFeMH4782QpMVr0iM0PyJtVDE4aU+ebyVC+BF/IwxClhWcC0C3FZpZmR+yKGv
	KmQ6cbEC/fgxeIfFqqo3ffcCNh6IiNxmZW1Fu8a1rIBwbqAO6uiaxDixFnLkQX2K9R9FUs2xJra8J
	1lGNfguWR4T0km/EH3ZohWgElvTVQAq68qw21Rpp98UfDsK5fZDMkOsvOzGxwY8SXqoFSQG4FhL9W
	i/8Jpwsko7aoavPV4EDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j62Xs-0008KK-Ub; Mon, 24 Feb 2020 01:28:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j62Xh-0008K0-KY
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 01:28:19 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D8582067D;
 Mon, 24 Feb 2020 01:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582507697;
 bh=wuZf8v7s/ZfDka2P3YUYpDnWNCA0VPIdBjzd5E5TqzQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xinodtHybZ2zERMZboQ/lO0ba3tYO8hysLnZ+8z8p/HwgmJNwzOEtqGv0qefOr4nb
 e4PPc9NJ2J6knJJMxeZRa2va7rNicVIqLqghHXzDVFZxhc36nu4tZa5LuNkbVSRkDe
 KKy5Enhd/KSrF2UMpc/9V+590EtR5a/cz5g+V4FM=
Date: Mon, 24 Feb 2020 09:28:10 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 12/13] arm64: dts: lx2160a: Add PCIe controller DT nodes
Message-ID: <20200224012809.GB14331@dragon>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-13-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-13-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_172817_720314_96261182 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 m.karthikeyan@mobiveil.co.in, arnd@arndb.de, linux-pci@vger.kernel.org,
 l.subrahmanya@mobiveil.co.in, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, Minghuan.Lian@nxp.com,
 robh+dt@kernel.org, Mingkai.Hu@nxp.com, Xiaowei.Bao@nxp.com,
 catalin.marinas@arm.com, bhelgaas@google.com, andrew.murray@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 12:06:43PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> The LX2160A integrated 6 PCIe Gen4 controllers.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> ---
> V10:
>  - No change
> 
>  .../arm64/boot/dts/freescale/fsl-lx2160a.dtsi | 163 ++++++++++++++++++
>  1 file changed, 163 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> index e5ee5591e52b..aee2810d91cc 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -1076,5 +1076,168 @@
>  				};
>  			};
>  		};
> +
> +		pcie@3400000 {

The nodes should be sorted in unit-address.  That said, they should be
added after ata3: sata@3230000.

> +			compatible = "fsl,lx2160a-pcie";
> +			reg = <0x00 0x03400000 0x0 0x00100000   /* controller registers */
> +			       0x80 0x00000000 0x0 0x00001000>; /* configuration space */
> +			reg-names = "csr_axi_slave", "config_axi_slave";
> +			interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +				     <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +			interrupt-names = "aer", "pme", "intr";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			dma-coherent;
> +			apio-wins = <8>;
> +			ppio-wins = <8>;
> +			bus-range = <0x0 0xff>;
> +			ranges = <0x82000000 0x0 0x40000000 0x80 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +			msi-parent = <&its>;
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 7>;
> +			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 2 &gic 0 0 GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 3 &gic 0 0 GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 4 &gic 0 0 GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		pcie@3500000 {
> +			compatible = "fsl,lx2160a-pcie";
> +			reg = <0x00 0x03500000 0x0 0x00100000   /* controller registers */
> +			       0x88 0x00000000 0x0 0x00001000>; /* configuration space */
> +			reg-names = "csr_axi_slave", "config_axi_slave";
> +			interrupts = <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +			interrupt-names = "aer", "pme", "intr";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			dma-coherent;
> +			apio-wins = <8>;
> +			ppio-wins = <8>;
> +			bus-range = <0x0 0xff>;
> +			ranges = <0x82000000 0x0 0x40000000 0x88 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +			msi-parent = <&its>;
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 7>;
> +			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 2 &gic 0 0 GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 3 &gic 0 0 GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 4 &gic 0 0 GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		pcie@3600000 {
> +			compatible = "fsl,lx2160a-pcie";
> +			reg = <0x00 0x03600000 0x0 0x00100000   /* controller registers */
> +			       0x90 0x00000000 0x0 0x00001000>; /* configuration space */
> +			reg-names = "csr_axi_slave", "config_axi_slave";
> +			interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +			interrupt-names = "aer", "pme", "intr";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			dma-coherent;
> +			apio-wins = <256>;
> +			ppio-wins = <24>;
> +			bus-range = <0x0 0xff>;
> +			ranges = <0x82000000 0x0 0x40000000 0x90 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +			msi-parent = <&its>;
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 7>;
> +			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 2 &gic 0 0 GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 3 &gic 0 0 GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 4 &gic 0 0 GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		pcie@3700000 {
> +			compatible = "fsl,lx2160a-pcie";
> +			reg = <0x00 0x03700000 0x0 0x00100000   /* controller registers */
> +			       0x98 0x00000000 0x0 0x00001000>; /* configuration space */
> +			reg-names = "csr_axi_slave", "config_axi_slave";
> +			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +			interrupt-names = "aer", "pme", "intr";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			dma-coherent;
> +			apio-wins = <8>;
> +			ppio-wins = <8>;
> +			bus-range = <0x0 0xff>;
> +			ranges = <0x82000000 0x0 0x40000000 0x98 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +			msi-parent = <&its>;
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 7>;
> +			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 124 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 2 &gic 0 0 GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 3 &gic 0 0 GIC_SPI 126 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 4 &gic 0 0 GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		pcie@3800000 {
> +			compatible = "fsl,lx2160a-pcie";
> +			reg = <0x00 0x03800000 0x0 0x00100000   /* controller registers */
> +			       0xa0 0x00000000 0x0 0x00001000>; /* configuration space */
> +			reg-names = "csr_axi_slave", "config_axi_slave";
> +			interrupts = <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +				     <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +				     <GIC_SPI 128 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +			interrupt-names = "aer", "pme", "intr";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			dma-coherent;
> +			apio-wins = <256>;
> +			ppio-wins = <24>;
> +			bus-range = <0x0 0xff>;
> +			ranges = <0x82000000 0x0 0x40000000 0xa0 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +			msi-parent = <&its>;
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 7>;
> +			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 129 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 2 &gic 0 0 GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 3 &gic 0 0 GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 4 &gic 0 0 GIC_SPI 132 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +
> +		pcie@3900000 {
> +			compatible = "fsl,lx2160a-pcie";
> +			reg = <0x00 0x03900000 0x0 0x00100000   /* controller registers */
> +			       0xa8 0x00000000 0x0 0x00001000>; /* configuration space */
> +			reg-names = "csr_axi_slave", "config_axi_slave";
> +			interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>, /* AER interrupt */
> +				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>, /* PME interrupt */
> +				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>; /* controller interrupt */
> +			interrupt-names = "aer", "pme", "intr";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			device_type = "pci";
> +			dma-coherent;
> +			apio-wins = <8>;
> +			ppio-wins = <8>;
> +			bus-range = <0x0 0xff>;
> +			ranges = <0x82000000 0x0 0x40000000 0xa8 0x40000000 0x0 0x40000000>; /* non-prefetchable memory */
> +			msi-parent = <&its>;
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 7>;
> +			interrupt-map = <0000 0 0 1 &gic 0 0 GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 2 &gic 0 0 GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 3 &gic 0 0 GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>,
> +					<0000 0 0 4 &gic 0 0 GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
> +			status = "disabled";
> +		};
> +

Unnecessary newline.

I fixed them up and applied the patch.

Shawn

>  	};
>  };
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
