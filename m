Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D56B7E057
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B952tcsfUxXbQ/QI7fOO+5PrJQQt1dea5eELQw3H1N8=; b=tJt1kjkRAa/qG+
	fL10xFOdjuZ1x3mWQZeLMRfoFl1ROccsT+SgLOGNfMcBPldJJYxXJ6Jclv4lZi2/UwIlhrThsmA7r
	0y3tYT8GjSnj9biRBZBU+XhabSqTdf5lVMoVZZAINU3QLa5LUXe6Sx/wWRmXodwSYAOg9WNLz6tHR
	1jlX84PxPaJBw5amc/GWhdC4xQAfyJklhOqcVCj5oXjb/TJAxJkohMAYuip28tdhqWHX9BwFXLYOF
	Se+Xv8HDydPZD/On9DAS2UUibeSazFk7/RqvGRY9xyzU+VrvZfEF2JmQyy9GCt+pc8LCiu/m9Oq9a
	Fyv08N41p+XUQwTyVUPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htE70-0004aT-St; Thu, 01 Aug 2019 16:39:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htE6u-0004aA-5H
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 16:39:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D6ACB20838;
 Thu,  1 Aug 2019 16:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564677563;
 bh=EKAofqL2dBzFrqKexy6bWBsz7Q6u4aIuqyw6KQzwtAM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YAHjCcbeFjsLLQvVfayzZYM3zN1HyoSBlq2JBn843vBunoeKiOJlmc8N+8ZdodNHv
 sp91LwiKT56uasyh5U6zs6PdeCxPe0lVWc6dgDxGFLzjtgSByIjogFAc1KCBsYXEyD
 WhilDThYGqYsnNrolnRwV+2r9fQomPeOtURA5g+0=
Date: Thu, 1 Aug 2019 17:39:20 +0100
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 2/2] arm64: entry: Move ct_user_exit before we can take
 another exception
Message-ID: <20190801163919.jlpvy47pknqx75ze@willie-the-truck>
References: <20190801154150.195959-1-james.morse@arm.com>
 <20190801154150.195959-3-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801154150.195959-3-james.morse@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_093924_229733_F9A121E9 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 04:41:50PM +0100, James Morse wrote:
> When taking an exception from EL0 we unmask exceptions before calling
> ct_user_exit. This means we could take an interrupt or be single-stepped
> in the gap. The entry from EL1 code sees that we took an exception from
> the kernel, whereas the context_tracking code believes we are still in
> user-space.
> 
> To keep these things consistent, move the ct_user_exit calls before
> any unmask of exceptions.
> 
> Fixes: 6c81fe7925cc4c42 ("arm64: enable context tracking")
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  arch/arm64/kernel/entry.S | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 28681034d599..88f4ab21cb66 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -792,8 +792,8 @@ el0_cp15:
>  	/*
>  	 * Trapped CP15 (MRC, MCR, MRRC, MCRR) instructions
>  	 */
> -	enable_daif
>  	ct_user_exit
> +	enable_daif
>  	mov	x0, x25
>  	mov	x1, sp
>  	bl	do_cp15instr
> @@ -805,8 +805,8 @@ el0_da:
>  	 * Data abort handling
>  	 */
>  	mrs	x26, far_el1
> -	enable_daif
>  	ct_user_exit
> +	enable_daif

This strikes me as a bit dodgy, since we end up in context_tracking_exit(),
which calls local_irq_{save,restore}() and I think our accounting is
probably off at this point. I think we need to call via
user_{enter,exit}_irqoff() instead to make this work.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
