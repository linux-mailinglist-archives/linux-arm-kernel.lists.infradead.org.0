Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79BDDCE7BA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SVkIxjDpuXaZcOfB0kBns5+bZBVk9vTwJQlDLVRbLgg=; b=NXhDXUoigEhvC5
	/PDDTef1VVWS1a+lVZM9GmZvouRjodOnZNpB/JI9d3oT1z5/K0MMtZqGas9oFo8LJ8apesL4RMHyS
	2QT0zNDxmeFXVzOOa/YA/YMGegZK2w0TUrWh5p7/ijF7QAsabeCeLLxYs8XKMQlhUHv2uLJcPgqSZ
	Y6EhAskBJtUXMsnJsJnATdeeVUNvPCMtqOgcuOR8Dhz8MNzZ+V6YLW4jzDFt0CfKg1E0aYew8n/qx
	Fo1i9Jg4+axQ8ExJVWtF0LiDSDbFu4DrL4k025LzZ4A7fbdHGpAc1AE/XAoqJSISq/RKKyGvX6p5e
	3TCksaIiHJLrFrARXQFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHV4f-0002l6-14; Mon, 07 Oct 2019 15:37:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHV4V-0002k5-Jk
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:37:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6BFB20700;
 Mon,  7 Oct 2019 15:37:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570462635;
 bh=jUewCEGbhOMDYXJnjrPZ2FOjYqzS9d3VzyM/APfHGbM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cWVW9kyD/N8d8qYeXchiPkLP/kNzLQpDe1ZvsUok7iAHjRir0d7Y0ZlKNVxE65o3+
 FQPm1pex0tR72QbiyF4X7Z7XO8Rzrsf3oKOPRiwX0CjODU21BbXv+61D/eJOdoZEpv
 sEBFdoFLm+EqRCtxvUjqqKH0w2kYpleNjGl91KSQ=
Date: Mon, 7 Oct 2019 16:37:10 +0100
From: Will Deacon <will@kernel.org>
To: Yunfeng Ye <yeyunfeng@huawei.com>
Subject: Re: [PATCH v2] arm64: armv8_deprecated: Checking return value for
 memory allocation
Message-ID: <20191007153710.7xpx27kgeewz75kt@willie-the-truck>
References: <bd558d56-18a9-3607-3db0-ad203ab12aa8@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd558d56-18a9-3607-3db0-ad203ab12aa8@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_083715_691336_D05B9170 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kstewart@linuxfoundation.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org, tglx@linutronix.de,
 info@metux.net, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 06:06:35PM +0800, Yunfeng Ye wrote:
