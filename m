Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D313D1C1988
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZtlgdKt2eBnt8EOqnSS9VGBJEJxFLwkTKTngUFdC01Q=; b=nkWGhBc/9BiripYKOmY4hWi5P
	pWLijxDAdA+yMUn0mBro8aEaUUZ1R85AJP+ltZccTxqhZIII1c2/0qpE95TF/MRmi8h9ZPrJMs/sE
	Rps9Q4GltjZoRHTjf9pF6FOd9Oa3WRYL64XMSm4JHbno0bNo4qeS5QO39VonBszNiTmCxyRePA9HY
	ilVyT8WgKjoxEC5jbn+m+FVuOBnPZ1bxWmUlZpUW+UIaz9wWXQ20VhL5hPshp/hGu/sB5IijEGN/i
	Kj7ediAOJ9cjZYzTmN66sVVLenRuQV/MEO7Obsla7/7lRHCL0CRBaN5eCu1kZ72CPV5esBMk1lF6N
	DRS+AD2+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXbd-0008Hc-I7; Fri, 01 May 2020 15:29:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXbV-0008Gk-VM
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:29:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E0F2208DB;
 Fri,  1 May 2020 15:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588346969;
 bh=BiaWkAPgA0GLt1tEbeDkv1hr7hG/llksm5RVX/awIaY=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fTopjtskcJ+65zpfrHDcfgi3/QGj3Rt+Vu3Un2/YqHQ0FUWBf7bpEH7FHr5m/8bb6
 KtC+R40FsjCuySsq694mUXVehB08JHPAEP9kXeGWlge4BHVPfWdpCMCLJFWjiPalK2
 CJ6OoILoqbIPGMTsrXmIWpEK7KLIIUvPZlZWtCis=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jUXbT-008P6M-VA; Fri, 01 May 2020 16:29:28 +0100
MIME-Version: 1.0
Date: Fri, 01 May 2020 16:29:27 +0100
From: Marc Zyngier <maz@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
In-Reply-To: <20200501151448.GA9650@leoy-ThinkPad-X240s>
References: <20200320093545.28227-1-leo.yan@linaro.org>
 <20200430145823.GA25258@willie-the-truck>
 <4d924f705245c797a19d3a73eb0c1ba0@kernel.org>
 <20200430160436.GC13575@hirez.programming.kicks-ass.net>
 <20200430161815.GE25258@willie-the-truck>
 <20200501151448.GA9650@leoy-ThinkPad-X240s>
User-Agent: Roundcube Webmail/1.4.3
Message-ID: <0a74ba5e82a41dca0a4156f2039e6be6@kernel.org>
X-Sender: maz@kernel.org
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: leo.yan@linaro.org, will@kernel.org, peterz@infradead.org,
 mark.rutland@arm.com, mingo@redhat.com, acme@kernel.org,
 alexander.shishkin@linux.intel.com, jolsa@redhat.com, namhyung@kernel.org,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, mathieu.poirier@linaro.org,
 mike.leach@linaro.org, Al.Grant@arm.com, James.Clark@arm.com,
 tglx@linutronix.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_082930_047678_B344CD4B 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <Al.Grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <James.Clark@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 tglx@linutronix.de, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-01 16:14, Leo Yan wrote:
> Hi all,
> 
> On Thu, Apr 30, 2020 at 05:18:15PM +0100, Will Deacon wrote:
>> On Thu, Apr 30, 2020 at 06:04:36PM +0200, Peter Zijlstra wrote:
>> > On Thu, Apr 30, 2020 at 04:29:23PM +0100, Marc Zyngier wrote:
>> >
>> > > I wonder if we could/should make __sched_clock_offset available even when
>> > > CONFIG_HAVE_UNSTABLE_SCHED_CLOCK isn't defined. It feels like it would
>> > > help with this particular can or worm...
>> >
>> > Errrgh. __sched_clock_offset is only needed on x86 because we transition
>> > from one clock device to another on boot. It really shouldn't exist on
>> > anything sane.
>> 
>> I think we still transition from jiffies on arm64, because we don't 
>> register
>> with sched_clock until the timer driver probes. Marc, is that right?
>> 
>> > Let me try and understand your particular problem better.
>> 
>> I think the long and short of it is that userspace needs a way to 
>> convert
>> the raw counter cycles into a ns value that can be compared against 
>> values
>> coming out of sched_clock. To do this accurately, I think it needs the
>> cycles value at the point when sched_clock was initialised.
> 
> Will's understanding is exactly what I want to resolve in this patch.
> 
> The background info is for the ARM SPE [1] decoding with perf tool, if
> the timestamp is enabled, it uses the generic timer's counter as
> timestamp source.  SPE trace data only contains the raw counter cycles,
> as Will mentioned, the perf tool needs to convert it to a coordinate
> value with sched_clock.  This is why this patch tries to calculate the
> offset between the raw counter's ns value and sched_clock, eventually
> this offset value will be used by SPE's decoding code in Perf tool to
> calibrate a 'correct' timestamp.
> 
> Based on your suggestions, I will use __sched_clock_offset to resolve
> the accuracy issue in patch v2.  (I noticed Peter suggested to use a
> new API for wrapping clock_data structure, IIUC, __sched_clock_offset
> is more straightforward for this case).

I think Peter's point was *not* to use __sched_clock_offset which
appears to be only there for the purpose of an x86 workaround (and not
available to other architecture), but to instead expose the relevant
field (epoch_cyc) to the perf subsystem.

I feel it makes sense to make this a generic API, and see whether x86
can move over to it rather than the other way around.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
