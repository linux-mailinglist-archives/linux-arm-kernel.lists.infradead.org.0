Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B3A1E8A60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 23:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6lrFu/w3IhkoOigz+tWBQZxrLahHRL07XS3blEHgTZs=; b=UpgxvNa6Qmw93v
	hXR6GRmdgO2jT+xywntTz00zWcIZphF3+ooo9E02dWV/teAFwlvIEcbPWwjV89MgG1J8r/qSaqDOh
	zdgpz3fdW+J3FeKKl6YISfS18QmjlqoSEx4BL07gWCs+50EpywCKaCLSfQr58QiA6/o2id6PmaB3H
	9ZTP6ZXr1nTKpdfugnKCK5ZWnvCs3HGcfaPU1BMR+N8Y9Iw52bkZWN1QiCfsXiZ2bZRzkqOTaXmVr
	If7jjm5Pd84aYXyKRO4lAaw5f5euyrGaj/Z9KqaNWDyuJf0NcflzgSNPvyXGt75UDulu0HJfgfQ0v
	YSNe5FI/H+tZie9fdPLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jemqR-00013H-PW; Fri, 29 May 2020 21:47:15 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jemqD-0000z1-HV
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 21:47:04 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id A03A28030;
 Fri, 29 May 2020 21:47:46 +0000 (UTC)
Date: Fri, 29 May 2020 14:46:53 -0700
From: Tony Lindgren <tony@atomide.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] ARM: omap2: fix omap5_realtime_timer_init definition
Message-ID: <20200529214653.GY37466@atomide.com>
References: <20200529201701.521933-1-arnd@arndb.de>
 <20200529204404.GW37466@atomide.com>
 <CAK8P3a1fEq6n1pBqkY4CqxpSZnMLOQsNHFyhB_L4uo-oZVu4sw@mail.gmail.com>
 <20200529211440.GX37466@atomide.com>
 <CAK8P3a0oK-SqWHR9v0-2p3Fd_mCe2ibP_SQKf_W2A6cbEzVgWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0oK-SqWHR9v0-2p3Fd_mCe2ibP_SQKf_W2A6cbEzVgWw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_144701_641598_82B52F16 
X-CRM114-Status: GOOD (  19.21  )
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
Cc: santosh.shilimkar@oracle.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>, SoC Team <soc@kernel.org>,
 Olof Johansson <olof@lixom.net>, linux-omap <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

* Arnd Bergmann <arnd@arndb.de> [200529 21:41]:
> On Fri, May 29, 2020 at 11:14 PM Tony Lindgren <tony@atomide.com> wrote:
> > * Arnd Bergmann <arnd@arndb.de> [200529 21:09]:
> > >
> > > #ifdef CONFIG_SOC_HAS_REALTIME_COUNTER
> > > extern void omap5_realtime_timer_init(void);
> > > #else
> > > static inline void omap5_realtime_timer_init(void)
> > > {
> > > }
> > > #endif
> > >
> > > In fact, the inline stub is what that caused the regression,
> > > so I think it's ok with my patch.
> >
> > To me it seems not having SOC_HAS_REALTIME_COUNTER will
> > cause omap5_realtime_timer_init() not get called?
> 
> Correct, this looked to me like it was the intention of that
> symbol. Unfortunately there is no help text but it is user
> selectable:
> 
> config SOC_HAS_REALTIME_COUNTER
>         bool "Real time free running counter"
>         depends on SOC_OMAP5 || SOC_DRA7XX
>         default y

Maybe this is a legacy Kconfig option since Santosh got
the cpuidle coupled to switch things to using the always on
timers for idle modes years ago already.

> > That initializes clocks and calls timer_probe(). So this
> > will result in non-booting system AFAIK, the header
> > file stub should no rely CONFIG_SOC_HAS_REALTIME_COUNTER
> > also, but rather ! CONFIG_SOC_OMAP5 || CONFIG_SOC_DRA7XX.
> >
> > Also the Makefile change at least seems wrong, that
> > can't rely on CONFIG_SOC_HAS_REALTIME_COUNTER.
> 
> How about just removing the prompt on
> CONFIG_SOC_HAS_REALTIME_COUNTER but keeping the
> rest of my patch? That way it's just always enabled when
> there is a chip that needs it enabled in the kernel config.
> 
> The only other usage of the symbol is
> 
> #ifdef CONFIG_SOC_HAS_REALTIME_COUNTER
> void set_cntfreq(void);
> #else
> static inline void set_cntfreq(void)
> {
> }
> #endif

Yeah it's already default y, so I'd say let's just get
rid of the option.

> Alternatively, we could just remove the Kconfig symbol
> altogether and rely on (SOC_OMAP5 || SOC_DRA7XX)
> everywhere, but that seems a little more fragile in case
> there is going to be another chip that needs it.

Sounds like we can just remove CONFIG_SOC_HAS_REALTIME_COUNTER
and rely on (SOC_OMAP5 || SOC_DRA7XX).

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
