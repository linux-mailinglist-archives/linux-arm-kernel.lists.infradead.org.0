Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7327516F050
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 21:42:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QnkoxIiF/IHRMj8803rbKtnsPdoI4+bSb4BOnxKp60=; b=n8u5zBOKIfWK/M
	qDB8OGaKiAOGpXNcJ4XjC+M6vMZ8NjpT4Fw7vL2AV0h6tVmq8I0S7sTZ/KXMTgklIhZzQeCsbAsyO
	A8p0JDtLtutBPFXsSxovoI9QL1WS+9DP+6dO0GmnmBbPG66Sb+JPzZ3OV1FWYxJ8EA+kPD32VoOk1
	cq6KsJy5OcdqAS20X7vBFCL7vnchcC2xaJWk6Xi20GwgVA1EA6AKW8XEpJhCHfFNn8HUv1IunRqVd
	P7+wi3hox5fsPW6aRxDGKyBjtVY56i7g5aAHdxQVkUpYidvr8ZcDdIcdB1+ZacEMv8i61gXnOwjJN
	GDknaJZZ9Ii1zRTvZ+TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6h1q-00019J-Qu; Tue, 25 Feb 2020 20:42:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6h1g-00018p-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 20:41:58 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F88F20675;
 Tue, 25 Feb 2020 20:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582663315;
 bh=YYC4xaOlh2BnEG7cTijsktqQkfUcqWoUPp+Gy0hHL5U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oyQo5IPJ8L0EIKxeaAFS2wAcDllxRfr2eyVyy1hLk8AAcr8z8/gIQPFmVOAcK45//
 0PSaDa7pEC5LX/x8Hl6kxwy8zvjscYilZIkwDkR1kel/bGuxKAII++UJ/QCGZ7bqbi
 CL+pgiEvxS2wgZ9W/4jpN7F68Cg0E7zmzKk678t0=
Date: Tue, 25 Feb 2020 21:41:51 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 1/2] tty: serial: samsung_tty: build it for any platform
Message-ID: <20200225204151.GA13254@kroah.com>
References: <CGME20200220121333eucas1p26befa95831b44a793822b4f07b37d2cc@eucas1p2.samsung.com>
 <20200220102628.3371996-1-gregkh@linuxfoundation.org>
 <b04ad319-9986-c357-ad37-937bbb06bc02@samsung.com>
 <CAMuHMdXzPPNqQom82frY1B6LMre+VD9fPAf98BZ3eo2DhgwoYg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdXzPPNqQom82frY1B6LMre+VD9fPAf98BZ3eo2DhgwoYg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_124156_807590_0C3D049E 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Donghoon Yu <hoony.yu@samsung.com>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 25, 2020 at 09:52:38AM +0100, Geert Uytterhoeven wrote:
> On Thu, Feb 20, 2020 at 1:13 PM Bartlomiej Zolnierkiewicz
> <b.zolnierkie@samsung.com> wrote:
> > On 2/20/20 11:26 AM, Greg Kroah-Hartman wrote:
> > > There is no need to tie this driver to only a specific SoC, or compile
> > > test, so remove that dependancy from the Kconfig rules.
> >
> > samsung_tty driver is hardware specific driver so why should we
> > build it for any platform?

Why not?

Seriously, this "only this one specific SoC is allowed to build this
driver" is crazy.  It prevents anyone from building a generic kernel
with drivers as a module which are loaded as needed.

That needs to be fixed, and removing this unneeded dependancy on this
driver allows it to be build for any system and then only loaded when
needed.

> > This change seems to defeat the whole purpose behind COMPILE_TEST
> > config option (which allows us to build hardware-specific drivers
> > without needlessly presenting the user with tons of non-relevant
> > config options).
> >
> > Please explain this change some more, are you planing to remove
> > COMPILE_TEST config option?

I want to get rid of this:

> > > -     depends on PLAT_SAMSUNG || ARCH_EXYNOS || COMPILE_TEST

We should not need PLAT_SAMSUNG or ARCH_EXYNOS at all, we should be able
to build an arm64 kernel for all platforms.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
