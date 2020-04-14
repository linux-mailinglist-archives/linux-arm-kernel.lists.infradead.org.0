Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486E51A7904
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 13:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LAUgGbDMByHWyiZM1HfBbRx5jgUQgUsolHX3Tj3+wso=; b=pYvkhRZCweVybJ
	epJ922Jmzq4z8MtcSMvMU2vYbdr+V3hpooV6OgTLSPEa7psWOHbcb9Vet9yj7DTy0qMCsSG7UJ4JR
	Qcg6ntPRZux7C6islY9PC9dVKBFwuL387n8F81I0Y8Jo1faL34zbtP2Ke5yMPEQJXGdMC+5mPhgwh
	hVfqaPsnSKjkKETGtzG7NHsabEizyILsUNPiCP1g1Z3BKwt4vEcZY1v0Gy9FGF4W+qeh5nab3O6vY
	RtU4NXySThEam/tzyD2Q8VjCtxNfvygmrvrqeRr8BVlzyj4YyN1I2N89iFoXSWF6oqUiPGFWK2RZH
	z2aTap+oNpORvks3JpEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOJIC-0004FE-Pc; Tue, 14 Apr 2020 10:59:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOJI3-0004Ee-0e
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 10:59:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71FBB1FB;
 Tue, 14 Apr 2020 03:59:38 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.30.4])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 413B03F6C4;
 Tue, 14 Apr 2020 03:59:36 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:59:23 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Xie XiuQi <xiexiuqi@huawei.com>
Subject: Re: [PATCH] arm64: panic on synchronous external abort in kernel
 context
Message-ID: <20200414105923.GA2486@C02TD0UTHF1T.local>
References: <20200410015245.23230-1-xiexiuqi@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410015245.23230-1-xiexiuqi@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_035939_100145_1F26B8AB 
X-CRM114-Status: GOOD (  15.79  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 tanxiaofei@huawei.com, james.morse@arm.com, tglx@linutronix.de,
 will@kernel.org, wangxiongfeng2@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 09:52:45AM +0800, Xie XiuQi wrote:
> We should panic even panic_on_oops is not set, when we can't recover
> from synchronous external abort in kernel context.
> 
> Othervise, there are two issues:
> 1) fallback to do_exit() in exception context, cause this core hung up.
>    do_sea()
>    -> arm64_notify_die
>       -> die
>          -> do_exit
> 2) errors may propagated.
> 
> Signed-off-by: Xie XiuQi <xiexiuqi@huawei.com>
> Cc: Xiaofei Tan <tanxiaofei@huawei.com>
> ---
>  arch/arm64/include/asm/esr.h | 12 ++++++++++++
>  arch/arm64/kernel/traps.c    |  2 ++
>  2 files changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
> index cb29253ae86b..acfc71c6d148 100644
> --- a/arch/arm64/include/asm/esr.h
> +++ b/arch/arm64/include/asm/esr.h
> @@ -326,6 +326,18 @@ static inline bool esr_is_data_abort(u32 esr)
>  	return ec == ESR_ELx_EC_DABT_LOW || ec == ESR_ELx_EC_DABT_CUR;
>  }
>  
> +static inline bool esr_is_inst_abort(u32 esr)
> +{
> +	const u32 ec = ESR_ELx_EC(esr);
> +
> +	return ec == ESR_ELx_EC_IABT_LOW || ec == ESR_ELx_EC_IABT_CUR;
> +}
> +
> +static inline bool esr_is_ext_abort(u32 esr)
> +{
> +	return esr_is_data_abort(esr) || esr_is_inst_abort(esr);
> +}

A data abort or an intstruction abort are not necessarily synchronus
external aborts, so this isn't right.

What exactly are you trying to catch here? If you are seeing a problem
in practice, can you please share your log from a crash?

Thanks,
Mark.

> +
>  const char *esr_get_class_string(u32 esr);
>  #endif /* __ASSEMBLY */
>  
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index cf402be5c573..08f7f7688d5b 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -202,6 +202,8 @@ void die(const char *str, struct pt_regs *regs, int err)
>  		panic("Fatal exception in interrupt");
>  	if (panic_on_oops)
>  		panic("Fatal exception");
> +	if (esr_is_ext_abort(err))
> +		panic("Synchronous external abort in kernel context");
>  
>  	raw_spin_unlock_irqrestore(&die_lock, flags);
>  
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
