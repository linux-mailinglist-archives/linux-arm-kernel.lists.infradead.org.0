Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9323097F60
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:50:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JtLp3nKjfL+zM8ab/Xv92PVM8QAlAjDkTEUpBjpWVJk=; b=e2bCejPN5sn7x1
	QdKH5P6nOJlW0Qhf38hXQNuMMCBC7E7zgeGYN9NVP8RBhC6NeybxePcuTsjO6+9NPM80zI/TKjTg3
	zVRFzGdKNdt8OZnxgHyE0WNTwZllkR6QGC6q5B6aC7uNBwkaEkUjhEzn0VHz4x5jBv7raf3oRmab5
	hcGdsRwxUMr9haDfohwy272RHqxrJx/k1Zh2UtoqHpacoUTVC49luu/EkeqT3h5050xFTmECfx3RK
	ccfuAhnldM7izib3Y2nU9DrhlBCPeJhDj5qd8cuWcXxna5Gk7KzTUAI4OGuYleZpizGVqbTm8/9o4
	TOSfJ8zHCpiPGyVk9LVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Ss5-000830-5N; Wed, 21 Aug 2019 15:50:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Srs-00080K-Ux
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:49:50 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C361922DA7;
 Wed, 21 Aug 2019 15:49:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566402587;
 bh=BZ4tsVVE8eVOOxdzgMCo8Z11/xvYaSj85B5Wg6POF9Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i3eFteCqRTqRIOtU/Fg4d0rBnyDcEYHwf3i2H+M85YKQICqt8jXw7PE/EYSVRAqyh
 2TNu2I0Xa9lsCwasUN1jQxxMvCi9rybb/JHZ6m1SJqM0aJLG+mayeTwkC1QmPd0LUc
 Zu1cS45GMImuV+iGffJeeFEgTrLSM2TFO6vbZERQ=
Date: Wed, 21 Aug 2019 16:49:42 +0100
From: Will Deacon <will@kernel.org>
To: Mike Rapoport <rppt@linux.ibm.com>
Subject: Re: [PATCH] mm: consolidate pgtable_cache_init() and pgd_cache_init()
Message-ID: <20190821154942.js4u466rolnekwmq@willie-the-truck>
References: <1566400018-15607-1-git-send-email-rppt@linux.ibm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566400018-15607-1-git-send-email-rppt@linux.ibm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_084949_013865_34D75820 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 21, 2019 at 06:06:58PM +0300, Mike Rapoport wrote:
> Both pgtable_cache_init() and pgd_cache_init() are used to initialize kmem
> cache for page table allocations on several architectures that do not use
> PAGE_SIZE tables for one or more levels of the page table hierarchy.
> 
> Most architectures do not implement these functions and use __week default
> NOP implementation of pgd_cache_init(). Since there is no such default for
> pgtable_cache_init(), its empty stub is duplicated among most
> architectures.
> 
> Rename the definitions of pgd_cache_init() to pgtable_cache_init() and drop
> empty stubs of pgtable_cache_init().
> 
> Signed-off-by: Mike Rapoport <rppt@linux.ibm.com>
> ---

[...]

> diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
> index 7548f9c..4a64089 100644
> --- a/arch/arm64/mm/pgd.c
> +++ b/arch/arm64/mm/pgd.c
> @@ -35,7 +35,7 @@ void pgd_free(struct mm_struct *mm, pgd_t *pgd)
>  		kmem_cache_free(pgd_cache, pgd);
>  }
>  
> -void __init pgd_cache_init(void)
> +void __init pgtable_cache_init(void)
>  {
>  	if (PGD_SIZE == PAGE_SIZE)
>  		return;

[...]

> diff --git a/init/main.c b/init/main.c
> index b90cb5f..2fa8038 100644
> --- a/init/main.c
> +++ b/init/main.c
> @@ -507,7 +507,7 @@ void __init __weak mem_encrypt_init(void) { }
>  
>  void __init __weak poking_init(void) { }
>  
> -void __init __weak pgd_cache_init(void) { }
> +void __init __weak pgtable_cache_init(void) { }
>  
>  bool initcall_debug;
>  core_param(initcall_debug, initcall_debug, bool, 0644);
> @@ -565,7 +565,6 @@ static void __init mm_init(void)
>  	init_espfix_bsp();
>  	/* Should be run after espfix64 is set up. */
>  	pti_init();
> -	pgd_cache_init();
>  }

AFAICT, this change means we now initialise our pgd cache before
debug_objects_mem_init() has run. Is that going to cause fireworks with
CONFIG_DEBUG_OBJECTS when we later free a pgd?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
