Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D11B33678
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 19:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kJbLYMqb8Ivc8cAdCV+RRYCxsynR7cXjz3u4i/G1qy4=; b=qR89gYu2SbWpfk
	QOYoQDopFAL4HedU3tr1rF5J5klJPsiDoJVMzLhuNHG90nGQ2DfjHnL8j1Z0IQTiXKyT9fn9aYotB
	Nyfo7+m+iwgcXOCCbFoTDwaxZCwMCAo6RnolfLkjBoSpyTN1KPD6futTDVj7+Ki3zcs7Ze6/lDDIj
	sDcrKTfKyeu4TeLNy3fMS45w7H0HtF8wtmkyOMpa9BxbAmPBPaECn2+I9Sfhrc6/81uS5fNE0h+am
	2lCbwPpDftllnCqbaQ5KbFmS1IHpxUWeEQKFDZIeSM9UllyktYdkH9hcqmpuiE5lYu7bByKQZM2/1
	17ugRf7aeXq09ZnLy7Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqfo-0007SG-MW; Mon, 03 Jun 2019 17:23:04 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqfh-0007Rv-V3
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 17:22:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16F2CA78;
 Mon,  3 Jun 2019 10:22:57 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 8CDEE3F5AF; Mon,  3 Jun 2019 10:22:54 -0700 (PDT)
Date: Mon, 3 Jun 2019 18:22:52 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>, Andy Lutomirski <luto@kernel.org>
Subject: Re: [PATCH v4 2/4] x86: simplify _TIF_SYSCALL_EMU handling
Message-ID: <20190603172251.GG63283@arrakis.emea.arm.com>
References: <20190523090618.13410-1-sudeep.holla@arm.com>
 <20190523090618.13410-3-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523090618.13410-3-sudeep.holla@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_102258_000795_61A33407 
X-CRM114-Status: GOOD (  19.95  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Haibo Xu <haibo.xu@arm.com>, Steve Capper <Steve.Capper@arm.com>,
 Richard Weinberger <richard@nod.at>, jdike@addtoit.com, x86@kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
 Bin Lu <bin.lu@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 10:06:16AM +0100, Sudeep Holla wrote:
> The usage of emulated/_TIF_SYSCALL_EMU flags in syscall_trace_enter
> seems to be bit overcomplicated than required. Let's simplify it.
> 
> Cc: Andy Lutomirski <luto@kernel.org>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Acked-by: Oleg Nesterov <oleg@redhat.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  arch/x86/entry/common.c | 17 ++++++-----------
>  1 file changed, 6 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/x86/entry/common.c b/arch/x86/entry/common.c
> index a986b3c8294c..0a61705d62ec 100644
> --- a/arch/x86/entry/common.c
> +++ b/arch/x86/entry/common.c
> @@ -72,23 +72,18 @@ static long syscall_trace_enter(struct pt_regs *regs)
>  
>  	struct thread_info *ti = current_thread_info();
>  	unsigned long ret = 0;
> -	bool emulated = false;
>  	u32 work;
>  
>  	if (IS_ENABLED(CONFIG_DEBUG_ENTRY))
>  		BUG_ON(regs != task_pt_regs(current));
>  
> -	work = READ_ONCE(ti->flags) & _TIF_WORK_SYSCALL_ENTRY;
> +	work = READ_ONCE(ti->flags);
>  
> -	if (unlikely(work & _TIF_SYSCALL_EMU))
> -		emulated = true;
> -
> -	if ((emulated || (work & _TIF_SYSCALL_TRACE)) &&
> -	    tracehook_report_syscall_entry(regs))
> -		return -1L;
> -
> -	if (emulated)
> -		return -1L;
> +	if (work & (_TIF_SYSCALL_TRACE | _TIF_SYSCALL_EMU)) {
> +		ret = tracehook_report_syscall_entry(regs);
> +		if (ret || (work & _TIF_SYSCALL_EMU))
> +			return -1L;
> +	}

Andy (or the other x86 folk), could I please get an ack on this patch? I
plan to queue this series through the arm64 tree (though if you want to
merge it separately, it looks like an independent clean-up with no
dependencies on the other patches).

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