> There are no return value checking when using kzalloc() and kcalloc() for
> memory allocation. so add it.
> 
> Signed-off-by: Yunfeng Ye <yeyunfeng@huawei.com>
> ---
> v1 -> v2:
>  - return error code when memory allocation failure
> 
>  arch/arm64/kernel/armv8_deprecated.c | 57 +++++++++++++++++++++++++++---------
>  1 file changed, 43 insertions(+), 14 deletions(-)
> 
> diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
> index 2ec09de..2284fcb 100644
> --- a/arch/arm64/kernel/armv8_deprecated.c
> +++ b/arch/arm64/kernel/armv8_deprecated.c
> @@ -168,12 +168,15 @@ static int update_insn_emulation_mode(struct insn_emulation *insn,
>  	return ret;
>  }
> 
> -static void __init register_insn_emulation(struct insn_emulation_ops *ops)
> +static int __init register_insn_emulation(struct insn_emulation_ops *ops)
>  {
>  	unsigned long flags;
>  	struct insn_emulation *insn;
> 
>  	insn = kzalloc(sizeof(*insn), GFP_KERNEL);
> +	if (!insn)
> +		return -ENOMEM;
> +
>  	insn->ops = ops;
>  	insn->min = INSN_UNDEF;
> 
> @@ -197,6 +200,7 @@ static void __init register_insn_emulation(struct insn_emulation_ops *ops)
> 
>  	/* Register any handlers if required */
>  	update_insn_emulation_mode(insn, INSN_UNDEF);
> +	return 0;
>  }
> 
>  static int emulation_proc_handler(struct ctl_table *table, int write,
> @@ -224,7 +228,7 @@ static int emulation_proc_handler(struct ctl_table *table, int write,
>  	return ret;
>  }
> 
> -static void __init register_insn_emulation_sysctl(void)
> +static int __init register_insn_emulation_sysctl(void)
>  {
>  	unsigned long flags;
>  	int i = 0;
> @@ -233,6 +237,8 @@ static void __init register_insn_emulation_sysctl(void)
> 
>  	insns_sysctl = kcalloc(nr_insn_emulated + 1, sizeof(*sysctl),
>  			       GFP_KERNEL);
> +	if (!insns_sysctl)
> +		return -ENOMEM;
> 
>  	raw_spin_lock_irqsave(&insn_emulation_lock, flags);
>  	list_for_each_entry(insn, &insn_emulation, node) {
> @@ -251,6 +257,7 @@ static void __init register_insn_emulation_sysctl(void)
>  	raw_spin_unlock_irqrestore(&insn_emulation_lock, flags);
> 
>  	register_sysctl("abi", insns_sysctl);
> +	return 0;
>  }
> 
>  /*
> @@ -617,25 +624,47 @@ static int t16_setend_handler(struct pt_regs *regs, u32 instr)
>   */
>  static int __init armv8_deprecated_init(void)
>  {
> -	if (IS_ENABLED(CONFIG_SWP_EMULATION))
> -		register_insn_emulation(&swp_ops);
> +	int ret = 0;
> +	int err = 0;
> +
> +	if (IS_ENABLED(CONFIG_SWP_EMULATION)) {
> +		ret = register_insn_emulation(&swp_ops);
> +		if (ret) {
> +			pr_err("register insn emulation swp: fail\n");
> +			err = ret;
> +		}
> +	}

Is there much point in continuing here? May as well just return ret, I
think. I also don't think you need to print anything, since kmalloc
should already have shouted.

> -	if (IS_ENABLED(CONFIG_CP15_BARRIER_EMULATION))
> -		register_insn_emulation(&cp15_barrier_ops);
> +	if (IS_ENABLED(CONFIG_CP15_BARRIER_EMULATION)) {
> +		ret = register_insn_emulation(&cp15_barrier_ops);
> +		if (ret) {
> +			pr_err("register insn emulation cpu15_barrier: fail\n");
> +			err = ret;
> +		}
> +	}
> 
>  	if (IS_ENABLED(CONFIG_SETEND_EMULATION)) {
> -		if(system_supports_mixed_endian_el0())
> -			register_insn_emulation(&setend_ops);
> -		else
> +		if (system_supports_mixed_endian_el0()) {
> +			ret = register_insn_emulation(&setend_ops);
> +			if (ret) {
> +				pr_err("register insn emulation setend: fail\n");
> +				err = ret;
> +			}
> +		} else {
>  			pr_info("setend instruction emulation is not supported on this system\n");
> +		}
>  	}
> 
> -	cpuhp_setup_state_nocalls(CPUHP_AP_ARM64_ISNDEP_STARTING,
> -				  "arm64/isndep:starting",
> -				  run_all_insn_set_hw_mode, NULL);
> -	register_insn_emulation_sysctl();
> +	if (nr_insn_emulated) {
> +		cpuhp_setup_state_nocalls(CPUHP_AP_ARM64_ISNDEP_STARTING,
> +					  "arm64/isndep:starting",
> +					  run_all_insn_set_hw_mode, NULL);
> +		ret = register_insn_emulation_sysctl();
> +		if (ret)
> +			err = ret;
> +	}

I'm dubious about leaving the cpuhp notifier registered if we fail here.
Can we simply reorder the logic so that the notifier is registered after
successfully calling register_insn_emulation_sysctl()?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
