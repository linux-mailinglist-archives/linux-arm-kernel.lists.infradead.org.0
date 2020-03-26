Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A391944BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 17:55:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FI77smWylW7bxy31Y5+HIGXeErHOnHO0/pW6sHOKhIQ=; b=mHWq+Tk64CbJXU
	6NnodyxDfydWxf2Tt9R5W4kxsVrZJk7zoIe93PxPkOgi97JEbzNSn+UUSSuvKDtc12arQRXiA0M0L
	eT90+/Ei7To1oJEvNrwOJmmmGlQzKWcmP4yeKCq5iNUiJlzc0zaNkVEtuU0IbfevsdMvIgUb64W/e
	m6LCLr874IuAUZJ0zMvZEeLry2efg7c+422Twrh4+U1GK8ke2u+TUUuGDv/fmVhZuw0VFNDSXL2yR
	cQqloAyCBP0VkcSjHTokmIMisR4gmCZDESTXUTYqs5IuwTvXYpcGXtI3EK3nHX0G2CG2L960pi5PN
	WsbexKx6LTQEcFIgIoLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHVnC-0003DK-I4; Thu, 26 Mar 2020 16:55:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVmu-0003Cj-8O
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 16:55:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9CE947FA;
 Thu, 26 Mar 2020 09:55:23 -0700 (PDT)
Received: from mbp (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D2F3E3F71E;
 Thu, 26 Mar 2020 09:55:22 -0700 (PDT)
Date: Thu, 26 Mar 2020 16:55:20 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Li Wang <li.wang@windriver.com>
Subject: Re: [PATCH] arm64: mmu: no write cache for O_SYNC flag
Message-ID: <20200326165520.GD26987@mbp>
References: <20200326163625.30714-1-li.wang@windriver.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326163625.30714-1-li.wang@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_095524_344867_09182B30 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
> 
> problem symptom:
> after Process B write a value to the Physical Address,
> Process A of the value of global variable does not change.
> They both W/R the same Physical Address.
> 
> technical reason:
> Process B writing the Physical Address is by the Virtual Address,
> and the Virtual Address comes from "/dev/mem" and mmap().
> In arm64 arch, the Virtual Address has write cache.
> So, maybe the value is not written into Physical Address.
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

Other architectures may have transparent caches and don't require
different attributes.

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

A better solution is for user space not to pass O_SYNC when opening
/dev/mem. We've had this ABI for a long time (arch/arm/ and several
other architectures do the same), why change it now?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
