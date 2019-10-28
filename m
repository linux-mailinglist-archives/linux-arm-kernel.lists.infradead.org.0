Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DC3E7589
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 16:52:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKa3E7i+jeAiUCXHkdiuJNMkhqyboVXh4dmn8G//12M=; b=SjUygKZUbuH+mk
	Hn38PLZwfr9oXbphwmM/MZ/FMtYkETL/Kjk53C4L9qIT8/2ie6SllPmPpZJoCqaLsLe33laFsTtOM
	Zxh38LiDSDvW/cyUjPj69paCJmGya/M6ZirR3qiFTyAqqPK3pluqiEp0GMO3BSS/kKAR3bKQiXgMa
	951hTphIMfjjKyRFpbm2rAtcSmB0d9haSB7eTMSOg7fP5o/ElpgRgeLaCdjqTqK+jUdQpPjDi8db5
	ytCDgSWJYkyLNpurbMb9U7BLErZBTgVwYkV87VOUZzmsKM0yP+i44WeDm9FMhXjARf+V+bybCAapf
	LKjPEMeXO/q9+fWZMPVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP7Jn-0007Pa-PX; Mon, 28 Oct 2019 15:52:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7Jd-0007PD-Ql
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 15:52:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C7F920717;
 Mon, 28 Oct 2019 15:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572277941;
 bh=97yS8z5FVacniDasr5jHJ8UvydVF8s/Uj+ONoCj6FNw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F5Heiqz7ChY3bRNtswHWSHyBW/ykGPEnDOiqXtLEHOft9Ggz/nnpIOK19X7E4ZbDd
 TkCk4dWyYXBFMFJ5M/vMfx1Ba5pAW4LSQ2R0HO5G59OnKluKoI0cDnbHp3EvGYyctc
 T4ygQUoDqNR7S04Bvq56Os6i5QD1BxSdS/efevGc=
Date: Mon, 28 Oct 2019 15:52:16 +0000
From: Will Deacon <will@kernel.org>
To: Waiman Long <longman@redhat.com>
Subject: Re: [PATCH 1/2] locking/Kconfig: Add INLINE_SPINLOCKS & INLINE_RWLOCKS
Message-ID: <20191028155215.GE5576@willie-the-truck>
References: <20191016172028.16802-1-longman@redhat.com>
 <20191016172028.16802-2-longman@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016172028.16802-2-longman@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_085221_907545_07D69F8F 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-s390@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Vasily Gorbik <gor@linux.ibm.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>, x86@kernel.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[I thought I replied to this already but I can't find any evidence of that.
 Apologies if you receive this twice!]

On Wed, Oct 16, 2019 at 01:20:27PM -0400, Waiman Long wrote:
> Both the arm64 and s390 architectures decide to inline all the spinlock
> and rwlock functions except the read_trylock() and write_trylock()
> functions for arm64. As other architectures are contemplating about
> inlining those locking functions as well, it makes sense to make it
> easier and less error-prone to do this.
> 
> Two new Kconfig options INLINE_SPINLOCKS and INLINE_RWLOCKS and their
> ARCH_* counterparts are now added to streamline this process. The s390
> and arm64's Kconfig files are modified to use the new Kconfig options.
> 
> There is no functional change for s390. For arm64, both read_trylock()
> and write_trylock() are now inlined as well.
> 
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Waiman Long <longman@redhat.com>
> ---
>  arch/arm64/Kconfig   | 28 ++-------------------------
>  arch/s390/Kconfig    | 30 ++---------------------------
>  kernel/Kconfig.locks | 45 +++++++++++++++++++++++++++++++++++++++++++-
>  3 files changed, 48 insertions(+), 55 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 950a56b71ff0..e440d85dd8f1 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -35,32 +35,8 @@ config ARM64
>  	select ARCH_HAS_TEARDOWN_DMA_OPS if IOMMU_SUPPORT
>  	select ARCH_HAS_TICK_BROADCAST if GENERIC_CLOCKEVENTS_BROADCAST
>  	select ARCH_HAVE_NMI_SAFE_CMPXCHG
> -	select ARCH_INLINE_READ_LOCK if !PREEMPT
> -	select ARCH_INLINE_READ_LOCK_BH if !PREEMPT
> -	select ARCH_INLINE_READ_LOCK_IRQ if !PREEMPT
> -	select ARCH_INLINE_READ_LOCK_IRQSAVE if !PREEMPT
> -	select ARCH_INLINE_READ_UNLOCK if !PREEMPT
> -	select ARCH_INLINE_READ_UNLOCK_BH if !PREEMPT
> -	select ARCH_INLINE_READ_UNLOCK_IRQ if !PREEMPT
> -	select ARCH_INLINE_READ_UNLOCK_IRQRESTORE if !PREEMPT
> -	select ARCH_INLINE_WRITE_LOCK if !PREEMPT
> -	select ARCH_INLINE_WRITE_LOCK_BH if !PREEMPT
> -	select ARCH_INLINE_WRITE_LOCK_IRQ if !PREEMPT
> -	select ARCH_INLINE_WRITE_LOCK_IRQSAVE if !PREEMPT
> -	select ARCH_INLINE_WRITE_UNLOCK if !PREEMPT
> -	select ARCH_INLINE_WRITE_UNLOCK_BH if !PREEMPT
> -	select ARCH_INLINE_WRITE_UNLOCK_IRQ if !PREEMPT
> -	select ARCH_INLINE_WRITE_UNLOCK_IRQRESTORE if !PREEMPT
> -	select ARCH_INLINE_SPIN_TRYLOCK if !PREEMPT
> -	select ARCH_INLINE_SPIN_TRYLOCK_BH if !PREEMPT
> -	select ARCH_INLINE_SPIN_LOCK if !PREEMPT
> -	select ARCH_INLINE_SPIN_LOCK_BH if !PREEMPT
> -	select ARCH_INLINE_SPIN_LOCK_IRQ if !PREEMPT
> -	select ARCH_INLINE_SPIN_LOCK_IRQSAVE if !PREEMPT
> -	select ARCH_INLINE_SPIN_UNLOCK if !PREEMPT
> -	select ARCH_INLINE_SPIN_UNLOCK_BH if !PREEMPT
> -	select ARCH_INLINE_SPIN_UNLOCK_IRQ if !PREEMPT
> -	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPT
> +	select ARCH_INLINE_RWLOCKS if !PREEMPT

This is a change in behaviour, since you're now selecting both
ARCH_INLINE_READ_TRYLOCK and ARCH_INLINE_WRITE_TRYLOCK for arm64.

However, I /think/ that's probably just because I missed that when
enabling the others, so cautiously:

Acked-by: Will Deacon <will@kernel.org> # arm64

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
