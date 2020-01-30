Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B1914DDEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 16:33:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VaNdtxLkQzhBJssw1tkEH9RCW7Q9fv2fAl6EXFcF9xw=; b=MAARS36Yt8yDR6
	44fF9GQpaKg+CWmu5OMxQURsPAKIM8gBFQndi0CXsTdglEfe995AGuziB66RuPX1zwUxqFQg+mF+J
	To71o2OFExdcmfBaaFnaEeav4IVHhflK4CVigY4WdzmKBBr4Ok6erJdH//TBqTVAqCJcsblAJeDRA
	QEaiQfwxrxxk7WnNaoV2ySyKmgLifTWisT1qJRKUFQDcQnqarC0xOmJEp4hdLOQBqWEILEjYwPPKC
	rtC8JJ3ALb2L/9KiFigQYDYobv0YZuu8Azz8sDAKqPH5uyKk3N5yfJWh+Qq4E9mfJkxwtUtqPik9m
	FlrGhaU+hcu/4i3i5isg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixBp6-00020C-HY; Thu, 30 Jan 2020 15:33:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixBov-0001yH-Pd
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 15:33:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 838EB31B;
 Thu, 30 Jan 2020 07:33:27 -0800 (PST)
Received: from localhost (unknown [10.1.198.81])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 24FC23F68E;
 Thu, 30 Jan 2020 07:33:27 -0800 (PST)
Date: Thu, 30 Jan 2020 15:33:25 +0000
From: Ionela Voinescu <ionela.voinescu@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v2 5/6] TEMP: sched: add interface for counter-based
 frequency invariance
Message-ID: <20200130153325.GA5208@arm.com>
References: <20191218182607.21607-1-ionela.voinescu@arm.com>
 <20191218182607.21607-6-ionela.voinescu@arm.com>
 <20200129193741.GU14914@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129193741.GU14914@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_073329_877183_F67714FA 
X-CRM114-Status: GOOD (  16.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Wednesday 29 Jan 2020 at 20:37:41 (+0100), Peter Zijlstra wrote:
> On Wed, Dec 18, 2019 at 06:26:06PM +0000, Ionela Voinescu wrote:
> > To be noted that this patch is a temporary one. It introduces the
> > interface added by the patches at [1] to allow update of the frequency
> > invariance scale factor based on counters. If [1] is merged there is
> > not need for this patch.
> > 
> > For platforms that support counters (x86 - APERF/MPERF, arm64 - AMU
> > counters) the frequency invariance correction factor can be obtained
> > using a core counter and a fixed counter to get information on the
> > performance (frequency based only) obtained in a period of time. This
> > will more accurately reflect the actual current frequency of the CPU,
> > compared with the alternative implementation that reflects the request
> > of a performance level from the OS through the cpufreq framework
> > (arch_set_freq_scale).
> > 
> > Therefore, introduce an interface - arch_scale_freq_tick, to be
> > implemented by each architecture and called for each CPU on the tick
> > to update the scale factor based on the delta in the counter values,
> > if counter support is present on the CPU.
> > 
> > Either because reading counters is expensive or because reading
> > counters from remote CPUs is not possible or is expensive, only
> > update the counter based frequency scale factor on the tick for
> > now. A tick based update will definitely be necessary either due to
> > it being the only point of update for certain architectures or in
> > order to cache the counter values for a particular CPU, if a
> > further update from that CPU is not possible.
> > 
> > [1]
> > https://lore.kernel.org/lkml/20191113124654.18122-1-ggherdovich@suse.cz/
> 
> FWIW, those patches just landed in tip/sched/core

Thanks, Peter, I'll drop this one next time around.

Ionela.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
