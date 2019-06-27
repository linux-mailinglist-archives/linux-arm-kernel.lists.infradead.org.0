Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7559857B3D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 07:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fc2z5znVHdyb0Ywl0EJTjbc0kLRlenm8zoeTT0NAF3c=; b=Z+dGbbXJzgOSlW
	24rKpIEDPVxVp40oQ7qRaaPP6dDtVAUZTK2oXMOGxgJF62fw12gSIq+uNxxfkd2M3/JcitK6UoBol
	9sY/ImQLAr0ZRb47DtFtmPgoBOPxNhqPFe7//HT75iYIKin0KwQSZATXulvQ3qDPjYl9VLKPaxDfM
	tJ1z3aW3/RmVi/nZ4ZA3gGnqfVUvoq4hcl0hJGh5+i5nUTDmVRCed4sRWKYSEmst14OLWxfvaNioo
	Qxf8i8rTIAuzWCRM0tg9MbDEHKP062h7wui7Bsgz8Jcg3tiyY9xSOyI+m+6qPbxwIpNpbHmBQ+fdf
	8Riij0GRp0g3G4ROKRmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgMrL-0002M1-T0; Thu, 27 Jun 2019 05:22:11 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMoz-0006Q2-2v
 for linux-arm-kernel@bombadil.infradead.org; Thu, 27 Jun 2019 05:19:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bOKSn4h8UbNa4bhH6s8l9K8A6O5RgA8nAwBLjlOPwUM=; b=SCj4IsRu6JN4nZ1pUqcKAP4W1
 ypWlj4RgW2gxEhaRM0vQDWHOJiBeuCWbiGAs0zzX9Tfwflxzr3jxUgRKH5+EqwOcZOVTEHlDBREHo
 j67WDzMRlSjfjB7o2nJ8atycYkqOUnAFixhFOjlYXfBgKaPhu6kCL2M81Q+8RcBOsNzfTK47aUImV
 Of+kVkP1hEW//8v1t3V9vDXYklXS4DAch/zrGY3v3SGO/7A6axweaEX55Yu318JsmO3TfCW0t89tq
 UmLE269xVzQtmh8SWpWbWioO/bBL/B6nYdTLQEEfkJ/YcOnfKKCu2PuZcRdGv1EKjr3D13sYMvkKc
 BxFPvjuzw==;
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgLAz-0007yn-Os
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 03:34:23 +0000
Received: by mail-qt1-x841.google.com with SMTP id i34so944969qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 20:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jms.id.au; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bOKSn4h8UbNa4bhH6s8l9K8A6O5RgA8nAwBLjlOPwUM=;
 b=DdUG37bvOwcyaWSy6M13nTaI2R8usW/b5i+Lo4o91DIKR+Yv4aYaqKt3LwZCRoIwXF
 RMH1KHIsWn5AbYj/OG3mKgQkK/CJO+GwSMzPNXjYSMtN3NvsLmLxKuUcN/BThWUw5l4I
 Zt5C+xwKKibH8zeEtBf6n4dlyyNaD93v0oi60=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bOKSn4h8UbNa4bhH6s8l9K8A6O5RgA8nAwBLjlOPwUM=;
 b=iTFGJ7NGrUHdhxujv00/XvPtZgUqkqju0T++Kn9v2mPZDvl/OB3b+g4SQ3ODxkHLtB
 aniVXhjMzlAa5F42rmRW9xrxiF+muQoggpdIhMn9bPKuaxbCy7IkZjSYidIDekqoHcU6
 2vn/l6eYb3kNtlxEIQIVolQvZCqu9gAk87UymoOX4jw80PLMVl0/iTwtNsLpgSrl9k4h
 HrirNqsklSb5Dp1DknoI9T7YZM4UJSs84TLBTZ/hVQdoAjBfe9oA1aIDU1BYn1GdxTYk
 UYvc5EEzwCwvymE4KQWWyNRKapxvr/u7rj4YvmL6T6dFoQDeik3xlSnmifgthpbsp75c
 YjMg==
X-Gm-Message-State: APjAAAV/TkrldNbi8gRlw3ey4fEHzbkE8CQTl6MJdmd1RwSFhm4Zdbqp
 MjzMLQgQs1zerqcJpY7ACUATkMaHK0jiSmEqQKA=
X-Google-Smtp-Source: APXvYqy0OoXzrm4i8gt1EjUI1gu1q3ZGM0JJPJEbSEDvnzmmpEcORgo8+O/90MFlItcdWHr9XA7yiuZt1aoWyz+PUws=
X-Received: by 2002:a0c:afd5:: with SMTP id t21mr1134555qvc.105.1561606337880; 
 Wed, 26 Jun 2019 20:32:17 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-2-andrew@aj.id.au>
