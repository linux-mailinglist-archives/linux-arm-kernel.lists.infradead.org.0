Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4932DD013D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 21:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E0GMm45NPnaXi52/vNGOdyZzL0z24Inhif13sdLLN4c=; b=kjpchYXplNKL26
	PQOXagx/zvKGhWST3M+TEjh9eVmb2N9UeTAY6DWo4xsnWblBsH3i4qSSI3CjWBoG886bhGWTmPgd5
	EFyKPMfzSiUxzqKq85NRXm0RJJhn/B6eUeBlQ0djkr0Nb5TXXLC2gAqxTvKLPfUN0/MtlZaCTWMlO
	bMCf8V2WlcYq0FirSyFFal256ocJrBsAl2GkmXAmGpbAd5S4s7SGucmA87E9dqSLt9H7RT4Og9MDH
	XAlhcanntNjygvvmLjMA3g7KCTU6lzjYP8u4y3xDRcSd+GC7xGIyf/FSil9LMyKk+9Nfsp+jRZ07h
	niVXf2mKYieAzBWqEGwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHvDZ-00032B-Q5; Tue, 08 Oct 2019 19:32:21 +0000
Received: from chamillionaire.breakpoint.cc ([2a0a:51c0:0:12e:520::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHvDQ-00031m-6K
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 19:32:14 +0000
Received: from bigeasy by Chamillionaire.breakpoint.cc with local (Exim 4.92)
 (envelope-from <sebastian@breakpoint.cc>)
 id 1iHvDL-0005pr-QL; Tue, 08 Oct 2019 21:32:07 +0200
Date: Tue, 8 Oct 2019 21:32:07 +0200
From: Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Message-ID: <20191008193207.intucfnfuitudadx@flow>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_123212_228801_2F40072F 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:520:0:0:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Peter Zijlstra <peterz@infradead.org>, Russell King <linux@armlinux.org.uk>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-10-08 13:42:43 [+0200], Arnd Bergmann wrote:
> This looks nice, and I don't see anything wrong with the implementation,
> but I am slightly worried about switching everything over to a generic
> spinlock while keeping the custom ARM version for an exceptionally
> rare corner case:

I do not want ARM to have two spinlock implementations.

> The ARM spinlock is now only used when you build an SMP-enabled
> kernel for an ARM1136r0 that is used in OMAP2, i.MX3 and some
> of the least common Integrator/Realview variants. I'm not aware
> of any binary distros with ARMv6+ kernels, so these would run custom
> kernels that are almost always non-SMP as well as no longer getting
> kernel upgrades (almost all have been discontinued years ago, the i.MX35
> chip itself was the last to get EOLd in 2018).
> Raspbian builds an ARMv6K SMP kernel that is not affected by this.

I just looked at the Debian configs. The armel look UP only and armhf is
V7. I am not sure if there is a SMP capable CPU that is V6. I've been
looking at a wiki [0] and the first SMP CPU seems to be ARMv6K.

> I wonder if we can do something better here and make the
> asm-generic/qspinlock.h implementation always degrade into an
> equivalent of include/linux/spinlock_up.h when running on uniprocessor
> systems, avoiding both the atomic cmpxchg and the slowpath.
> 
> That way, an ARMv6+SMP kernel on UP could share the qspinlock
> implementation but never actually get into the invalid 16-bit xchg() or
> sev()/wfe(). It already shouldn't ever get into the slowpath on a
> non-SMP system if I understand it correctly, but avoiding the cmpxchg()
> entirely would be an added benefit.

The lock should never be contenteded so yes.

[0] https://en.wikipedia.org/wiki/List_of_ARM_microarchitectures

>        Arnd

Sebastian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
