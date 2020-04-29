Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E691BD99C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mcjzJ0Wp+MKn/J4FN2vjoJsAlMVOsWxhdTuEUlyQ48A=; b=im3N5SzzQbyqXa
	VCezAXkDfZVg+dxaeOok/oF9JEFouGN83OQzv4SZ64V13KzrwAcnm4twJnqYPkbwAMHPsTI3U4+sm
	3icfJYcBLiAm4FThT+APOe5cMVhFZQanEhH0faZjRd23zZLP0+QMjj4LFMeekLF6d9TXT5FjMPL7F
	c57Lgc8UeWQrV/L+Anj1dlLERZO2zzGHgOwJ7Hv3q14Q8LLwqJ49LQf38E8UZKfZpBd5ro1cLWEkZ
	rlwk95dVIQ918MW+dx2QpYbPgu+G48tmWSqUDvKPNS3WDpWRfdi/5/LV6ivSIT1tNlINda/bHZDzO
	Aa97fGcOqockmC0KvfaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjwc-0004i1-HD; Wed, 29 Apr 2020 10:27:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjvb-0004B1-Se
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:27:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A6410C14;
 Wed, 29 Apr 2020 03:26:54 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 218AA3F73D;
 Wed, 29 Apr 2020 03:26:53 -0700 (PDT)
Date: Wed, 29 Apr 2020 11:26:51 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 20/23] fs: Allow copy_mount_options() to access
 user-space in a single pass
Message-ID: <20200429102650.GC30377@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-21-catalin.marinas@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421142603.3894-21-catalin.marinas@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_032656_031977_0C12F338 
X-CRM114-Status: GOOD (  25.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 03:26:00PM +0100, Catalin Marinas wrote:
> The copy_mount_options() function takes a user pointer argument but not
> a size. It tries to read up to a PAGE_SIZE. However, copy_from_user() is
> not guaranteed to return all the accessible bytes if, for example, the
> access crosses a page boundary and gets a fault on the second page. To
> work around this, the current copy_mount_options() implementations
> performs to copy_from_user() passes, first to the end of the current

implementation performs two

> page and the second to what's left in the subsequent page.
> 
> Some architectures like arm64 can guarantee an exact copy_from_user()
> depending on the size (since the arch function performs some alignment
> on the source register). Introduce an arch_has_exact_copy_from_user()
> function and allow copy_mount_options() to perform the user access in a
> single pass.
> 
> While this function is not on a critical path, the single-pass behaviour
> is required for arm64 MTE (memory tagging) support where a uaccess can
> trigger intra-page faults (tag not matching). With the current
> implementation, if this happens during the first page, the function will
> return -EFAULT.
> 
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Alexander Viro <viro@zeniv.linux.org.uk>
> Cc: Will Deacon <will@kernel.org>
> ---
> 
> Notes:
>     New in v3.
> 
>  arch/arm64/include/asm/uaccess.h | 11 +++++++++++
>  fs/namespace.c                   |  7 +++++--
>  include/linux/uaccess.h          |  8 ++++++++
>  3 files changed, 24 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index 32fc8061aa76..566da441eba2 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -416,6 +416,17 @@ extern unsigned long __must_check __arch_copy_in_user(void __user *to, const voi
>  #define INLINE_COPY_TO_USER
>  #define INLINE_COPY_FROM_USER
>  
> +static inline bool arch_has_exact_copy_from_user(unsigned long n)
> +{
> +	/*
> +	 * copy_from_user() aligns the source pointer if the size is greater
> +	 * than 15. Since all the loads are naturally aligned, they can only
> +	 * fail on the first byte.
> +	 */
> +	return n > 15;
> +}
> +#define arch_has_exact_copy_from_user

Did you mean:

#define arch_has_exact_copy_from_user arch_has_exact_copy_from_user

Mind you, if this expands to 1 I'd have expected copy_mount_options()
not to compile, so I may be missing something.

[...]

> diff --git a/fs/namespace.c b/fs/namespace.c
> index a28e4db075ed..8febc50dfc5d 100644
> --- a/fs/namespace.c
> +++ b/fs/namespace.c
> @@ -3025,13 +3025,16 @@ void *copy_mount_options(const void __user * data)

[ Is this applying a band-aid to duct tape?

The fs presumably knows ahead of time whether it's expecting a string or
a fixed-size blob for data, so I'd hope we could just DTRT rather than
playing SEGV roulette here.

This might require more refactoring than makes sense for this series
though. ]

>  	if (!copy)
>  		return ERR_PTR(-ENOMEM);
>  
> -	size = PAGE_SIZE - offset_in_page(data);
> +	size = PAGE_SIZE;
> +	if (!arch_has_exact_copy_from_user(size))
> +		size -= offset_in_page(data);
>  
> -	if (copy_from_user(copy, data, size)) {
> +	if (copy_from_user(copy, data, size) == size) {
>  		kfree(copy);
>  		return ERR_PTR(-EFAULT);
>  	}
>  	if (size != PAGE_SIZE) {
> +		WARN_ON(1);
>  		if (copy_from_user(copy + size, data + size, PAGE_SIZE - size))
>  			memset(copy + size, 0, PAGE_SIZE - size);
>  	}

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
