Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0641117EF09
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 04:29:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=siO/N8Q7eUphpRsN8v++8kis3zcFd2JRMrut3IgMHW8=; b=X4QkpQ0TFKbr/h
	e9xgQzKoAHjCzNlYqJ5Aq2MYdRRLEhQ0gFHQCnP8Dc5Pg8mN4yXV5/36bQIg4WZTnz9w0mYpm7oKx
	rppj7CBSk+aDmKmWLBH0tI2yeCbnrz/mXKmfngyeuQr5oaEt4vmu0d0y2aT3Ht96jTFZNK2kSPJxT
	KwkzPA6SagyTHpDwgq59PRshKp6zqBNEOIcm2C8Ul+TVmKqqKBiykGIadab0A9cBxycGg48QfOBAQ
	W0/8jMrSBnoM/51uFEKSest2Ks1WamlUUtdf3S9TghnGhFzV277IicvRlmPx9Yd5ePvITTA1D4wlv
	3URjx+XO7jHaCd+etuow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBVa4-0006EH-99; Tue, 10 Mar 2020 03:29:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBVZx-0006BD-D9
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 03:29:14 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5B9F82465A;
 Tue, 10 Mar 2020 03:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583810952;
 bh=hChG5TuO06hRpHNaYJuYKM2pUOhe6ZKZiMex2rIGmIQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SRP6s3qWT0eqCspl7lvDEybo2miBsjyHUiTQ4vink9+satmLzK2Xj7+2czwhdju1/
 t7maGSy5Ejb+kRFlscTcWMXwQzdXBNMX0KqRglPGg6NTOL8CCjIiMG6sjShF0spEp8
 gG0K6X8/s/T3HFW1mfT+pRN3K+XCnOyfWuzMF5xA=
Date: Tue, 10 Mar 2020 11:29:04 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Christian Gmeiner <christian.gmeiner@gmail.com>
Subject: Re: [PATCH] ARM: multi_v7_defconfig: enable drm imx support
Message-ID: <20200310032902.GA16036@dragon>
References: <20200124084359.16817-1-christian.gmeiner@gmail.com>
 <CAH9NwWfMwN9cRgMHPF5zPCmdmnrfX7E6cAYW8yfUGTf+t3=HzA@mail.gmail.com>
 <CAJKOXPdM4s8DAVPh1zOt5kYyEjp4dmbseC3RdrKaVk4H41XOwg@mail.gmail.com>
 <CAH9NwWdg5r1T9TkXAe4=3Zui2vMcnOc2UJ=e02NFbiPhb5n48w@mail.gmail.com>
 <20200217041936.GH5395@dragon>
 <CAH9NwWeT=h=hPzDbwRggNYNx-mSdQkjUypPWk2nmsLDOfw8Zqw@mail.gmail.com>
 <20200218091409.GA6075@dragon>
 <CAH9NwWcNZzKt9gwYRRbgppeL9xqcK38z0ZP-5eGF9vXmg7T_=g@mail.gmail.com>
 <20200219091138.GA12803@dragon>
 <CAH9NwWfgJvPDE4_gjMhKaRSxJm-yJkzxOSDbU-HaQkcHuTL76w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAH9NwWfgJvPDE4_gjMhKaRSxJm-yJkzxOSDbU-HaQkcHuTL76w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_202913_487404_E3596801 
X-CRM114-Status: GOOD (  25.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 LKML <linux-kernel@vger.kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Lubomir Rintel <lkundrak@v3.sk>,
 Patrice Chotard <patrice.chotard@st.com>, Joel Stanley <joel@jms.id.au>,
 Philipp Zabel <p.zabel@pengutronix.de>, Olof Johansson <olof@lixom.net>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 02:58:30PM +0100, Christian Gmeiner wrote:
> Hi
> 
> Sorry for the delay.. totally forgot about the mail.
> 
> Am Mi., 19. Feb. 2020 um 10:11 Uhr schrieb Shawn Guo <shawnguo@kernel.org>:
> >
> > On Wed, Feb 19, 2020 at 09:48:23AM +0100, Christian Gmeiner wrote:
> > > Am Di., 18. Feb. 2020 um 10:14 Uhr schrieb Shawn Guo <shawnguo@kernel.org>:
> > > >
> > > > On Mon, Feb 17, 2020 at 01:09:32PM +0100, Christian Gmeiner wrote:
> > > > > Am Mo., 17. Feb. 2020 um 05:19 Uhr schrieb Shawn Guo <shawnguo@kernel.org>:
> > > > > >
> > > > > > On Mon, Feb 10, 2020 at 02:30:12PM +0100, Christian Gmeiner wrote:
> > > > > > > Am Mo., 10. Feb. 2020 um 11:58 Uhr schrieb Krzysztof Kozlowski
> > > > > > > <krzk@kernel.org>:
> > > > > > > >
> > > > > > > > On Mon, 10 Feb 2020 at 11:54, Christian Gmeiner
> > > > > > > > <christian.gmeiner@gmail.com> wrote:
> > > > > > > > >
> > > > > > > > > Am Fr., 24. Jan. 2020 um 09:44 Uhr schrieb Christian Gmeiner
> > > > > > > > > <christian.gmeiner@gmail.com>:
> > > > > > > > > >
> > > > > > > > > > Makes it possible to multi v7 defconfig for stm32 and imx based devices with
> > > > > >
> > > > > > What do you mean by stm32 based devices here?
> > > > > >
> > > > >
> > > > > CONFIG_ARCH_STM32 - I have a STM32MP157C-DK2 in my board farm and
> > > > > would love to use
> > > > > multi_v7 for imx6 and stm32.
> > > >
> > > > The patch is all about enabling drm-imx driver support.  The commit log
> > > > gives the impression that drm-imx driver also works on stm32 devices.
> > > > Is that the case?
> > > >
> > >
> > > No - the common thing both share is etnaviv.
> >
> > I did not know that before, and thanks for the information.  But looking
> > at the code change, there is nothing about etnaviv driver, and it's all
> > about drm-imx driver.  So I'm still questioning why stm32 needs to be
> > mentioned in the commit log at all.
> >
> > > The patch subject "ARM:
> > > multi_v7_defconfig: enable drm imx support" is fine
> >
> > Agreed.  It's perfect.
> >
> > > I think but in the commit message I missed the verb so this should be
> > > a better one:
> > >
> > > --->8---
> > > ARM: multi_v7_defconfig: enable drm imx support
> > >
> > > Makes it possible to use multi v7 defconfig for stm32 and imx based devices with
> > > full drm support.
> > > --->8---
> >
> > I don't think 'stm32' should be there, as the code change in this commit
> > has nothing to do with stm32, if I understand it correctly.
> >
> 
> Okay.. what about:
> --->8---
> ARM: multi_v7_defconfig: enable drm imx support
> 
> It will be useful to have it enabled for KernelCI boot and runtime testing.
> --->8---

Applied with above commit log.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
