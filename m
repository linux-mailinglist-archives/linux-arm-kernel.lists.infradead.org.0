Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C3ADE713
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 10:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9jXPjP+pi2hCqVn+tPwS/51R4yhcC59nVJdYAtqPyE=; b=Y1s7PJ/ifqy5Ew
	bUWYChTGJYjcGxx2KPN2HrqfFLjtXE23yGvctYIupu+6lg001Pu62o5R/jiokYCR5/qouFP5lj6pb
	DgBSPHpgcQNMhyeOH2QmHTSF5DhwxmPUfrNy1BpTY+2XeTEUj5NSumvCmjP7OaWon33ScjjLLQ2zG
	v/WZUXkzHuS5HSx8AWJf7EvmxxucT0upEW4yUxcQQW2xLL/kPOdpIqWvIjFPQ1N8qw50jK0cL1eVp
	TAWtNnag5fRg0fYT5yJuaD4iXkIyWy39STen7xmoWn7g7cWbUk9TvpEw+KpHSduTd2DWBgfNJ+8SA
	s41U6MeQ1FhOc4RmGhag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMTNp-0006wh-Lj; Mon, 21 Oct 2019 08:49:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMTNb-0006w0-7G
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 08:49:32 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F211B2067B;
 Mon, 21 Oct 2019 08:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571647770;
 bh=NpXG/RiXMN6GZ7FeOc3UodXKrK/4C1mQCqvDI2cyuRw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=2YwstC6/R6V+ozb8ttKQ5pdLT6a8CCR5fBFZtFjcfitB5J54BBKA5xlw3SrR1Xb8t
 f9+8MUX5OTUh0gh6ZhOVim64ZQhn69t8klw0/XFT1PdMXhHHjwaQWMM7eGQfHlk/By
 0vudsqwDHQDFj0oh8OSXkDgiK+TqJ+w9Y8sXGHcU=
Date: Mon, 21 Oct 2019 17:49:26 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: kprobes: Drop open-coded exception fixup
Message-Id: <20191021174926.10992282af1c36d721a6747d@kernel.org>
In-Reply-To: <e70f7b9de7e601b9e4a6fedad8eaf64d304b1637.1571326276.git.robin.murphy@arm.com>
References: <e70f7b9de7e601b9e4a6fedad8eaf64d304b1637.1571326276.git.robin.murphy@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_014931_280584_FFBC857F 
X-CRM114-Status: GOOD (  21.53  )
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, james.morse@arm.com,
 mhiramat@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Thu, 17 Oct 2019 16:31:42 +0100
Robin Murphy <robin.murphy@arm.com> wrote:

> The short-circuit call to fixup_exception() from kprobe_fault_handler()
> poses a problem now that the former wants to consume the fault address
> too, since the common kprobes API offers us no way to pass it through.
> Fortunately, however, it works out to be unnecessary:

Thank you for pointing it out!

> 
> - uaccess instructions themselves are not probeable, so at most we
>   should only ever expect to take a fixable fault from the pre or post
>   handlers.

Right. If it is not fixable, we should handle it as a kernel bug.
(to avoid it we can use probe_kernel_read() in kprobe handler)

> - the pre and post handler run with preemption disabled, thus for any
>   fault they may cause, an unhandled return from kprobe_page_fault()
>   will proceed directly to __do_kernel_fault() thanks to the
>   faulthandler_disabled() check.

OK, this is reasonable.

> - __do_kernel_fault() will immediately call fixup_exception() unless
>   we're in an EL1 instruction abort, and if we've somehow taken one of
>   those on what we think is the middle of a uaccess routine, then the
>   world is already very on fire.

OK, this looks good to me.

Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you!

> 
> Thus we can reasonably drop the call from kprobe_fault_handler() and
> leave uaccess fixups to the regular flow.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/kernel/probes/kprobes.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index c4452827419b..422fbd5c6c55 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -334,13 +334,6 @@ int __kprobes kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr)
>  		 */
>  		if (cur->fault_handler && cur->fault_handler(cur, regs, fsr))
>  			return 1;
> -
> -		/*
> -		 * In case the user-specified fault handler returned
> -		 * zero, try to fix up.
> -		 */
> -		if (fixup_exception(regs))
> -			return 1;
>  	}
>  	return 0;
>  }
> -- 
> 2.21.0.dirty
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
