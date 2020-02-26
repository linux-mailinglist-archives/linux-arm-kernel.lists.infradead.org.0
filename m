Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45710170A00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 21:48:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBqVdrxNpdcXm9DYCmYd6RvZ2ZZMpd6cemZQlOb8f7w=; b=njwsJQgxJS2Ert
	ccaZ7Y/vPAXSuSIdtopIDRqsuNZnKP2ENag+VrkfZokF8JFp8uYjKSwhhI6sZ7fOBRf2on8UCtimt
	TGKxz13GJNb/iEZ0R1EVs5uKSJiAVjKAHSdB0K45nIP22BzcfZpVDuYbznfxa17gD/SQW5p2AvIv1
	uW/oBsRfXs+/FqTtsQIsActiA7/jfcxW4+hWD2BE76bc+B+jKpnSikyGUnSgTqqSv4gmvL8RwJ0rz
	K9rDcVSlS3ZK+2lqErCml3be7OCdjMwA+/sWx3ca/Om9Dv1RQ3A17p8vU2BGmTzuyWugm327HN+zf
	l+Vw3R3+r3ZpaRb9Y9og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73bz-0001JU-VZ; Wed, 26 Feb 2020 20:48:55 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73bq-0001J1-Gs
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 20:48:47 +0000
Received: by mail-ot1-f66.google.com with SMTP id j16so809531otl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 12:48:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vg9cOMro+i98waebif4aU1cclILRMqAhraoxkLqHft0=;
 b=HJMXKszeyOXpuL8hAuj8cQtjgf7gqPtaXtl9wv/WNsr4sxsFr1yWeojOmAnQDXS/uF
 3/fRzlvqLq8T1XpvVfHNBZycYW9i9MMaCbUaHRMPbvyNxtVDNnT5/uXgzRrJ339YDXh5
 XZ++EsNgLwvZL4vYtPhM1YfTlCWYlfDe+GPDyy5cx5WMR2Meb1X/NnaiD/hwnG/sa2x8
 ZwEmke6sKSJ8T1KlTAYl6HtVpUpyfy00akSJdfzta6J9yd2MRaz0muf3WvuPN2QwQvhJ
 VoiN+iAKAzfJnqBNO8R0T1dnDx0LDEG3VKYHYvy5075A0/8YnmgkGpZoaoG/UcedHYIG
 LL4Q==
X-Gm-Message-State: APjAAAWgo5GAo9WceXyy4D1KNMIt3yj7Q3DZFxPOQgrE4NbrRnh0uhJ4
 cbjLl236de/xg+S8RxEzDZvwKg5C6Ld4yPqt/EQ=
X-Google-Smtp-Source: APXvYqwzOCFDwkSx8fqJ8n9QNgT5p20qDoRYME/GR3OFM779WW+FCNzSMRtSIS4BmNIfF2IP3lG/MO8bygAra/IeEMo=
X-Received: by 2002:a9d:dc1:: with SMTP id 59mr531250ots.250.1582750125806;
 Wed, 26 Feb 2020 12:48:45 -0800 (PST)
MIME-Version: 1.0
References: <CGME20200225144815eucas1p1229ceb0d017b46cbbe2409639a7c1f83@eucas1p1.samsung.com>
 <20200225144749.19815-1-geert+renesas@glider.be>
 <e249c123-8d00-4aa3-34b8-f82d52428966@samsung.com>
 <20200226174905.GE25745@shell.armlinux.org.uk>
 <CAMuHMdW1ojYyWXZpzgiy8PrZnR2PQ9n3SEDrQ7hFFUg0j-jegg@mail.gmail.com>
 <20200226175723.GF25745@shell.armlinux.org.uk>
In-Reply-To: <20200226175723.GF25745@shell.armlinux.org.uk>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Feb 2020 21:48:34 +0100
Message-ID: <CAMuHMdV9VyS3kBnhFT-5ry_O-aRafq-8Yor0xxxnjGqNQiSgZw@mail.gmail.com>
Subject: Re: [PATCH] ARM: boot: Fix ATAGs with appended DTB
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_124846_563748_4BD7C3AD 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On Wed, Feb 26, 2020 at 6:57 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Wed, Feb 26, 2020 at 06:56:06PM +0100, Geert Uytterhoeven wrote:
> > On Wed, Feb 26, 2020 at 6:49 PM Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > > On Wed, Feb 26, 2020 at 07:35:14AM +0100, Marek Szyprowski wrote:
> > > > On 25.02.2020 15:47, Geert Uytterhoeven wrote:
> > > > > At early boot, register r8 may contain an ATAGs or DTB pointer.
> > > > > When an appended DTB is found, its address is stored in r8, for
> > > > > extraction of the RAM base address later.
> > > > >
> > > > > However, if r8 contained an ATAGs pointer before, that pointer will be
> > > > > lost, and the provided ATAGs is no longer folded into the provided DTB.
> > > > >
> > > > > Fix this by leaving r8 untouched.
> > > > >
> > > > > Fixes: 137e522593918be2 ("ARM: 8960/1: boot: Obtain start of physical memory from DTB")
> > > > > Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> > >
> > > The original commit hasn't been submitted, so it can be fixed before it
> > > hits mainline if you want.  Let me know what you want to do.  Thanks.
> >
> > Fixing the original is fine for me, of course.
> > Thanks!
>
> Please submit a replacement for 8960/1, thanks.

Done.

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
