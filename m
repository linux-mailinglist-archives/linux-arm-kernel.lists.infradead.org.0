Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74961D0B34
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 11:31:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bCXxiFOGwL3NLIIipQIcQ9M/67qVnIoKHzAN6B17k/o=; b=Kf/+zvZ8mlX/zK
	0tw6MM+wXRUBw/+CQcX97cRQ9/Dbo+6Rqe2OrwCxVOPX40X/RD8xAeHapaWrdgTDl+v5ykkKtqQlk
	GU5Dl5EKCdD2ZQinXPPB+1p/VNWZ3PQYB9sLidyf9HaZZn4u/7V+MuZFwX72Hr4/bbe7U0ataYl02
	uoGjCAsi6iijmtYmOqT3kPjX9VNWpeTjy5NTwKYhR5c3ppkK1SFdKzwvZaUUrsFWnP7piRBulQ4vh
	oWqFvT4w9Q+8wy+QNQ8LUvYHbkv+r9sEL+on6BBCyTHIEtFYzgnaSK+HvhGR2uapE2lFwz6CQOOEu
	LSESl2EtGro8yXZa4ppA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8Je-0003a5-2T; Wed, 09 Oct 2019 09:31:30 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8JU-0003Zf-NF; Wed, 09 Oct 2019 09:31:21 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 879F7305DE2;
 Wed,  9 Oct 2019 11:30:26 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 48FC22022BA0D; Wed,  9 Oct 2019 11:31:18 +0200 (CEST)
Date: Wed, 9 Oct 2019 11:31:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Message-ID: <20191009093118.GJ2328@hirez.programming.kicks-ass.net>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191009084610.GG2311@hirez.programming.kicks-ass.net>
 <CAK8P3a3--khxZgWNa3uH8g5PsP7y8PrgpdktEV49UrOhFCX8jQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a3--khxZgWNa3uH8g5PsP7y8PrgpdktEV49UrOhFCX8jQ@mail.gmail.com>
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

On Wed, Oct 09, 2019 at 10:57:25AM +0200, Arnd Bergmann wrote:
> On Wed, Oct 9, 2019 at 10:46 AM Peter Zijlstra <peterz@infradead.org> wrote:
> >
> > On Tue, Oct 08, 2019 at 04:32:27PM +0200, Arnd Bergmann wrote:
> > > diff --git a/arch/arm/include/asm/cmpxchg.h b/arch/arm/include/asm/cmpxchg.h
> > > index 8b701f8e175c..6bf4964c105c 100644
> > > --- a/arch/arm/include/asm/cmpxchg.h
> > > +++ b/arch/arm/include/asm/cmpxchg.h
> > > @@ -114,6 +114,24 @@ static inline unsigned long __xchg(unsigned long
> > > x, volatile void *ptr, int size
> > >         return ret;
> > >  }
> > >
> > > +#ifdef CONFIG_CPU_V6
> > > +static inline unsigned short smp_xchg16_relaxed(volatile unsigned
> > > short *ptr, unsigned short x)
> > > +{
> > > +       unsigned short ret, tmp;
> > > +       asm volatile("@ smp_xchg16_relaxed\n"
> > > +       ".arch armv6k\n"
> > > +       "1:     ldrexh  %0, [%3]\n"
> > > +       "       strexh  %1, %2, [%3]\n"
> > > +       "       teq     %1, #0\n"
> > > +       "       bne     1b"
> > > +               : "=&r" (ret), "=&r" (tmp)
> > > +               : "r" (x), "r" (ptr)
> > > +               : "memory", "cc");
> > > +       return ret;
> > > +}
> > > +#define smp_xchg16_relaxed smp_xchg16_relaxed
> > > +#endif
> >
> > Why is this not in __xchg() as a variant for case 2 ?
> 
> ldrexh/strexh are instructions that are only available on SMP-capable
> architecture revisions (ARMv6K or higher). When building a kernel
> that runs both on pre-K ARMv6 uniprocessor systems and on later
> SMP systems, __xchg() can only do 32-bit  ldrex/strex.

You can do u16 xchg using a u32 ll/sc, see openrisc's xchg_small().

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
