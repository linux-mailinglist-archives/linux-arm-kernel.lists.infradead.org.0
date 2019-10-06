Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44382CD035
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 12:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWdhgpq8BXVbR8RY1ZBHcsTbZUVHy0BOHgHXOZuI5ZE=; b=CKURlWDSmZVtjf
	wigtS50we9C9CxbQb0h/8AqZ/38mPgCW+4S4T4mNaueQsx/hL1Tvo/MWCTFoXKXab1/Bgv2l8nTJs
	sFlRjqYv9d8oFnnvNrQxmVhavX1X2yPhOEe7xzOXGQew2dPT6ayyE3BZZB9zfmJWho2WuviFuuToL
	L823i7VepaWinidjsyY/1VlNOHsY4fy1uy/mSoAwbkmXmBxjDDjn7gV80mZzhQ5RA/J3G9xxauQGz
	ShX4Cq4lF4f24awN2KFC3WUrbnPt7eNGFTDfF1/eyBnqaPGEZC/g350Ok2tgkREv4cQHtt0ufpSNH
	YyOenmIZcpVM3j+x38BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH3MF-0004Rc-BV; Sun, 06 Oct 2019 10:01:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH3M5-0004RF-R0
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 10:01:35 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 038762133F;
 Sun,  6 Oct 2019 10:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570356093;
 bh=pKw7s1workqYRM+2lrKQUKnNzQh2w7qZEa6yX1ajVRo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=G/nSFvUWTcK7PcyEYcYNM6YIeOOpvmyF9PJb02ZQz4pAAb2eqwsC7q9UE+MLrM7LU
 zRDwd8OmhtvvqEQ1WhCkS8jNuUIXWs5BjQz4D32ZJy9luyc87xuw7i2pe94yKZ1acQ
 P3uEAvkJR8D4Uwt6VUI64Ax7Km+L3Znx2at8Lpg8=
