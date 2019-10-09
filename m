Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F29CDD0A18
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFvVSuKrHsPBczHi/aoDuIxkhXA7nIOea3BSFz2YZtQ=; b=Go8Lm+PKVLiOyJ
	37xgZnCjV0WHWNRKhdBT3SuMmCMVNl3I3iebM4+huiQZ22o/mPiqr3pYQ7N2Dva9b+5ScFO6WIsaE
	F6XHZusQ9/TKyspeDjMX6XZueHW6+PgYQJDMx+0eAah5SJ1P3DOujZRMVPUeXxRPn1f2Ms3LJCF1u
	3M9BfSaFcdlyBrSTGrS5wAcW3AVD2i94guLh4oYsglWx4XGYEyTFGUxJQlV7TKZhyRvGTQk3x58xy
	ZDfMCeUXbuNBEF3h3GjFh5rbj2//kfgCeOWagzKXL2aasNZIetP2CW4TnONM7c6QZJy3D2hgI5EaW
	lxao78UGldSA1XN8D3Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI7c4-00073f-5q; Wed, 09 Oct 2019 08:46:28 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7bw-00073M-8R
 for linux-arm-kernel@bombadil.infradead.org; Wed, 09 Oct 2019 08:46:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xc4gHjFk4C1mn1e3HflgVPg+trhwTQ56RYKWUJRf1uo=; b=SEq8H5Z8pnqaXB/8SHznqC4e8
 yaH/zAyHw1uuGTR/cjPoBYxDh+/+VjPaYD/suXh0EhR8ld3Y782NFUU+Q+T6otq5BXfnoBDaeJpms
 ddEkFvFizqzzZFU5v6fdLD3uXlpAyIdx1Jffqq9xR3AeVq7gzIlr8fA32snLvLXe5F8hoFH6B07br
 TleTcDpaKfZYci2H+LDEEz4En3RfLhRgIaVIbrWWe5iMQabHhmaY16PSo0vwJE9XHZe9xkI8Pkq5U
 GP91n/akXTjSdvGPGvt/u514l0paeEunX+N8445GJXIG0Nvn4Mil56bxIVaBx01hc7C6Ge0aF71hd
 P1hpiYKXg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI7br-0000Dd-2K; Wed, 09 Oct 2019 08:46:15 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 6A82730034F;
 Wed,  9 Oct 2019 10:45:18 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 1D79E20BCA6A9; Wed,  9 Oct 2019 10:46:10 +0200 (CEST)
Date: Wed, 9 Oct 2019 10:46:10 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
Message-ID: <20191009084610.GG2311@hirez.programming.kicks-ass.net>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
 <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
 <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a0UH8_pSPbEd7fRjws-TZ=+q-gLQZXvEOtoX9YtZY9tmA@mail.gmail.com>
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

On Tue, Oct 08, 2019 at 04:32:27PM +0200, Arnd Bergmann wrote:
> diff --git a/arch/arm/include/asm/cmpxchg.h b/arch/arm/include/asm/cmpxchg.h
> index 8b701f8e175c..6bf4964c105c 100644
> --- a/arch/arm/include/asm/cmpxchg.h
> +++ b/arch/arm/include/asm/cmpxchg.h
> @@ -114,6 +114,24 @@ static inline unsigned long __xchg(unsigned long
> x, volatile void *ptr, int size
>         return ret;
>  }
> 
> +#ifdef CONFIG_CPU_V6
> +static inline unsigned short smp_xchg16_relaxed(volatile unsigned
> short *ptr, unsigned short x)
> +{
> +       unsigned short ret, tmp;
> +       asm volatile("@ smp_xchg16_relaxed\n"
> +       ".arch armv6k\n"
> +       "1:     ldrexh  %0, [%3]\n"
> +       "       strexh  %1, %2, [%3]\n"
> +       "       teq     %1, #0\n"
> +       "       bne     1b"
> +               : "=&r" (ret), "=&r" (tmp)
> +               : "r" (x), "r" (ptr)
> +               : "memory", "cc");
> +       return ret;
> +}
> +#define smp_xchg16_relaxed smp_xchg16_relaxed
> +#endif

Why is this not in __xchg() as a variant for case 2 ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
