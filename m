Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E226C1BEB7C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxF7PcORRU4NOLhJDWgFG/kfkhe3tMW74byQgV4Akrs=; b=pAjHE8eqOVKYO8
	Ht/snyVOM/+IhKLJ5N2Dwzz7k5DrbzZSPVKhW8f0jTKj9Hlc1fUDM69IzSWofnYO6Ye3VcLrWaUoY
	Bzma52DROIX+9IDPnwWLM9UiGlHLiBa7tShHUSHP5tl6/gioYdTlLSYfnsTRTc7ABki+PgFpWaoFX
	t3RTMKoaMyuABQzQcihcnVrUphza0RY9xV9FY9h71/hCG2p+4dIIf8jF6F6MgyLkYgTWgvyOpfb7L
	ZMK24wkD8ZFG7ml/jvOiIX8Le7x+IuKWVkgbZ74PCQQaBki6kbJ84KDaaWxqkF8SxIwHhm6XMLmuy
	tZjJ3gcqXCaaDohTRctg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTurR-0003KT-TQ; Wed, 29 Apr 2020 22:07:21 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuo5-0006PG-Pn
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 22:03:55 +0000
Received: by mail-oi1-x241.google.com with SMTP id i13so3314428oie.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 15:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VuIJyUBI77A7IsS+UOzXlF4URqxn4aKY6yPSfUat6bs=;
 b=jYjww6TRFcRX3Y23g1fUDaSBixBCmtlAr7R6Tr647wYfD6+VQtLpQyI3KQy3e9YvVZ
 GpcxE8fFEo6OWVSKuQwuHBjMY4thiSIdKoHlvitdIYxmtyZpsMeQejW1hdtDaMB4wmk0
 F7jHmJII2Gtb6LCbj5zCojkV1FYAgJwh+xYKpP2RtNrp7FRaObjHYxH9sg/TrRzwJHs6
 li/TE2Nx2Vs6kvMJWzIHQzUj7Egf5+H/qSp0aglmR2A/9ci3Mcn2ZBQRk2z4sNW5E2k8
 wD3tk7bVwZl351JxP4iOxPoHCGy92KYF/3XHy2wtZdSpGhHG4SJRGO7npCeAVQIm061u
 6Yyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VuIJyUBI77A7IsS+UOzXlF4URqxn4aKY6yPSfUat6bs=;
 b=shcRW1LYsm8Ve3+MiJM+02mx9gEtAJUzs8DykCz4nuFqiB9T+cpaHnaB7MoyXQeDgo
 L7qzzP5/Q74HTPOnOmdmTP6tODJp8PrYiOIwJ8vywe5Rs3nvYwGFusaMHSgmdDABlai8
 DHjuIBAsKtS7n2Op0TnvV99C9xzF6Bd4p/zcGIysD16b0LuOzbY6vZZTkrb47uRTu1pD
 /UJWl14d1C3sMEAWgQfSHsIfOgSuGpzmNwSs85Fiqy18unCxdeL9X5Cdr7pFj8FAPhsX
 i8pb4F20Xb60nykbtzgmGSy7RK7NMg0zvVfTGAEioYHHhBvKknaZ4UkIXTN1bU7vEaE+
 E0Xg==
X-Gm-Message-State: AGi0Pub9EDriXvvVX42giUz+LglxlT6snBrqAtWlf6TBuxneZgIIMbmx
 IKxkQqIA5ZFvKlXTNwz12jhy8ptfpbw9r21hfLI=
X-Google-Smtp-Source: APiQypJ3zwVfJk2nMrXMJzcY0A34yx8sFc7iQq4Qt4G4w6K/OJdPad49V5wxoF+Zc/LWhjYb6zlkiutTqfBQpvdh7bQ=
X-Received: by 2002:aca:b783:: with SMTP id h125mr349467oif.62.1588197830734; 
 Wed, 29 Apr 2020 15:03:50 -0700 (PDT)
MIME-Version: 1.0
References: <1588197415-13747-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <1588197415-13747-5-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20200429215955.GN1551@shell.armlinux.org.uk>
In-Reply-To: <20200429215955.GN1551@shell.armlinux.org.uk>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 29 Apr 2020 23:03:24 +0100
Message-ID: <CA+V-a8syz--q7MCNL_5TZmnYqgc7W6nuXJOt6VJhJutuS3seKQ@mail.gmail.com>
Subject: Re: [PATCH 04/18] ARM: debug-ll: Add support for r8a7742
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_150353_865559_9201801C 
X-CRM114-Status: GOOD (  14.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.csengg[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-gpio@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 LKML <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dmaengine@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 LAK <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thank you for the review.

On Wed, Apr 29, 2020 at 11:00 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Wed, Apr 29, 2020 at 10:56:41PM +0100, Lad Prabhakar wrote:
> > @@ -1701,6 +1709,7 @@ config DEBUG_UART_PHYS
> >       default 0xe6e60000 if DEBUG_RCAR_GEN2_SCIF0
> >       default 0xe6e68000 if DEBUG_RCAR_GEN2_SCIF1
> >       default 0xe6ee0000 if DEBUG_RCAR_GEN2_SCIF4
> > +     default 0xe6c60000 if DEBUG_RCAR_GEN2_SCIFA2
>
> Hi,
>
> This is ordered by address.  Please keep it so.
>
Sure will do that.

Cheers,
--Prabhakar

> Thanks.
>
> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
