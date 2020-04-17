Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C13041ADF52
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 16:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abMsA7cd6uZ8WUZNAYpZBqDvmtJLHpt0Ln/5DkLbZkg=; b=rLR33N00dIqWBx
	8pUq5x2emB2JlS3jpZxeXbQ/7Yc7Soj9M/yEqPUaHS2Pk58QVbh//+uTqRYU1RsogkhsxIE/Ot3qR
	eDivOVK0836xpXJHG9EbD4HW3GE6T5ndzH5ekcD+xfj0+M7Wx7FFQ1b5EBiMVMUvDuaNC1eSQ3HMG
	N/Sg8a8nQBcmQ8iJnpSKIUe+KUHZBru2a8psoYISUPbRVE0s9yjRFZR/WqIYGVNi307pDtfB2q2Bd
	JfG1Rkysz2IMDLnST7eKdJmeD7II0nrKdkinkekLHcIFt3eTI0bNcbtuqw2x1vIves539o+iXBq/n
	NEGNO28hXvNzXZn+Kdqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPRho-0003lt-2E; Fri, 17 Apr 2020 14:10:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPRhe-0003lK-8U
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 14:10:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A283530E;
 Fri, 17 Apr 2020 07:10:43 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F8C53F73D;
 Fri, 17 Apr 2020 07:10:42 -0700 (PDT)
Date: Fri, 17 Apr 2020 15:10:39 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Kevin Hao <haokexin@gmail.com>
Subject: Re: [PATCH 1/2] arm64: entry: Fix the typo in the comment of el1_dbg()
Message-ID: <20200417141039.GB53632@C02TD0UTHF1T.local>
References: <20200417103212.45812-1-haokexin@gmail.com>
 <20200417103212.45812-2-haokexin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417103212.45812-2-haokexin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_071046_342946_38858CAA 
X-CRM114-Status: GOOD (  13.39  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 17, 2020 at 06:32:11PM +0800, Kevin Hao wrote:
> The function name should be local_daif_mask().
> 
> Signed-off-by: Kevin Hao <haokexin@gmail.com>

Acked-by: Mark Rutlamd <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/kernel/entry-common.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/entry-common.c b/arch/arm64/kernel/entry-common.c
> index c839b5bf1904..420cd8e1534b 100644
> --- a/arch/arm64/kernel/entry-common.c
> +++ b/arch/arm64/kernel/entry-common.c
> @@ -57,7 +57,7 @@ static void notrace el1_dbg(struct pt_regs *regs, unsigned long esr)
>  	/*
>  	 * The CPU masked interrupts, and we are leaving them masked during
>  	 * do_debug_exception(). Update PMR as if we had called
> -	 * local_mask_daif().
> +	 * local_daif_mask().
>  	 */
>  	if (system_uses_irq_prio_masking())
>  		gic_write_pmr(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
> -- 
> 2.26.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
