Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ECC75A99
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 00:19:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEa2lih042QH7gDy2GT+qaAlmzIwWgIl1EkGTMcVhO0=; b=PYGjNHWhM9IPmA
	iWM/NVBDVmiWIfBrRIi+c9Q3nssXskxgdfoHtmLU+EYUbZ1OnvfhAE4QGDT0ivY3WNTkZOSUDS5zu
	/vFjHYoXXAXIysoBtgS1ITJ1HkFTehcK6iEYEY5rrcbuYdeBMAOhQ6Rbs6U/NqAH9NPKT26ock3XO
	AB9yzNH+RiDhD2xERZIXkIkicDFB/brkHIPWvfflB62k4C0jpvxSF+2WDNPf1XQWGN45tO1cAXXXo
	xpPKmBJWjeg/fAb3+9maplAgMep8z9akSBP7Dzja+CdQMUnByzIFnfP1j5Qq/jqMgVNWhqOsD6VKx
	a6YAcVBPdrWXaHvlmkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqm5c-0001xK-F8; Thu, 25 Jul 2019 22:19:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqm5P-0001vy-9N; Thu, 25 Jul 2019 22:19:45 +0000
Received: from d57e23da.static.ziggozakelijk.nl ([213.126.35.218]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hqm5F-0002LK-D0; Fri, 26 Jul 2019 00:19:33 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] ARM: dts: add device tree for Mecer Xtreme Mini S6
Date: Fri, 26 Jul 2019 00:19:32 +0200
Message-ID: <1618985.EOrKlNyPW4@phil>
In-Reply-To: <20190616204746.21001-1-justin.swartz@risingedge.co.za>
References: <20190616204746.21001-1-justin.swartz@risingedge.co.za>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_151943_482422_8CA31665 
X-CRM114-Status: GOOD (  17.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Justin,

Am Sonntag, 16. Juni 2019, 22:47:45 CEST schrieb Justin Swartz:
> The Mecer Xtreme Mini S6 features a Rockchip RK3229 SoC,
> 1GB DDR3 RAM, 8GB eMMC, MicroSD port, 10/100Mbps Ethernet,
> Realtek 8723BS WLAN module, 2 x USB 2.0 ports, HDMI output,
> and S/PDIF output.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---

please add an entry to Documentation/devicetree/bindings/arm/rockchip.yaml
for your board and if necessary also a vendor-prefix to
Documentation/devicetree/bindings/vendor-prefixes.(yaml?)

See below.

>  arch/arm/boot/dts/Makefile        |   1 +
>  arch/arm/boot/dts/rk3229-xms6.dts | 286 ++++++++++++++++++++++++++++++++++++++
>  2 files changed, 287 insertions(+)
>  create mode 100644 arch/arm/boot/dts/rk3229-xms6.dts
> 
> diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
> index dab2914fa293..6fbd7c304f62 100644
> --- a/arch/arm/boot/dts/Makefile
> +++ b/arch/arm/boot/dts/Makefile
> @@ -902,6 +902,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += \
>  	rk3188-radxarock.dtb \
>  	rk3228-evb.dtb \
>  	rk3229-evb.dtb \
> +	rk3229-xms6.dtb \
>  	rk3288-evb-act8846.dtb \
>  	rk3288-evb-rk808.dtb \
>  	rk3288-fennec.dtb \
> diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
> new file mode 100644
> index 000000000000..9b666fa66292
> --- /dev/null
> +++ b/arch/arm/boot/dts/rk3229-xms6.dts
> @@ -0,0 +1,286 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/input/input.h>
> +#include "rk3229.dtsi"
> +
> +/ {
> +	model = "Rockchip RK3229 (Mecer Xtreme Mini S6)";
> +	compatible = "rockchip,rk3229-xms6", "rockchip,rk3229";

mode = "Mecer Xtreme Mini S6";
compatible = "mecer,xms6", "rockchip,rk3229";

(and as written above, add a vendor-prefix for mecer)

...

> +&cpu0 {
> +	clock-frequency = <1464000000>;

not sure I understand the reasoning here.
There seems to be a regulator defined, so the cpu cores should
have operating points defined to allow them to switch between
different frequencies as needed.

> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu1 {
> +	clock-frequency = <1464000000>;
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu2 {
> +	clock-frequency = <1464000000>;
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&cpu3 {
> +	clock-frequency = <1464000000>;
> +	cpu-supply = <&vdd_arm>;
> +};
> +
> +&vop {

please sort the &node-references alphabetically.


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
