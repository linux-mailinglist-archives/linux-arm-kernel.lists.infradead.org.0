Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D131D1C1972
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pK27A0aiiIv23qE6dDnoYtVVq7fRkeVbKLPwxei/caw=; b=f7zdpDVKK9Wmej
	SoIl9H7kqGiRHAonOC/n3BUWOf4n5MYP65J4SZhp5b9WRsLMrYo58HIgkYjkMReu8sTGXGjyMeVwk
	/nPmoXoO0r2z5z1aKTlxXm4jdbAc4cHY57OIMA8cyWxjn8TNVglgNO61nQMrE3Cw12fjIcywwnGUh
	zikbSql8iHN9uYq5Q3L0uiv3EsiPjHN0hhZwsNe+iab9zKCsEAyybrux1swcTIzuwPOd/t/4gLkNl
	f+EYqSlcWkIcS0My25dSx3rtJ3K+raBhGEhecHt28quKoV1Cetfw+t9wZQw9OsPN6M4LUUYnhmS+x
	zhEbVv/Chq00breA/ncQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXYZ-0006cg-1H; Fri, 01 May 2020 15:26:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXYN-0006bS-Vs
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 15:26:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB1A2206D9;
 Fri,  1 May 2020 15:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588346775;
 bh=MjFoLfW1BtT4NUArrsrbntaI0HBfUeoxnqplpyIMRUo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=L0SfJ+alaXKR7XR5Dihir9MiOm2Hi4aU+G0JXpiTBiaO9Ew7PVCEagmNYyU6Hu6qg
 HJj5JDXmw+/gw2RoEeBL0eosOv7znVbanO7VUo2KKIQ4SJ84fkrT5UUmPGBlH5i8Bb
 34UZKOAUJA0SICP6gdqhKOMoThIaC4tZM+OUXxt0=
Date: Fri, 1 May 2020 16:26:09 +0100
From: Will Deacon <will@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Message-ID: <20200501152609.GA17646@willie-the-truck>
References: <20200320093545.28227-1-leo.yan@linaro.org>
 <20200430145823.GA25258@willie-the-truck>
 <4d924f705245c797a19d3a73eb0c1ba0@kernel.org>
 <20200430160436.GC13575@hirez.programming.kicks-ass.net>
 <20200430161815.GE25258@willie-the-truck>
 <20200501151448.GA9650@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501151448.GA9650@leoy-ThinkPad-X240s>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_082616_072162_9F1EB2C5 
X-CRM114-Status: GOOD (  23.87  )
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
 Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <James.Clark@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 tglx@linutronix.de, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 11:14:48PM +0800, Leo Yan wrote:
> On Thu, Apr 30, 2020 at 05:18:15PM +0100, Will Deacon wrote:
> > On Thu, Apr 30, 2020 at 06:04:36PM +0200, Peter Zijlstra wrote:
> > > On Thu, Apr 30, 2020 at 04:29:23PM +0100, Marc Zyngier wrote:
> > > 
> > > > I wonder if we could/should make __sched_clock_offset available even when
> > > > CONFIG_HAVE_UNSTABLE_SCHED_CLOCK isn't defined. It feels like it would
> > > > help with this particular can or worm...
> > > 
> > > Errrgh. __sched_clock_offset is only needed on x86 because we transition
> > > from one clock device to another on boot. It really shouldn't exist on
> > > anything sane.
> > 
> > I think we still transition from jiffies on arm64, because we don't register
> > with sched_clock until the timer driver probes. Marc, is that right?
> > 
> > > Let me try and understand your particular problem better.
> > 
> > I think the long and short of it is that userspace needs a way to convert
> > the raw counter cycles into a ns value that can be compared against values
> > coming out of sched_clock. To do this accurately, I think it needs the
> > cycles value at the point when sched_clock was initialised.
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
> 
> Please correct if I miss anything.  Thank you for reviewing and
> suggestions!

I don't think you can use __sched_clock_offset without selecting
HAVE_UNSTABLE_SCHED_CLOCK, and we really don't want to do that just
for this. So Peter's idea about exposing what we need is better, although
you'll probably need to take care with the switch-over from jiffies.

It needs some thought, but one possibility would be to introduce a new
variant of sthe ched_clock_register() function that returns the cycle
offset, and then we could fish that out of the timer driver. If we're
crossing all the 'i's and dotting all the 't's then we'd want to disable the
perf userpage if sched_clock changes clocksource too (a bit like we do for
the vDSO).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
