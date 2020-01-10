Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEA11365DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 04:38:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDzD2rh5zfTiI5KHNiFLTscLLJFik672WRrIiHIMY98=; b=tey6vvtJJCJRVu
	j3VUB46WHMAPjyGVIZdoe7Mr7rsiGyar73juVPc9t1lZ/zpfdhzmavYsTcqBzbL8hXWaxqITrNVIv
	80DrbwUO8TFSLlwVdYoIsrD25q2K0HbFuPGwxDm0FRVJvQhTDyKQc2h1tbF6HxBVZBvKdsFpzuxeW
	VWIiTq8+UqedsdLWKmcJJ1wrOhm1NCLZG2iIFoy6NB4EP0N3OcAN75EuU4AUSY/INguHhNE+se4h2
	//eUZw+L/iCEtAI1DdWcuH8yub16zr5d4vmEPMg5Wm0igPoAe3EJAh4KSQSybtipWXYQMNDT8f5v/
	Ngl0wZnmdts4GF6nqsWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipl7a-0003dy-GL; Fri, 10 Jan 2020 03:38:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipl7Q-0003dR-UZ
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 03:37:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DD42D1396;
 Thu,  9 Jan 2020 19:37:51 -0800 (PST)
Received: from [10.162.42.128] (p8cg001049571a15.blr.arm.com [10.162.42.128])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 D11E93F703; Thu,  9 Jan 2020 19:37:48 -0800 (PST)
Subject: Re: [PATCH 10/17] arm64: entry: consolidate EL1 return paths
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-11-mark.rutland@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <b212715d-bc23-3b9a-2cea-7b597a3bf50c@arm.com>
Date: Fri, 10 Jan 2020 09:09:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200108185634.1163-11-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_193753_028329_EDA8C92C 
X-CRM114-Status: GOOD (  18.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, broonie@kernel.org,
 labbott@redhat.com, robin.murphy@arm.com, julien.thierry.kdev@gmail.com,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/09/2020 12:26 AM, Mark Rutland wrote:
> Each of the EL1 exception handler stubs has an identical copy of the
> kernel_exit code. While each handler needs its own kernel_entry
> sequence, there's no need to duplicate this for each handler, and we can
> consolidate them for better I-cache usage.
> 
> This patch makes the EL1 handlers all use a common kernel_exit stub
> called ret_to_kernel, matching the ret_to_user stub used by EL0
> handlers.
> 
> As with the handlers, ret_to_kenerl is aligned for better I-cache and

Small nit, s/ret_to_kenerl/ret_to_kernel

> brapnch predictor utilization, and for consistency the same alignment is

Small nit, s/brapnch/branch

> applied to ret_to_user.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Will Deacon <will@kernel.org>

Reviewed-by: Anshuman Khandual <anshuman.khandual@arm.com>

> ---
>  arch/arm64/kernel/entry.S | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 35a8c56b0582..e76326feb1da 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -519,7 +519,7 @@ el1_sync:
>  	kernel_entry 1
>  	mov	x0, sp
>  	bl	el1_sync_handler
> -	kernel_exit 1
> +	b	ret_to_kernel
>  ENDPROC(el1_sync)
>  
>  	.align	6
> @@ -527,7 +527,7 @@ el1_irq:
>  	kernel_entry 1
>  	mov	x0, sp
>  	bl	el1_irq_handler
> -	kernel_exit 1
> +	b	ret_to_kernel
>  ENDPROC(el1_irq)
>  
>  	.align	6
> @@ -535,10 +535,18 @@ el1_error:
>  	kernel_entry 1
>  	mov	x0, sp
>  	bl	el1_error_handler
> -	kernel_exit 1
> +	b	ret_to_kernel
>  ENDPROC(el1_error)
>  
>  /*
> + * Common EL1 exception return path
> + */
> +	.align 6
> +ret_to_kernel:
> +	kernel_exit 1
> +ENDPROC(ret_to_kernel)
> +
> +/*
>   * EL0 mode handlers.
>   */
>  	.align	6
> @@ -606,6 +614,7 @@ work_pending:
>  /*
>   * "slow" syscall return path.
>   */
> +	.align 6
>  ret_to_user:
>  	disable_daif
>  	gic_prio_kentry_setup tmp=x3
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
