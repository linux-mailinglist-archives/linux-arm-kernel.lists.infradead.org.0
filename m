Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6091A56B0F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:47:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2fHO74Ux1nKfZ0lcqRsmQhtQJBO4pZQstLKoKKJ2dqE=; b=HtcJPCqTMCUoa0
	wpbOl1Y3xocZ5VHoCP+iYgCGvaQVCerDfLjoopDfMZQqAcaYpbJKl2P98gbIDNdwEYU3+FV2jBBKI
	LKUmZAWBOkjND3G1WQ65iaAok+t03GN7V1zwesI00cXxqQwPHyfSQdovaOj3dJ3JrA8AOJA/lxtBY
	97FfDcVO95n7A38AgrtL3zMaV3FTmPnaa1YdP31p6Ti34xrKhDCFJGv7yCnTxak3PiuCC5FWzUuRn
	wfIAQMZBfE0VPn7SjypdraDGHj6hR4gaAJHHv+E6Up8Ah/SJ/CNBAZ1BTGx1qTsJSVANBePWngCwV
	VMlJnxzPmafCEDFbWArA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8HE-0002jQ-Ne; Wed, 26 Jun 2019 13:47:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8Gx-0002ik-AH
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:47:40 +0000
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
 [209.85.160.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D7B2721743
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 13:47:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561556858;
 bh=xbcTtYJeHtkAOWy+Y4BUk+BNbPsuIwvlnLNnhX+1kbE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ls87YcOhFJOI+LAKDN3iqqX8G1oFnPI2AI8v5A8DccZC1wmd17oJN1pqVv8MJoD9W
 acAJc4q4KGXL3Yz+SuBbuF5wFaz16u3geC66fcXD787xh47gPwPrwthpo45bFLmfuk
 O4t4685eY6cSRBdageXaRua8hiLzWQdkjh1kQwdY=
Received: by mail-qt1-f182.google.com with SMTP id m29so2422989qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 06:47:37 -0700 (PDT)
X-Gm-Message-State: APjAAAWcWu/yRZ/B9loDRR3In+7fnDSoBELTjwIrnCL9o5Z88ZcFuDXK
 kSL720egR80gyNA/UISmQyjV8EuBPULqqrLFNA==
X-Google-Smtp-Source: APXvYqxwTh2AtcqzMdqyd3UL4Al6jPcPgH+JfvzCErP6dJoimZg5i+XMHYfvKK13aB5Me5B4+99mvI2JcbjJ8yHMUVk=
X-Received: by 2002:aed:3fb0:: with SMTP id s45mr3947350qth.136.1561556856985; 
 Wed, 26 Jun 2019 06:47:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au>
 <20190626071430.28556-3-andrew@aj.id.au>
In-Reply-To: <20190626071430.28556-3-andrew@aj.id.au>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 26 Jun 2019 07:47:25 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKXPzFYTHos-uvCUtBj-bcsNfrzt5GjxQ=PmgeXpp5J-A@mail.gmail.com>
Message-ID: <CAL_JsqKXPzFYTHos-uvCUtBj-bcsNfrzt5GjxQ=PmgeXpp5J-A@mail.gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: pinctrl: aspeed: Convert AST2400
 bindings to json-schema
To: Andrew Jeffery <andrew@aj.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_064739_392963_CB48F630 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ryan Chen <ryan_chen@aspeedtech.com>, linux-aspeed@lists.ozlabs.org,
 Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Joel Stanley <joel@jms.id.au>, OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 1:21 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Convert ASPEED pinctrl bindings to DT schema format using json-schema

BTW, ASPEED is one of the remaining platforms needing the top-level
board bindings converted.

>
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  .../pinctrl/aspeed,ast2400-pinctrl.txt        | 80 -------------------
>  .../pinctrl/aspeed,ast2400-pinctrl.yaml       | 73 +++++++++++++++++
>  2 files changed, 73 insertions(+), 80 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.txt
>  create mode 100644 Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml

> diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
> new file mode 100644
> index 000000000000..3b8cf3e51506
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2400-pinctrl.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: GPL-2.0+

Do you have rights to change the license? If so, the preference is to
dual license with (GPL-2.0 OR BSD-2-Clause).

BTW, '-or-later' is the preferred form over '+'.

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pinctrl/aspeed,ast2400-pinctrl.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED AST2400 Pin Controller
> +
> +maintainers:
> +  - Andrew Jeffery <andrew@aj.id.au>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +        - enum:
> +          - aspeed,ast2400-pinctrl
> +      - items:
> +        - enum:
> +          - aspeed,g4-pinctrl

This can be simplified to:

compatible:
  enum:
    - aspeed,ast2400-pinctrl
    - aspeed,g4-pinctrl

> +
> +required:
> +  - compatible
> +
> +description: |+

description goes before properties.

> +  The pin controller node should be the child of a syscon node with the
> +  required property:
> +
> +  - compatible:     Should be one of the following:
> +                    "aspeed,ast2400-scu", "syscon", "simple-mfd"
> +                    "aspeed,g4-scu", "syscon", "simple-mfd"
> +
> +  Refer to the the bindings described in
> +  Documentation/devicetree/bindings/mfd/syscon.txt
> +
> +  For the AST2400 pinmux, each mux function has only one associated pin group.
> +  Each group is named by its function. The following values for the function
> +  and groups properties are supported:
> +
> +  ACPI ADC0 ADC1 ADC10 ADC11 ADC12 ADC13 ADC14 ADC15 ADC2 ADC3 ADC4 ADC5 ADC6
> +  ADC7 ADC8 ADC9 BMCINT DDCCLK DDCDAT EXTRST FLACK FLBUSY FLWP GPID GPID0 GPID2
> +  GPID4 GPID6 GPIE0 GPIE2 GPIE4 GPIE6 I2C10 I2C11 I2C12 I2C13 I2C14 I2C3 I2C4
> +  I2C5 I2C6 I2C7 I2C8 I2C9 LPCPD LPCPME LPCRST LPCSMI MAC1LINK MAC2LINK MDIO1
> +  MDIO2 NCTS1 NCTS2 NCTS3 NCTS4 NDCD1 NDCD2 NDCD3 NDCD4 NDSR1 NDSR2 NDSR3 NDSR4
> +  NDTR1 NDTR2 NDTR3 NDTR4 NDTS4 NRI1 NRI2 NRI3 NRI4 NRTS1 NRTS2 NRTS3 OSCCLK
> +  PWM0 PWM1 PWM2 PWM3 PWM4 PWM5 PWM6 PWM7 RGMII1 RGMII2 RMII1 RMII2 ROM16 ROM8
> +  ROMCS1 ROMCS2 ROMCS3 ROMCS4 RXD1 RXD2 RXD3 RXD4 SALT1 SALT2 SALT3 SALT4 SD1
> +  SD2 SGPMCK SGPMI SGPMLD SGPMO SGPSCK SGPSI0 SGPSI1 SGPSLD SIOONCTRL SIOPBI
> +  SIOPBO SIOPWREQ SIOPWRGD SIOS3 SIOS5 SIOSCI SPI1 SPI1DEBUG SPI1PASSTHRU
> +  SPICS1 TIMER3 TIMER4 TIMER5 TIMER6 TIMER7 TIMER8 TXD1 TXD2 TXD3 TXD4 UART6
> +  USB11D1 USB11H2 USB2D1 USB2H1 USBCKI VGABIOS_ROM VGAHS VGAVS VPI18 VPI24
> +  VPI30 VPO12 VPO24 WDTRST1 WDTRST2

This should be a schema. You need to define child nodes and list these
as values for 'function' and 'group'. Ideally, the child nodes would
have some sort of pattern, but if not, you can just match on '^.*$'
under patternProperties.

BTW, You can put the names under a 'definitions' key and then use
'$ref' to reference them from function and group to avoid duplicating
the names. Or use patternProperties with '^(function|group)$'.

Similar comments apply to AST2500 binding.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
