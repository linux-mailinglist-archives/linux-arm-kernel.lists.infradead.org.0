Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB1470081
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 15:04:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8PUdy3MZPiX6FK6E7/Dwb5ica1h//bcqgYXsPu8488=; b=P+gxxUGD3jHK5C
	dA15Djtpl/oJTL5o7fHDQ0zWESaoybFNlTVh9J6a8z/suYrIZoihZWuOCt5X0qIK4ps9NLy7R837B
	2pNegE4BzTliieDEI30QlMWZaIBNsF4JCXPwtIrgN7+9CuJAVjzFul06IOZaaApAcP+ZJ3Ll6qjyj
	zJCO6tH0PfBByhkooA2rZ6vANRL9rZYjrlJT273cpM1whnNFsyPIE84qRnT+8noBopXYLgj7K0qzA
	RUS19m/fStdpQlJWBQ5ePzSJ6o7t34M5R11RhYxbqMitbxfzwjy54KMHGo0GFwLcr1cAHhauw2Mr6
	woPBrvWTNOkTv286uvAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpXz0-0007qa-EQ; Mon, 22 Jul 2019 13:04:02 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpXyY-0007pe-I6
 for linux-arm-kernel@lists.infradead.org; Mon, 22 Jul 2019 13:03:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6NOvK978jTbO8TXlnFh6/Tm0NPKVF1OLT2L5NyXRM34=; b=VyPi/Aq3EOU0jvEITInsyEvxc
 1BimaMvj7ZOggQcbiVyO2s0GWPrwzTKzMcACXY2D5K3PeVo0gU/DisVwIB0ihePsV0Iryn9a0JQS6
 AwYF8dgJwwpYoA4bRHQCkry4xu6U2VtlbO4F544uazbSHyldURAFlF61iiOVUOS5954lH8nrHukra
 8VQBiR1Vd1QJT05UVJLKzvGNhyJxU40VQUDB8cg1CILbzPMhYk+CP22k2yg5YRmdHC50H/yaEXX72
 PmzeQal8zzzVw9jGispleO3ih79ctPd9aAQ7Go2bvKgm5K9usKb67Mf0l77s7qvYJ8+9aum9noldm
 HWFjIjLcQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:44332)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hpXyI-0005qV-UQ; Mon, 22 Jul 2019 14:03:19 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hpXyB-0002zY-7M; Mon, 22 Jul 2019 14:03:11 +0100
Date: Mon, 22 Jul 2019 14:03:11 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH 1/3] printk: Allow architecture-specific timestamping
 function
Message-ID: <20190722130311.GD1330@shell.armlinux.org.uk>
References: <20190722103330.255312-1-marc.zyngier@arm.com>
 <20190722103330.255312-2-marc.zyngier@arm.com>
 <20190722112543.5quvqgerpyvfgbxq@pathway.suse.cz>
 <493e2c0b-9536-ce6d-b59e-d169693085da@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <493e2c0b-9536-ce6d-b59e-d169693085da@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_060334_604502_F838BF69 
X-CRM114-Status: GOOD (  19.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Petr Mladek <pmladek@suse.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 John Stultz <john.stultz@linaro.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 22, 2019 at 01:47:57PM +0100, Marc Zyngier wrote:
> On 22/07/2019 12:25, Petr Mladek wrote:
> > On Mon 2019-07-22 11:33:28, Marc Zyngier wrote:
> >> printk currently relies on local_clock to time-stamp the kernel
> >> messages. In order to allow the timestamping (and only that)
> >> to be overridden by architecture-specific code, let's declare
> >> a new timestamp_clock() function, which gets used by the printk
> >> code. Architectures willing to make use of this facility will
> >> have to define CONFIG_ARCH_HAS_TIMESTAMP_CLOCK.
> >>
> >> The default is of course to return local_clock(), so that the
> >> existing behaviour stays unchanged.
> >>
> >> Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
> >> ---
> >>  include/linux/sched/clock.h | 13 +++++++++++++
> >>  kernel/printk/printk.c      |  4 ++--
> >>  2 files changed, 15 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/include/linux/sched/clock.h b/include/linux/sched/clock.h
> >> index 867d588314e0..3cf4b2a8ce18 100644
> >> --- a/include/linux/sched/clock.h
> >> +++ b/include/linux/sched/clock.h
> >> @@ -98,4 +98,17 @@ static inline void enable_sched_clock_irqtime(void) {}
> >>  static inline void disable_sched_clock_irqtime(void) {}
> >>  #endif
> >>  
> >> +#ifdef CONFIG_ARCH_HAS_TIMESTAMP_CLOCK
> >> +/* Special need architectures can provide their timestamping function */
> > 
> > The commit message and the above comment should be more specific
> > about what are the special needs.
> > 
> > It must be clear how and why the clock differs from the other
> > clocks, especially from lock_clock().
> 
> Fair enough. How about something along the lines of:
> 
> "An architecture can override the timestamp clock (which defaults to
> local_clock) if local_clock is not significant early enough (sched_clock
> being available too late)."

We have:
1) the standard clocksource
2) the sched_clock, which is _supposed_ to be initialised early
3) persistent_clock

Do we really need another clock?

Why not initialise sched_clock() early (as in, before sched_init(),
which is where the first sched_clock() read occurs) ?

We've already been around the argument that sched_clock() apparently
can't be initialised early enough (which is the argument I had in reply
to the sched_clock() situation on ARM32) then how does inventing
timestamp_clock() solve this problem?

Wouldn't timestamp_clock() also suffer from the very same "we can't
initialise it early enough" issue, and it'll just be setup along side
clocksources, just like sched_clock() has become?

I fail to see what adding yet another architecture specific clock
implementation buys, apart from yet more complexity.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
