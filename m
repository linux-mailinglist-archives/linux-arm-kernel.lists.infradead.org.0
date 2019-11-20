Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3690103B65
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:29:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c2KRrjRc3m97EeNR6ONB+h6k/KyEURfj+oM300TS6vs=; b=ldBAxd/O9dB0F0
	qsWg7Odz2VXSsjQds21dElo45OmDUn14xrdwNrT/eM+sMP1CL9quGiOtD3w3c0Cd6jHCGU5o0xqOs
	EoA7HDrljMl1ojSoG4iAiCuuTzd+QIsuq/VeH2oJXHXNjxH8R/KjkH1fa2Rl8ajswBVcBUN88lkHG
	dHCIwnpamlIITa5y+Jkz/YOwOzOcMhRFJhGgVfnWn1AP7WQB7tFKjH6KkhN7xShEXDVJXq35ecXFy
	woczVmvNNRd8wN1WouWx3MKMK75DGA0xGNSdY8owp4GXmPON+/yAnjMqI3MC67aVLUKjzR4Bg2NDK
	oXRDCKPq5SKxmLgGxR3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQ2c-0005Rb-Ns; Wed, 20 Nov 2019 13:29:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQ2U-0005Oq-90; Wed, 20 Nov 2019 13:28:59 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iXQ2M-0003QS-LP; Wed, 20 Nov 2019 14:28:50 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial
 support
Date: Wed, 20 Nov 2019 14:28:50 +0100
Message-ID: <1707486.7nrk6WTBgP@diego>
In-Reply-To: <20191120113923.11685-3-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
 <20191120113923.11685-3-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_052858_466436_806B78AD 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tom Cubie <tom@radxa.com>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jagan,

looks good in general, just some small things below:

Am Mittwoch, 20. November 2019, 12:39:20 CET schrieb Jagan Teki:
> VMARC RK3399Pro SOM is a standard SMARC SOM design with
> Rockchip RK3399Pro SoC, which is designed by Vamrs.
> 
> Specification:
> - Rockchip RK3399Pro
> - PMIC: RK809-3
> - SD slot, 16GiB eMMC
> - 2xUSB-2.0, 1xUSB3.0
> - USB-C for power supply
> - Ethernet, PCIe
> - HDMI, MIPI-DSI/CSI, eDP
> 
> Add initial support for VMARC RK3399Pro SOM, this would use
> with associated carrier board.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 339 ++++++++++++++++++
>  1 file changed, 339 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> new file mode 100644
> index 000000000000..ddf6ebc9fbe3
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> @@ -0,0 +1,339 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
> + * Copyright (c) 2019 Vamrs Limited
> + * Copyright (c) 2019 Amarula Solutions(India)
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/pwm/pwm.h>
> +
> +/ {
> +	compatible = "vamrs,rk3399pro-vmarc-som", "rockchip,rk3399pro";
> +
> +	clkin_gmac: external-gmac-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <125000000>;
> +		clock-output-names = "clkin_gmac";
> +		#clock-cells = <0>;
> +	};
> +
> +	vcc5v0_sys: vcc5v0-sys-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_sys";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;

Is vcc5v0_sys really the topmost regulator getting the outside
power-supply?


> +	};
> +
> +	vcc_lan: vcc3v3-phy-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_lan";

vcc_lan / vcc_phy is mostly coming from the vendor bsp in some way
and will be named differently in schematics ... also it should be connected
to the regulator tree.

[...]

> +&tsadc {
> +	status = "okay";
> +
> +	/* tshut mode 0:CRU 1:GPIO */

I think we can live without the additional comments for properties :-)

> +	rockchip,hw-tshut-mode = <1>;
> +	/* tshut polarity 0:LOW 1:HIGH */
> +	rockchip,hw-tshut-polarity = <1>;
> +};

Heiko




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
