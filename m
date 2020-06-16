Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA251FAECF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 12:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+juvQoLKJ7sC7NmHrOUuS9jgNnQbYdQZU28mpVli0BM=; b=fBniSvzcp3aAe4
	0V31/1PTIajK4/u7vXxwXN6IMIpBQc3jeFUjS8ZwcbG6m+11brEGh6F3OovRLl6nK5udJ/LosBRCW
	qCjIGErCaZOJPT94nPZb5GK7ZSNix3pjSC7KLKOTBFhG5mKDxqKmkwEelHkoux6wcHhM/C7weazAJ
	rXuSkD/iTGneF/0EqlRLUuE5tEgq1heC3OrezB55604NTJ+Dk6tMUeP9EvanfY2ZED2vLOfyQKZN7
	vM80DWK6ISPPQW5w1cnCzidKtKii23mhQIvcnkbko8u9Oe0fBscMXP6tlNr3vVX2X1vxoP8K670Bm
	4hdRZCHxJ/lBlfDOeerQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9JZ-0007A1-Fv; Tue, 16 Jun 2020 10:59:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9JP-00078a-JX
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 10:59:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D2B221F1;
 Tue, 16 Jun 2020 03:59:24 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.1.157])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 401933F6CF;
 Tue, 16 Jun 2020 03:59:23 -0700 (PDT)
Date: Tue, 16 Jun 2020 11:59:20 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Andrei Vagin <avagin@gmail.com>
Subject: Re: [PATCH 1/6] arm64/vdso: use the fault callback to map vvar pages
Message-ID: <20200616105920.GB11780@C02TD0UTHF1T.local>
References: <20200616075545.312684-1-avagin@gmail.com>
 <20200616075545.312684-2-avagin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200616075545.312684-2-avagin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_035927_732515_4D247DF1 
X-CRM114-Status: GOOD (  23.65  )
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
Cc: Dmitry Safonov <dima@arista.com>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 12:55:40AM -0700, Andrei Vagin wrote:
> This is required to support time namespaces where a time namespace data
> page is different for each namespace.

Can you please give a bit more of an introduction to the changes here?
As-is, this doesn't give reviewers the necessary context to understand
the change, nor does it justify it.

Ideally, a commit message for this should look something like:

| Currently the vdso has no awareness of time namespaces, which may
| apply distinct offsets to processes in different namespaces. To handle
| this within the vdso, we'll need to expose a per-namespace data page.
|
| As a preparatory step, this patch separates the vdso data page from
| the code pages, and has it faulted in via its own fault callback.
| Subsquent patches will extend this to support distinct pages per time
| namespace.

Otherwise, I have a few minor comments below.

> Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> Reviewed-by: Dmitry Safonov <dima@arista.com>
> Signed-off-by: Andrei Vagin <avagin@gmail.com>
> ---
>  arch/arm64/kernel/vdso.c | 24 +++++++++++++++---------
>  1 file changed, 15 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
> index 4e016574bd91..b0aec4e8c9b4 100644
> --- a/arch/arm64/kernel/vdso.c
> +++ b/arch/arm64/kernel/vdso.c
> @@ -108,28 +108,32 @@ static int __vdso_init(enum vdso_abi abi)
>  			PAGE_SHIFT;
>  
>  	/* Allocate the vDSO pagelist, plus a page for the data. */
> -	vdso_pagelist = kcalloc(vdso_info[abi].vdso_pages + 1,
> +	vdso_pagelist = kcalloc(vdso_info[abi].vdso_pages,
>  				sizeof(struct page *),
>  				GFP_KERNEL);

The comment above is now stale. Can you please update it, or (event
better) delete it entirely?

>  	if (vdso_pagelist == NULL)
>  		return -ENOMEM;
>  
> -	/* Grab the vDSO data page. */
> -	vdso_pagelist[0] = phys_to_page(__pa_symbol(vdso_data));
> -
> -
>  	/* Grab the vDSO code pages. */
>  	pfn = sym_to_pfn(vdso_info[abi].vdso_code_start);
>  
>  	for (i = 0; i < vdso_info[abi].vdso_pages; i++)
> -		vdso_pagelist[i + 1] = pfn_to_page(pfn + i);
> +		vdso_pagelist[i] = pfn_to_page(pfn + i);
>  
> -	vdso_info[abi].dm->pages = &vdso_pagelist[0];
> -	vdso_info[abi].cm->pages = &vdso_pagelist[1];
> +	vdso_info[abi].cm->pages = vdso_pagelist;
>  
>  	return 0;
>  }
>  
> +static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
> +			     struct vm_area_struct *vma, struct vm_fault *vmf)
> +{
> +	if (vmf->pgoff == 0)
> +		return vmf_insert_pfn(vma, vmf->address,
> +				sym_to_pfn(vdso_data));
> +	return VM_FAULT_SIGBUS;
> +}

This might look better as:

|	if (vmf->pgoff != 0)
|		return VM_FAULT_SIGBUS;
|	
|	return vmf_insert_pfn(vma, vmf->address, sym_to_pfn(vdso_data));

> +
>  static int __setup_additional_pages(enum vdso_abi abi,
>  				    struct mm_struct *mm,
>  				    struct linux_binprm *bprm,
> @@ -150,7 +154,7 @@ static int __setup_additional_pages(enum vdso_abi abi,
>  	}
>  
>  	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
> -				       VM_READ|VM_MAYREAD,
> +				       VM_READ|VM_MAYREAD|VM_PFNMAP,

This change needs to be explained in the commit message. WHy is it
necessary, and why only so for the data page?

Thanks,
Mark.

>  				       vdso_info[abi].dm);
>  	if (IS_ERR(ret))
>  		goto up_fail;
> @@ -209,6 +213,7 @@ static struct vm_special_mapping aarch32_vdso_maps[] = {
>  #ifdef CONFIG_COMPAT_VDSO
>  	[AA32_MAP_VVAR] = {
>  		.name = "[vvar]",
> +		.fault = vvar_fault,
>  	},
>  	[AA32_MAP_VDSO] = {
>  		.name = "[vdso]",
> @@ -376,6 +381,7 @@ enum aarch64_map {
>  static struct vm_special_mapping aarch64_vdso_maps[] __ro_after_init = {
>  	[AA64_MAP_VVAR] = {
>  		.name	= "[vvar]",
> +		.fault = vvar_fault,
>  	},
>  	[AA64_MAP_VDSO] = {
>  		.name	= "[vdso]",
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
