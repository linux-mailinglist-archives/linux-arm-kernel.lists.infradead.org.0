Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE071BF8D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 15:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cq8x0aV7uaUXRzao8lqOLfEuXdlRPZDp7sDKa3u9z2Q=; b=ePCnJxS/Q8fmiL
	xKrGIAtpvPDn6qwBBzIgMtWXbKTCtJqFevFwqu7501xKTLsf7eWoBxQLnCzUwGhCNpoFLF246bKti
	D30+soFHbmy/PH5itQODvvYK5JrG/amql64i2L/NYm4K2xFrX5At2KzRzdKhE1hv47Y9Y9g2Te0aw
	B3S1Q6sHec6nwNePxkTmdySLZb9Y5Z15uVv7LLY3C9k/2ef3uyfo+X3rvC8u/Pm686aOlV9UVHaon
	wJJl1gTOpVYTjZ9il4OxpzFwA9cntKxLZlT0Q5+JzsABlzZ0Muygs40kmL2IvkkqEHplqFwYnruN8
	/jchvBycf2Ky09FfXeWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU8qm-0004to-BW; Thu, 30 Apr 2020 13:03:36 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU8qU-0004nu-5m
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 13:03:19 +0000
Received: by mail-ot1-f66.google.com with SMTP id g19so4805859otk.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 06:03:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hPxWzD7KDAoXAsEKx6r6DlSZdVX/2/j3BmdPPiNmmUk=;
 b=WsnQMt0CKxJbFej9PJWq1pBwUTeVAGMickaNKdHo0+npxFcwtp96YgFDzkS/qyD6Yl
 aKU6q2vshMVx1dNzKBizm/PXEJgzaOku9eYMP18AY7fpeR/lEMJAZs9Gk7cACpBWiaBt
 4BUMjFA4Wp7zUbaU9iMUuTk+nX947G/ZK1xoQ1x8XtfIaYB94sgVZIx1ZaEbIiCZlzt9
 l6rmNMtyktPWRD7oiRfcjXf6/UnMLhQ3lgdnpSPk1Tk8Jcl4M4zcDGv4Bl/S7xbA3vF9
 vFWVEFxP7ADlU7OFCIG1HPQnAvuabjYB2c96p//Z+nfYOY7BwRnAAw4gA5WFVy6xbmpT
 Y6eA==
X-Gm-Message-State: AGi0PuapFs8RdRfXBql5RQg7c6oEs3Jj+JtJ1dzBfPHhiIqzgoiVceos
 XOA4V5KcgJpoJubtNE/Z5LDWmGLVvyTcct+2SlA=
X-Google-Smtp-Source: APiQypLffzvlZkntNwieMuPXx5W5WCKlm898qoNdXGpbuVMWO5D2B4Wdg+zmy4m1OurTy544WOAOJHj9HDm1I+Pxav8=
X-Received: by 2002:a9d:7990:: with SMTP id h16mr2340643otm.145.1588251793175; 
 Thu, 30 Apr 2020 06:03:13 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <1588197415-13747-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 30 Apr 2020 15:03:02 +0200
Message-ID: <CAMuHMdXEu0i8APM+g3TWbkfkLbYtCzi7uJABvMscS0a_j030tg@mail.gmail.com>
Subject: Re: [PATCH 04/18] ARM: debug-ll: Add support for r8a7742
To: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_060318_219090_FB38116C 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Geert Uytterhoeven <geert+renesas@glider.be>,
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
> Enable low-level debugging support for RZ/G1H (R8A7742). RZ/G1H uses
> SCIFA2 for the debug console.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm/Kconfig.debug
> +++ b/arch/arm/Kconfig.debug
> @@ -976,6 +976,13 @@ choice
>                   Say Y here if you want kernel low-level debugging support
>                   via SCIF4 on Renesas RZ/G1E (R8A7745).
>
> +       config DEBUG_RCAR_GEN2_SCIFA2
> +               bool "Kernel low-level debugging messages via SCIFA2 on ARCH_R8A7742"

R8A7742 (without "ARCH_"-prefix)

I can fix that (and the sorting issue) while applying, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v5.8.

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
