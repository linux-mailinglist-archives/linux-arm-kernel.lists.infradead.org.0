Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969EED0D49
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 12:57:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcIJ6d7wh0ozCE/n6cqS4JqCt7snY4Ujzfh8WtpSqPo=; b=m18jwg69IXeW8M
	g5gSGnfvG40I514y7Hbpm/Dg9yqCNA7CTu/vO/lU6nbGMJPpdvysAbFh2RowDUruvLp6IE6ntCkxd
	Nui1Rrh+EmlRh1aka1gMFF1b+ZChm97/ftB6XRWdDAtdyHySLYUIRrjr7yTcwN6Oq+5BQtz10W7xn
	tpuDWqk5PHoj9b7KH3skIsYtPxi3K07Xp7kkWYCb7DmacdLRzzqNHUVRksfNDCIqKqaKmloKYPg+V
	6Wt9pbY/KOIAPgbuJQXPATaLdSXbFHU2JWb1U9RDAqVjdoYft/FcS0IwOWiAUFCdg+ikmrLA8R0eC
	46ynCEIttByUSEHWcjNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI9eh-00073C-6f; Wed, 09 Oct 2019 10:57:19 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI9eK-0006pM-AI
 for linux-arm-kernel@bombadil.infradead.org; Wed, 09 Oct 2019 10:56:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BnwHKS5gyf6nTrksd6z9/R7rLWtUktY381TcQr4nBkc=; b=vyC48ZGsOIJFI2rtCUxMGt/Gx
 VqzrkFNHKnedfaZo1RfwPQaADLhhzuZFdVizTfTWxU5XWy7Du7aGBF7wtm10UYXdZvCJMFIZnsLsj
 IGMExEUVJ9yjZebnvF4AcBWjU6cJAyiUocgl6qEByH5Qe5UHAxRMJFbHZFLM6kHv84eokJ4lDKzEN
 F4Lr4WggWMzsfvnkU/rPIKtgGdAmi11K2Qpnd1S2vUHqEVbyH4Gtf9ErskvaD7zFFPqc7qYfhdknB
 aEOIqPpVT3RJunDqTwa3HlCMIejpA092Mhd9TwvSdKVdQA4KwFwmbHi2zAyYQMTy0FX1+nEO5w/ya
 oqPuyOC5w==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI9eG-0001UI-E0; Wed, 09 Oct 2019 10:56:52 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 5B7D33062B5;
 Wed,  9 Oct 2019 12:55:58 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 24C4320247620; Wed,  9 Oct 2019 12:56:50 +0200 (CEST)
Date: Wed, 9 Oct 2019 12:56:50 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Message-ID: <20191009105650.GM2328@hirez.programming.kicks-ass.net>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191009084610.GG2311@hirez.programming.kicks-ass.net>
 <CAK8P3a3--khxZgWNa3uH8g5PsP7y8PrgpdktEV49UrOhFCX8jQ@mail.gmail.com>
 <20191009093118.GJ2328@hirez.programming.kicks-ass.net>
 <CAK8P3a0W2+oayv8D=DBqDaeR+dp2QsjhigKevT_D6NLtGPMWxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0W2+oayv8D=DBqDaeR+dp2QsjhigKevT_D6NLtGPMWxw@mail.gmail.com>
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
Cc: Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 12:31:24PM +0200, Arnd Bergmann wrote:
> On Wed, Oct 9, 2019 at 11:31 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > On Wed, Oct 09, 2019 at 10:57:25AM +0200, Arnd Bergmann wrote:
> > > On Wed, Oct 9, 2019 at 10:46 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > > > Why is this not in __xchg() as a variant for case 2 ?
> > >
> > > ldrexh/strexh are instructions that are only available on SMP-capable
> > > architecture revisions (ARMv6K or higher). When building a kernel
> > > that runs both on pre-K ARMv6 uniprocessor systems and on later
> > > SMP systems, __xchg() can only do 32-bit  ldrex/strex.
> >
> > You can do u16 xchg using a u32 ll/sc, see openrisc's xchg_small().
> 
> Ah, right. That would be much nicer than my smp_xchg16_relaxed()
> hack to get the corner case working, as it avoids the ugly special
> case in qspinlock.h.
> 
> Would this still have comparable performance characteristics?

I suppose so..

> I assume the 16-bit xchg_relaxed() in qspinlock.c was meant as
> an optimization for x86 and other cmpxchg based architectures but
> doesn't actually help on ll/sc based architectures that get the
> reservation on the whole cache line anyway?

It does actually help here too, because it allows other operations to be
regular load/stores.

Look at the #if _Q_PENDING_BITS==8 in qspinlock.c, as opposed to the
#else where they're all atomic_*().


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