Date: Sun, 6 Oct 2019 11:01:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: samsung: Indent examples with four spaces
Message-ID: <20191006110126.131b0ca4@archlinux>
In-Reply-To: <20191002160744.11307-1-krzk@kernel.org>
References: <20191002160744.11307-1-krzk@kernel.org>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_030133_913260_84C98BD9 
X-CRM114-Status: GOOD (  18.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Lars-Peter Clausen <lars@metafoo.de>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Hartmut Knaack <knaack.h@gmx.de>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed,  2 Oct 2019 18:07:41 +0200
Krzysztof Kozlowski <krzk@kernel.org> wrote:

> Change the indentation of examples used in json-schema bindings from two
> to four spaces as this makes the code easier to read and seems to be
> preferred in other files.
> 

I'm assuming Rob will pick these up given they span multiple subsystems.

> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com> # for iio

> ---
>  .../bindings/arm/samsung/exynos-chipid.yaml   |  4 +-
>  .../bindings/iio/adc/samsung,exynos-adc.yaml  | 64 +++++++++----------
>  .../bindings/power/reset/syscon-poweroff.yaml |  8 +--
>  .../bindings/power/reset/syscon-reboot.yaml   |  8 +--
>  .../devicetree/bindings/rtc/s3c-rtc.yaml      | 12 ++--
>  5 files changed, 48 insertions(+), 48 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> index 9c573ad7dc7d..ce40adabb4e8 100644
> --- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> +++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
> @@ -20,6 +20,6 @@ properties:
>  examples:
>    - |
>      chipid@10000000 {
> -      compatible = "samsung,exynos4210-chipid";
> -      reg = <0x10000000 0x100>;
> +        compatible = "samsung,exynos4210-chipid";
> +        reg = <0x10000000 0x100>;
>      };
> diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> index b4c6c26681d9..a0a9b909ac40 100644
> --- a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
> @@ -112,40 +112,40 @@ allOf:
>  examples:
>    - |
>      adc: adc@12d10000 {
> -      compatible = "samsung,exynos-adc-v1";
> -      reg = <0x12d10000 0x100>;
> -      interrupts = <0 106 0>;
> -      #io-channel-cells = <1>;
> -      io-channel-ranges;
> -
> -      clocks = <&clock 303>;
> -      clock-names = "adc";
> -
> -      vdd-supply = <&buck5_reg>;
> -      samsung,syscon-phandle = <&pmu_system_controller>;
> -
> -      /* NTC thermistor is a hwmon device */
> -      ncp15wb473@0 {
> -        compatible = "murata,ncp15wb473";
> -        pullup-uv = <1800000>;
> -        pullup-ohm = <47000>;
> -        pulldown-ohm = <0>;
> -        io-channels = <&adc 4>;
> -      };
> +        compatible = "samsung,exynos-adc-v1";
> +        reg = <0x12d10000 0x100>;
> +        interrupts = <0 106 0>;
> +        #io-channel-cells = <1>;
> +        io-channel-ranges;
> +
> +        clocks = <&clock 303>;
> +        clock-names = "adc";
> +
> +        vdd-supply = <&buck5_reg>;
> +        samsung,syscon-phandle = <&pmu_system_controller>;
> +
> +        /* NTC thermistor is a hwmon device */
> +        ncp15wb473@0 {
> +            compatible = "murata,ncp15wb473";
> +            pullup-uv = <1800000>;
> +            pullup-ohm = <47000>;
> +            pulldown-ohm = <0>;
> +            io-channels = <&adc 4>;
> +          };
>      };
>  
>    - |
>      adc@126c0000 {
> -      compatible = "samsung,exynos3250-adc";
> -      reg = <0x126C0000 0x100>;
> -      interrupts = <0 137 0>;
> -      #io-channel-cells = <1>;
> -      io-channel-ranges;
> -
> -      clocks = <&cmu 0>, // CLK_TSADC
> -               <&cmu 1>; // CLK_SCLK_TSADC
> -      clock-names = "adc", "sclk";
> -
> -      vdd-supply = <&buck5_reg>;
> -      samsung,syscon-phandle = <&pmu_system_controller>;
> +        compatible = "samsung,exynos3250-adc";
> +        reg = <0x126C0000 0x100>;
> +        interrupts = <0 137 0>;
> +        #io-channel-cells = <1>;
> +        io-channel-ranges;
> +
> +        clocks = <&cmu 0>, // CLK_TSADC
> +                 <&cmu 1>; // CLK_SCLK_TSADC
> +        clock-names = "adc", "sclk";
> +
> +        vdd-supply = <&buck5_reg>;
> +        samsung,syscon-phandle = <&pmu_system_controller>;
>      };
> diff --git a/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml b/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml
> index fb812937b534..520e07e6f21b 100644
> --- a/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml
> +++ b/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml
> @@ -53,8 +53,8 @@ allOf:
>  examples:
>    - |
>      poweroff {
> -      compatible = "syscon-poweroff";
> -      regmap = <&regmapnode>;
> -      offset = <0x0>;
> -      mask = <0x7a>;
> +        compatible = "syscon-poweroff";
> +        regmap = <&regmapnode>;
> +        offset = <0x0>;
> +        mask = <0x7a>;
>      };
> diff --git a/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
> index a7920f5eef79..d38006b1f1f4 100644
> --- a/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
> +++ b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
> @@ -53,8 +53,8 @@ allOf:
>  examples:
>    - |
>      reboot {
> -      compatible = "syscon-reboot";
> -      regmap = <&regmapnode>;
> -      offset = <0x0>;
> -      mask = <0x1>;
> +        compatible = "syscon-reboot";
> +        regmap = <&regmapnode>;
> +        offset = <0x0>;
> +        mask = <0x1>;
>      };
> diff --git a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> index 951a6a485709..95570d7e19eb 100644
> --- a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> +++ b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
> @@ -76,10 +76,10 @@ allOf:
>  examples:
>    - |
>      rtc@10070000 {
> -      compatible = "samsung,s3c6410-rtc";
> -      reg = <0x10070000 0x100>;
> -      interrupts = <0 44 4>, <0 45 4>;
> -      clocks = <&clock 0>, // CLK_RTC
> -               <&s2mps11_osc 0>; // S2MPS11_CLK_AP
> -      clock-names = "rtc", "rtc_src";
> +        compatible = "samsung,s3c6410-rtc";
> +        reg = <0x10070000 0x100>;
> +        interrupts = <0 44 4>, <0 45 4>;
> +        clocks = <&clock 0>, // CLK_RTC
> +                 <&s2mps11_osc 0>; // S2MPS11_CLK_AP
> +        clock-names = "rtc", "rtc_src";
>      };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
