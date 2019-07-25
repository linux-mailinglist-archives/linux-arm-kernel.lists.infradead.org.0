Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2524F757D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 21:27:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAX9DHjb4eW+IG/aoaCpXITz3hfGdlug4E7ZbbadLIE=; b=UqBKsRm+wutwOF
	nsYGjQtkAjNwOxosMs/yrKyBrtHMnTzrrme74PsqpQIrRlhXw6D5GeR8icnJkC7YHN3FTgkrWcU4O
	t4q+Vzcv37t6rOR/IAosslS7X9Px4wNYPhRfVaXc9LTtghom8Bw2L3EEnM33nqK351/F5KkGl3hVI
	aQfUQXQ+EpOLKroglpdwxdC3uzs4oAXBPGmFiqpbsOfw1JxhGgJlVTNM2MarxMW86eIT4T6FuQSdw
	ZKgHRQNcFW1LlPEtx97on1ExvYG8LV/TCm7ZX/e8myycIgBNToDinHqirLC9M//oUdvY6mqvnRW9S
	gXC0d3nv7eeljdzbW9+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjOM-0002qc-8Z; Thu, 25 Jul 2019 19:27:06 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjO6-0002q3-QZ
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 19:26:52 +0000
Received: from linux-e202.suse.de ([46.85.222.234]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MK3FW-1i6l8X259S-00LTjb; Thu, 25 Jul 2019 21:26:43 +0200
From: Fabian Vogt <fabian@ritter-vogt.de>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 1/3] RFT: drm/pl111: Support grayscale
Date: Thu, 25 Jul 2019 21:26:41 +0200
Message-ID: <12154694.e2V3OH3Rcx@linux-e202.suse.de>
In-Reply-To: <CACRpkdYAgLJ9asftN5EafeN5EVEyH_xHVdwjbecZqvgz-JJ98A@mail.gmail.com>
References: <20190723133755.22677-1-linus.walleij@linaro.org>
 <1709073.y2qmsckc0Q@linux-e202.suse.de>
 <CACRpkdYAgLJ9asftN5EafeN5EVEyH_xHVdwjbecZqvgz-JJ98A@mail.gmail.com>
MIME-Version: 1.0
X-Provags-ID: V03:K1:OwjadK/hsEvg+BHwMVvckELquXvXqT2tyKgIoTLKnIscWoIqkP2
 ipBL4z3QCiWuyeEF8/Wgz8GFTsRGUmO1twYAc33gIFnFe8N0fTurmjn7f4lbrDIosy5R8MF
 leQMkIjNrUrNE+hGDbu/Atp+RKN/fx0gDUFTB63xBd6R5Uwz3k171KWQHEm7+7miCSzOFWf
 /UN4FntLamb+rVH7G7tug==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sqxGA4puMoo=:puBMl99fP7z3udiRCleJ+Y
 HaqOMRMUGZf7VZDoE+vcyPPB5bU0kH0LufHBgAJQFPleGy8gBFipTR2bI28GMkTGHnJg0VVIO
 C0H1rhgTMVv7FDkUnNiQmG459iyWKqmB8ENW9ofu1ILjwCKMCLxYdIm5QOh+cbWHJgVrFIyEy
 1/ZvqreBGeiRXN76c6wSb0BhkdUF9nhcn6rU3ObAxYErdAAsarYq0wGrohWTnz7EniyimSCvQ
 xd51rPXnw4G/p09nB/IAtjnvhCnbtQI2325xpyV2rP9QTbDm4L+oJKIwEcLx6UUhcVTPHOfUg
 leQw+t7S0wQeK+ix+ZRVwJVtFmxZTSHArX6yl5yZ2anJo3QmZzE3waE4EDrLJZhvgmy0dvNhm
 FoZQFfS/9m/lsVCGYFZyVqFEIPp71EX3YAHhj1ncrOXP5+Aonmwhqi84gptkAATg2pA6BfM2r
 j6SketTXpcqxSKLs9AfxhmuF2xrR8+RTaiJ9DpUZvEpMelbPDwODwamISSoweehl2wUg3sCwD
 mViU/HYipIfA2q3uHSI8Pq5F+qUyou4K95mIIMO6DD0RZBml1kFAZx4hdDpb24wmpT47zCC2D
 tf3LxYDsiVDJrTllfZ2sVzFpBCaE357H0yxAltas5Ef52BL0lEIIGu8QWEY7ln4tzyptT9UkB
 YT0i3UDZZd9X9YKIsZUaNCoP5i1Q1+z76cN1cFW66M0Fs1WkI8C0e2aCMkIGPFO/kcVvMix05
 25xSIPJoLoxXV47qUB2KvO6JcaINPCU+ZDDEGb1lpUdKWdUg6M4adNu7AiM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_122651_149820_7EEC9FC5 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Daniel Tang <dt.tangr@gmail.com>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am Mittwoch, 24. Juli 2019, 14:33:06 CEST schrieb Linus Walleij:
> On Tue, Jul 23, 2019 at 5:19 PM Fabian Vogt <fabian@ritter-vogt.de> wrote:
> 
> > I gave the series a try (virtual CX and TP so far, will do on a real CX later):
> > OOPS with a nullptr deref during probe.
> > This diff which just moves some lines around fixes that and the LCD appears to
> > work properly.
> 
> OK I folded this into my patch, thanks!
> 
> > Once I verified the 24bit depth and clock speed config on HW as well, I can
> > give you my Tested-by, or would you prefer that I resubmit your series with the
> > fix below?
> 
> It's fine if you test it just with your patch as-is, I didn't change anything
> else.
> 
> I would be amazed if it "just works" now.

Indeed, you won't be. On a real CX the LCD displays shows content without
any other changes to the set, but has a ~3Hz pulsating effect scrolling from
the top to the bottom and the gray text changes color slightly.

Without the patchset applied everything looks perfectly.

I tried setting vrefresh to 20, fb_bpp to 16 and forcing an inverted panel
clock, but the pulsing didn't change.

Using the emulated CX I compared the contents of the registers and found
that only the IPC bit (which I tried to set, so that's likely not it) and
the interrupt registers have a different content.

Any idea?

Thanks,
Fabian

> Yours,
> Linus Walleij



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
