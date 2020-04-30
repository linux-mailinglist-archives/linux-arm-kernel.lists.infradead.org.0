Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EC71C0139
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:05:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vPWUUhn6y9f0fAsdRimRhB5VpilJgf79XwV40s/Sse4=; b=c+JgzXo5/cfyAA
	X9yfbstiLaiInrIeY36NHx5KKyrQY2FagQPIOxxdA5Yo19m0N+D6GzsJ31tJ+KN42D0MybCjsSwrs
	i4vGUys8XSE6+N8EkPLqQJ3M2ps0GlHiBfiDxBI3B+u52/cXIqIz60bRZrPIUlruESX/bOL6lnxNt
	3vIQTO0/ON+HCntW8kYD180y7TAFGBHbCSs+HeD1HxNOXHXuN97KIMZmzGsdy5AqOcL6tEwBgiKqG
	T6r4HXw172otv4TffzbJuTcxVjebWJNARsUylvNM7e5o1TGF1Z7kRbEAq9wtEkQMcEuME06EKe8H0
	HMDlot6euXCI328Laysg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBgH-00085t-Cv; Thu, 30 Apr 2020 16:04:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBg3-00082l-Mn
 for linux-arm-kernel@bombadil.infradead.org; Thu, 30 Apr 2020 16:04:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=URPLn5pgzF++a93dLmF3+s/KGIoSJpOQpC6i9HTyCgA=; b=aN/fCmTLZqCteuonTlnFbh4fN7
 xVyHgAG3ZT56rON9zfhx6NnVrFUREqTEOl0AkZP6MZDlEZ/mLh2AlOySnc8ZT49SwjaSMjIqnPlrd
 hSz10o0po1rBaN49yHevtwzk8x5IIvAe+cgvDjCH1SSP8wHIbIEKUZ6jUbMUGymYT0COrKKace3hD
 b3ZoWP6nrAROEiKjO1ofjtHZk8GDGgLcxo42v5hdOioYTAafhTMhp8tXYnB5FleMtmWBXTQe1/uaf
 w7NUyNy/n9BaUkBVsGILWlk5vpgVSFf6vcRs8WJgcqdweiJq4PvcgX2baB/QDi51XL6kvJ9q4pDoF
 J+I62Q2A==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBfz-0004Ip-Oh; Thu, 30 Apr 2020 16:04:39 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 74F7530275A;
 Thu, 30 Apr 2020 18:04:36 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 4C79729C3DBFD; Thu, 30 Apr 2020 18:04:36 +0200 (CEST)
Date: Thu, 30 Apr 2020 18:04:36 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: [PATCH] arm64: perf_event: Fix time_offset for arch timer
Message-ID: <20200430160436.GC13575@hirez.programming.kicks-ass.net>
References: <20200320093545.28227-1-leo.yan@linaro.org>
 <20200430145823.GA25258@willie-the-truck>
 <4d924f705245c797a19d3a73eb0c1ba0@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4d924f705245c797a19d3a73eb0c1ba0@kernel.org>
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 James Clark <James.Clark@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Al Grant <Al.Grant@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, tglx@linutronix.de,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 30, 2020 at 04:29:23PM +0100, Marc Zyngier wrote:

> I wonder if we could/should make __sched_clock_offset available even when
> CONFIG_HAVE_UNSTABLE_SCHED_CLOCK isn't defined. It feels like it would
> help with this particular can or worm...

Errrgh. __sched_clock_offset is only needed on x86 because we transition
from one clock device to another on boot. It really shouldn't exist on
anything sane.

Let me try and understand your particular problem better.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
