Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEE010CAAB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:52:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rcNb3uPYHP0J8XxzTdof0cPKQk74GWu0Ihe7/FcoLQ=; b=t7TOn/dg4ViRK+
	T875MLhrsNTtVlbHqKzDgbM8GQ9oaqaJzT49nljQ1W9miASNfrYj0xWdkVStMw/C78t7cJTP8xwBa
	8Z4Cme/rx4D90asS0avTb9Yx+TXkeZtFZAa8l4kKhWeL1uk0ItThs3ZqMOFUhI/vLWGdPImsOWgxk
	OM1xL5MQIkpc1AL+LwperQc76CrT4ZH3XZt4RWA1iV0EC5KLCHOlatzxQkQ7pEa7owRacvSlEzqCP
	s8egzC6NN2oyXS5dhZ4rWFVYSdU2Cgbw4wMXfYG6xOQlCoBCKI/nMTgV4KHGvl8ydxKcyHUrrMZuw
	3uam/Uzz2JOdC2yirf0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaL9S-0005pl-HI; Thu, 28 Nov 2019 14:52:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaL9B-0005p5-NM
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:51:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 670C430E;
 Thu, 28 Nov 2019 06:51:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A5D2C3F68E;
 Thu, 28 Nov 2019 06:51:53 -0800 (PST)
Date: Thu, 28 Nov 2019 14:51:51 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Pavel Tatashin <pasha.tatashin@soleen.com>
Subject: Re: [PATCH 2/3] arm64: remove uaccess_ttbr0 asm macros from cache
 functions
Message-ID: <20191128145151.GB22314@lakrids.cambridge.arm.com>
References: <20191127184453.229321-1-pasha.tatashin@soleen.com>
 <20191127184453.229321-3-pasha.tatashin@soleen.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127184453.229321-3-pasha.tatashin@soleen.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_065157_851037_1FFD2CBD 
X-CRM114-Status: GOOD (  16.80  )
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
Cc: catalin.marinas@arm.com, stefan@agner.ch, linux@armlinux.org.uk,
 yamada.masahiro@socionext.com, will@kernel.org, boris.ostrovsky@oracle.com,
 sashal@kernel.org, sstabellini@kernel.org, jmorris@namei.org,
 linux-arm-kernel@lists.infradead.org, xen-devel@lists.xenproject.org,
 vladimir.murzin@arm.com, marc.zyngier@arm.com, alexios.zavras@intel.com,
 tglx@linutronix.de, allison@lohutok.net, jgross@suse.com, steve.capper@arm.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, james.morse@arm.com,
 info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 01:44:52PM -0500, Pavel Tatashin wrote:
> We currently duplicate the logic to enable/disable uaccess via TTBR0,
> with C functions and assembly macros. This is a maintenenace burden
> and is liable to lead to subtle bugs, so let's get rid of the assembly
> macros, and always use the C functions. This requires refactoring
> some assembly functions to have a C wrapper.

[...]

> +static inline int invalidate_icache_range(unsigned long start,
> +					  unsigned long end)
> +{
> +	int rv;

Please make this 'ret', for consistency with other arm64 code. We only
use 'rv' in one place where it's short for "Revision and Variant", and
'ret' is our usual name for a temporary variable used to hold a return
value.

> +
> +	if (cpus_have_const_cap(ARM64_HAS_CACHE_DIC)) {
> +		isb();
> +		return 0;
> +	}
> +	uaccess_ttbr0_enable();

Please place a newline between these two, for consistency with other
arm64 code.

> +	rv = asm_invalidate_icache_range(start, end);
> +	uaccess_ttbr0_disable();
> +
> +	return rv;
> +}
> +
>  static inline void flush_icache_range(unsigned long start, unsigned long end)
>  {
>  	__flush_icache_range(start, end);
> diff --git a/arch/arm64/mm/cache.S b/arch/arm64/mm/cache.S
> index db767b072601..a48b6dba304e 100644
> --- a/arch/arm64/mm/cache.S
> +++ b/arch/arm64/mm/cache.S
> @@ -15,7 +15,7 @@
>  #include <asm/asm-uaccess.h>
>  
>  /*
> - *	flush_icache_range(start,end)
> + *	__asm_flush_icache_range(start,end)
>   *
>   *	Ensure that the I and D caches are coherent within specified region.
>   *	This is typically used when code has been written to a memory region,
> @@ -24,11 +24,11 @@
>   *	- start   - virtual start address of region
>   *	- end     - virtual end address of region
>   */
> -ENTRY(__flush_icache_range)
> +ENTRY(__asm_flush_icache_range)
>  	/* FALLTHROUGH */
>  
>  /*
> - *	__flush_cache_user_range(start,end)
> + *	__asm_flush_cache_user_range(start,end)
>   *
>   *	Ensure that the I and D caches are coherent within specified region.
>   *	This is typically used when code has been written to a memory region,
> @@ -37,8 +37,7 @@ ENTRY(__flush_icache_range)
>   *	- start   - virtual start address of region
>   *	- end     - virtual end address of region
>   */
> -ENTRY(__flush_cache_user_range)
> -	uaccess_ttbr0_enable x2, x3, x4
> +ENTRY(__asm_flush_cache_user_range)
>  alternative_if ARM64_HAS_CACHE_IDC

It's unfortunate that we pulled the IDC alternative out for
invalidate_icache_range(), but not here.

If we want to pull out that, then I reckon what we might want to do is
have two asm primitives:

* __asm_clean_dcache_range
* __asm_invalidate_icache_range

... which just do the by_line op, with a fixup that can return -EFAULT.

Then we can give each a C wrapper that just does the IDC/DIC check, e.g.

static int __clean_dcache_range(unsigned long start, unsigned long end)
{
	if (cpus_have_const_cap(ARM64_HAS_CACHE_IDC)) {
		dsb(ishst);
		return 0;
	}

	return __asm_clean_dcache_range(start, end);
}

Then we can build all the more complicated variants atop of those, e.g.

static int __flush_cache_user_range(unsigned long start, unsigned long end)
{
	int ret;

	uaccess_ttbr0_enable();

	ret = __clean_dcache_range(start, end);
	if (ret)
		goto out;
	
	ret = __invalidate_icache_range(start, end);

out:
	uaccess_ttbr0_disable();
	return ret;
}

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
