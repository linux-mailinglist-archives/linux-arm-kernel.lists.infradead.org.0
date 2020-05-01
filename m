Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA931C0F57
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:20:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ALJwa2NKoD05zHjk/rpqgpfd81kuJRegaNzSfEwJNrA=; b=U/AgvRXhH6ABNm
	qw3d4lKHMdmxtvuhZVUCvKIj4hOqKQ+sdrGlgIhpeYGVibF2VisadCyJxuz65LOLOusEc66pt+ZRZ
	gRCF75fHLkgbP7pqvVVPWrjCHuIScQ/+2dGZTwGCPmTQ1Tp51fPaAXdkXhScMTBZ+gbveXC2RmyxK
	Uc/O+i/NhFTDNCgg12Wkv9Zw/6d0+jheOXY6nHjAc/ijhaPwvXTCOIVwJSBWdmi63FezuUnjh0X16
	zjnGsRJWlRuLrZ/rX9oy7RnyOnN0qwPPdFcdbCESMaUT0XKmx+FYGOoYFX4/1PpRz+pKXQYd/ZGBr
	oQ+CiassG5JCE/giVx6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQuK-0000PR-U5; Fri, 01 May 2020 08:20:28 +0000
Received: from mail-oo1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQuE-0000Ot-0T
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:20:23 +0000
Received: by mail-oo1-xc41.google.com with SMTP id u190so569651ooa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 01:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4xmDrknoIK7bXjgHNUmPbIHsbFNrCtpw+rgXposQwms=;
 b=O5Bdg7qQzAnlPhD7xVJhnqshnj7xNmXBKRGbWbhp2T9vzzM1MpFW+E+RYCzOknKpj8
 ky8+dFqN4sKrq5u57LLjx7VY+/3/WsZskllAALIAtybnzNJR5vjiggO1UpC+6aDbbu9t
 kydHSvKLXU7sGWkz9y9RVKviHgYZWyYOdg2x61aI7Ws5OUMZX6mszoJOTXjCYgE1kCG3
 YxX1fPKMUR1N/tfPH7XlGmuqZdaT3kJbh6CaQQU6+twLEmxTOFlPMFYj1ocjQyMHVXpF
 B5EvjhnHPr8btv+Tyz5UgmMlUf682frU/Xa8+Ff2S6K0/HOvwKzJmdLj2aYf5auUrllc
 1zXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4xmDrknoIK7bXjgHNUmPbIHsbFNrCtpw+rgXposQwms=;
 b=hNa43Epi4V6nYfTTQdxkFNM8u7TsAa5yE5AIABd3GJnssYkMON1m/PFMs72CJvuySb
 97PcDSNyke7vg+BEhHjqNNLSDJiOSkWKhoJJgOpJaBuOZN7ktiwebUOBPVgJ/xJfcAZv
 jnoDztRaaJLVxehNdvgrm935UkG4Gayi1zYLfn4P11Wpkbsb2hIkDh2RE1mlle94JtMA
 GlhWmLAV9VquzDz44+D9JWNDefMBtjF7maPD+hJW1UF309OkKs7XcopETumIWq+2xb17
 woeaBjb4xAEtQ/CFkubTo8c0SWmDNrA5IbvJLgCpVXSChagJy7aj0neCbSUkt3ZgKeKA
 RRyQ==
X-Gm-Message-State: AGi0PuYrPlyaBr8Xyh+Vz91iiwWCi7kN43+1NZMYsAFR55mu5QuLpPMq
 uAMeE1Qhxebe5SeEB2F92MxmcEy/yzF1fzhPKUw=
X-Google-Smtp-Source: APiQypKWRZyPptVG5tDacv48mYRSDp6n8y852TNesK+NocS5PxHwyt2eSwaWJhO2Yzy3GzH7tq6UeX5cCu+1f17mElg=
X-Received: by 2002:a4a:a209:: with SMTP id m9mr2850194ool.62.1588321221043;
 Fri, 01 May 2020 01:20:21 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdXEu0i8APM+g3TWbkfkLbYtCzi7uJABvMscS0a_j030tg@mail.gmail.com>
In-Reply-To: <CAMuHMdXEu0i8APM+g3TWbkfkLbYtCzi7uJABvMscS0a_j030tg@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 1 May 2020 09:19:54 +0100
Message-ID: <CA+V-a8u8r+zT-HSHqPQdRfCKOmx=-a_GrTTM1ZQueOwnvT8xeg@mail.gmail.com>
Subject: Re: [PATCH 04/18] ARM: debug-ll: Add support for r8a7742
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_012022_074046_8DBD6E2C 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 Russell King <linux@armlinux.org.uk>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dmaengine <dmaengine@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

On Thu, Apr 30, 2020 at 2:03 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
> <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > Enable low-level debugging support for RZ/G1H (R8A7742). RZ/G1H uses
> > SCIFA2 for the debug console.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
>
> Thanks for your patch!
>
> > --- a/arch/arm/Kconfig.debug
> > +++ b/arch/arm/Kconfig.debug
> > @@ -976,6 +976,13 @@ choice
> >                   Say Y here if you want kernel low-level debugging support
> >                   via SCIF4 on Renesas RZ/G1E (R8A7745).
> >
> > +       config DEBUG_RCAR_GEN2_SCIFA2
> > +               bool "Kernel low-level debugging messages via SCIFA2 on ARCH_R8A7742"
>
> R8A7742 (without "ARCH_"-prefix)
>
> I can fix that (and the sorting issue) while applying, so
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v5.8.
>
Thank you for taking care of that.

Cheers,
--Prabhakar

> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org
>
> In personal conversations with technical people, I call myself a hacker. But
> when I'm talking to journalists I just say "programmer" or something like that.
>                                 -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
