Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D37C6A3444
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:42:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jCOGn5cKC4Bl2gANWGZHuV2+TqL3dyp0QhZkaYDQAxA=; b=ZUh4V6g76K8Yc5
	wHJ+JUEpqNvOGUcQKwKCir0YtmCYLqS8OiVMJ4q6uHwAbBCPVJQc67G0VhmgXVMRxLzXcr44kVcYf
	V1ZcttH3Jgz4qVzA3OII7/7PxZooJyRimdapAwCW4GI0XMcEQC/IoPL+U+kZAdzhkpUwzn1DgpZZP
	aBMl6uks/jQM7XwNhDFiTkxgd9DJ7qPAOO3uv6MUYFhveLxhHUgSNVhcNeWCZonmFZrvAI7VtEScU
	lz7IZw6WzhE3xe0O+bqbsXCTrhWJvVQQTVzDALlKuB1RVOVT0K3c94+OGXg54sUnWxraQ70jJatND
	lLi1fH7EWAQzkWJywHWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3dQA-0003u9-A2; Fri, 30 Aug 2019 09:42:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3dP8-000362-GR
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:41:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40F76344;
 Fri, 30 Aug 2019 02:41:14 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E080A3F718;
 Fri, 30 Aug 2019 02:41:12 -0700 (PDT)
Date: Fri, 30 Aug 2019 10:41:10 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH ARM64 v4.4 V3 09/44] mm/kasan: add API to check memory
 regions
Message-ID: <20190830094110.GI46475@lakrids.cambridge.arm.com>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <ea16af1feddcaa85dc5369c79f78c00256c698cd.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea16af1feddcaa85dc5369c79f78c00256c698cd.1567077734.git.viresh.kumar@linaro.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_024114_682762_E5AA719B 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 05:03:54PM +0530, Viresh Kumar wrote:
> From: Andrey Ryabinin <aryabinin@virtuozzo.com>
> 
> commit 64f8ebaf115bcddc4aaa902f981c57ba6506bc42 upstream.
> 
> Memory access coded in an assembly won't be seen by KASAN as a compiler
> can instrument only C code.  Add kasan_check_[read,write]() API which is
> going to be used to check a certain memory range.
> 
> Link: http://lkml.kernel.org/r/1462538722-1574-3-git-send-email-aryabinin@virtuozzo.com
> Signed-off-by: Andrey Ryabinin <aryabinin@virtuozzo.com>
> Acked-by: Alexander Potapenko <glider@google.com>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Ingo Molnar <mingo@elte.hu>
> Cc: "H. Peter Anvin" <hpa@zytor.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
> Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
> [ v4.4: Fixed MAINTAINERS conflict and added whole kasan entry. Drop 4th
> 	argument to check_memory_region(). ]
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>

Reviewed-by: Mark Rutland <mark.rutland@arm.com> [v4.4 backport]

Mark.

> ---
>  MAINTAINERS                  | 14 ++++++++++++++
>  include/linux/kasan-checks.h | 12 ++++++++++++
>  mm/kasan/kasan.c             | 12 ++++++++++++
>  3 files changed, 38 insertions(+)
>  create mode 100644 include/linux/kasan-checks.h
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index f4d4a5544dc1..2a8826732967 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -5982,6 +5982,20 @@ S:	Maintained
>  F:	Documentation/hwmon/k8temp
>  F:	drivers/hwmon/k8temp.c
>  
> +KASAN
> +M:	Andrey Ryabinin <aryabinin@virtuozzo.com>
> +R:	Alexander Potapenko <glider@google.com>
> +R:	Dmitry Vyukov <dvyukov@google.com>
> +L:	kasan-dev@googlegroups.com
> +S:	Maintained
> +F:	arch/*/include/asm/kasan.h
> +F:	arch/*/mm/kasan_init*
> +F:	Documentation/kasan.txt
> +F:	include/linux/kasan*.h
> +F:	lib/test_kasan.c
> +F:	mm/kasan/
> +F:	scripts/Makefile.kasan
> +
>  KCONFIG
>  M:	"Yann E. MORIN" <yann.morin.1998@free.fr>
>  L:	linux-kbuild@vger.kernel.org
> diff --git a/include/linux/kasan-checks.h b/include/linux/kasan-checks.h
> new file mode 100644
> index 000000000000..b7f8aced7870
> --- /dev/null
> +++ b/include/linux/kasan-checks.h
> @@ -0,0 +1,12 @@
> +#ifndef _LINUX_KASAN_CHECKS_H
> +#define _LINUX_KASAN_CHECKS_H
> +
> +#ifdef CONFIG_KASAN
> +void kasan_check_read(const void *p, unsigned int size);
> +void kasan_check_write(const void *p, unsigned int size);
> +#else
> +static inline void kasan_check_read(const void *p, unsigned int size) { }
> +static inline void kasan_check_write(const void *p, unsigned int size) { }
> +#endif
> +
> +#endif
> diff --git a/mm/kasan/kasan.c b/mm/kasan/kasan.c
> index b7397b459960..1cdcab0c976a 100644
> --- a/mm/kasan/kasan.c
> +++ b/mm/kasan/kasan.c
> @@ -274,6 +274,18 @@ static __always_inline void check_memory_region(unsigned long addr,
>  void __asan_loadN(unsigned long addr, size_t size);
>  void __asan_storeN(unsigned long addr, size_t size);
>  
> +void kasan_check_read(const void *p, unsigned int size)
> +{
> +	check_memory_region((unsigned long)p, size, false);
> +}
> +EXPORT_SYMBOL(kasan_check_read);
> +
> +void kasan_check_write(const void *p, unsigned int size)
> +{
> +	check_memory_region((unsigned long)p, size, true);
> +}
> +EXPORT_SYMBOL(kasan_check_write);
> +
>  #undef memset
>  void *memset(void *addr, int c, size_t len)
>  {
> -- 
> 2.21.0.rc0.269.g1a574e7a288b
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
