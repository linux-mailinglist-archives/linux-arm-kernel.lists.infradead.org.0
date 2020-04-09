Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 206BA1A33A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 14:01:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWxrksXviuqiL2xa614BFFfSDeuo7NqjUmNxn9OFfl4=; b=HF7Hgkxu38NwkV
	vqhJy/IFwsDWoeo4j3BCMlyoAydrV6jYUyuPdPTQKnhD4R3zwAE2zhbtOpHGCyc+lk8SZz8CS3ltd
	yEYMsFynmwy7FYrsckXPeunU5HF+tzVTzDCjja5mLiQSsTNXDm/eZ1DY4d6Hf85szUQifZLBMp8+y
	pq6w32mST14GTIKRNsXZBq/y+qqY2YuL4CU+i+PY2bosqccH+GMRrodHkJ1Ax828r3FbdxTXW9WrL
	WMdaacLtmlbIWdwccVgTABsMm9G3MfWurLFS1KRGqRZ0PIcH02YE19J+9Xws/f9juMRHDwunhypUs
	paJeQgMK+sD/jNhbsDkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMVrw-00062z-1t; Thu, 09 Apr 2020 12:01:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMVrp-00062U-JT
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 12:01:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7DCA30E;
 Thu,  9 Apr 2020 05:01:08 -0700 (PDT)
Received: from [192.168.1.172] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BEF923F73D;
 Thu,  9 Apr 2020 05:01:07 -0700 (PDT)
Subject: Re: [PATCH v2 2/6] arm64/vdso: Zap vvar pages when switching to a
 time namespace
To: Andrei Vagin <avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
 <20200225073731.465270-3-avagin@gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b56f9232-1914-4c7a-7aac-76207fb989c5@arm.com>
Date: Thu, 9 Apr 2020 13:01:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200225073731.465270-3-avagin@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_050109_679437_FEB8669F 
X-CRM114-Status: GOOD (  18.69  )
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
> The VVAR page layout depends on whether a task belongs to the root or
> non-root time namespace. Whenever a task changes its namespace, the VVAR
> page tables are cleared and then they will be re-faulted with a
> corresponding layout.
> 
> Signed-off-by: Andrei Vagin <avagin@gmail.com>

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

> ---
>  arch/arm64/kernel/vdso.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/kernel/vdso.c b/arch/arm64/kernel/vdso.c
> index 290c36d74e03..6ac9cdeac5be 100644
> --- a/arch/arm64/kernel/vdso.c
> +++ b/arch/arm64/kernel/vdso.c
> @@ -131,6 +131,38 @@ static int __vdso_init(enum arch_vdso_type arch_index)
>  	return 0;
>  }
>  
> +#ifdef CONFIG_TIME_NS
> +/*
> + * The vvar page layout depends on whether a task belongs to the root or
> + * non-root time namespace. Whenever a task changes its namespace, the VVAR
> + * page tables are cleared and then they will re-faulted with a
> + * corresponding layout.
> + * See also the comment near timens_setup_vdso_data() for details.
> + */
> +int vdso_join_timens(struct task_struct *task, struct time_namespace *ns)
> +{
> +	struct mm_struct *mm = task->mm;
> +	struct vm_area_struct *vma;
> +
> +	if (down_write_killable(&mm->mmap_sem))
> +		return -EINTR;
> +
> +	for (vma = mm->mmap; vma; vma = vma->vm_next) {
> +		unsigned long size = vma->vm_end - vma->vm_start;
> +
> +		if (vma_is_special_mapping(vma, vdso_lookup[ARM64_VDSO].dm))
> +			zap_page_range(vma, vma->vm_start, size);
> +#ifdef CONFIG_COMPAT_VDSO
> +		if (vma_is_special_mapping(vma, vdso_lookup[ARM64_VDSO32].dm))
> +			zap_page_range(vma, vma->vm_start, size);
> +#endif
> +	}
> +
> +	up_write(&mm->mmap_sem);
> +	return 0;
> +}
> +#endif
> +
>  static vm_fault_t vvar_fault(const struct vm_special_mapping *sm,
>  			     struct vm_area_struct *vma, struct vm_fault *vmf)
>  {
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