In-Reply-To: <20190626071430.28556-2-andrew@aj.id.au>
From: Joel Stanley <joel@jms.id.au>
Date: Thu, 27 Jun 2019 03:32:06 +0000
Message-ID: <CACPK8Xfdd1ReAHr9f6zRbZ-WJRquDJsTdUQeT_JuEBhOzS8tig@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: pinctrl: aspeed: Split bindings document
 in two
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_043421_832338_88EF176E 
X-CRM114-Status: GOOD (  27.16  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 devicetree <devicetree@vger.kernel.org>, Ryan Chen <ryan_chen@aspeedtech.com>,
 linux-aspeed@lists.ozlabs.org, Linus Walleij <linus.walleij@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 07:15, Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Have one for each of the AST2400 and AST2500. The only thing that was
> common was the fact that both support ASPEED BMC SoCs.
>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  .../pinctrl/aspeed,ast2400-pinctrl.txt        | 80 +++++++++++++++++++
>  ...-aspeed.txt => aspeed,ast2500-pinctrl.txt} | 63 ++-------------
>  2 files changed, 85 insertions(+), 58 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
>  rename Documentation/devicetree/bindings/pinctrl/{pinctrl-aspeed.txt => aspeed,ast2500-pinctrl.txt} (66%)
>
> diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> new file mode 100644
> index 000000000000..67e0325ccf2e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
> @@ -0,0 +1,80 @@
> +=============================
> +Aspeed AST2400 Pin Controller
> +=============================
> +
> +Required properties for the AST2400:
> +- compatible :                         Should be one of the following:
> +                               "aspeed,ast2400-pinctrl"
> +                               "aspeed,g4-pinctrl"
> +
> +The pin controller node should be the child of a syscon node with the required
> +property:
> +
> +- compatible :                 Should be one of the following:
> +                       "aspeed,ast2400-scu", "syscon", "simple-mfd"
> +                       "aspeed,g4-scu", "syscon", "simple-mfd"

I think we can use this as an opportunity to drop the unused g4-scu
compatible from the bindings. Similarly for the g5.

Acked-by: Joel Stanley <joel@jms.id.au>

