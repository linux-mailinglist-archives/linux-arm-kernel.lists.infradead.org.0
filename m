Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B00F16E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:25:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftwKn7NUO1Zv9yicBggeMSgG/AVZyGIgmr+i1qNkMU4=; b=QZ/Rz0RpRVngnC
	K3R7pUGzVzdT14Z+DurjFpid6ljddkA8dEY+k/hBi15iAaoD/FgAC/HWewj/bI+YDYQO7P3kSfn03
	1legcy8iralvjuXBVNcR+8p33OSgfb2cRyoF3KyMIeQFL5RFN2ZpJguZD4FN8czwGdS6wjaRNPZg+
	lugaCchA+uTN+/Ylu3dmZE4/O0DjNFOsXRv+uQRGIiJDkEnunJxoXdbxRGmYgNBCHgKwRxYKhnh27
	8xMRksoVpdVoZTx/OGlh1PNTRtOFaByy861BjEq4uCeyUjRfgEjbafKnaoK8Z0GtO4Ss6KrWo1yev
	QcoZiXzOGTd1CAXU9NEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLJS-0002lU-06; Wed, 06 Nov 2019 13:25:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLJL-0002kI-LF
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 13:25:25 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D3EA21D7F;
 Wed,  6 Nov 2019 13:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573046722;
 bh=uv8hUmh6ncxpuKvxrxfi4R6VPvr+dCvkWzsGjjJTEC8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pcAR6fNJha9ieBKnJHttNjn+7tKtiaWUhgLYjUFs7st2ied/tjEb3nDJYWcHwIa8Z
 si4qk8wAMhoT1OLUwot7OMn7TMrzTia3LB2Y94iaO+TlhwSeazyD9ZfUA/1sWsniAb
 4RYOLS2bmE2krTU+GKDHOC8Q4sLJ1UkhUvclZ3oo=
Date: Wed, 6 Nov 2019 13:25:17 +0000
From: Will Deacon <will@kernel.org>
To: Dmitry Safonov <dima@arista.com>
Subject: Re: [PATCH 09/50] arm64: Add loglvl to dump_backtrace()
Message-ID: <20191106132516.GC5808@willie-the-truck>
References: <20191106030542.868541-1-dima@arista.com>
 <20191106030542.868541-10-dima@arista.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106030542.868541-10-dima@arista.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_052523_735074_EA7F28A5 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Petr Mladek <pmladek@suse.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>, Russell King <linux@armlinux.org.uk>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Jiri Slaby <jslaby@suse.com>, Andrew Morton <akpm@linux-foundation.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 06, 2019 at 03:05:00AM +0000, Dmitry Safonov wrote:
> Currently, the log-level of show_stack() depends on a platform
> realization. It creates situations where the headers are printed with
> lower log level or higher than the stacktrace (depending on
> a platform or user).
> 
> Furthermore, it forces the logic decision from user to an architecture
> side. In result, some users as sysrq/kdb/etc are doing tricks with
> temporary rising console_loglevel while printing their messages.
> And in result it not only may print unwanted messages from other CPUs,
> but also omit printing at all in the unlucky case where the printk()
> was deferred.
> 
> Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
> an easier approach than introducing more printk buffers.
> Also, it will consolidate printings with headers.
> 
> Add log level argument to dump_backtrace() as a preparation for
> introducing show_stack_loglvl().
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> [1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
> Signed-off-by: Dmitry Safonov <dima@arista.com>
> ---
>  arch/arm64/include/asm/stacktrace.h |  3 ++-
>  arch/arm64/kernel/process.c         |  2 +-
>  arch/arm64/kernel/traps.c           | 17 +++++++++--------
>  3 files changed, 12 insertions(+), 10 deletions(-)

[...]

> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index 34739e80211b..59072c7b9fb4 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -52,9 +52,9 @@ static const char *handler[]= {
>  
>  int show_unhandled_signals = 0;
>  
> -static void dump_backtrace_entry(unsigned long where)
> +static void dump_backtrace_entry(unsigned long where, const char *loglvl)
>  {
> -	printk(" %pS\n", (void *)where);
> +	printk("%s %pS\n", loglvl, (void *)where);
>  }
>  
>  static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
> @@ -82,12 +82,13 @@ static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
>  	printk("%sCode: %s\n", lvl, str);
>  }
>  
> -void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
> +void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
> +		    const char *loglvl)
>  {
>  	struct stackframe frame;
>  	int skip = 0;
>  
> -	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
> +	printk("%s%s(regs = %p tsk = %p)\n", loglvl, __func__, regs, tsk);

This one needs to stay as pr_debug().

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
