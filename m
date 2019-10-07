Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82265CE319
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 15:19:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebDJG3aufq71eaL9tqqno2reOhrSVhOYy+hZ0U4sUNs=; b=CpwCgIx5Vawobz
	WmtsdglL8d2MxMOQogixXqtRlGlYZTOwVyjCwscjjKq9zReGVXNLAcMdF7AuVzk6gZi2iwcR+kq6G
	XwuxuDUVubaqBJ8WDTFr0pE+RFuea9t8Wa/TOV1XkFKjNyO4FHH3QoRYQlVE/cpZQ/2HBAJEZIofH
	8W22KnExIsV8P72guF2LjTVsq6NVa1YOoNOc7CCCv5Nyf6KVLxZ+xPVw2JaKdqv3UiyYfQeGvFiP0
	cvpxiDxb+pjfwy3s3R2OB9bn9eJ7w1UWPYKSclg41kk0dQXnOl7FsyUggzE2pZaVxONjhFKCnIYwQ
	pnxbb5DK11rFeF3s4mnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSup-00034m-66; Mon, 07 Oct 2019 13:19:07 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHStH-0001jU-FW
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 13:17:33 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id BEDD6240009;
 Mon,  7 Oct 2019 13:17:22 +0000 (UTC)
Date: Mon, 7 Oct 2019 15:17:22 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: samsung: Indent examples with four spaces
Message-ID: <20191007131722.GI4254@piout.net>
References: <20191002160744.11307-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002160744.11307-1-krzk@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_061731_818944_D7157AAD 
X-CRM114-Status: GOOD (  17.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, Lars-Peter Clausen <lars@metafoo.de>,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-pm@vger.kernel.org, Sebastian Reichel <sre@kernel.org>,
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-rtc@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/10/2019 18:07:41+0200, Krzysztof Kozlowski wrote:
> Change the indentation of examples used in json-schema bindings from two
> to four spaces as this makes the code easier to read and seems to be
> preferred in other files.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

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
> -- 
> 2.17.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
