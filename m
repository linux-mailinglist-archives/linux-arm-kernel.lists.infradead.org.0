Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFD1E2399
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mVRbb5bOeaTidofpsvVRLFbO4zOyGZern3VGXNp7020=; b=XXzh2qf1Yaw2gN
	WuDjqtXsVM6rk/T5m6x52Fe+PUwCYn07DaTmKJRCPaNiLgTksSaV8FsMc+/cT9GsMq2Yw+d0PytwC
	Ehegghdm0+LshEJHAI6RiqwmrUpmFGhrdM4td7fZCpW89AehVJAHpzm9/b033fcNNTX5t/YEHqB6w
	Sk9Y8gTbkABn7iXa1h+76rxDJTUp56Sg3JY6w11dSnE1yxvqDNmDIgtrj7E/myXjRqbp8pKOb2rY9
	trtkLre9LdtdK4H04uBDryF9zGBT2L+7kG3af9VGG+OZVdXkAyH99PHOt7YX/2DwEgzNfF3srUvrN
	Y9Ho905hfiu/v9Ei2R8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMq8-0007Um-Lz; Wed, 23 Oct 2019 20:02:40 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMpz-0007UT-Px
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:02:33 +0000
Received: by mail-oi1-f196.google.com with SMTP id w144so18532356oia.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:02:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oozQkcJW95p1Dv4QaVuryfJ5LQcESPRxHdu7Ak0V1Z4=;
 b=BxJ1BMMxGETCedtIvxwC73lTpxk8NVzSnbxtji2nAvhDeO2nGpBfxbvTMZkEAZXQ8B
 K7/YTC9x+O0Gu7T6QVPc5xolpthfFIeLEhPeqNDKt6GbDusWGpbAnimXW/gLzRfJn6I5
 9zFiZ5nqLbSzpR0XwavEDjhcT5RiUDGkIII7UFdDQK8koZ4jw2a9ufNL4fCey/um6VLG
 EEbcARblSFZcSTyyHvuNGUpPamhHT835oSocnDYn6jKsTfjRARYhhhTgkOrPTMvBEhJQ
 vFUl4787V4Ma4XUH/B8cBZ+NyEWeuGMpAspM4boN/BkbLmXu+jOv/JsXgXdD1gch8koo
 ifWA==
X-Gm-Message-State: APjAAAWgbOw11cYRDPTEr9tsZ8yAPnuKLWnpFYOem6VUf2Gxx7RnebuX
 Wwhf3MzfE/kyliprXfYCnw==
X-Google-Smtp-Source: APXvYqxFAjzGZNtqdc+1PYTID1AcXDBTvo2ape+7GxX6izU5pTGV6D/uDL/INQ1Bx2cz/ihfg3IHEw==
X-Received: by 2002:aca:c40f:: with SMTP id u15mr1506436oif.67.1571860949970; 
 Wed, 23 Oct 2019 13:02:29 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y18sm6342903oto.2.2019.10.23.13.02.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:02:29 -0700 (PDT)
Date: Wed, 23 Oct 2019 15:02:28 -0500
From: Rob Herring <robh@kernel.org>
To: Daniel Palmer <daniel@0x0f.com>
Subject: Re: [PATCH 1/4] dt-bindings: arm: Initial MStar vendor prefixes and
 compatible strings
Message-ID: <20191023200228.GA29675@bogus>
References: <20191014061617.10296-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014061617.10296-1-daniel@0x0f.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130231_837633_FE5C04AD 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <mripard@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Sugaya Taichi <sugaya.taichi@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Andrew Morton <akpm@linux-foundation.org>, Shawn Guo <shawnguo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 03:15:56PM +0900, Daniel Palmer wrote:
> This adds a prefix for MStar and thingy.jp and then defines compatible
> strings for the first MStar based board.
> 
> Signed-off-by: Daniel Palmer <daniel@0x0f.com>
> ---
>  .../devicetree/bindings/arm/mstar.yaml        | 22 +++++++++++++++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |  4 ++++
>  MAINTAINERS                                   |  6 +++++
>  3 files changed, 32 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mstar.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar.yaml
> new file mode 100644
> index 000000000000..0ea5b2b9387f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mstar.yaml
> @@ -0,0 +1,22 @@
> +# SPDX-License-Identifier: (GPL-2.0+ OR X11)

(GPL-2.0-only OR BSD-2-Clause) is preferred. Any reason to differ?

> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/mstar.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MStar platforms device tree bindings
> +
> +maintainers:
> +  - Daniel Palmer <daniel@thingy.jp>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +

Drop the blank line.

> +      - description: thingy.jp BreadBee
> +        items:
> +          - const: thingyjp,breadbee
> +          - const: mstar,infinity
> +          - const: mstar,infinity3

infinity vs. infinity3? What's the difference? It's generally sufficient 
to just list a board compatible and a SoC compatible.

> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 967e78c5ec0a..1425468188da 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -617,6 +617,8 @@ patternProperties:
>      description: Microsemi Corporation
>    "^msi,.*":
>      description: Micro-Star International Co. Ltd.
> +  "^mstar,.*":
> +    description: MStar Semiconductor, Inc.
>    "^mti,.*":
>      description: Imagination Technologies Ltd. (formerly MIPS Technologies Inc.)
>    "^multi-inno,.*":
> @@ -943,6 +945,8 @@ patternProperties:
>      description: Three Five Corp
>    "^thine,.*":
>      description: THine Electronics, Inc.
> +  "^thingyjp,.*":
> +    description: thingy.jp
>    "^ti,.*":
>      description: Texas Instruments
>    "^tianma,.*":
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a69e6db80c79..8b7913c13f9a 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1981,6 +1981,12 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
>  F:	arch/arm/mach-pxa/mioa701.c
>  S:	Maintained
>  
> +ARM/MStar SoC support
> +M:	Daniel Palmer <daniel@thingy.jp>
> +L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> +F:	Documentation/devicetree/bindings/arm/mstar.yaml
> +S:	Maintained
> +
>  ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
>  M:	Michael Petchkovsky <mkpetch@internode.on.net>
>  S:	Maintained
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
