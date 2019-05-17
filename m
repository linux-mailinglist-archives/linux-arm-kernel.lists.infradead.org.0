Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CD4215EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 11:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdpXzT0TxanqO1gfxUmDnWzEH+Y1WtUzTlwnUWI1yOY=; b=hflRB4IUhPmOf3
	12w7ElpAoIZBptoXfOOvR3W2BCiFwJ0+tSJ58pqXMuW+W4Lj+8JGrw9Z3gYNVYKOYbKvDnlfaQGe8
	lOTq7Ww1dIDN97txwb1ZIJKtREoLL57n/ukb5W0AiMRvzX3RJt8EKXVlEC9y/VLHkClawwI9upCj/
	3YXWW9j2G2DJZ2WtiwAgI7LpjwLQt0CsFg4o+4FHXz8vR6xIHceEJGS92mdtYq9ZfQ7MEx8koGGyU
	mdN6rhdCIRMwy/Mcdh2Rs0O3xbbCEKZX8abdz4pWF4RyVy7K6BgkfDWvDCEseCcFMu3P8aqW77n3K
	AF0jcFTNBRF0u57zvtdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYpm-0000uX-6D; Fri, 17 May 2019 09:07:22 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYpe-0000u9-Fj; Fri, 17 May 2019 09:07:14 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id C0D422029B0A3; Fri, 17 May 2019 11:07:12 +0200 (CEST)
Date: Fri, 17 May 2019 11:07:12 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 4/6] arm64: pmu: Add hook to handle pmu-related undefined
 instructions
Message-ID: <20190517090712.GR2650@hirez.programming.kicks-ass.net>
References: <20190516132148.10085-1-raphael.gault@arm.com>
 <20190516132148.10085-5-raphael.gault@arm.com>
 <20190517071018.GH2623@hirez.programming.kicks-ass.net>
 <20190517080419.dziz4iqc7t4mpoej@blommer>
 <20190517082655.GK2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517082655.GK2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 10:26:55AM +0200, Peter Zijlstra wrote:
> On Fri, May 17, 2019 at 09:04:20AM +0100, Mark Rutland wrote:
> 
> > Remember that this is in an undefined (trap) handler.
> > 
> > If userspace _attempts_ to write to the registers, the CPU will trap to the
> > kernel. The comment is perhaps misleading; when we "do nothing", the common
> > trap handling code will send a SIGILL to userspace.
> > 
> > It would probably be better to say something like:
> > 
> > 	/*
> > 	 * If userspace is tries to read a counter that doesn't exist on this
> > 	 * CPU, we emulate it as reading as zero. This happens if userspace is
> > 	 * preempted between reading the idx and actually reading the counter,
> > 	 * and the seqlock and idx have already changed, so it's as-if the
> > 	 * counter has been reprogrammed with a different event.
> 
> Might be good to mention that userspace will/should discard the value it
> reads, and therefore any value is good (including 0).
> 
> > 	 * We don't permit userspace to write to these registers, and will
> > 	 * inject a SIGILL.
> > 	 */
> > 
> > There is one caveat: userspace can write to PMSELR without trapping, so we will
> > have to context-switch with the task. That only affects indirect addressing of
> > PMU registers, and doesn't have a functional effect on the behaviour of the
> > PMU, so that's benign from the PoV of perf.
> 
> Sad though; ideally you'd state that indirect addressing is
> out-of-bounds and they get to keep the pieces. But I suspect you're
> right that people will do it anyway and complain once it comes apart.

I'm still not entirely convinced you need that context switching. If we
sched-out, the seqcount value will change, idem when we sched-in. So
under no circumstance (even if we stay on the same CPU), will the
seqcount match when we get back on.

So why preserve that register?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
