Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C1FF1958FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 15:30:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g48+0AWA0AACAL6iZEEti1hnErdbRTpAHqTYCb0OPic=; b=uKdSqW4Iqc50dE
	d3h7X5aoPyro+1IpQlT2bUp9QDbOdyoGcuLVx/m/oaDE0oCM1BewJDOcq7LAeG1Kuge4JGLixqLQJ
	YWcuhEvsNHbqI9xWqLAFRbkfCVGJT48uGXy2OiUMYPMSMergX9k2WxAVZyxVuUCpJVMvgrkM0r8JN
	s8vxLQHTFq/62FlzR9auEmdNEhOr2Fv9ILY8Z3buWyNWIxIbM+uU41PmvO15+nkTUfcNxY2fc1/tz
	eWFG8lugBACtFjh3GRiJu+yPOyJlKEtNizHfyUQvAIS1etCbQAV+I0rxMbqaF3vTjPDVUXT8kg1Oi
	4psERlnOjzFkGY2xjZZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpzc-0002RG-LK; Fri, 27 Mar 2020 14:29:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpzS-0002QN-Gm
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 14:29:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 27B011FB;
 Fri, 27 Mar 2020 07:29:41 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B719B3F71F;
 Fri, 27 Mar 2020 07:29:39 -0700 (PDT)
Date: Fri, 27 Mar 2020 14:29:37 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Li Wang <li.wang@windriver.com>
Subject: Re: [PATCH] arm64: mmu: no write cache for O_SYNC flag
Message-ID: <20200327142937.GB94838@C02TD0UTHF1T.local>
References: <20200326163625.30714-1-li.wang@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326163625.30714-1-li.wang@windriver.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_072942_596242_53BE53FF 
X-CRM114-Status: GOOD (  21.51  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 09:36:25AM -0700, Li Wang wrote:
> reproduce steps:
> 1.
> disable CONFIG_STRICT_DEVMEM in linux kernel
> 2.
> Process A gets a Physical Address of global variable by
> "/proc/self/pagemap".
> 3.
> Process B writes a value to the same Physical Address by mmap():
> fd=open("/dev/mem",O_SYNC);
> Virtual Address=mmap(fd);

Is this just to demonstrate the behaviour, or is this meant to be
indicative of a real use-case? I'm struggling to see the latter.

> problem symptom:
> after Process B write a value to the Physical Address,
> Process A of the value of global variable does not change.
> They both W/R the same Physical Address.

If Process A is not using the same attributes as process B, there is no
guarantee of coherency. How did process A map this memory?

> technical reason:
> Process B writing the Physical Address is by the Virtual Address,
> and the Virtual Address comes from "/dev/mem" and mmap().
> In arm64 arch, the Virtual Address has write cache.
> So, maybe the value is not written into Physical Address.

I don't think that's true. I think what's happening here is:

* Process A has a Normal WBWA Cacheable mapping.
* Process B as a Normal Non-cacheable mapping.
* Process B's write does not snoop any caches, and goes straight to
  memory.
* Process A reads a value from cache, which does not include process B's
  write.

That's a natural result of using mismatched attributes, and is
consistent with the O_SYNC flag meaning that the write "is transferred
to the underlying hardware".

> 
> fix reason:
> giving write cache flag in arm64 is in phys_mem_access_prot():
> =====
> arch/arm64/mm/mmu.c
> phys_mem_access_prot()
> {
>   if (!pfn_valid(pfn))
>     return pgprot_noncached(vma_prot);
>   else if (file->f_flags & O_SYNC)
>     return pgprot_writecombine(vma_prot);
>   return vma_prot;
> }
> ====
> the other arch and the share function drivers/char/mem.c of phys_mem_access_prot()
> does not add write cache flag.
> So, removing the flag to fix the issue

This will change behaviour that other software may be relying upon, and
as above I do not believe this actually solves the problem you describe.

Thanks,
Mark.

> 
> Signed-off-by: Li Wang <li.wang@windriver.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  arch/arm64/mm/mmu.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index 128f70852bf3..d7083965ca17 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -81,8 +81,6 @@ pgprot_t phys_mem_access_prot(struct file *file, unsigned long pfn,
>  {
>  	if (!pfn_valid(pfn))
>  		return pgprot_noncached(vma_prot);
> -	else if (file->f_flags & O_SYNC)
> -		return pgprot_writecombine(vma_prot);
>  	return vma_prot;
>  }
>  EXPORT_SYMBOL(phys_mem_access_prot);
> -- 
> 2.24.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
