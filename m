Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAF21706C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:56:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QKLd248KA1rYgfr/fDun5h9/vkDBmu6GYiiMA7bmME8=; b=SnI8jN2/9cVcrZ
	LvZaSPW4d4ufBN1IMkFzphtX6EO0gpjD8qx9vFggwi5QMfMYZBGCm0jY6f9BINOeWeSlDUJLyNlFO
	gFFSudVj2MuSSWaY7SZdWt2ZQpFt2VcIn3/q/m8qoiZqP2Ou15Ztvwh1mJbVZIGujkExTt2lSJ3+j
	j4KySTllR+YgsNGEQ1cy8kBjqn+kzdwNWYt05982MlIZsw6tPOf/bfz2xDyKuTQGMJXlhjOKBKnnv
	EHVFZFrTaWvSX8OAbSFKyw+MYTHNhLBok1ZxJNwhf5Ye7/AZFlBNOIHp03wVPaVSgNQy4vNZ4TLC6
	euNMiVatf97Rsn7yZPOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70v7-0003PG-5w; Wed, 26 Feb 2020 17:56:29 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70ux-0003OI-6H
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:56:22 +0000
Received: by mail-oi1-f193.google.com with SMTP id j132so365253oih.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 09:56:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=o2vY9IYp03giWqGFoGJ0CHo6HYbOh4Eilf+MUDG2LtI=;
 b=G3MNLIAO6/MVHpaS135nRZhrwY6wQt/ttCudm48gDUEtoAW2URKYy3/ZUuRHwB79Fy
 aTRojsWtGmq1wJNaNIrJMUSYxGkMIoq8MChr5BL8ZPbqG9Qu5sDUYNBfGXzjdeTIyyyr
 kSulVULEaj0gnGBvmcn/zWCfzJF1zrlQXxcDQn+Oz35TwZAHu1jnY9yTS43dNrGVFmNA
 TWvPwcnCgQ54kIkokluyLFAKf4Cuisr24hzIbJsLDxlYcX7DAnxL/Rp5EvGkEz86moDz
 p3wX0ezhJWQbqlIcd5r4dfb6OdCcpZwYioGaXpVkiDvQ3DleD2X6B1YQWuFx1BGWmEOT
 BKzg==
X-Gm-Message-State: APjAAAUXk9MV75Mm7kY0jid524PKZObRfUoBnfDX6FwxoPDX4YprNoMP
 A/pHMoGQrIiqd0espMCLQrpYUZYGLRnCRWk7FSQ=
X-Google-Smtp-Source: APXvYqxtyz/hmND7MN3FtCJyPuXLik9L68653TraA5yNPFKW2DOvYLDAW68OGWHaUnODifdT18/wvc/7WG69dRcEqYk=
X-Received: by 2002:aca:48cd:: with SMTP id v196mr166058oia.102.1582739777300; 
 Wed, 26 Feb 2020 09:56:17 -0800 (PST)
MIME-Version: 1.0
References: <CGME20200225144815eucas1p1229ceb0d017b46cbbe2409639a7c1f83@eucas1p1.samsung.com>
 <20200225144749.19815-1-geert+renesas@glider.be>
 <e249c123-8d00-4aa3-34b8-f82d52428966@samsung.com>
 <20200226174905.GE25745@shell.armlinux.org.uk>
In-Reply-To: <20200226174905.GE25745@shell.armlinux.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Feb 2020 18:56:06 +0100
Message-ID: <CAMuHMdW1ojYyWXZpzgiy8PrZnR2PQ9n3SEDrQ7hFFUg0j-jegg@mail.gmail.com>
Subject: Re: [PATCH] ARM: boot: Fix ATAGs with appended DTB
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_095621_302185_E6925C82 
X-CRM114-Status: GOOD (  16.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Wed, Feb 26, 2020 at 6:49 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Wed, Feb 26, 2020 at 07:35:14AM +0100, Marek Szyprowski wrote:
> > On 25.02.2020 15:47, Geert Uytterhoeven wrote:
> > > At early boot, register r8 may contain an ATAGs or DTB pointer.
> > > When an appended DTB is found, its address is stored in r8, for
> > > extraction of the RAM base address later.
> > >
> > > However, if r8 contained an ATAGs pointer before, that pointer will be
> > > lost, and the provided ATAGs is no longer folded into the provided DTB.
> > >
> > > Fix this by leaving r8 untouched.
> > >
> > > Fixes: 137e522593918be2 ("ARM: 8960/1: boot: Obtain start of physical memory from DTB")
> > > Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> The original commit hasn't been submitted, so it can be fixed before it
> hits mainline if you want.  Let me know what you want to do.  Thanks.

Fixing the original is fine for me, of course.
Thanks!

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
