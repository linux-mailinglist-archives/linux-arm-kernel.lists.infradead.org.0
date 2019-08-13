Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606078BF91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DEyJ1TtyZxIePNaTTzYnvM6WRQoi5+niWkdjqf6jOBc=; b=o16rX0xagCgeYj
	O/ZiqsPF6V6+8/waHKhI8LIVIex0MXIVVqfE8sBfmNa2GweK9+axs3+Az7UxXQ9UrzZ3lEi+JJLu5
	6lamCAmP+vt62b1lnJ2zLFC06sbH+7aJjcxNqB1Pa6XUnZsJ2HDlHr4MlBfQ9b3mcP/ZtxxbW7BjS
	hMCF/8m8XX5CRmFVS0inM6pFatyAa57D87l9ahOFQWWKuL+W5voTpN0NLJd3TOzUqhhQ+t2K6c+7i
	cuIeI5GDC3kuOuHLNdU9BoYNUqC87Os6YllnNsN/zPjJ0yPKe8Aa3oHxbCL4y6UsOFcC6vUXieHKZ
	3tRBVpT+P/0U5gOdN1FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaVz-0002QE-K5; Tue, 13 Aug 2019 17:23:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaVq-0002Pk-5Z; Tue, 13 Aug 2019 17:23:11 +0000
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EB03214C6;
 Tue, 13 Aug 2019 17:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565716989;
 bh=oEIyygQpeyc5lZgtguO481uQtwKNligWTCld8t/UPMM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=pMsDao8Lhb4JfOY1tLFQq5Ki+A5JURQhuKVcQ63i/PvYhoxIo18eDqbP5YKmZLM9J
 1878SYWfxEDBVeouUdV2EjM3gBEHanSuEO3CJqzrDA0fDqloDKxr0EJEpxZlJA/K1R
 COr8q9noK7pTdlLQRxqEnBeFF+PzwdKaesbCuGWw=
Received: by mail-qt1-f176.google.com with SMTP id e8so6598926qtp.7;
 Tue, 13 Aug 2019 10:23:09 -0700 (PDT)
X-Gm-Message-State: APjAAAWlmMH977m69s5AGqg6jRUg2r89XuGSQA30vvIdKNkX+4jvV8oI
 O5O54ps+dvA69WeT7cMlgzupdAjkCgM5+iIUpg==
X-Google-Smtp-Source: APXvYqy2+6R8b2VmAb1mm1zXL0U2rDdmV0wVqEBWCEyUZTZp0W4z8AS8GmE6aw8CLPCiSVKucGkFVT4q+0lMBjKid1Y=
X-Received: by 2002:ac8:44c4:: with SMTP id b4mr23403904qto.224.1565716988767; 
 Tue, 13 Aug 2019 10:23:08 -0700 (PDT)
MIME-Version: 1.0
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-10-git-send-email-wahrenst@gmx.net>
In-Reply-To: <1565713248-4906-10-git-send-email-wahrenst@gmx.net>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 13 Aug 2019 11:22:56 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+01vXQpf_ZuAvetWvcGLhK4EiiB1qFqhRkM3PQWAzdsA@mail.gmail.com>
Message-ID: <CAL_Jsq+01vXQpf_ZuAvetWvcGLhK4EiiB1qFqhRkM3PQWAzdsA@mail.gmail.com>
Subject: Re: [PATCH V2 09/13] dt-bindings: arm: Convert BCM2835 board/soc
 bindings to json-schema
To: Stefan Wahren <wahrenst@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_102310_255063_B4857EAF 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Wolfram Sang <wsa@the-dreams.de>, Stephen Boyd <sboyd@kernel.org>,
 Ray Jui <rjui@broadcom.com>, Michael Turquette <mturquette@baylibre.com>,
 Eric Anholt <eric@anholt.net>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Linux I2C <linux-i2c@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 10:21 AM Stefan Wahren <wahrenst@gmx.net> wrote:
>
> Convert the BCM2835/6/7 SoC bindings to DT schema format using json-schema.
> All the other Broadcom boards are maintained by Florian Fainelli.
>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Acked-by: Eric Anholt <eric@anholt.net>
> ---
>  .../devicetree/bindings/arm/bcm/bcm2835.yaml       | 46 +++++++++++++++
>  .../devicetree/bindings/arm/bcm/brcm,bcm2835.txt   | 67 ----------------------
>  2 files changed, 46 insertions(+), 67 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
>  delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm2835.txt
>
> diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
> new file mode 100644
> index 0000000..1a4be26
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/bcm/bcm2835.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Broadcom BCM2711/BCM2835 Platforms Device Tree Bindings
> +
> +maintainers:
> +  - Eric Anholt <eric@anholt.net>
> +  - Stefan Wahren <wahrenst@gmx.net>
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - description: BCM2835 based Boards
> +        items:
> +          - enum:
> +              - raspberrypi,model-a
> +              - raspberrypi,model-a-plus
> +              - raspberrypi,model-b
> +              - raspberrypi,model-b-i2c0  # Raspberry Pi Model B (no P5)
> +              - raspberrypi,model-b-rev2
> +              - raspberrypi,model-b-plus
> +              - raspberrypi,compute-module
> +              - raspberrypi,model-zero
> +              - raspberrypi,model-zero-w
> +          - const: brcm,bcm2835
> +
> +      - description: BCM2836 based Boards
> +        items:
> +          - enum:
> +              - raspberrypi,2-model-b

Don't you need brcm,bcm2836 here?

> +
> +      - description: BCM2837 based Boards
> +        items:
> +          - enum:
> +              - raspberrypi,3-model-a-plus
> +              - raspberrypi,3-model-b
> +              - raspberrypi,3-model-b-plus
> +              - raspberrypi,3-compute-module
> +              - raspberrypi,3-compute-module-lite

Don't you need brcm,bcm2837 here?

Please run 'dtbs_check' and make sure there aren't warnings (in the root node).

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
