Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A93DB8CF20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j9t6vYxgWFJyXDBhCPWFqzFNQ83d+5TNEr/cZmmWEKM=; b=brdZkpk1c/Klv+
	YSIMlxATdaApRBinBP61iv/Bc6niSw5ap7eFKGQ0/Hs2+vZDV2b2PLtWkpQPJfCuT7GwbUeH1s2TI
	5wPJIjmOIeo82res8z8+XcoQphqSxUD8dGL9wDz4TxmYyqYWDbEHbfcAzwdWOcu13+Q2gX8UxGuMU
	NdlqvIGjfGBxUY6v9fUAJ1N94RxmeD5dX+ER1Gq/PQNWOOql4dYQ+FXh+3Np0NeXxsjGDsxLR65Ac
	2Yw9D5aHDWSixLOQFMt40PodHnV/kI12IHzxuIkE8CSaOBxmF8vH9tKdsJiRLaV/pdBNxlW60FcDg
	52xeuQPgqTw7om+vU9RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpL0-0005c9-Pk; Wed, 14 Aug 2019 09:12:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpKf-0005ZE-Uo
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:12:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6FD66344;
 Wed, 14 Aug 2019 02:12:37 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BBF1A3F694;
 Wed, 14 Aug 2019 02:12:36 -0700 (PDT)
Date: Wed, 14 Aug 2019 10:12:34 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 3/3] arm64: constify sys64_hook instances
Message-ID: <20190814091234.GM10425@arm.com>
References: <20190813141639.13476-1-mark.rutland@arm.com>
 <20190813141639.13476-4-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813141639.13476-4-mark.rutland@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_021238_127510_CC91D8DA 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 03:16:39PM +0100, Mark Rutland wrote:
> All instances of struct sys64_hook contain compile-time constant data,
> and are never inentionally modified, so let's make them all const.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> ---
>  arch/arm64/kernel/traps.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 42c8422cdf4a..a5d7ce4297b0 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -511,7 +511,7 @@ struct sys64_hook {
>  	void (*handler)(unsigned int esr, struct pt_regs *regs);
>  };
>  
> -static struct sys64_hook sys64_hooks[] = {
> +static const struct sys64_hook sys64_hooks[] = {
>  	{
>  		.esr_mask = ESR_ELx_SYS64_ISS_EL0_CACHE_OP_MASK,
>  		.esr_val = ESR_ELx_SYS64_ISS_EL0_CACHE_OP_VAL,
> @@ -636,7 +636,7 @@ static void compat_cntfrq_read_handler(unsigned int esr, struct pt_regs *regs)
>  	arm64_compat_skip_faulting_instruction(regs, 4);
>  }
>  
> -static struct sys64_hook cp15_32_hooks[] = {
> +static const struct sys64_hook cp15_32_hooks[] = {
>  	{
>  		.esr_mask = ESR_ELx_CP15_32_ISS_SYS_MASK,
>  		.esr_val = ESR_ELx_CP15_32_ISS_SYS_CNTFRQ,
> @@ -656,7 +656,7 @@ static void compat_cntvct_read_handler(unsigned int esr, struct pt_regs *regs)
>  	arm64_compat_skip_faulting_instruction(regs, 4);
>  }
>  
> -static struct sys64_hook cp15_64_hooks[] = {
> +static const struct sys64_hook cp15_64_hooks[] = {
>  	{
>  		.esr_mask = ESR_ELx_CP15_64_ISS_SYS_MASK,
>  		.esr_val = ESR_ELx_CP15_64_ISS_SYS_CNTVCT,
> @@ -667,7 +667,7 @@ static struct sys64_hook cp15_64_hooks[] = {
>  
>  asmlinkage void __exception do_cp15instr(unsigned int esr, struct pt_regs *regs)
>  {
> -	struct sys64_hook *hook, *hook_base;
> +	const struct sys64_hook *hook, *hook_base;
>  
>  	if (!cp15_cond_valid(esr, regs)) {
>  		/*
> @@ -707,7 +707,7 @@ asmlinkage void __exception do_cp15instr(unsigned int esr, struct pt_regs *regs)
>  
>  asmlinkage void __exception do_sysinstr(unsigned int esr, struct pt_regs *regs)
>  {
> -	struct sys64_hook *hook;
> +	const struct sys64_hook *hook;
>  
>  	for (hook = sys64_hooks; hook->handler; hook++)
>  		if ((hook->esr_mask & esr) == hook->esr_val) {

Reviewed-by: Dave Martin <Dave.Martin@arm.com>

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
