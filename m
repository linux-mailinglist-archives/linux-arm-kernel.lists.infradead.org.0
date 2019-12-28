Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C6A12BE95
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 19:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YXYkqb9byROlPQS2YiUVSB090QE3yuLBZumDODyR+WA=; b=peFKfyd8SBuGsjgsDUUJES08q
	OMoFvzYEVeNhrKssQSktVJ7tyoWPv9HOyO1Dn10QhzhBALqNqNLNiIDi56EwASEC77/nb2qWPv9D5
	GPCkfI5Z/c6K8klXAldGkbfBVzGi+sWvoYnfpAubqF1ztnm7fePUj+eDNdkehAupQZwI55yQZE1Qx
	T5Vn60TdNft5k01drmBf8UqOsZHmlE2po0LfVXxsL3Xd4Ql2C/gWpPOGvoMUofec7tk8eg2oMgnfW
	heeq3tZfsDx/hXCiNjyK2GuarjQ2t1h5fWVfibvh2COJ4js7vSnKMYpGnOnn9rW/t5iQNpfjja1xh
	xdpFo9Vrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilHHO-0006Ym-WE; Sat, 28 Dec 2019 18:57:39 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilHHE-0006Y2-9G; Sat, 28 Dec 2019 18:57:30 +0000
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1ilHH5-0007NJ-2T; Sat, 28 Dec 2019 18:57:19 +0000
MIME-Version: 1.0
Date: Sat, 28 Dec 2019 18:57:18 +0000
From: Marc Zyngier <maz@kernel.org>
To: James Tai <james.tai@realtek.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: realtek: Add RTD1319 SoC and Realtek
 PymParticle EVB
In-Reply-To: <20191228150553.6210-3-james.tai@realtek.com>
References: <20191228150553.6210-1-james.tai@realtek.com>
 <20191228150553.6210-3-james.tai@realtek.com>
Message-ID: <6750faa33ee059ec22cf1981e7483186@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: james.tai@realtek.com, linux-realtek-soc@lists.infradead.org,
 mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_105728_325533_9E5AB169 
X-CRM114-Status: GOOD (  13.43  )
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.1 DOS_RCVD_IP_TWICE_B    Received from the same IP twice in a row
 (only one external relay)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-realtek-soc@lists.infradead.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-28 15:05, James Tai wrote:
