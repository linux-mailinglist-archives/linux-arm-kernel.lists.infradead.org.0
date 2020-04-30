Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4191C02F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+O9Rntt32DglnfSVDDnSLWXhdk4K59oXsg9LTti46w=; b=BUTYIyNO0NJPF2
	m88rWdcPVDFRcYVUbLtes4FLt1kTsO7P5jNx0ZTyA4O14REgUrf6S0oFrSLzwfFtEyvrswjIUa8bi
	LDT09aHtnCN523ytLweKV/kkb+1ig8FsIa/Zyc3cGwiYhlUBepiaLrg80w6ZBYL9Fd98K5p4DKLUa
	rXCDdoD2qUXTL2wGMcCzFCC0SYOxJiqk5OWrDw5HyfqBXA3acbimI+b6eqOMCMfNc7ysdoCcF8Sov
	01L8T9Be2cUelUDfm7112/IfW5AdU0doCwXwYgZb+YQJHw/eaxOjqSg9xuf2ZDQOEAc/pE1bW4HDU
	YM450qaNus5etjKAck6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUCJc-0002L0-8t; Thu, 30 Apr 2020 16:45:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUCJM-0002GA-CT
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:45:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C4092070B;
 Thu, 30 Apr 2020 16:45:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588265120;
 bh=8Ei3F4eOoRqpaa7fs/fC4JcNYYhRrZ7GhNIqqYVS8hA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=liXRB4Ez5/7mwCxGidfN1vCb/UYI28M67EfS64G5GcjqtN5CEcAZ6uS0PKnMRBhO/
 cwiQXgViU+P+1Cfosg7/pAqtWIBbj2VOueaq9p33lZ6bORmHC4o7GR4xeOQraeH/bo
 1/Zgh5ToR19V2SwKj18fE+/mTf6+oKw5CcQggp64=
Date: Thu, 30 Apr 2020 17:45:14 +0100
From: Will Deacon <will@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Message-ID: <20200430164513.GG25258@willie-the-truck>
References: <20200320093545.28227-1-leo.yan@linaro.org>
 <20200430145823.GA25258@willie-the-truck>
 <20200430162750.GD13575@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200430162750.GD13575@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_094521_344938_D752D29C 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, Apr 30, 2020 at 06:27:50PM +0200, Peter Zijlstra wrote:
> On Thu, Apr 30, 2020 at 03:58:24PM +0100, Will Deacon wrote:
> > On Fri, Mar 20, 2020 at 05:35:45PM +0800, Leo Yan wrote:
> > > +	/*
> > > +	 * Since arch timer is enabled ealier than sched clock registration,
> > > +	 * compuate the delta (in nanosecond unit) between the arch timer
> > > +	 * counter and sched clock, assign the delta to time_offset and
> > > +	 * perf tool can use it for timestamp calculation.
> > > +	 *
> > > +	 * The formula for conversion arch timer cycle to ns is:
> > > +	 *   quot = (cyc >> time_shift);
> > > +	 *   rem  = cyc & ((1 << time_shift) - 1);
> > > +	 *   ns   = quot * time_mult + ((rem * time_mult) >> time_shift);
> > > +	 */
> > > +	count = arch_timer_read_counter();
> > > +	quot = count >> shift;
> > > +	rem = count & ((1 << shift) - 1);
> > > +	ns = quot * userpg->time_mult + ((rem * userpg->time_mult) >> shift);
> > > +	userpg->time_offset = now - ns;
> > 
> > Hmm, reading the counter and calculating the delta feels horribly
> > approximate to me. It would be much better if we could get hold of the
> > initial epoch cycles from the point at which sched_clock was initialised
> > using the counter. This represents the true cycle delta between the counter
> > and what sched_clock uses for 0 ns.
> > 
> > Unfortunately, I can't see a straightforward way to grab that information.
> > It looks like x86 pulls this directly from the TSC driver.
> 
> Yeah, and I'm thinking you should do the same. IIRC ARM uses this
> kernel/time/sched_clock.c thing, and if I read that right, the struct
> clock_data there has all the bits you need here.
> 
> So I'm thinking that you might want to add a helper function here to get
> you the good stuff.

Thanks, Peter.

Leo -- do you think you could look at implementing this as part of a v2,
please?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
