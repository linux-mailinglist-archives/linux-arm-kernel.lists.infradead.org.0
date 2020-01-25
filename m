Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B515314951D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 12:16:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cnMZNpSG4k6UmyFcPyLEagWVjgYkliYkRtgF//LogSs=; b=N2SvZC3NOHJFl6
	RcVVmc/wd0K+6row5Gu8KwmwZib8+II2InwdPxeveekz/hYjSE9Hl7T+Bnd6yo6IwdyWNbAGsh8td
	htke0f79Hl8Be78ZVn5TaVQeppeB/4dBm9nC87Lk90Kq2qT9q4TtCIQE/VPjrs+17W2U05LZ8sGEI
	1SH7pxfLjVIicvH+fkzVXn2vOEVwzrk17V1cuV8Ubx1ibOOOff0F5+bcgflF9J4YjZW4xjyiY5xLR
	tUGaE7Rl2flTPh6Bj0ZDrjJ/JMovGacgbJ7prVAZT7vVD3Cn3dJEoVwfwvAawO017xp0XHgQ4bb8Y
	oAX89bNc8yKPEPTencKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ivJQU-0003Jr-Jm; Sat, 25 Jan 2020 11:16:30 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=worktop.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ivJQG-00032F-LC; Sat, 25 Jan 2020 11:16:16 +0000
Received: by worktop.programming.kicks-ass.net (Postfix, from userid 1000)
 id B8AFF980BB0; Sat, 25 Jan 2020 12:16:07 +0100 (CET)
Date: Sat, 25 Jan 2020 12:16:07 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH v8 4/5] locking/qspinlock: Introduce starvation avoidance
 into CNA
Message-ID: <20200125111607.GV11457@worktop.programming.kicks-ass.net>
References: <20191230194042.67789-1-alex.kogan@oracle.com>
 <20191230194042.67789-5-alex.kogan@oracle.com>
 <20200121132949.GL14914@hirez.programming.kicks-ass.net>
 <cfdf635d-be2e-9d4b-c4ca-6bcbddc6868f@redhat.com>
 <3862F8A1-FF9B-40AD-A88E-2C0BA7AF6F58@oracle.com>
 <20200124075235.GX14914@hirez.programming.kicks-ass.net>
 <2c6741c5-d89d-4b2c-cebe-a7c7f6eed884@redhat.com>
 <48ce49e5-98a7-23cd-09f4-8290a65abbb5@redhat.com>
 <8D3AFB47-B595-418C-9568-08780DDC58FF@oracle.com>
 <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <714892cd-d96f-4d41-ae8b-d7b7642a6e3c@redhat.com>
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

On Fri, Jan 24, 2020 at 11:46:53AM -0500, Waiman Long wrote:
> I also thought about that. As you said, it can be hard to guarantee that
> reliable time value can be retrieved in a timely manner across all the
> archs.

Rememer that this code is limited to 64bit archs that have NUMA, my
quick grep says that is limited to:

  alpha, arm64, ia64, mips, powerpc, s390, sparc, x86

afaict, x86 is the one with the worst clocks between the lot of them
(with exception of ia64, which has been completely buggered for a while
and nobody cares).

> Even if we can do that, we will introduce latency to important
> tasks or contexts. I like the first approach better.

In general, the kernel has no clues what is actually important.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
