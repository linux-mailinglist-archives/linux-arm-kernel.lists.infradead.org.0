Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C069F1E89C7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 23:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9scJnfntZIF1o4s6wufGNKqvjNtRxoFrKk0g0qWRuUI=; b=b/BtHC41eL98At
	lD6/8CTyC5N2S/oeLCRAZb3pFL5MuO1HX5eXI9Hqv5CBEypl8TCU+utr41SUDEhm7wVDe/4Hxc0ga
	0ErleZYJih2GmGnnbJNyCES5q+yDBIPee994YqeIGjCpapjoHnBj4zEpKkpUMQVgAndUrlAqckM+8
	57GsVoUt3u0f54en26FxX8EXIDmyr7a280opY3yfhFhlDIq0htrkaWPo60ZoaF4fAlX3rmxMwY/bJ
	asm/WTefduz4b2JVZirheJEeIsOSMTGpl8Vu/U+i/1OTzsCgaILETPl13dre48OPAQgeBGA0x8CEZ
	t1eD0AV90mowT3ssNqLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemL9-0004BF-Mx; Fri, 29 May 2020 21:14:55 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemKx-0004Aa-Jw
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 21:14:44 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id A2B6C8030;
 Fri, 29 May 2020 21:15:33 +0000 (UTC)
Date: Fri, 29 May 2020 14:14:40 -0700
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: omap2: fix omap5_realtime_timer_init definition
Message-ID: <20200529211440.GX37466@atomide.com>
References: <20200529201701.521933-1-arnd@arndb.de>
 <20200529204404.GW37466@atomide.com>
 <CAK8P3a1fEq6n1pBqkY4CqxpSZnMLOQsNHFyhB_L4uo-oZVu4sw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1fEq6n1pBqkY4CqxpSZnMLOQsNHFyhB_L4uo-oZVu4sw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_141443_695499_31F30898 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, SoC Team <soc@kernel.org>,
 Olof Johansson <olof@lixom.net>, linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Arnd Bergmann <arnd@arndb.de> [200529 21:09]:
> On Fri, May 29, 2020 at 10:44 PM Tony Lindgren <tony@atomide.com> wrote:
> >
> > * Arnd Bergmann <arnd@arndb.de> [200529 20:18]:
> > > There is one more regression introduced by the last build fix:
> >
> > Argh.. I did run make randconfig for like 10 builds
> > after the last fix.
> >
> > > Address this by removing the now obsolete #ifdefs in that file and
> > > just building the entire file based on the flag that controls the
> > > omap5_realtime_timer_init function declaration.
> >
> > I think this will introduce other randconfig build failures
> > as SOC_HAS_REALTIME_COUNTER is bool in Kconfig.
> 
> I did a few hundred randconfig builds with the patch and have
> not yet seen any further problems.

Ah right, it works for randconfig builds now but won't boot :)

> > We still need to call omap5_realtime_timer_init() even if
> > SOC_HAS_REALTIME_COUNTER is not set.
> 
> This is what's in the header file:
> 
> #ifdef CONFIG_SOC_HAS_REALTIME_COUNTER
> extern void omap5_realtime_timer_init(void);
> #else
> static inline void omap5_realtime_timer_init(void)
> {
> }
> #endif
> 
> In fact, the inline stub is what that caused the regression,
> so I think it's ok with my patch.

To me it seems not having SOC_HAS_REALTIME_COUNTER will
cause omap5_realtime_timer_init() not get called?

That initializes clocks and calls timer_probe(). So this
will result in non-booting system AFAIK, the header
file stub should no rely CONFIG_SOC_HAS_REALTIME_COUNTER
also, but rather ! CONFIG_SOC_OMAP5 || CONFIG_SOC_DRA7XX.

Also the Makefile change at least seems wrong, that
can't rely on CONFIG_SOC_HAS_REALTIME_COUNTER.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
