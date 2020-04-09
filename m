Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BCF1A33A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 14:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nPVhpWSHg2B1vbSSeAXETMw4RW01JboR30qEH+/YQy0=; b=TDnNI+GNHaCa9F
	qzOnQI1K/UqDCqxBcysKqdS16RzIJAzQw7qHHFVt+s7uZ5uMBXGfAj5GQGFF7EkBMYzy7voKBV5Gv
	hcnORyuBT8X1PF0lUEt2wWRItjsuBGhFmZkdVK/XDl5AOBtnUwuzzQcUEohBdzewcDKhSoK2xFJHH
	fxADmu/cvglW1lnenerYRb73ZJ/eMB/7zntzhap6Ku0qnhUZp35YXwNsPr5Lf01B5aQ45WySUKhzh
	pXHTs5nH54cBuz020CqG18tEZzNvSt8lA+meqG29rZlGjDCSUl1u+P5jp61P3/5RFWsF7AUjOTjy6
	LQoChoRnoe/rDxzCRa6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMVrK-0005nD-Ew; Thu, 09 Apr 2020 12:00:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMVrE-0005md-5J
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 12:00:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0726730E;
 Thu,  9 Apr 2020 05:00:29 -0700 (PDT)
Received: from [192.168.1.172] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EB4323F73D;
 Thu,  9 Apr 2020 05:00:27 -0700 (PDT)
Subject: Re: [PATCH v2 1/6] arm64/vdso: use the fault callback to map vvar
 pages
To: Andrei Vagin <avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
 <20200225073731.465270-2-avagin@gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <fd287633-a383-e1ee-2c4a-b961e1b95d66@arm.com>
Date: Thu, 9 Apr 2020 13:01:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225073731.465270-2-avagin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_050032_245639_81E4A39C 
X-CRM114-Status: GOOD (  19.94  )
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
> This is required to support time namespaces where a time namespace data
> page is different for each namespace.
> 
> Signed-off-by: Andrei Vagin <avagin@gmail.com>

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
>  arch/arm64/kernel/vdso.c | 24 +++++++++++++++---------
>  1 file changed, 15 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
> index 354b11e27c07..290c36d74e03 100644
> --- a/arch/arm64/kernel/vdso.c
> +++ b/arch/arm64/kernel/vdso.c
> @@ -114,28 +114,32 @@ static int __vdso_init(enum arch_vdso_type arch_index)
>  			PAGE_SHIFT;
>  
>  	/* Allocate the vDSO pagelist, plus a page for the data. */
> -	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages + 1,
> +	vdso_pagelist = kcalloc(vdso_lookup[arch_index].vdso_pages,
>  				sizeof(struct page *),
>  				GFP_KERNEL);
>  	if (vdso_pagelist == NULL)
>  		return -ENOMEM;
>  
> -	/* Grab the vDSO data page. */
> -	vdso_pagelist[0] = phys_to_page(__pa_symbol(vdso_data));
> -
> -
>  	/* Grab the vDSO code pages. */
>  	pfn = sym_to_pfn(vdso_lookup[arch_index].vdso_code_start);
>  
>  	for (i = 0; i < vdso_lookup[arch_index].vdso_pages; i++)
> -		vdso_pagelist[i + 1] = pfn_to_page(pfn + i);
> +		vdso_pagelist[i] = pfn_to_page(pfn + i);
>  
> -	vdso_lookup[arch_index].dm->pages = &vdso_pagelist[0];
> -	vdso_lookup[arch_index].cm->pages = &vdso_pagelist[1];
> +	vdso_lookup[arch_index].cm->pages = vdso_pagelist;
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
> +
>  static int __setup_additional_pages(enum arch_vdso_type arch_index,
>  				    struct mm_struct *mm,
>  				    struct linux_binprm *bprm,
> @@ -155,7 +159,7 @@ static int __setup_additional_pages(enum arch_vdso_type arch_index,
>  	}
>  
>  	ret = _install_special_mapping(mm, vdso_base, PAGE_SIZE,
> -				       VM_READ|VM_MAYREAD,
> +				       VM_READ|VM_MAYREAD|VM_PFNMAP,
>  				       vdso_lookup[arch_index].dm);
>  	if (IS_ERR(ret))
>  		goto up_fail;
> @@ -215,6 +219,7 @@ static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
>  #ifdef CONFIG_COMPAT_VDSO
>  	{
>  		.name = "[vvar]",
> +		.fault = vvar_fault,
>  	},
>  	{
>  		.name = "[vdso]",
> @@ -396,6 +401,7 @@ static int vdso_mremap(const struct vm_special_mapping *sm,
>  static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
>  	{
>  		.name	= "[vvar]",
> +		.fault = vvar_fault,
>  	},
>  	{
>  		.name	= "[vdso]",
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
