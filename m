Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DB11C9665
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 18:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UL6SuDhedDWUrIr+OGtTAcJQRR6VHDtybvI7LPXhB+Q=; b=iWIs/MP+nKgowu
	a19XHPOuYMQhJR1jl5xMSsf2exV+r9bQq53py+5ifqt/UAVZ5ccdpu2rHU95AG/zfiCTOEEpDjMdJ
	a8ytLVpJtE3L/ZCrZ5x37NMXC6FGbZTzi7u6L/4PrS189n1F8GvcLt4sYGSkQwgFUZDyvIQCPJueT
	PqHnDU06D6AvIuezC2Em8hJosAVmuoP0FUQfrwMVrWs9NyMQBsG0LY3rasIkPV0fxCCMbV4meKsYQ
	dZmm8fO8trMlSSmjU9zLBlYjGNtkVJyiv/CEOYVxhFztGBhgIJRsLUhLdPdgos7I1Dp3S+LtImg8I
	M5lAkn6f6pbUVPvCzJMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWjJG-0000Jj-3B; Thu, 07 May 2020 16:23:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWjIE-0007u4-Q3; Thu, 07 May 2020 16:22:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB8011FB;
 Thu,  7 May 2020 09:22:33 -0700 (PDT)
Received: from [192.168.0.14] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64DEE3F71F;
 Thu,  7 May 2020 09:22:31 -0700 (PDT)
Subject: Re: [PATCH v9 14/18] arm64: kexec: offset for relocation function
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200326032420.27220-1-pasha.tatashin@soleen.com>
 <20200326032420.27220-15-pasha.tatashin@soleen.com>
From: James Morse <james.morse@arm.com>
Message-ID: <2c23b35d-d4b7-904c-9516-5f317dd963c7@arm.com>
Date: Thu, 7 May 2020 17:22:30 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200326032420.27220-15-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_092238_942105_F34B792A 
X-CRM114-Status: GOOD (  14.17  )
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
> Soon, relocation function will share the same page with EL2 vectors.

The EL2 vectors would only be executed with the MMU off, so they don't need to be mapped
anywhere in particular. (this is something hibernate probably does sloppily).


> Add offset within this page to arm64_relocate_new_kernel, and also
> the total size of relocation code which will include both the function
> and the EL2 vectors.

See arch/arm64/kernel/vmlinux.lds.S and sections.h for an example of how the idmap,
hibernate and the non-KVM hyp code do this.

If we're going to change this, I'd prefer it be the same as the other users...


> diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> index 990185744148..d944c2e289b2 100644
> --- a/arch/arm64/include/asm/kexec.h
> +++ b/arch/arm64/include/asm/kexec.h
> @@ -90,6 +90,13 @@ static inline void crash_prepare_suspend(void) {}
>  static inline void crash_post_resume(void) {}
>  #endif
>  
> +#if defined(CONFIG_KEXEC_CORE)
> +/* The beginning and size of relcation code to stage 2 kernel */
> +extern const unsigned long kexec_relocate_code_size;
> +extern const unsigned char kexec_relocate_code_start[];
> +extern const unsigned long kexec_kern_reloc_offset;
> +#endif

This makes these things visible globally ... but drops the arm64_ prefix!


> diff --git a/arch/arm64/kernel/relocate_kernel.S b/arch/arm64/kernel/relocate_kernel.S
> index 22ccdcb106d3..aa9f2b2cd77c 100644
> --- a/arch/arm64/kernel/relocate_kernel.S
> +++ b/arch/arm64/kernel/relocate_kernel.S
> @@ -14,6 +14,9 @@
>  #include <asm/page.h>
>  #include <asm/sysreg.h>
>  
> +.globl kexec_relocate_code_start
> +kexec_relocate_code_start:

Which of the fancy new asm-annotations should this be?



> @@ -86,13 +89,16 @@ ENTRY(arm64_relocate_new_kernel)
>  .ltorg
>  END(arm64_relocate_new_kernel)
>  
> -.Lcopy_end:
> +.Lkexec_relocate_code_end:
>  .org	KEXEC_CONTROL_PAGE_SIZE
>  .align 3	/* To keep the 64-bit values below naturally aligned. */

>  /*
> - * arm64_relocate_new_kernel_size - Number of bytes to copy to the
> + * kexec_relocate_code_size - Number of bytes to copy to the
>   * control_code_page.
>   */
> -.globl arm64_relocate_new_kernel_size
> -arm64_relocate_new_kernel_size:
> -	.quad	.Lcopy_end - arm64_relocate_new_kernel
> +.globl kexec_relocate_code_size
> +kexec_relocate_code_size:
> +	.quad	.Lkexec_relocate_code_end - kexec_relocate_code_start
> +.globl kexec_kern_reloc_offset
> +kexec_kern_reloc_offset:
> +	.quad	arm64_relocate_new_kernel - kexec_relocate_code_start
> 

Can't we calculate this from the start/end markers? These variables held in assembly
generated code is pretty manky.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
