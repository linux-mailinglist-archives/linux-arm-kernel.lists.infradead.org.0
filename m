Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3671A33AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 14:02:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhXy1H2uw1GLrSdFaiFwedZKEb8T/Y4oRJWowfZRxzk=; b=EDka8sAijThrFW
	oh8sskoB+E1OhrBJ77mx8UOTscknEnC/pJ0P0FUd1Ti3B8/biIlqEabTjHQ8HsI06o3epwJ10ejUP
	wCO+Fxu0VprLjyriuo+NMbETX9KPm7+Laz1QFeIp4y/8MgSIO8Kn6XsaHUHRRBSX+jEh5ZHAy3b+3
	sbgoOpJ7hWBL+Tyn3BeRfqIeuhPM2d25Ves8KkWNL8+xOmoPya1upw2F+hqTwyTHsU6O5Q7Jq5Rc7
	ebLGMpcUCjUOD2gB3e5GYs1jiGT6WgyNNxKdJUlRZHhlQlAHXK2XMN7m56aLJT0AQGzB4WbWuIa/J
	pW4l0lxKRLt+OMM8O/mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMVt6-0006Jw-2u; Thu, 09 Apr 2020 12:02:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMVsy-0006Ja-BB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 12:02:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60CEA30E;
 Thu,  9 Apr 2020 05:02:19 -0700 (PDT)
Received: from [192.168.1.172] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 36FCD3F73D;
 Thu,  9 Apr 2020 05:02:18 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] arm64/vdso: Add time napespace page
To: Andrei Vagin <avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
 <20200225073731.465270-4-avagin@gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <608367b8-7de6-cd3a-8915-8006becdca4c@arm.com>
