Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9825F9DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 16:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sjq4Mb8iQpU+K5Vu8J0UfxKnRIgJqIEYzKQ84XJXj5M=; b=Iizf9NBsE2Vna4
	0OlOJXXwC0Op/uDhdn3kBAUbcr/Lp8kpe+jm2tAnm4J/fRE1iRfpBGl11nk9dt3Dbgb2n9tSDQ8eo
	SNexSG2ryIJoEQeRW/H+2ywz3J4gibsMFEum6VGGpje0/Ugathe8IYw6FqVlXYowx4nvn7o0d8NJ4
	O+ZwLtFV7Ria07dgLCq+sjP2Xy7UyisvxADKXZrQ9Eke1bipd2fMOjhmrkgqYp3Jk6OBEIyEfUBvH
	RPWmAze3Xcr92YKNQrZGZPaFaZ48+nNdY8+kcrsXgAeV3BsMvaVIzEllTFyMuQc1wRBQnVmENW5I7
	sMOTGdg8b7rd/X09vNfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj2WU-0001Vf-8h; Thu, 04 Jul 2019 14:15:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hj2WJ-0001Ux-94
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 14:15:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 17BCD28;
 Thu,  4 Jul 2019 07:15:30 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CF9BB3F738;
 Thu,  4 Jul 2019 07:15:28 -0700 (PDT)
Subject: Re: [PATCH v4.4 10/45] mm/kasan: add API to check memory regions
To: Viresh Kumar <viresh.kumar@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <cover.1560480942.git.viresh.kumar@linaro.org>
 <0cedfc51f5941ab2c2e9a09149d34c7451efda56.1560480942.git.viresh.kumar@linaro.org>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <9c5374d4-1775-572d-ba79-b161a82190c6@arm.com>
Date: Thu, 4 Jul 2019 15:15:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <0cedfc51f5941ab2c2e9a09149d34c7451efda56.1560480942.git.viresh.kumar@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_071531_412789_3D593605 
X-CRM114-Status: GOOD (  20.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Viresh,

On 14/06/2019 04:07, Viresh Kumar wrote:
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
> [ v4.4: Fixed MAINTAINERS conflict and added whole kasan entry ]
> Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
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
> index b7397b459960..3ad31df33e76 100644
> --- a/mm/kasan/kasan.c
> +++ b/mm/kasan/kasan.c
> @@ -274,6 +274,18 @@ static __always_inline void check_memory_region(unsigned long addr,
>  void __asan_loadN(unsigned long addr, size_t size);
>  void __asan_storeN(unsigned long addr, size_t size);
>  
> +void kasan_check_read(const void *p, unsigned int size)
> +{
> +	check_memory_region((unsigned long)p, size, false, _RET_IP_);

I know you have updated the code since then but the issue seems to be
also present on your updated branch.

This patch breaks the build when enabling CONFIG_KASAN because in 4.4
check_memory_region() only takes 3 arguments.

> +}
> +EXPORT_SYMBOL(kasan_check_read);
> +
> +void kasan_check_write(const void *p, unsigned int size)
> +{
> +	check_memory_region((unsigned long)p, size, true, _RET_IP_);
> +}
> +EXPORT_SYMBOL(kasan_check_write);
> +
>  #undef memset
>  void *memset(void *addr, int c, size_t len)
>  {
> 

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
