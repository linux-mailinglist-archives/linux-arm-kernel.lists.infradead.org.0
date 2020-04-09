Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 005A51A329C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 12:40:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EIBTLV8rLz41fJIJb7nea5axTQT5Mxc0FWaX3EyBDsI=; b=Y+F4e1OurDfuq+
	jHLnnaa0zpLWxLg6xN/p1UNByqrdRegdUPsVjA/Doi+aTVWnMHLE/69obKfqCpBQqhbs2MKAhGYWM
	8GD1j+8hLWcMDeRUjWEiqtfjK0f72wM8ARtf02Z/6a40ETLbRu9wQWVcozLX6738nuQLFdApkmUTj
	M0xIO8ivQP6hu9MqIpQdatQ3/OOJpSgewLUJIGfhugnlb99OuuF2Bqcj6On3R8sfYk5B7SJcovt/2
	QOUKcewfqkWNV5ZmJn9XusXLwXWF6jm6wCF0U36pztpNyGGz0il0LTYD18UDYct+HrH+7PJR93puK
	DRmvQFoNcPlDTPPehrdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMUbp-0004oU-15; Thu, 09 Apr 2020 10:40:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMUbj-0004nj-8H
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 10:40:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6697631B;
 Thu,  9 Apr 2020 03:40:25 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E2E0E3F73D;
 Thu,  9 Apr 2020 03:40:22 -0700 (PDT)
Date: Thu, 9 Apr 2020 11:40:16 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Wang Qing <wangqing@vivo.com>
Subject: Re: [PATCH] ARM64: fixed dump_backtrace() when task running on
 another cpu
Message-ID: <20200409104016.GA2183@C02TD0UTHF1T.local>
References: <1586425106-7369-1-git-send-email-wangqing@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586425106-7369-1-git-send-email-wangqing@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_034027_335884_B1AA115A 
X-CRM114-Status: GOOD (  17.32  )
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
Cc: opensource.kernel@vivo.com, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, jinho lim <jordan.lim@samsung.com>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Thu, Apr 09, 2020 at 05:38:16PM +0800, Wang Qing wrote:
> We cannot get FP and PC when the task is running on another CPU,
> task->thread.cpu_context is the last time the task was switched out,
> it's better to give a reminder than to provide wrong information.
> 
> Signed-off-by: Wang Qing <wangqing@vivo.com>

Are you seeing this happen anywhere in particular today?

> ---
>  arch/arm64/kernel/traps.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index cf402be..c04e3e8 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -106,6 +106,14 @@ void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
>  		start_backtrace(&frame,
>  				(unsigned long)__builtin_frame_address(0),
>  				(unsigned long)dump_backtrace);
> +	} else if (tsk->on_cpu) {
> +		/*
> +		 * The task is running in another cpu, so the call stack
> +		 * is changing and we cannot get it.
> +		 */
> +		pr_warn("tsk: %s is running in CPU%d, Don't call trace!\n",
> +			tsk->comm, tsk->cpu);

I believe that we can race with a concurrent write to tsk->cpu in both
cases above. We could use READ_ONCE() to get a snapshot, but we can
still race and miss cases where the task was runnning as we backtrace
it.

Thanks,
Mark.

> +		return;
>  	} else {
>  		/*
>  		 * task blocked in __switch_to
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
