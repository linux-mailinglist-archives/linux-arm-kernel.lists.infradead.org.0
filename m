Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E20C8177E5C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 19:17:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cumFmyqYI/xkyHEku/LZaRMutIAtoDnZywODYmh7hkA=; b=s1R41n3eepQUj1
	sZ79quBjbq2uHgkCq4ZcA86pwmGq586db/FceYgdP2LA8ba35MEmJ8gGYEj8LBQfP5QtO/nVm8AmR
	KOr/6VUniu8AwoiW5ke8S2SR2bQTJZVv6VN+6ihrabJvG9k5P6iyXuSkE2tDsvPDZwzwbhQBd0DpM
	Q+9l6LpOCVToqmRv/PbfzgE7VNmdOiBUojkvV6KFCP4V5b6sEFHRZ9V6ha/F8iOhS+oLCu+88H5oX
	Dp48mkJxpql+681SOkt6AmbnKp6Ms8d/Mzkr6AvTT3BurssRFCkzWf147R8JVUyNGyM+9Y/OMuz/9
	Kq6sK/cVOU+RL5CCoSLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9C6b-0000rE-GU; Tue, 03 Mar 2020 18:17:21 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9C6T-0000qW-Re; Tue, 03 Mar 2020 18:17:15 +0000
Received: from [192.168.1.183] ([37.4.249.171]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1M3UdI-1j8ds32MFO-000b6V; Tue, 03 Mar 2020 19:17:05 +0100
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Openpgp: preference=signencrypt
Autocrypt: addr=stefan.wahren@i2se.com; keydata=
 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 AQ==
Message-ID: <736f0c59-352b-03b2-f77f-bfc22171b3fb@i2se.com>
Date: Tue, 3 Mar 2020 19:17:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200303173217.3987-1-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:tHaZlzBYnQQ7ozFJRk2l9T+p1xctV61HjSZXbmUpPOdeTgdbwPU
 oYmgpY+86RmTHZc+lvzekJg+9yMur5QsDj/RW8jmOvZHuOWqejiikdi/Ike9t4cwk1HR77h
 QT+GvVFjhJxuGgSYMtORM0vHP85L5CCEf6AGr0uAMGDA/nOtYPr2sOwD2jLGdLbgF8YzX/d
 +Q6cWu1dRO9MmVSMepP1Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:FfmjNUweXJs=:EnXoeKrN8xSla3uku/bqRV
 zGN+QhzEV+QApHgH5A7fM2DfZWM2nA1bgU6vSW9OxPTaAAAwpkozeJWeAv0GjzLphLKsdDfJh
 31QUZrbAPn50tr8Nan5kZBBMCZR7v98oDJ65iUctLRUHJUhrcU3wLhCNFrhS7IBEhAMwPACGE
 4e8x72tT4a9Sh8HNIYnrnfeSC6wRZHNa3WgvUrRvS1pvXpLDeR5XjWJBR/R2kxTY/Q3oon/sK
 e30qdeZo2qKL5YepXyYGnwOEHVER7obCDGSJT2lYLn2kEmiiNuATKEjNWPBb/SejOj+LAzE2I
 IrOyY63QtPT/pvy5Ocibk0Mo1Z/CtFO0i+eBIC8u0mDtUHQj+gC/JcwwolF0GcTCkoT8E+wTR
 ccLBPY1MbzKfpJ/WcA0cbCWLxHy4iTuLQtJ21To7chPMui1UDok54Jlf71BQcbURVBhIKmDFQ
 4x/wdblB+1wHPg9Y4ruJu4H/tmTa7icf6ogdLpk9Eub8TJaOJO4i9hLaRx+5guasqcGe9g968
 2jESNK2Xgmm0uQSz1uu3qb/YucZKJmad3RvAOBk/FxOSsfX5yy1VIraG7nyoKTfegAVnpOwGr
 B/SRIpeEp+qKAA+RZA4QAXiASRdjzCU3YUiTS/XsaKNfouIwtElbi6BZ3HVqwY8xUAKOFgkKA
 +QtZZW43poiGpPukBY47ZBWo55ws6iCb/GpbvU65XsyDe0mQWk57blaZJUrkKzv8p5U+seyjh
 riRb4h7f75HESw7Y/dqbbAsEQySKP6D4DFlYXekTx1bHItQNnEAJ7CSoDw1AGplzfcDzLuhIa
 GM+96oc7CggoJGOlykeldApqJ2U1PNtKy6I+U1+09KTegbvW3pLFCs6mHYuekewdK4LF04m
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_101714_195163_4BBCF96E 
X-CRM114-Status: GOOD (  24.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 03.03.20 um 18:32 schrieb Nicolas Saenz Julienne:
> The register based driver turned out to be unstable, specially on RPi3a+
> but not limited to it. While a fix is being worked on, we roll back to
> using firmware based scheme.
>
> Fixes: e1dc2b2e1bef ("ARM: bcm283x: Switch V3D over to using the PM driver instead of firmware")
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>
> See https://github.com/raspberrypi/linux/issues/3046 for more reference.
> Note: I tested this on RPi3b, RPi3a+ and RPi2b.

as i already wrote this prevent X to start on current Raspbian on my
Raspberry Pi 3A+ (multi_v7_defconfig, no u-boot). We must be careful here.

I will take a look at the debug UART. Maybe there are more helpful
information.

Regards
Stefan

>
>  arch/arm/boot/dts/bcm2835-common.dtsi     |  1 -
>  arch/arm/boot/dts/bcm2835-rpi-common.dtsi | 12 ++++++++++++
>  arch/arm/boot/dts/bcm2835.dtsi            |  1 +
>  arch/arm/boot/dts/bcm2836.dtsi            |  1 +
>  arch/arm/boot/dts/bcm2837.dtsi            |  1 +
>  5 files changed, 15 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boot/dts/bcm2835-rpi-common.dtsi
>
> diff --git a/arch/arm/boot/dts/bcm2835-common.dtsi b/arch/arm/boot/dts/bcm2835-common.dtsi
> index 2b1d9d4c0cde..4119271c979d 100644
> --- a/arch/arm/boot/dts/bcm2835-common.dtsi
> +++ b/arch/arm/boot/dts/bcm2835-common.dtsi
> @@ -130,7 +130,6 @@ v3d: v3d@7ec00000 {
>  			compatible = "brcm,bcm2835-v3d";
>  			reg = <0x7ec00000 0x1000>;
>  			interrupts = <1 10>;
> -			power-domains = <&pm BCM2835_POWER_DOMAIN_GRAFX_V3D>;
>  		};
>  
>  		vc4: gpu {
> diff --git a/arch/arm/boot/dts/bcm2835-rpi-common.dtsi b/arch/arm/boot/dts/bcm2835-rpi-common.dtsi
> new file mode 100644
> index 000000000000..b78a57534611
> --- /dev/null
> +++ b/arch/arm/boot/dts/bcm2835-rpi-common.dtsi
> @@ -0,0 +1,12 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * This include file covers the common peripherals and configuration between
> + * bcm2835, bcm2836 and bcm2837 implementations that interact with RPi's
> + * firmware interface.
> + */
> +
> +#include <dt-bindings/power/raspberrypi-power.h>
> +
> +&v3d {
> +	power-domains = <&power RPI_POWER_DOMAIN_V3D>;
> +};
> diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.dtsi
> index 53bf4579cc22..0549686134ea 100644
> --- a/arch/arm/boot/dts/bcm2835.dtsi
> +++ b/arch/arm/boot/dts/bcm2835.dtsi
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "bcm283x.dtsi"
>  #include "bcm2835-common.dtsi"
> +#include "bcm2835-rpi-common.dtsi"
>  
>  / {
>  	compatible = "brcm,bcm2835";
> diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dtsi
> index 82d6c4662ae4..b390006aef79 100644
> --- a/arch/arm/boot/dts/bcm2836.dtsi
> +++ b/arch/arm/boot/dts/bcm2836.dtsi
> @@ -1,6 +1,7 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include "bcm283x.dtsi"
>  #include "bcm2835-common.dtsi"
> +#include "bcm2835-rpi-common.dtsi"
>  
>  / {
>  	compatible = "brcm,bcm2836";
> diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.dtsi
> index 9e95fee78e19..0199ec98cd61 100644
> --- a/arch/arm/boot/dts/bcm2837.dtsi
> +++ b/arch/arm/boot/dts/bcm2837.dtsi
> @@ -1,5 +1,6 @@
>  #include "bcm283x.dtsi"
>  #include "bcm2835-common.dtsi"
> +#include "bcm2835-rpi-common.dtsi"
>  
>  / {
>  	compatible = "brcm,bcm2837";


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
