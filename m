Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D29919EB1A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 14:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lXBL1QyuyMigkzJ616IbNfTyNGjcKg95FodedjhBQ60=; b=r8rEu/A2WyF8vt
	nmOAMGst8B2VlX0wotd44cssJeb1kmFTmFZxGYD7Tk6dcUT+IY71nCzU+fnTwrZneTQF/EE7RvYJO
	ccIDL9UXrondDDJjCoDXaP3GviO41R5zneJNjeb9ftQLosJLVP5meKNWPHLpeNB+yDmaQRQLR3JrA
	hvdyYICW7Kj4WOaeHxC/jtz7b7YkRyvrJFdkvy9GE+KJVSeMHi7TUox/084yBpXg6x/2LZeYnItd6
	DvYiR+CgjXemYMPFbh5/hhUSQ9BL2eHsQJgTOJX+eOnuKTmnYFb6LVA2wzI0GTLUn6RUoxyLxPdGR
	4k+8W8UP1/1LdN5ccPzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL42r-0001eV-2E; Sun, 05 Apr 2020 12:06:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL42k-0001e3-HY; Sun, 05 Apr 2020 12:06:28 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 262AF206B8;
 Sun,  5 Apr 2020 12:06:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586088385;
 bh=BLqF5UpN5dBt1mmE30uQkggfsm1D8TJgVlYEiQgXgYk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S931edFR5bYWYsUzDFrRmmKYtkoHOFI3AJt6sVnvIiyw4cYRGu55YnaArKu8yVj88
 7yd7ut5dYgfXPNSTLBGj1k34U+OKSsSZyd/i/OfT6zaHioRT7CC0Yhxp7/3TPQk45A
 ZKQspLZvbz+Zu1yRO5r8Vip3uYlKSaDVA2uQlGXc=
Date: Sun, 5 Apr 2020 13:06:21 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: iio: adc: convert rockchip saradc
 bindings to yaml
Message-ID: <20200405130621.252578e8@archlinux>
In-Reply-To: <20200404102730.3295-1-jbx6244@gmail.com>
References: <20200404102730.3295-1-jbx6244@gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_050626_621912_C0B99E4C 
X-CRM114-Status: GOOD (  22.76  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, lars@metafoo.de, heiko@sntech.de,
 linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat,  4 Apr 2020 12:27:28 +0200
Johan Jonker <jbx6244@gmail.com> wrote:

> Current dts files with 'saradc' nodes are manually verified.
> In order to automate this process rockchip-saradc.txt
> has to be converted to yaml.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
Hi Johan

As I'd already applied these I'd have preferred a fix patch and I'm not actually
sure it's really worth making the change.  I don't think we have any rules
about minimal includes or anything in DT bindings.  Was there an error or
warning as a result of this?

Still as I hadn't pushed out as non rebasing yet I've picked this version up
and dropped the previous.

Thanks,

Jonathan

> ---
> Changes v2:
>   Add reviewed by
>   Fix irq.h already included in arm-gic.h
> ---
>  .../bindings/iio/adc/rockchip-saradc.txt           | 37 ----------
>  .../bindings/iio/adc/rockchip-saradc.yaml          | 78 ++++++++++++++++++++++
>  2 files changed, 78 insertions(+), 37 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
> deleted file mode 100644
> index c2c50b598..000000000
> --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.txt
> +++ /dev/null
> @@ -1,37 +0,0 @@
> -Rockchip Successive Approximation Register (SAR) A/D Converter bindings
> -
> -Required properties:
> -- compatible: should be "rockchip,<name>-saradc" or "rockchip,rk3066-tsadc"
> -   - "rockchip,saradc": for rk3188, rk3288
> -   - "rockchip,rk3066-tsadc": for rk3036
> -   - "rockchip,rk3328-saradc", "rockchip,rk3399-saradc": for rk3328
> -   - "rockchip,rk3399-saradc": for rk3399
> -   - "rockchip,rv1108-saradc", "rockchip,rk3399-saradc": for rv1108
> -
> -- reg: physical base address of the controller and length of memory mapped
> -       region.
> -- interrupts: The interrupt number to the cpu. The interrupt specifier format
> -              depends on the interrupt controller.
> -- clocks: Must contain an entry for each entry in clock-names.
> -- clock-names: Shall be "saradc" for the converter-clock, and "apb_pclk" for
> -               the peripheral clock.
> -- vref-supply: The regulator supply ADC reference voltage.
> -- #io-channel-cells: Should be 1, see ../iio-bindings.txt
> -
> -Optional properties:
> -- resets: Must contain an entry for each entry in reset-names if need support
> -	  this option. See ../reset/reset.txt for details.
> -- reset-names: Must include the name "saradc-apb".
> -
> -Example:
> -	saradc: saradc@2006c000 {
> -		compatible = "rockchip,saradc";
> -		reg = <0x2006c000 0x100>;
> -		interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
> -		clock-names = "saradc", "apb_pclk";
> -		resets = <&cru SRST_SARADC>;
> -		reset-names = "saradc-apb";
> -		#io-channel-cells = <1>;
> -		vref-supply = <&vcc18>;
> -	};
> diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> new file mode 100644
> index 000000000..9b9882323
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> @@ -0,0 +1,78 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/adc/rockchip-saradc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Successive Approximation Register (SAR) A/D Converter
> +
> +maintainers:
> +  - Heiko Stuebner <heiko@sntech.de>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,saradc
> +      - const: rockchip,rk3066-tsadc
> +      - const: rockchip,rk3399-saradc
> +      - items:
> +          - enum:
> +            - rockchip,rk3328-saradc
> +            - rockchip,rv1108-saradc
> +          - const: rockchip,rk3399-saradc
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: converter clock
> +      - description: peripheral clock
> +
> +  clock-names:
> +    items:
> +      - const: saradc
> +      - const: apb_pclk
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: saradc-apb
> +
> +  vref-supply:
> +    description:
> +      The regulator supply for the ADC reference voltage.
> +
> +  "#io-channel-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - vref-supply
> +  - "#io-channel-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    saradc: saradc@2006c000 {
> +      compatible = "rockchip,saradc";
> +      reg = <0x2006c000 0x100>;
> +      interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> +      clocks = <&cru SCLK_SARADC>, <&cru PCLK_SARADC>;
> +      clock-names = "saradc", "apb_pclk";
> +      resets = <&cru SRST_SARADC>;
> +      reset-names = "saradc-apb";
> +      vref-supply = <&vcc18>;
> +      #io-channel-cells = <1>;
> +    };


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
