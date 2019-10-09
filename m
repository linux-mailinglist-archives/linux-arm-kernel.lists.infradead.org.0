Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD646D0E63
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 14:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IN/25FdWSFo/SPDwOL1LwNSxwQKqJOa3YdNishWVAqs=; b=Seg/q9ifyRJZoW
	7xvTR/URpXisXODbISusM1WuUTN+6VmjqyM0VKFfnXvGuHMRXv0quK3o9uzzdZpDVeuBOZ2CDb88J
	PBkwxV3pVhn067eQem45EFJrU7O9DHS7i/fzwYaz1/K66qaOztE6W1rlJ00VfnztrlWY4y42uev+M
	RfLZ57Jie+As4jVIruCIqLNLkKhXKljJ7mrTkdM0nRoJKN+JrcarPQh3ONAqucc5kcfGdy1tqIIiV
	kUFQz5H1m+nyoUsisSdY255VNkX5DMLKKTuobaUkG7BPt5eHn9bLkrkiu14c5hEBi8t9J6miFQozV
	6aqU0UAUWDiDdjDnWBVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAm0-00036D-4P; Wed, 09 Oct 2019 12:08:56 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAjv-00016Y-7O
 for linux-arm-kernel@bombadil.infradead.org; Wed, 09 Oct 2019 12:06:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4Cjkq4BOZ18UMbqcv1+zdAZc/l/WllwXfedj8n2S3nk=; b=SdhcWtzPOTWjwS0Q31sc+uZVT
 2W2sPuogM8X8W/pAakRZ674u2iFO64WjgGfVXy+I5m0fzy1tZO0z7dNtG5Kt/tnIy+QbXq+Pvk2te
 kwyQYuQ6sh44E4Yjm3340SMNR+C5VJYTEWz0P43srUi5+naIY2CNn7ea/vGP5AJVORsymyug87GAx
 zBKinoelEu166Vh1BmRA/PFsQXjBQFeGXRhxtPNliX4KEvC3YJQqLbPSFr+HwKG3qEaBnh6ypdnYW
 dPgK0st5dKS0yBp5+IxjUePuvpEX+lwhDLGFT6d7F+q4D/tx6vqDsfa0uyztcv/14xgEqLvQ0rLkx
 IC1n84Z1g==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAjq-00027G-Qg; Wed, 09 Oct 2019 12:06:42 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B575E30034F;
 Wed,  9 Oct 2019 14:05:47 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 308FB209EC5F6; Wed,  9 Oct 2019 14:06:39 +0200 (CEST)
Date: Wed, 9 Oct 2019 14:06:39 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Message-ID: <20191009120639.GI2311@hirez.programming.kicks-ass.net>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191009084610.GG2311@hirez.programming.kicks-ass.net>
 <CAK8P3a3--khxZgWNa3uH8g5PsP7y8PrgpdktEV49UrOhFCX8jQ@mail.gmail.com>
 <20191009093118.GJ2328@hirez.programming.kicks-ass.net>
 <CAK8P3a0W2+oayv8D=DBqDaeR+dp2QsjhigKevT_D6NLtGPMWxw@mail.gmail.com>
 <20191009105650.GM2328@hirez.programming.kicks-ass.net>
 <CAK8P3a1CyaqHvx+UC+ZeJYDjU4x52hQ9sKyEMiOc=dKq8NTYKg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1CyaqHvx+UC+ZeJYDjU4x52hQ9sKyEMiOc=dKq8NTYKg@mail.gmail.com>
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

On Wed, Oct 09, 2019 at 02:00:05PM +0200, Arnd Bergmann wrote:
> On Wed, Oct 9, 2019 at 12:57 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > On Wed, Oct 09, 2019 at 12:31:24PM +0200, Arnd Bergmann wrote:
> > > On Wed, Oct 9, 2019 at 11:31 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > > I assume the 16-bit xchg_relaxed() in qspinlock.c was meant as
> > > an optimization for x86 and other cmpxchg based architectures but
> > > doesn't actually help on ll/sc based architectures that get the
> > > reservation on the whole cache line anyway?
> >
> > It does actually help here too, because it allows other operations to be
> > regular load/stores.
> >
> > Look at the #if _Q_PENDING_BITS==8 in qspinlock.c, as opposed to the
> > #else where they're all atomic_*().
> 
> Oh, is that safe with an xchg() implementation that operates on the whole
> 32 bit when a concurrent thread can do a simple store to one half of it?

It had better be, otherwise LL/SC'd be broken. SC _must_ fail when there
is a contending store.

> The ARM architecture reference says "It is UNPREDICTABLE whether the
> transition from Exclusive Access to Open Access state occurs when the
> Store or StoreExcl is from another observer.", which sounds to me
> me like the xchg_small() trick would not work with the qspinlock
> implementation on ARM. [I see that mips, openrisc and xtensa do this,
> but did not try to find out whether they have ll/sc semantics that make
> it safe when another thread does a plain store to the reservation]

Will?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
