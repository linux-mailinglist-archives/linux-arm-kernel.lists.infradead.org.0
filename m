Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F391C9660
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:23:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAmSAtZyje2PH9uEfK+gZyJ3XNq96xnCzgxlQk2EVVI=; b=tLsjuIV+xN8tji
	ILlSuOMJJRDSthfb4gTVL/dRLZiWK5M062E3n7Tx443FNPsbIrf+doO87xXiMrbjtotNxSUtrlhoe
	A/sOK08Sm/5nkIpW2eCjtzbdbIVLWga98m1uB6zad8t8TGEvrmDLf52xgW11tAClphva9uu3ZDynm
	/mkrUDQHqO9m826/nPFQAZ0m9RHZGdwq98Jh/hh9QEKRCj02cGX/2rj2gLhIsTHGLs5XibPux47Rz
	nw6CyWgxoFpm7B6lpikhh9nYfMcqfa71O9yGwhwaTBXQ1Cr2CZh8J1wc5Jm4wDd/yxXmxyUViusC7
	/evG+SRB5fBep6ieQJsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjIf-00088m-86; Thu, 07 May 2020 16:23:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjHy-0007cO-V4; Thu, 07 May 2020 16:22:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 03F271045;
 Thu,  7 May 2020 09:22:21 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 58EBD3F71F;
 Thu,  7 May 2020 09:22:18 -0700 (PDT)
Subject: Re: [PATCH v9 13/18] arm64: kexec: add expandable argument to
 relocation function
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-14-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <012e19d9-97d6-805a-bfec-8c6e7104f852@arm.com>
Date: Thu, 7 May 2020 17:22:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-14-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_092223_153989_6D153572 
X-CRM114-Status: GOOD (  21.40  )
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, catalin.marinas@arm.com, bhsharma@redhat.com,
 steve.capper@arm.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, rfontana@redhat.com,
 ebiederm@xmission.com, maz@kernel.org, matthias.bgg@gmail.com,
 tglx@linutronix.de, will@kernel.org, selindag@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 26/03/2020 03:24, Pavel Tatashin wrote:
> Currently, kexec relocation function (arm64_relocate_new_kernel) accepts
> the following arguments:
> 
> head:		start of array that contains relocation information.
> entry:		entry point for new kernel or purgatory.
> dtb_mem:	first and only argument to entry.

> The number of arguments cannot be easily expended, because this
> function is also called from HVC_SOFT_RESTART, which preserves only
> three arguments. And, also arm64_relocate_new_kernel is written in
> assembly but called without stack, thus no place to move extra
> arguments to free registers.
> 
> Soon, we will need to pass more arguments: once we enable MMU we
> will need to pass information about page tables.


> Another benefit of allowing this function to accept more arguments, is that
> kernel can actually accept up to 4 arguments (x0-x3), however currently
> only one is used, but if in the future we will need for more (for example,
> pass information about when previous kernel exited to have a precise
> measurement in time spent in purgatory), we won't be easilty do that
> if arm64_relocate_new_kernel can't accept more arguments.

This is a niche debug hack.
We really don't want an ABI with purgatory. I think the register values it gets were added
early for compatibility with kexec_file_load().


> So, add a new struct: kern_reloc_arg, and place it in kexec safe page (i.e
> memory that is not overwritten during relocation).
> Thus, make arm64_relocate_new_kernel to only take one argument, that
> contains all the needed information.

Do we really not have enough registers?

The PCS[0] gives you 8 arguments. In this patch you use 6.


If this is really about the hyp-stub abi, please state that.


> diff --git a/arch/arm64/kernel/machine_kexec.c b/arch/arm64/kernel/machine_kexec.c
> index cee3be586384..b1122eea627e 100644
> --- a/arch/arm64/kernel/machine_kexec.c
> +++ b/arch/arm64/kernel/machine_kexec.c
> @@ -59,13 +60,35 @@ void machine_kexec_cleanup(struct kimage *kimage)

>  int machine_kexec_post_load(struct kimage *kimage)
>  {
>  	void *reloc_code = page_to_virt(kimage->control_code_page);
> +	struct kern_reloc_arg *kern_reloc_arg = kexec_page_alloc(kimage);
> +
> +	if (!kern_reloc_arg)
> +		return -ENOMEM;
>  
>  	memcpy(reloc_code, arm64_relocate_new_kernel,
>  	       arm64_relocate_new_kernel_size);
>  	kimage->arch.kern_reloc = __pa(reloc_code);
> +	kimage->arch.kern_reloc_arg = __pa(kern_reloc_arg);
> +	kern_reloc_arg->head = kimage->head;
> +	kern_reloc_arg->entry_addr = kimage->start;
> +	kern_reloc_arg->kern_arg0 = kimage->arch.dtb_mem;

These kern_reloc_arg values are written via the cacheable linear map.
They are read in arm64_relocate_new_kernel() where the MMU is disabled an all memory
access are non-cacheable.

To ensure you read the values you wrote, you must clean kern_reloc_arg to the PoC.


>  	kexec_image_info(kimage);
>  
>  	return 0;Thanks,

James

[0]
https://developer.arm.com/docs/ihi0055/d/procedure-call-standard-for-the-arm-64-bit-architecture

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
