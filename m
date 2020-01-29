Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3638F14D140
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 20:38:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lIvdk54UseszsEF8blySXdtSq5cyRYpKqU46GplRUlw=; b=XdAcs93L2oiMG5
	ShHZkg9UGLQ3qNeXQdZET/P9ZB+nMO30vJMrIFHyH9wkvAhp+obTK0DtTKLxNN3Zd5SaU3oGxZliu
	GC5rs4HMIItc0cYLaWA3jjBGzn4DKzECWMdO0TtndaDNQwbzFKxXeEw0hgoO78lEF8Z4Mcw+qV3Jm
	5TuDn1JVesrIXJOu93xmfXhe2aGmaQWj9Q7rO4aGh2TNZlfjBZ1jwwgyzScGx1oW7+Lch/RMcgRxc
	pBVDMrrghf7rH3j0Uh3/+e9x0QoxMKLxMbTAlFCQjY2rPBGl9e8VDHVE2GXFWB4HPBRiKeEbki0R8
	p4YIAScPG/KuKGndLtyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwt9r-0005id-QT; Wed, 29 Jan 2020 19:37:51 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwt9j-0005iI-2Q; Wed, 29 Jan 2020 19:37:43 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 78B90300606;
 Wed, 29 Jan 2020 20:35:58 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 440C82B7337BB; Wed, 29 Jan 2020 20:37:41 +0100 (CET)
Date: Wed, 29 Jan 2020 20:37:41 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Ionela Voinescu <ionela.voinescu@arm.com>
Subject: Re: [PATCH v2 5/6] TEMP: sched: add interface for counter-based
 frequency invariance
Message-ID: <20200129193741.GU14914@hirez.programming.kicks-ass.net>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-6-ionela.voinescu@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218182607.21607-6-ionela.voinescu@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: mark.rutland@arm.com, maz@kernel.org, Juri Lelli <juri.lelli@redhat.com>,
 suzuki.poulose@arm.com, catalin.marinas@arm.com, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, ggherdovich@suse.cz,
 sudeep.holla@arm.com, will@kernel.org, dietmar.eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 18, 2019 at 06:26:06PM +0000, Ionela Voinescu wrote:
> To be noted that this patch is a temporary one. It introduces the
> interface added by the patches at [1] to allow update of the frequency
> invariance scale factor based on counters. If [1] is merged there is
> not need for this patch.
> 
> For platforms that support counters (x86 - APERF/MPERF, arm64 - AMU
> counters) the frequency invariance correction factor can be obtained
> using a core counter and a fixed counter to get information on the
> performance (frequency based only) obtained in a period of time. This
> will more accurately reflect the actual current frequency of the CPU,
> compared with the alternative implementation that reflects the request
> of a performance level from the OS through the cpufreq framework
> (arch_set_freq_scale).
> 
> Therefore, introduce an interface - arch_scale_freq_tick, to be
> implemented by each architecture and called for each CPU on the tick
> to update the scale factor based on the delta in the counter values,
> if counter support is present on the CPU.
> 
> Either because reading counters is expensive or because reading
> counters from remote CPUs is not possible or is expensive, only
> update the counter based frequency scale factor on the tick for
> now. A tick based update will definitely be necessary either due to
> it being the only point of update for certain architectures or in
> order to cache the counter values for a particular CPU, if a
> further update from that CPU is not possible.
> 
> [1]
> https://lore.kernel.org/lkml/20191113124654.18122-1-ggherdovich@suse.cz/

FWIW, those patches just landed in tip/sched/core

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
