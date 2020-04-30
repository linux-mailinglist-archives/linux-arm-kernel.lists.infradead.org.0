Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4719A1BFB17
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:57:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BMSsawiGTuJm0qbgC4TgcGgHxl947IsvbJCQWHTkJQ4=; b=hY8XJzclYWf2om
	KXSIClrYjDLnuE/qiiOgWVq5soQEnnHHLJd6FjxwTKwZOlVYCDr+y2Oc+hT/wDO9+D7NXh6UwOFqc
	YEmsJ6gtGmvxhHI1ope9uNKX+UalnEklvN+8E5zqDLUeqVjtB/drraLxXRWxFO51AU8VyJRrUThsS
	so/uTHwSNlVyTxyQe+VIraij7afWf1qAFSlv6kD8mZTK6v4QqEs17PIZXbNPYRlmI4AW04S8fooLA
	q9ZzU7PSqyhSvWq3euQa0xHkVqJZRSvXZ125h+D+y9pGG6x/ieR+zNRrLSKTEKwevnziwM+4oOJb+
	wIJGDptxmCGkKBp1E4zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU9hE-000891-99; Thu, 30 Apr 2020 13:57:48 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU9fv-00073D-1B
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:56:28 +0000
Received: by mail-oi1-f195.google.com with SMTP id j16so5253102oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:56:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J0BdSY6aYGuZTCeF5gOrkfhmzXUO5QbPbC35o2A29hs=;
 b=Had3Hhj7A1vSNlrFXNaZxY5fmPs95zPuw3XaDZZj+yHrKT7pGz5iFEObq7+U8VKeKR
 q1Qq3rSx4R2QNpI6EtAca2Fhz9l63dvSxAmrXoxmJD9h4dsvxnLFydP0nrrD18lXbALA
 /GzyShNrI1zep5xwnaX7TzKFQ4s1+Of2jEWoTVxcUd9rOABMIC1deWu6vWD5FlpWG6j3
 NsttETovsG1MV6z48C+kK+GyZP/2v+t0vvMYFyJJYkjEAVx77lnaAFylcVOMuFNKPU9s
 Xa0PWEqlFfwtubiqtvvPyqv1QyNpB7I5YFHFtLLg0RNERWVbxo27ZicLmAjJWVSpfS13
 ICwg==
X-Gm-Message-State: AGi0PuatBrdzID+Y2kM9bKx30zAVrEONbr5FeIAyce++TJPwmLfPoVpv
 1v7s9ybXw5wcsXgoJAD5HDpY4j3nza+KPEGscDg=
X-Google-Smtp-Source: APiQypKEYGGNvKQoS3yHrfZA1ZqB91++Kmari2arpNNAHltBPFXklTXvWPxfYoN3XHTdW9bxVOsPDs6q+I2XoirDHdk=
X-Received: by 2002:aca:895:: with SMTP id 143mr1736708oii.153.1588254986270; 
 Thu, 30 Apr 2020 06:56:26 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-11-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-11-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 15:56:15 +0200
Message-ID: <CAMuHMdVY8HOe=R82Z=ymnSiq_zUXDyZNbDYy2RwaPD9hVkkQrA@mail.gmail.com>
Subject: Re: [PATCH 10/18] dt-bindings: rcar-dmac: Document r8a7742 support
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_065627_123993_6F230418 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dmaengine <dmaengine@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> Renesas RZ/G SoC also have the R-Car gen2/3 compatible DMA controllers.
> Document RZ/G1H (also known as R8A7742) SoC bindings.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/dma/renesas,rcar-dmac.txt
> +++ b/Documentation/devicetree/bindings/dma/renesas,rcar-dmac.txt

This file has been replaced by renesas,rcar-dmac.yaml.

> @@ -16,6 +16,7 @@ Required Properties:
>
>  - compatible: "renesas,dmac-<soctype>", "renesas,rcar-dmac" as fallback.
>               Examples with soctypes are:
> +               - "renesas,dmac-r8a7742" (RZ/G1H)
>                 - "renesas,dmac-r8a7743" (RZ/G1M)
>                 - "renesas,dmac-r8a7744" (RZ/G1N)
>                 - "renesas,dmac-r8a7745" (RZ/G1E)

For the logical change:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
