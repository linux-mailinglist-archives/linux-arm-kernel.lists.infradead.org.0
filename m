Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 688E01C0277
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIIOXUp0pKtUcSKclBDXaGF08986g0LljgdrQ9xutds=; b=t7yo8nao4g6GQg
	vcer07ydrq4tZ8LnOfJ6Md0ozQk4WmYS7gT2OvP2+IwbHtqkjmnuw7aKQKrTNRHHW9v8LmKqhhPRu
	P4GNzzIkMe9nb2TPDwwDepX86/vwzeqr1qNhPQ1ui4QySxAabcdrxoh3pVoYke7FY8ny+nnds7HAk
	6x/mGL64xtPQgIM0A0FiVe2KSqn/5vSp5mn16OSaPDsWPr5rwTi5KpAfX9Y6F+R4ImYP+rUetmoAg
	DkmUk4h9b+VnBF1jwtXmR5w4QOj1YFsApCn+0rIygwoG2B9lbAIMVK2c/j3tucCy5BIHVSpynsriw
	9liWv5Oiki9SXa5I0+uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUC2d-000367-KR; Thu, 30 Apr 2020 16:28:03 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUC2V-00035p-00
 for linux-arm-kernel@bombadil.infradead.org; Thu, 30 Apr 2020 16:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=1Vw+wahdjvF1L9WwGFComL+FFo9pmOmCPd10LrNq9mc=; b=ZzX7LHCyyRLB8grDlh2YaL6iZX
 YDBbj8zLivla/97BDbCy04qYZQnWj1cmxAEC3C5X9RX0hawZAD1nFHaPqizwf3Cwoq3pC0JDd3SLt
 5D3pS2RmdrUP55DKtBpPl05B2W31iTk2zcWq2V0FD8vVnlSsosluA0M1X8Xj4+qOydqUvz/Brcq/b
 5uoPSbIhO/MqXH7xVtjD2Lcr2rmqjxjU9SOAnYAzFardJnARybbMe83TuMaohsOYjO7UkUMBejJ+P
 2DFITMArkRnJUGx/0qV5FsUxAH0wqLa0GDk/aM5ywB3twmCQk2BdS78P10dCMX8N2WYbtnIGwTRah
 7KcUMFxA==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUC2S-0005Av-Dh; Thu, 30 Apr 2020 16:27:52 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 960AF30275A;
 Thu, 30 Apr 2020 18:27:50 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 5C55D203B5613; Thu, 30 Apr 2020 18:27:50 +0200 (CEST)
Date: Thu, 30 Apr 2020 18:27:50 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Message-ID: <20200430162750.GD13575@hirez.programming.kicks-ass.net>
References: <20200320093545.28227-1-leo.yan@linaro.org>
 <20200430145823.GA25258@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430145823.GA25258@willie-the-truck>
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
Cc: Mark Rutland <mark.rutland@arm.com>, maz@kernel.org,
 Al Grant <Al.Grant@arm.com>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 James Clark <James.Clark@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, tglx@linutronix.de,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 03:58:24PM +0100, Will Deacon wrote:
> On Fri, Mar 20, 2020 at 05:35:45PM +0800, Leo Yan wrote:

> > @@ -1164,5 +1165,21 @@ void arch_perf_update_userpage(struct perf_event *event,
> >  		userpg->time_mult >>= 1;
> >  	}
> >  	userpg->time_shift = (u16)shift;
> > -	userpg->time_offset = -now;
> > +
> > +	/*
> > +	 * Since arch timer is enabled ealier than sched clock registration,
> > +	 * compuate the delta (in nanosecond unit) between the arch timer
> > +	 * counter and sched clock, assign the delta to time_offset and
> > +	 * perf tool can use it for timestamp calculation.
> > +	 *
> > +	 * The formula for conversion arch timer cycle to ns is:
> > +	 *   quot = (cyc >> time_shift);
> > +	 *   rem  = cyc & ((1 << time_shift) - 1);
> > +	 *   ns   = quot * time_mult + ((rem * time_mult) >> time_shift);
> > +	 */
> > +	count = arch_timer_read_counter();
> > +	quot = count >> shift;
> > +	rem = count & ((1 << shift) - 1);
> > +	ns = quot * userpg->time_mult + ((rem * userpg->time_mult) >> shift);
> > +	userpg->time_offset = now - ns;
> 
> Hmm, reading the counter and calculating the delta feels horribly
> approximate to me. It would be much better if we could get hold of the
> initial epoch cycles from the point at which sched_clock was initialised
> using the counter. This represents the true cycle delta between the counter
> and what sched_clock uses for 0 ns.
> 
> Unfortunately, I can't see a straightforward way to grab that information.
> It looks like x86 pulls this directly from the TSC driver.

Yeah, and I'm thinking you should do the same. IIRC ARM uses this
kernel/time/sched_clock.c thing, and if I read that right, the struct
clock_data there has all the bits you need here.

So I'm thinking that you might want to add a helper function here to get
you the good stuff.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
