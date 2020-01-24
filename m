Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E6B148B04
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 16:13:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F4J+csldHSHL+pyJEl3RBXE/pwOB3R+a8C6tBszAVeA=; b=mt0CMk38iBSdWe
	12wjemefsIz4h1A19pbNHurZoE+K0H61HcohZicCa/w+NN3vcXuhF31Q2ZJ2Xns4/ENiNM6oTD1XY
	59KTyucqAGlIM/zMeBahap6zNOv45EbMccfolcKl/jLb4YZtrAd2QeJ8uecNjOmRwToQm9O3NaXaq
	HP6DJ43W06fdq1Cc2fHKNpjIzf89xWC9xbmW5zhCvph9vDJAcT+cMxI7DcRWDQqpR0HOM26Anjw+o
	693g7tWZNVk0ts9zdtME1GC6WgiLuFK92JI3Y1W8Q2PZzooWs5b54efMBPw8VEVlX2T46mbbxPxMQ
	pJcy+zvkw91rOFY7awqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0eB-0007RQ-FL; Fri, 24 Jan 2020 15:13:23 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0e0-0007Qp-QC; Fri, 24 Jan 2020 15:13:12 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 63A913012DC;
 Fri, 24 Jan 2020 16:11:29 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id E889620AFECE6; Fri, 24 Jan 2020 16:13:09 +0100 (CET)
Date: Fri, 24 Jan 2020 16:13:09 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
Message-ID: <20200124151309.GE14879@hirez.programming.kicks-ass.net>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
 <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
 <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
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
Cc: linux-arch@vger.kernel.org, Hanjun Guo <guohanjun@huawei.com>,
 Arnd Bergmann <arnd@arndb.de>, dave.dice@oracle.com,
 Jan Glauber <jglauber@marvell.com>, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com,
 Alex Kogan <alex.kogan@oracle.com>, Steven Sistare <steven.sistare@oracle.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Daniel Jordan <daniel.m.jordan@oracle.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 09:42:42AM -0500, Waiman Long wrote:
> On 1/24/20 2:52 AM, Peter Zijlstra wrote:
> > On Thu, Jan 23, 2020 at 04:33:54PM -0500, Alex Kogan wrote:
> >> Let me put this question to you. What do you think the number should be?
> > I think it would be very good to keep the inter-node latency below 1ms.
> It is hard to guarantee that given that lock hold times can vary quite a
> lot depending on the workload. What we can control is just how many
> later lock waiters can jump ahead before a given waiter.

We're not into this for easy. And exactly because it depends on a lot we
need a lot of data.

Worst case lock acquisition times directly translate into worst case
IRQ-off latencies, and even the most die hard throughput oriented
workloads don't like to experience multiple ticks worth of irq-off
latencies.

> > But to realize that we need data on the lock hold times. Specifically
> > for the heavily contended locks that make CNA worth it in the first
> > place.
> >
> > I don't see that data, so I don't see how we can argue about this let
> > alone call something reasonable.
> >
> In essence, CNA lock is for improving throughput on NUMA machines at the
> expense of increasing worst case latency. If low latency is important,

Latency is _always_ important. Otherwise we'd never have put so much
time and effort into fair locks to begin with. Unbounded latency sucks
unconditionally.

> it should be disabled. If CONFIG_PREEMPT_RT is on,
> CONFIG_NUMA_AWARE_SPINLOCKS should be off.

You're spouting nonsense. You cannot claim any random number is
reasonable without argument.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