Date: Thu, 9 Apr 2020 13:03:03 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225073731.465270-4-avagin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_050220_479917_3A295E46 
X-CRM114-Status: GOOD (  28.67  )
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
Cc: Thomas Gleixner <tglx@linutronix.de>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/25/20 7:37 AM, Andrei Vagin wrote:
> Allocate the time namespace page among VVAR pages.  Provide
> __arch_get_timens_vdso_data() helper for VDSO code to get the
> code-relative position of VVARs on that special page.
> 
> If a task belongs to a time namespace then the VVAR page which contains
> the system wide VDSO data is replaced with a namespace specific page
> which has the same layout as the VVAR page. That page has vdso_data->seq
> set to 1 to enforce the slow path and vdso_data->clock_mode set to
> VCLOCK_TIMENS to enforce the time namespace handling path.
> 
> The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
> update of the VDSO data is in progress, is not really affecting regular
> tasks which are not part of a time namespace as the task is spin waiting
> for the update to finish and vdso_data->seq to become even again.
> 
> If a time namespace task hits that code path, it invokes the corresponding
> time getter function which retrieves the real VVAR page, reads host time
> and then adds the offset for the requested clock which is stored in the
> special VVAR page.
> 
> Signed-off-by: Andrei Vagin <avagin@gmail.com>

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
>  arch/arm64/include/asm/vdso.h                 |  6 ++++++
>  .../include/asm/vdso/compat_gettimeofday.h    | 11 ++++++++++
>  arch/arm64/include/asm/vdso/gettimeofday.h    |  8 ++++++++
>  arch/arm64/kernel/vdso.c                      | 20 ++++++++++++++++---
>  arch/arm64/kernel/vdso/vdso.lds.S             |  5 ++++-
>  arch/arm64/kernel/vdso32/vdso.lds.S           |  5 ++++-
>  include/vdso/datapage.h                       |  1 +
>  7 files changed, 51 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/vdso.h b/arch/arm64/include/asm/vdso.h
> index 07468428fd29..351c145d3808 100644
> --- a/arch/arm64/include/asm/vdso.h
> +++ b/arch/arm64/include/asm/vdso.h
> @@ -12,6 +12,12 @@
>   */
>  #define VDSO_LBASE	0x0
>  
> +#ifdef CONFIG_TIME_NS
> +#define __VVAR_PAGES    2
> +#else
> +#define __VVAR_PAGES    1
> +#endif
> +
>  #ifndef __ASSEMBLY__
>  
>  #include <generated/vdso-offsets.h>
> diff --git a/arch/arm64/include/asm/vdso/compat_gettimeofday.h b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
> index 81b0c394f1d8..042814339a63 100644
> --- a/arch/arm64/include/asm/vdso/compat_gettimeofday.h
> +++ b/arch/arm64/include/asm/vdso/compat_gettimeofday.h
> @@ -160,6 +160,17 @@ static __always_inline const struct vdso_data *__arch_get_vdso_data(void)
>  	return ret;
>  }
>  
> +#ifdef CONFIG_TIME_NS
> +static __always_inline const struct vdso_data *__arch_get_timens_vdso_data(void)
> +{
> +	const struct vdso_data *ret;
> +
> +	asm volatile("mov %0, %1" : "=r"(ret) : "r"(_timens_data));
> +
> +	return ret;
> +}
> +#endif
> +
>  #endif /* !__ASSEMBLY__ */
>  
>  #endif /* __ASM_VDSO_GETTIMEOFDAY_H */
> diff --git a/arch/arm64/include/asm/vdso/gettimeofday.h b/arch/arm64/include/asm/vdso/gettimeofday.h
> index 5a534432aa5d..553bdc19a91f 100644
> --- a/arch/arm64/include/asm/vdso/gettimeofday.h
> +++ b/arch/arm64/include/asm/vdso/gettimeofday.h
> @@ -97,6 +97,14 @@ const struct vdso_data *__arch_get_vdso_data(void)
>  	return _vdso_data;
>  }
>  
> +#ifdef CONFIG_TIME_NS
> +static __always_inline
> +const struct vdso_data *__arch_get_timens_vdso_data(void)
> +{
> +	return _timens_data;
> +}
> +#endif
> +
>  #endif /* !__ASSEMBLY__ */
>  
>  #endif /* __ASM_VDSO_GETTIMEOFDAY_H */
> diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
> index 6ac9cdeac5be..b3e7ce24e59b 100644
> --- a/arch/arm64/kernel/vdso.c
> +++ b/arch/arm64/kernel/vdso.c
> @@ -46,6 +46,14 @@ enum arch_vdso_type {
>  #define VDSO_TYPES		(ARM64_VDSO + 1)
>  #endif /* CONFIG_COMPAT_VDSO */
>  
> +enum vvar_pages {
> +	VVAR_DATA_PAGE_OFFSET = 0,
> +#ifdef CONFIG_TIME_NS
> +	VVAR_TIMENS_PAGE_OFFSET = 1,
> +#endif /* CONFIG_TIME_NS */
> +	VVAR_NR_PAGES = __VVAR_PAGES,
> +};
> +
>  struct __vdso_abi {
>  	const char *name;
>  	const char *vdso_code_start;
> @@ -81,6 +89,12 @@ static union {
>  } vdso_data_store __page_aligned_data;
>  struct vdso_data *vdso_data = vdso_data_store.data;
>  
> +
> +struct vdso_data *arch_get_vdso_data(void *vvar_page)
> +{
> +	return (struct vdso_data *)(vvar_page);
> +}
> +
>  static int __vdso_remap(enum arch_vdso_type arch_index,
>  			const struct vm_special_mapping *sm,
>  			struct vm_area_struct *new_vma)
> @@ -182,7 +196,7 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
>  
>  	vdso_text_len = vdso_lookup[arch_index].vdso_pages << PAGE_SHIFT;
>  	/* Be sure to map the data page */
> -	vdso_mapping_len = vdso_text_len + PAGE_SIZE;
> +	vdso_mapping_len = vdso_text_len + VVAR_NR_PAGES * PAGE_SIZE;
>  
>  	vdso_base = get_unmapped_area(NULL, 0, vdso_mapping_len, 0, 0);
>  	if (IS_ERR_VALUE(vdso_base)) {
> @@ -190,13 +204,13 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
>  		goto up_fail;
>  	}
>  
> -	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
> +	ret = _install_special_mapping(mm, vdso_base, VVAR_NR_PAGES * PAGE_SIZE,
>  				       VM_READ|VM_MAYREAD|VM_PFNMAP,
>  				       vdso_lookup[arch_index].dm);
>  	if (IS_ERR(ret))
>  		goto up_fail;
>  
> -	vdso_base += PAGE_SIZE;
> +	vdso_base += VVAR_NR_PAGES * PAGE_SIZE;
>  	mm->context.vdso = (void *)vdso_base;
>  	ret = _install_special_mapping(mm, vdso_base, vdso_text_len,
>  				       VM_READ|VM_EXEC|
> diff --git a/arch/arm64/kernel/vdso/vdso.lds.S b/arch/arm64/kernel/vdso/vdso.lds.S
> index 7ad2d3a0cd48..d808ad31e01f 100644
> --- a/arch/arm64/kernel/vdso/vdso.lds.S
> +++ b/arch/arm64/kernel/vdso/vdso.lds.S
> @@ -17,7 +17,10 @@ OUTPUT_ARCH(aarch64)
>  
>  SECTIONS
>  {
> -	PROVIDE(_vdso_data = . - PAGE_SIZE);
> +	PROVIDE(_vdso_data = . - __VVAR_PAGES * PAGE_SIZE);
> +#ifdef CONFIG_TIME_NS
> +	PROVIDE(_timens_data = _vdso_data + PAGE_SIZE);
> +#endif
>  	. = VDSO_LBASE + SIZEOF_HEADERS;
>  
>  	.hash		: { *(.hash) }			:text
> diff --git a/arch/arm64/kernel/vdso32/vdso.lds.S b/arch/arm64/kernel/vdso32/vdso.lds.S
> index a3944927eaeb..06cc60a9630f 100644
> --- a/arch/arm64/kernel/vdso32/vdso.lds.S
> +++ b/arch/arm64/kernel/vdso32/vdso.lds.S
> @@ -17,7 +17,10 @@ OUTPUT_ARCH(arm)
>  
>  SECTIONS
>  {
> -	PROVIDE_HIDDEN(_vdso_data = . - PAGE_SIZE);
> +	PROVIDE_HIDDEN(_vdso_data = . - __VVAR_PAGES * PAGE_SIZE);
> +#ifdef CONFIG_TIME_NS
> +	PROVIDE_HIDDEN(_timens_data = _vdso_data + PAGE_SIZE);
> +#endif
>  	. = VDSO_LBASE + SIZEOF_HEADERS;
>  
>  	.hash		: { *(.hash) }			:text
> diff --git a/include/vdso/datapage.h b/include/vdso/datapage.h
> index 30c4cb0428d1..3494b5536b63 100644
> --- a/include/vdso/datapage.h
> +++ b/include/vdso/datapage.h
> @@ -98,6 +98,7 @@ struct vdso_data {
>   * relocation, and this is what we need.
>   */
>  extern struct vdso_data _vdso_data[CS_BASES] __attribute__((visibility("hidden")));
> +extern struct vdso_data _timens_data[CS_BASES] __attribute__((visibility("hidden")));
>  
>  #endif /* !__ASSEMBLY__ */
>  
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
