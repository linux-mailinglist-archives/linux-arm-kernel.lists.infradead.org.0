Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C31B724F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 04:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w18Uw7pl63FXMfCtlWhq3PukSax25xNz4omqgUTzBwI=; b=eNcqh8U1fAPWF8
	5UtUXTNqxOY/DfNXMBVng0Wz/9/uRcz2XIuHIvh3xIs7ITt8v1mK9wH/d+Xvn88eX+lw9J9LGrPNS
	FCB3XYJknxWfzWKXHwisKhC7zBEMfaY08xqg39T2cIXRLPoWw2HPQ0hottDtdyY4rLPoexJwTNpg5
	ZFzVTP8c1iD/iJT1s1tBCHZuhWPIoj/2vwU2Q2g9qNz7zSnDFqHJREta6TY+1beSSozRxeH3LTVSU
	GVp3LjCaeS/L7BG/ijmhihkxDA+qmW90+QxbMuhvh9rs55HkgL55Di7k4iJcqH0WZ3Vo7TZ53z+20
	rf//TQ9tnxj6eQphu6+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq7Pk-0006w6-Co; Wed, 24 Jul 2019 02:54:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq7PY-0006vc-3z; Wed, 24 Jul 2019 02:53:49 +0000
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com
 [209.85.128.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3FA91229F8;
 Wed, 24 Jul 2019 02:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563936827;
 bh=/eJIid7pHg2u87lfEZB7JLLdiageDyZI7a4jhYllPA4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mE0ol1r6xQxmM4KId7HU/YyvRDhfGitOXSxV1oohodJm+uHZ4qx1LPNtYO2TnPBI1
 wrAjkLyfd7k22vOgoH4eZISLcCjOsZAefAzvB80l+mWh8Ouzo856CO4d41lTGkmlwv
 u15Ih+xr2Bw9mjvx1j/5JX2XPXBdSlwf+8XHikMw=
Received: by mail-wm1-f49.google.com with SMTP id 207so40304608wma.1;
 Tue, 23 Jul 2019 19:53:47 -0700 (PDT)
X-Gm-Message-State: APjAAAWG0wz9ypSEJ8rYi6OITBRNnac2PwgJghVNlYAkgUOEtMk8Q4uW
 tFklkn4xM1TvR58erXjOXtW3qxP36Rtcwze8X40=
X-Google-Smtp-Source: APXvYqynaaGMjkPNv9pW5abbJfyDg1ecKqbJFKDfLoHhtmYxgrfmeHyipcFOJoAjZOxgwuOorRC7uZzh64YDmebAqT4=
X-Received: by 2002:a7b:c051:: with SMTP id u17mr69823321wmc.25.1563936825710; 
 Tue, 23 Jul 2019 19:53:45 -0700 (PDT)
MIME-Version: 1.0
References: <1563774880-8061-1-git-send-email-wahrenst@gmx.net>
 <96113adb5fcab9c2f4bb5fa82b84ff5f9c07fd07.camel@suse.de>
 <bc650090-db86-ccac-01dc-23f08ad7b19b@gmx.net>
 <20190723093442.GA27239@lst.de>
 <04c5eaa03f3a124dbbce6186e11e19acc4539cc8.camel@suse.de>
 <b15509d6-bc2e-3d06-0eea-943e6e456d62@gmx.net>
 <5f9b11f54c66fd0487837f7e58af3adf7f86635f.camel@suse.de>
In-Reply-To: <5f9b11f54c66fd0487837f7e58af3adf7f86635f.camel@suse.de>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 24 Jul 2019 10:53:32 +0800
X-Gmail-Original-Message-ID: <CAGb2v66-o23CW5iH9Bn1aELymPSiKrA43eJd2q6EZ7iubcogaw@mail.gmail.com>
Message-ID: <CAGb2v66-o23CW5iH9Bn1aELymPSiKrA43eJd2q6EZ7iubcogaw@mail.gmail.com>
Subject: Re: [PATCH 00/18] ARM: Add minimal Raspberry Pi 4 support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_195348_195217_265F4A33 
X-CRM114-Status: GOOD (  28.95  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-mmc@vger.kernel.org,
 Adrian Hunter <adrian.hunter@intel.com>, Rob Herring <robh+dt@kernel.org>,
 Eric Anholt <eric@anholt.net>, Matthias Brugger <mbrugger@suse.com>,
 "open list:BROADCOM BCM281XX..." <bcm-kernel-feedback-list@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Michael Turquette <mturquette@baylibre.com>,
 Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2835..." <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 1:33 AM Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> On Tue, 2019-07-23 at 18:26 +0200, Stefan Wahren wrote:
> > Hi Nicolas,
> >
> > thanks for your work, but i'm a little bit sceptical about these
> > changes. So here some thoughts.
> >
> > Am 23.07.19 um 15:32 schrieb Nicolas Saenz Julienne:
> > > On Tue, 2019-07-23 at 11:34 +0200, Christoph Hellwig wrote:
> > > > On Mon, Jul 22, 2019 at 08:10:17PM +0200, Stefan Wahren wrote:
> > > > > i rebased this series also and got this only on the RPi 4.
> > > > >
> > > > > After reverting the following:
> > > > >
> > > > > 79a986721de dma-mapping: remove dma_max_pfn
> > > > > 7559d612dff0 mmc: core: let the dma map ops handle bouncing
> > > > >
> > > > > This crash disappear, but wifi seems to be still broken.
> > > > >
> > > > > Would be nice, if you can investigate further.
> > > > That means dma addressing on this system doesn't just work for some
> > > > memory, and the mmc bounce buffering was papering over that just for
> > > > mmc.  Do you have highmem on this system?
> > > >
> > > > You might want to try this series, which has been submitted upstream:
> > > >
> > > >
> http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/arm-swiotlb
> > > Hi Christoph,
> > > I tried your series on top of Stefan's, it has no effect. I guess it's no
> > > surprise as with mult_v7_defconfig, you get SWIOTLB=n & LPAE=n.
> > >
> > > FYI DMA addressing constraints for RPi4 are the following: devices can only
> > > access the first GB of ram even though the board might have up to 4GB of
> > > ram.
> > > The DMA addresses are aliased with a 0xc0000000 offset. So 0x00000000 phys
> > > is
> > > aliased to 0xc0000000 in DMA. This is the same as for an RFC you commented
> > > last
> > > week trying to fix similar issues for arm64.
> > >
> > > You state in "arm: use swiotlb for bounce buffer on LPAE configs" that "The
> > > DMA
> > > API requires that 32-bit DMA masks are always supported". If I understand it
> > > correctly this device breaks that assumption. Which implies we need a bounce
> > > buffer system in place for any straming DMA user.
> > >
> > > It seems we're unable to use dma-direct/swiotlb, so I enabled arm's
> > > dmabounce
> > > on all devices hooked into RPi's limited interconnect, which fixes this
> > > issue.
> > Does it fix the wifi issue too?
>
> Well it works as long as I revert this: 901bb98918 ("nl80211: require and
> validate vendor command policy"). Which has nothing to do with DMA anyways.
>
> Was this the issue you where seeing?
>
> [    4.969679] WARNING: CPU: 2 PID: 21 at net/wireless/core.c:868 wiphy_register+0x8e8/0xbdc [cfg80211]
> [...]
> [    4.969974] ieee80211 phy0: brcmf_cfg80211_attach: Could not register wiphy device (-22)

We're seeing this on different platforms (allwinner / rockchip / amlogic)
with Broadcom WiFi chips. So it's unlikely to be related with anything in
this series.

I believe a fix for this has already been queued up:

https://git.kernel.org/pub/scm/linux/kernel/git/jberg/mac80211.git/commit/?id=91046d6364afde646734c7ead1f649d253c386e9

ChenYu

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
