Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21FD1A33B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 14:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFe5PVcEzZNv0wXEyFsp9dJD8z2OqnaJC2QzvC/9wCM=; b=icAKio8EV1Cg4m
	iI9pXyFFZ0QZfVyeXXkyJdmsYbtP4/x5lGLJPMSg4Ycz892KONVkra8jn7CP4k6+C36Fyx16xL2aI
	X22C0NP/x3hs6ZHueBBKH2Ae7tB3/MJE4nTEFiXH8WOkTiq0GcSU52cOeoegQCExwg0AYnm3bcS3M
	zsCu9vMrDBmNKvITlcwcNvhTAwnBgFv1DO/5m/OD5gGfD9d/ZggBJcb712dO+WzSpD+LG1GUu5DNT
	KzJEkottTACcnrJRo3Txr5I+LDnAhjDDFqxcFTcszKM/LmdcnEupjJKoY/pGAXqmFn1gv28anjQVj
	oXlWrVEhUmum0cRHpWyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMVvE-00073m-Do; Thu, 09 Apr 2020 12:04:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMVv7-00073G-Tn
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 12:04:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33B1830E;
 Thu,  9 Apr 2020 05:04:33 -0700 (PDT)
Received: from [192.168.1.172] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F8FD3F73D;
 Thu,  9 Apr 2020 05:04:31 -0700 (PDT)
Subject: Re: [PATCH v2 5/6] arm64/vdso: Restrict splitting VVAR VMA
To: Andrei Vagin <avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
 <20200225073731.465270-6-avagin@gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <31a0e784-7d38-b9aa-d84c-8deb6436b647@arm.com>
Date: Thu, 9 Apr 2020 13:05:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225073731.465270-6-avagin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_050434_003446_8381377A 
X-CRM114-Status: GOOD (  18.30  )
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
> Forbid splitting VVAR VMA resulting in a stricter ABI and reducing the
> amount of corner-cases to consider while working further on VDSO time
> namespace support.
> 
> As the offset from timens to VVAR page is computed compile-time, the pages
> in VVAR should stay together and not being partically mremap()'ed.
> 
> Signed-off-by: Andrei Vagin <avagin@gmail.com>

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
>  arch/arm64/kernel/vdso.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
> index fb32c6f76078..c003f7ee383a 100644
> --- a/arch/arm64/kernel/vdso.c
> +++ b/arch/arm64/kernel/vdso.c
> @@ -235,6 +235,17 @@ static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
>  	return vmf_insert_pfn(vma, vmf->address, pfn);
>  }
>  
> +static int vvar_mremap(const struct vm_special_mapping *sm,
> +		       struct vm_area_struct *new_vma)
> +{
> +	unsigned long new_size = new_vma->vm_end - new_vma->vm_start;
> +
> +	if (new_size != VVAR_NR_PAGES * PAGE_SIZE)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
>  static int __setup_additional_pages(enum arch_vdso_type arch_index,
>  				    struct mm_struct *mm,
>  				    struct linux_binprm *bprm,
> @@ -315,6 +326,7 @@ static struct vm_special_mapping aarch32_vdso_spec[C_PAGES] = {
>  	{
>  		.name = "[vvar]",
>  		.fault = vvar_fault,
> +		.mremap = vvar_mremap,
>  	},
>  	{
>  		.name = "[vdso]",
> @@ -497,6 +509,7 @@ static struct vm_special_mapping vdso_spec[A_PAGES] __ro_after_init = {
>  	{
>  		.name	= "[vvar]",
>  		.fault = vvar_fault,
> +		.mremap = vvar_mremap,
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
