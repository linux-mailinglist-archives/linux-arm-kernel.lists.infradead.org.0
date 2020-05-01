Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7766F1C0F2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 10:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9F7RMeOwRDxJNyN1gdyjYOO7i8KEWBrPzHQwUKDFIgo=; b=uak4/21XiAnjLm
	A/eWph0TrvkotBnllUI7An6fbvlM2ajpKUZ3iWNgQXrBbiFb7dlIw/LsjyHff7CWdKE2sTT7xgO6B
	qgGmdrxcLVUXh+aK8yZd9sVEzak9UW5bDTEENhYAjqNO8tX1P8G7NGxsGypsRRszkk8jKcBM+L+e4
	NACW1bdxpClhUO+gnriK5zQp/RNYHcmOxilyHh4BXZLA0hoc2g+mVWu/c1XiAMniA5WAY+e5C/Pb2
	jlpa541pbcVvftiS6A0CJrUwFfxUjmC8hnyrVu2WC1RmtW6uEua4LyKh1WePxc/ErD7wbJc4IfZiR
	CcrwNljSxUQYDRRtbZOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUQjQ-00089f-0d; Fri, 01 May 2020 08:09:12 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUQjI-00088T-RE
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 08:09:06 +0000
Received: by mail-oi1-x241.google.com with SMTP id c124so2068377oib.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 May 2020 01:09:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0pg+1ScPrEODM3uAFA9zTWu/I1ZfaUw4KVmoBAKoheA=;
 b=YhXnbMYvvL2NERhKKxsDO4eX9F2iF5QES+58BPMPdkDa7+HWnKRPXBtihaQRlx5jhJ
 ZJ+u6PNVJetL8DPyXrHPuRXEcd5/bi3d1s+fxldrozxvCiSxYrfbkwMuRZOHt7so1kAn
 aiEHVbhCFKQAXa1VhD+k4dfmV7tkNmjJFq0NAXNXDGY0lueDa1Gg4pPmbic0IFrkPRlN
 MIr4KPcfXB2XLJFMMuVotJ6iBWmim1etULPjiMGfMuxcGrgUBWdsfJIZUHIjejVd2NMD
 zLRXjnFO6JT8OhAo0LD0S9lYl11vXLyJc2xc2LLFyC1GgYs46wc1cH263vVfeZ8MTfER
 CRtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0pg+1ScPrEODM3uAFA9zTWu/I1ZfaUw4KVmoBAKoheA=;
 b=WBSgK12rC+AoTfu4UibFhMByy6KZvzOmlsGUsXzq70mdGCkuITh03jZz7p98SSR0dO
 smvPMp7/pqbC3ejRzlsYFmt82qf0sJofRKp0SoxHd0bLahxVRrVM8hcvSVh8vokSsQA2
 wB6l1vw3wMbRdL9cTwjxlZXGlWQZTdVfY8O2UESeICnq4mwc64G+dK13hmh6RnihbEGo
 +G7STzvIeu81BF8e9a1hcC1ySD0UTqVxtbGj0DA0B47f2YnCrd5Ak29J2HRs7Xs9Naju
 O3df8sovSwY0e0QXI6uvLBoIFhys2f9sVPZ3LtPi4Vt/k9qF2rEOGw6oXFJ4yrAJLEQr
 GuIg==
X-Gm-Message-State: AGi0PuaJykri3CiAFJ2nw39w/mOXfZXx/c6TSu2XyT7lbpCGAnt4CwXO
 YljrGz/1hFszRLuH4CmMZqCNBa4MsiEbDQ4cI84=
X-Google-Smtp-Source: APiQypL4tkkgblP6s79WD1Ii4byJ0FZw7ndmwSXmo65KLcrLpTxyQBgTjG8TlCh5OP8wJ/Y3Cf7Oky6dSkWu7P5a6UQ=
X-Received: by 2002:aca:b18b:: with SMTP id a133mr2294802oif.142.1588320542697; 
 Fri, 01 May 2020 01:09:02 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdWNSgqfCd4ZGR4Y-9M_-nKH7nO9aNcQ9z-E97CB4E5Zbw@mail.gmail.com>
In-Reply-To: <CAMuHMdWNSgqfCd4ZGR4Y-9M_-nKH7nO9aNcQ9z-E97CB4E5Zbw@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Fri, 1 May 2020 09:08:36 +0100
Message-ID: <CA+V-a8s7s7=kxOp9ohrMp+o6KDuO-Vn6P7YX2L6fC1=_A9kVwg@mail.gmail.com>
Subject: Re: [PATCH 06/18] pinctrl: sh-pfc: r8a7790: Add r8a7742 PFC support
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_010904_880074_6960F131 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
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

Thank you for the review.

On Thu, Apr 30, 2020 at 2:17 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Prabhakar,
>
> Thanks for your patch!
>
> On Wed, Apr 29, 2020 at 11:58 PM Lad Prabhakar
> <prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:
> > Renesas RZ/G1H (R8A7742) is pin compatible with R-Car H2 (R8A7790).
>
> but lacks several automotive-specific peripherals.
> So please split the pinmux groups and functions in common and automotive
> parts.  From a quick look, for now the latter is limited to MLB
> groups/functions.
>
Yes I can confirm its just limited to MLBP, Ill split up into common
and automotive parts and send v2.

Cheers,
--Prabhakar

> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
>
> The rest looks good to me.
>
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