> +
> +Refer to the the bindings described in
> +Documentation/devicetree/bindings/mfd/syscon.txt
> +
> +Subnode Format
> +==============
> +
> +The required properties of pinmux child nodes are:
> +- function: the mux function to select
> +- groups  : the list of groups to select with this function
> +
> +Required properties of pinconf child nodes are:
> +- groups: A list of groups to select (either this or "pins" must be
> +          specified)
> +- pins  : A list of ball names as strings, eg "D14" (either this or "groups"
> +          must be specified)
> +
> +Optional properties of pinconf child nodes are:
> +- bias-disable  : disable any pin bias
> +- bias-pull-down: pull down the pin
> +- drive-strength: sink or source at most X mA
> +
> +Definitions are as specified in
> +Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt, with any
> +further limitations as described above.
> +
> +For pinmux, each mux function has only one associated pin group. Each group is
> +named by its function. The following values for the function and groups
> +properties are supported:
> +
> +ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
> +ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT EXTRST FLACK FLBUSY FLWP GPID GPID0 GPID2
> +GPID4 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4
> +I2C5 I2C6 I2C7 I2C8 I2C9 LPCPD LPCPME LPCRST LPCSMI MAC1LINK MAC2LINK MDIO1
> +MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4
> +NDTR1 NDTR2 NDTR3 NDTR4 NDTS4 NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 OSCCLK PWM0
> +PWM1 PWM2 PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 ROM16 ROM8 ROMCS1
> +ROMCS2 ROMCS3 ROMCS4 RXD1 RXD2 RXD3 RXD4 SALT1 SALT2 SALT3 SALT4 SD1 SD2 SGPMCK
> +SGPMI SGPMLD SGPMO SGPSCK SGPSI0 SGPSI1 SGPSLD SIOONCTRL SIOPBI SIOPBO SIOPWREQ
> +SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1DEBUG SPI1PASSTHRU SPICS1 TIMER3 TIMER4
> +TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2 TXD3 TXD4 UART6 USB11D1 USB11H2 USB2D1
> +USB2H1 USBCKI VGABIOS_ROM VGAHS VGAVS VPI18 VPI24 VPI30 VPO12 VPO24 WDTRST1
> +WDTRST2
> +
> +Example
> +=======
> +
> +syscon: scu@1e6e2000 {
> +       compatible = "aspeed,ast2400-scu", "syscon", "simple-mfd";
> +       reg = <0x1e6e2000 0x1a8>;
> +
> +       pinctrl: pinctrl {
> +               compatible = "aspeed,g4-pinctrl";
> +
> +               pinctrl_i2c3_default: i2c3_default {
> +                       function = "I2C3";
> +                       groups = "I2C3";
> +               };
> +
> +               pinctrl_gpioh0_unbiased_default: gpioh0 {
> +                       pins = "A8";
> +                       bias-disable;
> +               };
> +       };
> +};
> diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
> similarity index 66%
> rename from Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
> rename to Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
> index 3b7266c7c438..2f16e401338a 100644
> --- a/Documentation/devicetree/bindings/pinctrl/pinctrl-aspeed.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2500-pinctrl.txt
> @@ -1,14 +1,6 @@
> -======================
> -Aspeed Pin Controllers
> -======================
> -
> -The Aspeed SoCs vary in functionality inside a generation but have a common mux
> -device register layout.
> -
> -Required properties for g4:
> -- compatible :                         Should be one of the following:
> -                               "aspeed,ast2400-pinctrl"
> -                               "aspeed,g4-pinctrl"
> +=============================
> +Aspeed AST2500 Pin Controller
> +=============================
>
>  Required properties for g5:
>  - compatible :                         Should be one of the following:
> @@ -23,8 +15,6 @@ The pin controller node should be the child of a syscon node with the required
>  property:
>
>  - compatible :                 Should be one of the following:
> -                       "aspeed,ast2400-scu", "syscon", "simple-mfd"
> -                       "aspeed,g4-scu", "syscon", "simple-mfd"
>                         "aspeed,ast2500-scu", "syscon", "simple-mfd"
>                         "aspeed,g5-scu", "syscon", "simple-mfd"
>
> @@ -57,24 +47,6 @@ For pinmux, each mux function has only one associated pin group. Each group is
>  named by its function. The following values for the function and groups
>  properties are supported:
>
> -aspeed,ast2400-pinctrl, aspeed,g4-pinctrl:
> -
> -ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
> -ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT EXTRST FLACK FLBUSY FLWP GPID GPID0 GPID2
> -GPID4 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4
> -I2C5 I2C6 I2C7 I2C8 I2C9 LPCPD LPCPME LPCRST LPCSMI MAC1LINK MAC2LINK MDIO1
> -MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4
> -NDTR1 NDTR2 NDTR3 NDTR4 NDTS4 NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 OSCCLK PWM0
> -PWM1 PWM2 PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 ROM16 ROM8 ROMCS1
> -ROMCS2 ROMCS3 ROMCS4 RXD1 RXD2 RXD3 RXD4 SALT1 SALT2 SALT3 SALT4 SD1 SD2 SGPMCK
> -SGPMI SGPMLD SGPMO SGPSCK SGPSI0 SGPSI1 SGPSLD SIOONCTRL SIOPBI SIOPBO SIOPWREQ
> -SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1DEBUG SPI1PASSTHRU SPICS1 TIMER3 TIMER4
> -TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2 TXD3 TXD4 UART6 USB11D1 USB11H2 USB2D1
> -USB2H1 USBCKI VGABIOS_ROM VGAHS VGAVS VPI18 VPI24 VPI30 VPO12 VPO24 WDTRST1
> -WDTRST2
> -
> -aspeed,ast2500-pinctrl, aspeed,g5-pinctrl:
> -
>  ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
>  ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT ESPI FWSPICS1 FWSPICS2 GPID0 GPID2 GPID4
>  GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4 I2C5 I2C6
> @@ -90,33 +62,8 @@ SPI2CS1 SPI2MISO SPI2MOSI TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2
>  TXD3 TXD4 UART6 USB11BHID USB2AD USB2AH USB2BD USB2BH USBCKI VGABIOSROM VGAHS
>  VGAVS VPI24 VPO WDTRST1 WDTRST2
>
> -Examples
> -========
> -
> -g4 Example
> -----------
> -
> -syscon: scu@1e6e2000 {
> -       compatible = "aspeed,ast2400-scu", "syscon", "simple-mfd";
> -       reg = <0x1e6e2000 0x1a8>;
> -
> -       pinctrl: pinctrl {
> -               compatible = "aspeed,g4-pinctrl";
> -
> -               pinctrl_i2c3_default: i2c3_default {
> -                       function = "I2C3";
> -                       groups = "I2C3";
> -               };
> -
> -               pinctrl_gpioh0_unbiased_default: gpioh0 {
> -                       pins = "A8";
> -                       bias-disable;
> -               };
> -       };
> -};
> -
> -g5 Example
> -----------
> +Example
> +=======
>
>  ahb {
>         apb {
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