> Add Device Trees for Realtek RTD1319 SoC family, RTD1319 SoC and
> Realtek PymParticle EVB.
> 
> Signed-off-by: James Tai <james.tai@realtek.com>
> ---
>  arch/arm64/boot/dts/realtek/Makefile          |   2 +
>  .../boot/dts/realtek/rtd1319-pymparticle.dts  |  43 ++++
>  arch/arm64/boot/dts/realtek/rtd1319.dtsi      |  12 +
>  arch/arm64/boot/dts/realtek/rtd13xx.dtsi      | 212 ++++++++++++++++++
>  4 files changed, 269 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
>  create mode 100644 arch/arm64/boot/dts/realtek/rtd1319.dtsi
>  create mode 100644 arch/arm64/boot/dts/realtek/rtd13xx.dtsi
> 
> diff --git a/arch/arm64/boot/dts/realtek/Makefile
> b/arch/arm64/boot/dts/realtek/Makefile
> index ef8d8fcbaa05..c0ae96f324eb 100644
> --- a/arch/arm64/boot/dts/realtek/Makefile
> +++ b/arch/arm64/boot/dts/realtek/Makefile
> @@ -9,6 +9,8 @@ dtb-$(CONFIG_ARCH_REALTEK) += rtd1295-zidoo-x9s.dtb
> 
>  dtb-$(CONFIG_ARCH_REALTEK) += rtd1296-ds418.dtb
> 
> +dtb-$(CONFIG_ARCH_REALTEK) += rtd1319-pymparticle.dtb
> +
>  dtb-$(CONFIG_ARCH_REALTEK) += rtd1395-bpi-m4.dtb
>  dtb-$(CONFIG_ARCH_REALTEK) += rtd1395-lionskin.dtb
> 
> diff --git a/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
> b/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
> new file mode 100644
> index 000000000000..2a36d220fef6
> --- /dev/null
> +++ b/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
> @@ -0,0 +1,43 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> +/*
> + * Copyright (c) 2019 Realtek Semiconductor Corp.
> + */
> +
> +/dts-v1/;
> +
> +#include "rtd1319.dtsi"
> +
> +/ {
> +	compatible = "realtek,pymparticle", "realtek,rtd1319";
> +	model = "Realtek PymParticle EVB";
> +
> +	memory@2e000 {
> +		device_type = "memory";
> +		reg = <0x2e000 0x3ffd2000>; /* boot ROM to 1 GiB or 2 GiB */
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:460800n8";
> +	};
> +
> +	aliases {
> +		serial0 = &uart0;
> +		serial1 = &uart1;
> +		serial2 = &uart2;
> +	};
> +};
> +
> +/* debug console (J1) */
> +&uart0 {
> +	status = "okay";
> +};
> +
> +/* M.2 slot (CON8) */
> +&uart1 {
> +	status = "disabled";
> +};
> +
> +/* GPIO connector (T1) */
> +&uart2 {
> +	status = "disabled";
> +};
> diff --git a/arch/arm64/boot/dts/realtek/rtd1319.dtsi
> b/arch/arm64/boot/dts/realtek/rtd1319.dtsi
> new file mode 100644
> index 000000000000..1dcee00009cd
> --- /dev/null
> +++ b/arch/arm64/boot/dts/realtek/rtd1319.dtsi
> @@ -0,0 +1,12 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> +/*
> + * Realtek RTD1319 SoC
> + *
> + * Copyright (c) 2019 Realtek Semiconductor Corp.
> + */
> +
> +#include "rtd13xx.dtsi"
> +
> +/ {
> +	compatible = "realtek,rtd1319";
> +};
> diff --git a/arch/arm64/boot/dts/realtek/rtd13xx.dtsi
> b/arch/arm64/boot/dts/realtek/rtd13xx.dtsi
> new file mode 100644
> index 000000000000..18d063feaa7e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/realtek/rtd13xx.dtsi
> @@ -0,0 +1,212 @@
> +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> +/*
> + * Realtek RTD13xx SoC family
> + *
> + * Copyright (c) 2019 Realtek Semiconductor Corp.
> + */
> +
> +/memreserve/	0x0000000000000000 0x000000000002e000; /* Boot ROM */
> +/memreserve/	0x000000000002e000 0x0000000000100000; /* Boot loader */
> +/memreserve/	0x000000000f400000 0x0000000000500000; /* Video FW */
> +/memreserve/	0x000000000f900000 0x0000000000500000; /* Audio FW */
> +/memreserve/	0x0000000010000000 0x0000000000014000; /* Audio FW RAM */
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +
> +/ {
> +	interrupt-parent = <&gic>;
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +
> +	reserved-memory {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges;
> +
> +		rpc_comm: rpc@3f000 {
> +			reg = <0x3f000 0x1000>;
> +		};
> +
> +		rpc_ringbuf: rpc@1ffe000 {
> +			reg = <0x1ffe000 0x4000>;
> +		};
> +
> +		tee: tee@10100000 {
> +			reg = <0x10100000 0xf00000>;
> +			no-map;
> +		};
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu0: cpu@0 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a55";
> +			reg = <0x0>;
> +			enable-method = "psci";
> +			next-level-cache = <&l2>;
> +		};
> +
> +		cpu1: cpu@100 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a55";
> +			reg = <0x100>;
> +			enable-method = "psci";
> +			next-level-cache = <&l2>;
> +		};
> +
> +		cpu2: cpu@200 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a55";
> +			reg = <0x200>;
> +			enable-method = "psci";
> +			next-level-cache = <&l2>;
> +		};
> +
> +		cpu3: cpu@300 {
> +			device_type = "cpu";
> +			compatible = "arm,cortex-a55";
> +			reg = <0x300>;
> +			enable-method = "psci";
> +			next-level-cache = <&l2>;
> +		};
> +
> +		l2: l2-cache {
> +			compatible = "cache";
> +		};
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;

Nit: At some point, it'd be good to be able to describe the EL2
virtual timer interrupt too. Not specially important, but since
these ARMv8.2 CPUs have it...

[...]

> +		gic: interrupt-controller@ff100000 {
> +			compatible = "arm,gic-v3";
> +			reg = <0xff100000 0x10000>,
> +			      <0xff140000 0xc0000>;

Are you sure about the size of the GICR region? For 4 CPUs,
it should be 0x80000. Here, you have a range for 6 CPUs.

Has the GIC been sized for 6 CPUs? Are you missing 2 CPUs in
the DT?

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
