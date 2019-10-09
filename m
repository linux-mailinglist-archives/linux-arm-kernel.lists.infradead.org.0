Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC5DD0F31
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 14:53:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+llsWRQr2bOYkfoqfA8yT0f4F1smbggQIah+/NhfuE=; b=tIi1JdXV/AXuuC
	0cidpcPrmIQxoXtwVvpE4oQH7fgsO21WfhjT/J4XdAn4RHo1dF1gL+jzx4tX6lF5xUoFiSnU12WTx
	7jS0SHEroP4UjKl48Ms0Ejr8NRnRtiozXm5EZ68msnVPkwbSse4FWLqj1e2MSYescn2b8eOtg+XH0
	ysuhljqGyP8wKRdLf6f8deyNTP5KahIUyHw10yVA8nrj9GIimYm7cwUbhDTsDflo44BqYVxuH+F0V
	s9VGaEcRBvg3HivIUTeTMIO6CEnXKONaIl/UMMGVW2Xpoj3BHMJ33WhwXoidBF2oQxi/IuHCLoYKv
	9yki+eNb38pRGdzlVqOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIBSm-0002R5-W3; Wed, 09 Oct 2019 12:53:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIBSe-0002QT-E3
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 12:53:02 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 014C820B7C;
 Wed,  9 Oct 2019 12:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570625577;
 bh=XLrDOZBP/clKZHOmqcbnnKWD7yAPKuFUqUjY8FiZPBQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ec/8SyVVLuXfmVHuQvCOrgfLRTmqOJqUlNpugHJ2ZFeaEmlm0mQTYollYaCY6I5Eo
 1pZPGJAHffhHC2DDsBGVXtmrJVUEJjDqqgyRkhv9ygoknNu1eQE3hRhusz4UKS4SSr
 241rilntJV5z6bI4Mx9+POYMl4s1vCrE9WuPh+2U=
Date: Wed, 9 Oct 2019 13:52:52 +0100
From: Will Deacon <will@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Message-ID: <20191009125252.v6fib3ex3qg37r7o@willie-the-truck>
References: <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
 <20191009084610.GG2311@hirez.programming.kicks-ass.net>
 <CAK8P3a3--khxZgWNa3uH8g5PsP7y8PrgpdktEV49UrOhFCX8jQ@mail.gmail.com>
 <20191009093118.GJ2328@hirez.programming.kicks-ass.net>
 <CAK8P3a0W2+oayv8D=DBqDaeR+dp2QsjhigKevT_D6NLtGPMWxw@mail.gmail.com>
 <20191009105650.GM2328@hirez.programming.kicks-ass.net>
 <CAK8P3a1CyaqHvx+UC+ZeJYDjU4x52hQ9sKyEMiOc=dKq8NTYKg@mail.gmail.com>
 <20191009120639.GI2311@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009120639.GI2311@hirez.programming.kicks-ass.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_055300_512001_DEB771E5 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 Ingo Molnar <mingo@redhat.com>, Waiman Long <longman@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 09, 2019 at 02:06:39PM +0200, Peter Zijlstra wrote:
> On Wed, Oct 09, 2019 at 02:00:05PM +0200, Arnd Bergmann wrote:
> > On Wed, Oct 9, 2019 at 12:57 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > > On Wed, Oct 09, 2019 at 12:31:24PM +0200, Arnd Bergmann wrote:
> > > > On Wed, Oct 9, 2019 at 11:31 AM Peter Zijlstra <peterz@infradead.org> wrote:
> > > > I assume the 16-bit xchg_relaxed() in qspinlock.c was meant as
> > > > an optimization for x86 and other cmpxchg based architectures but
> > > > doesn't actually help on ll/sc based architectures that get the
> > > > reservation on the whole cache line anyway?
> > >
> > > It does actually help here too, because it allows other operations to be
> > > regular load/stores.
> > >
> > > Look at the #if _Q_PENDING_BITS==8 in qspinlock.c, as opposed to the
> > > #else where they're all atomic_*().
> > 
> > Oh, is that safe with an xchg() implementation that operates on the whole
> > 32 bit when a concurrent thread can do a simple store to one half of it?
> 
> It had better be, otherwise LL/SC'd be broken. SC _must_ fail when there
> is a contending store.
> 
> > The ARM architecture reference says "It is UNPREDICTABLE whether the
> > transition from Exclusive Access to Open Access state occurs when the
> > Store or StoreExcl is from another observer.", which sounds to me
> > me like the xchg_small() trick would not work with the qspinlock
> > implementation on ARM. [I see that mips, openrisc and xtensa do this,
> > but did not try to find out whether they have ll/sc semantics that make
> > it safe when another thread does a plain store to the reservation]
> 
> Will?

I think this is the documentation being unhelpful -- there is a section
about the "local monitor", which this text applies to, but then there's
also a section about the "global monitor", which has a state machine
diagram in the section called "Clear global monitor event". This diagram
shows how the global monitor transitions from "Exclusive access" to "Open
access" in response to a store from a different observer to the "marked
address".

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
