Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42441F2CAA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:37:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZFbRqOTwidNWv/kp0AOEIJYEM8DXRcYKXXH+xpaRp0=; b=sXkU6Xg7+S9LYm
	uCGpXdPNRdX7Cqlu2pwLorrTwISY7uMmsMM/v/Dt7jtITbHcAYYCikD5zhOqS6HqcXhnZiLaYsWOD
	GQpLFc/OkDxo/ANLx499TEvRJ0kO8IVhrmV4xXyiPmeXAU6rwNQrvGbyfTHADw0UaCOfvU2gCXdfk
	82WAwBjjYMep7OzZkcro9Jz7Wbedyw9jeK82bR+HfJP9Rc/4ztB45+5RbW7O2q9T0ZSO3YHQUc9Wn
	KlJyaGbtRtiDBHl/zKFRWr8oksuqbMBvhnxYuIgr0f0Cb7VUskFF7dyIS4mXCm78YLuVwQG0cuT9i
	O0OASIj2U6lwcBETCHhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSfAN-0002PO-Pa; Thu, 07 Nov 2019 10:37:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSfA6-0002HB-2c; Thu, 07 Nov 2019 10:37:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB1091FB;
 Thu,  7 Nov 2019 02:37:08 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50D633F71A;
 Thu,  7 Nov 2019 02:37:08 -0800 (PST)
Date: Thu, 7 Nov 2019 10:37:06 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 2/4] ARM: dts: bcm2711: Enable PCIe controller
Message-ID: <20191107103705.GX9723@e119886-lin.cambridge.arm.com>
References: <20191106214527.18736-1-nsaenzjulienne@suse.de>
 <20191106214527.18736-3-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106214527.18736-3-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_023710_191841_A1725CBE 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 mbrugger@suse.com, linux-pci@vger.kernel.org, phil@raspberrypi.org,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 f.fainelli@gmail.com, linux-arm-kernel@lists.infradead.org,
 Stefan Wahren <wahrenst@gmx.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 10:45:24PM +0100, Nicolas Saenz Julienne wrote:
> This enables bcm2711's PCIe bus, wich is hardwired to a VIA Technologies

s/wich/which/

> XHCI USB 3.0 controller.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  arch/arm/boot/dts/bcm2711.dtsi | 47 ++++++++++++++++++++++++++++++++++
>  1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
> index a9d84e28f245..c7b2e7b57da6 100644
> --- a/arch/arm/boot/dts/bcm2711.dtsi
> +++ b/arch/arm/boot/dts/bcm2711.dtsi
> @@ -288,6 +288,53 @@
>  		arm,cpu-registers-not-fw-configured;
>  	};
>  
> +	scb {
> +		compatible = "simple-bus";
> +		#address-cells = <2>;
> +		#size-cells = <1>;
> +
> +		ranges = <0x0 0x7c000000  0x0 0xfc000000  0x03800000>,
> +			 <0x6 0x00000000  0x6 0x00000000  0x40000000>;
> +
> +		pcie_0: pcie@7d500000 {
> +			compatible = "brcm,bcm2711-pcie";
> +			reg = <0x0 0x7d500000 0x9310>;
> +			msi-controller;
> +			msi-parent = <&pcie_0>;
> +			#address-cells = <3>;
> +			#interrupt-cells = <1>;
> +			#size-cells = <2>;
> +			linux,pci-domain = <0>;

pci-domain is unlikely to be needed here.

> +			brcm,enable-ssc;
> +			interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pcie", "msi";
> +			interrupt-map-mask = <0x0 0x0 0x0 0x7>;
> +			interrupt-map = <0 0 0 1 &gicv2 GIC_SPI 143
> +							IRQ_TYPE_LEVEL_HIGH
> +					 0 0 0 2 &gicv2 GIC_SPI 144
> +							IRQ_TYPE_LEVEL_HIGH
> +					 0 0 0 3 &gicv2 GIC_SPI 145
> +							IRQ_TYPE_LEVEL_HIGH
> +					 0 0 0 4 &gicv2 GIC_SPI 146
> +							IRQ_TYPE_LEVEL_HIGH>;
> +
> +			ranges = <0x02000000 0x0 0xf8000000 0x6 0x00000000
> +				  0x0 0x04000000>;

Is legacy I/O supported by this controller?

> +			/*
> +			 * The wrapper around the PCIe block has a bug
> +			 * preventing it from accessing beyond the first 3GB of
> +			 * memory. As the bus DMA mask is rounded up to the
> +			 * closest power of two of the dma-range size, we're
> +			 * forced to set the limit at 2GB. This can be
> +			 * harmlessly changed in the future once the DMA code
> +			 * handles non power of two DMA limits.
> +			 */
> +			dma-ranges = <0x02000000 0x0 0x00000000 0x0 0x00000000
> +				      0x0 0x80000000>;
> +		};
> +	};

Thanks,

Andrew Murray

> +
>  	cpus: cpus {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
