Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3234271EDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7kBo0VmIajbeRAR/btGp7v9HFohMLLbdPqaowSCOXu4=; b=WQtxKeZguQYbjv
	AD1NauOy5FPCMGfZx5qhUb+5VzYJJpihGwxh/LpuUjyrgDx+mw5QmqrDZYroUz0ZIhEsFzFsaUPXS
	y7wfJxb67omwKFIsuc4uFBSEBMWgWd/BKqyE6AH2ppGggaSS+kZ9LI+2ogYWa1MdfS+v7mGWTgpA0
	wG/8sGxpE8BeX17eT77MmsvvHEPcrmba6GsRAowrGtT6GUWel3K5PR0KjZF4Iti7MNxeyf9C4WuC/
	LI2hvCyN8vFQbgQjq+8mDhL2UtO+aAKloCyCI8qj8fxCAAAKuZn0fFbBPCnl78m221EmrAja1ClJP
	WSOZ58clf22K0y+TlgSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzIM-0001mh-3n; Tue, 23 Jul 2019 18:13:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpzI5-0001m4-T5; Tue, 23 Jul 2019 18:13:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7953F337;
 Tue, 23 Jul 2019 11:13:32 -0700 (PDT)
Received: from why (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B22763F71A;
 Tue, 23 Jul 2019 11:13:29 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:13:26 +0100
From: Marc Zyngier <marc.zyngier@arm.com>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH RFC 18/18] ARM: dts: Add minimal Raspberry Pi 4 support
Message-ID: <20190723191326.3afdff83@why>
In-Reply-To: <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
References: <1563398164-2679-1-git-send-email-wahrenst@gmx.net>
 <1563398164-2679-5-git-send-email-wahrenst@gmx.net>
Organization: ARM Ltd
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_111334_031643_EC2C154F 
X-CRM114-Status: GOOD (  25.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Scott Branden <sbranden@broadcom.com>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Linus Walleij <linus.walleij@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Mark Brown <broonie@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 17 Jul 2019 23:16:04 +0200
Stefan Wahren <wahrenst@gmx.net> wrote:

> This adds minimal support for the new Raspberry Pi 4 without the
> fancy stuff like GENET, PCIe, XHCI, 40 bit DMA and V3D. The RPi 4 is available
> in 3 different variants (1, 2 and 4 GB RAM), so leave the memory size to zero
> and let the bootloader take care of it.
> 
> Other differences to the Raspberry Pi 3:
> - additional GIC 400 Interrupt controller
> - new thermal IP and HWRNG
> - additional MMC interface (emmc2)
> - additional UART, I2C, SPI and PWM interfaces
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  arch/arm/boot/dts/Makefile            |   1 +
>  arch/arm/boot/dts/bcm2838-rpi-4-b.dts | 120 +++++++
>  arch/arm/boot/dts/bcm2838.dtsi        | 657 ++++++++++++++++++++++++++++++++++
>  arch/arm/boot/dts/bcm283x.dtsi        |   2 +-
>  4 files changed, 779 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/bcm2838-rpi-4-b.dts
>  create mode 100644 arch/arm/boot/dts/bcm2838.dtsi
> 

[...]

> diff --git a/arch/arm/boot/dts/bcm2838.dtsi b/arch/arm/boot/dts/bcm2838.dtsi
> new file mode 100644
> index 0000000..e004d70
> --- /dev/null
> +++ b/arch/arm/boot/dts/bcm2838.dtsi
> @@ -0,0 +1,657 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "bcm283x.dtsi"
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/soc/bcm2835-pm.h>
> +
> +/ {
> +	compatible = "brcm,bcm2838";
> +
> +	#address-cells = <2>;
> +	#size-cells = <1>;
> +
> +	interrupt-parent = <&gicv2>;
> +
> +	soc {
> +		ranges = <0x7e000000  0x0 0xfe000000  0x01800000>,
> +			 <0x7c000000  0x0 0xfc000000  0x02000000>,
> +			 <0x40000000  0x0 0xff800000  0x00800000>;
> +		/* Emulate a contiguous 30-bit address range for DMA */
> +		dma-ranges = <0xc0000000  0x0 0x00000000  0x3c000000>;
> +
> +		local_intc: local_intc@40000000 {
> +			compatible = "brcm,bcm2836-l1-intc";
> +			reg = <0x40000000 0x100>;
> +		};
> +
> +		gicv2: gic400@40041000 {
> +			interrupt-controller;
> +			#interrupt-cells = <3>;
> +			compatible = "arm,gic-400";
> +			reg =	<0x40041000 0x1000>,
> +				<0x40042000 0x2000>,
> +				<0x40044000 0x2000>,
> +				<0x40046000 0x2000>;

Missing maintenance interrupt (usually on PPI9).

> +		};

[...]

> +	arm-pmu {
> +		/*
> +		 * N.B. the A72 PMU support only exists in arch/arm64, hence
> +		 * the fallback to the A53 version.
> +		 */
> +		compatible = "arm,cortex-a72-pmu", "arm,cortex-a53-pmu";

You're thus guaranteed to count the wrong events... And you could at
least have "arm,armv8-pmuv3".

> +		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 18 IRQ_TYPE_LEVEL_HIGH>,
> +			<GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;

You're missing the interrupt-affinity property.

> +	};
> +
> +	timer {
> +		compatible = "arm,armv7-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
> +					  IRQ_TYPE_LEVEL_LOW)>;
> +		arm,cpu-registers-not-fw-configured;

Really? :-(

> +		always-on;

I'm pretty sure that's not the case. This indicates that you can power
the CPU off, bring it back on, and yet have your timer alive and
kicking. The only case this actually exists is for VMs. I can see it
being cargo-culted from previous RPi revisions, but that doesn't make
it true.

Thanks,

	M.
-- 
Without deviation from the norm, progress is not possible.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
