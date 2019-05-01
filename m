Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEA010A81
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 18:01:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5y5MNn23SiVP2pTbaSVF6L4KPoVEMtpFhcPkNoQWAI=; b=aHwBzg0+BlbRV+
	mzQ4ec+7TVtQqPYLIRwhU56Gw/biG85vFtER5Pmw1toQfYHV3XltFVPziOSybYO1RFsb7dA0yclKp
	J4fgTJf23q4GXOH03Q9Wo6mfv3ojJ7STd0nzmGJrTIJ/Lgnlzyk6R9SSMEaFgFOESNXtgWWiwWL1V
	buIHFj5fYNNzhJtIXcBhP2py8/OzP2nk6jHleexUjWlGdV/pAIy4BGCbUy6k1ak+H/CsEW1LcxTqz
	hxOWuvEyABqJW6EDSWMNiY2nEwljB2qbFp6xpq1/ytBR5qnUoD/EZEBIVeKLzEvD4ERyiCFAYP6dP
	nA+KHBzvfGSi+6y8RhEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLrg9-0006Jg-6s; Wed, 01 May 2019 16:01:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLrg2-0006JE-6M
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 16:01:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D73FBA78;
 Wed,  1 May 2019 09:01:44 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 719143F719;
 Wed,  1 May 2019 09:01:43 -0700 (PDT)
Date: Wed, 1 May 2019 17:01:40 +0100
From: Will Deacon <will.deacon@arm.com>
To: Jan Glauber <jglauber@marvell.com>
Subject: Re: [RFC] Disable lockref on arm64
Message-ID: <20190501160140.GC28109@fuggles.cambridge.arm.com>
References: <20190429145159.GA29076@hc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190429145159.GA29076@hc>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_090146_273444_58D8E725 
X-CRM114-Status: GOOD (  15.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: peterz@infradead.org, "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 torvalds@linux-foundation.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jan,

[+Peter and Linus, since they enjoy this stuff]

On Mon, Apr 29, 2019 at 02:52:11PM +0000, Jan Glauber wrote:
> I've been looking into performance issues that were reported for several
> test-cases, for instance an nginx benchmark.

Could you share enough specifics here so that we can reproduce the issue
locally, please? That would help us in our attempts to develop a fix without
simply disabling the option for everybody else.

> It turned out the issue we have on ThunderX2 is the file open-close sequence
> with small read sizes. If the used files are opened read-only the
> lockref code (enabled by ARCH_USE_CMPXCHG_LOCKREF) is used.
> 
> The lockref CMPXCHG_LOOP uses an unbound (as long as the associated
> spinlock isn't taken) while loop to change the lock count. This behaves
> badly under heavy contention (~25x retries for one cmpxchg to succeed
> with 28 threads operating on the same file). In case of a NUMA system
> it also behaves badly as the access from the other socket is much slower.

It's surprising that this hasn't been reported on x86. I suspect their
implementation of cmpxchg is a little more forgiving under contention.

> The fact that on ThunderX2 cpu_relax() turns only into one NOP
> instruction doesn't help either. On Intel pause seems to block the thread
> much longer, avoiding the heavy contention thereby.

NOPing out the yield instruction seems like a poor choice for an SMT CPU
such as TX2. That said, the yield was originally added to cpu_relax() as
a scheduling hint for QEMU.

> With the queued spinlocks implementation I can see a major improvement
> when I disable lockref. A trivial open-close test-case improves by
> factor 2 while system time is decreasing also 2x. Looking at kernel compile
> and dbench numbers didn't show any regression with lockref disabled.
> 
> Can we simply disable lockref? Is anyone else seeing this issue? Is there
> an arm64 platform that actually implements yield?

There are two issues with disabling lockref like this:

  1. It's a compile-time thing, so systems that would benefit from the code
     are unfairly penalised.

  2. You're optimising for the contended case at the cost of the
     uncontended case, which should actually be the common case as well.

Now, nobody expects contended CAS to scale well, so the middle ground
probably involves backing off to the lock under contention, a bit like
an optimistic trylock(). Unfortunately, that will need some tuning, hence
my initial request for a reproducer.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
