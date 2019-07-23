Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6102B71D63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 19:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHX9qUQIpqIcOV0GgiNUZkvJdtFzvgK1R1fhecOenGk=; b=omlbFkKafRfKay
	sbSNTyByKJ4d2+/2N0LAdccN+t0hubq1vj2d00ooixwrQlWOYDj40hfnU2PGaE2VY81hgmaP/L54N
	cj99vTIOrAdvnayQwurX4esI5Wdynd0zZyGGdy9isQVKqzsF+P0h8JCHwlR7y/ExHHGNk8oWzQG/0
	Kkqkt1gskq9ZqFPe/WZRo5Quy9vV/sickY7Rg2p62d1b1acWdmusFOabOHhMrXkFrTegow69m4JUW
	azG/rJOf4VMNHEJYk9DollOtmh8q0rnP0IH9qf11BS/vpz1AeNVDikIqZj75qkf1sMG3YtGJOXgQl
	IXzOQndAPsYfAZX12S8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpyGs-0000cU-D3; Tue, 23 Jul 2019 17:08:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpyGf-0000bk-2E
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:08:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64CD7337;
 Tue, 23 Jul 2019 10:07:59 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0A6533F71A;
 Tue, 23 Jul 2019 10:07:57 -0700 (PDT)
Subject: Re: [PATCH v2 3/4] arm64: Make debug exception handlers visible from
 RCU
To: Masami Hiramatsu <mhiramat@kernel.org>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
 <156378173770.12011.3832608237079432765.stgit@devnote2>
From: James Morse <james.morse@arm.com>
Message-ID: <0290c71b-6ed3-c455-eb4a-3f6a670f5e37@arm.com>
Date: Tue, 23 Jul 2019 18:07:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <156378173770.12011.3832608237079432765.stgit@devnote2>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_100801_196632_A3DA3114 
X-CRM114-Status: GOOD (  19.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 22/07/2019 08:48, Masami Hiramatsu wrote:
> Make debug exceptions visible from RCU so that synchronize_rcu()
> correctly track the debug exception handler.
> 
> This also introduces sanity checks for user-mode exceptions as same
> as x86's ist_enter()/ist_exit().
> 
> The debug exception can interrupt in idle task. For example, it warns
> if we put a kprobe on a function called from idle task as below.
> The warning message showed that the rcu_read_lock() caused this
> problem. But actually, this means the RCU is lost the context which
> is already in NMI/IRQ.

> So make debug exception visible to RCU can fix this warning.

> diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> index 9568c116ac7f..a6b244240db6 100644
> --- a/arch/arm64/mm/fault.c
> +++ b/arch/arm64/mm/fault.c
> @@ -777,6 +777,42 @@ void __init hook_debug_fault_code(int nr,
>  	debug_fault_info[nr].name	= name;
>  }
>  
> +/*
> + * In debug exception context, we explicitly disable preemption.
> + * This serves two purposes: it makes it much less likely that we would
> + * accidentally schedule in exception context and it will force a warning
> + * if we somehow manage to schedule by accident.
> + */
> +static void debug_exception_enter(struct pt_regs *regs)
> +{
> +	if (user_mode(regs)) {
> +		RCU_LOCKDEP_WARN(!rcu_is_watching(), "entry code didn't wake RCU");

Would moving entry.S's context_tracking_user_exit() call to be before do_debug_exception()
also fix this?

I don't know the reason its done 'after' debug exception handling. Its always been like
this: commit 6c81fe7925cc4c42 ("arm64: enable context tracking").


> +	} else {
> +		/*
> +		 * We might have interrupted pretty much anything.  In
> +		 * fact, if we're a debug exception, we can even interrupt
> +		 * NMI processing.

> +		 * We don't want in_nmi() to return true,
> +		 * but we need to notify RCU.

How come? If you interrupted an SError or pseudo-nmi, it already is. Those paths should
all be painted no-kprobe, but I'm sure there are gaps. The hw-breakpoints can almost
certainly hook them.


> +		 */
> +		rcu_nmi_enter();

Can we interrupt printk()? Do we need printk_nmi_enter()? ... What about ftrace?

Because SError and pseudo-nmi can interrupt interrupt-masked code, we describe them as
NMI. The only difference here is these exceptions are synchronous.


I suspect we should make these debug exceptions nmi for EL1. We can then use this for the
kprobe-re-entrance stuff so the pre/post hooks don't get run if they interrupted something
also described as NMI.


> +	}
> +
> +	preempt_disable();
> +
> +	/* This code is a bit fragile.  Test it. */
> +	RCU_LOCKDEP_WARN(!rcu_is_watching(), "exception_enter didn't work");
> +}
> +NOKPROBE_SYMBOL(debug_exception_enter);


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
