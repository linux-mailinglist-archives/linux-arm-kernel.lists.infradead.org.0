Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454357C272
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 14:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eIa4UV6kNUu4daIba4ocWv9DL5lpoONDUQRtw/f1o7c=; b=t7tgqJGIywM4WR
	q6Exx8bOMRCvkTtjH3ZTrCGfuSlI4D0fRcZPe6IwWcFTCEM/UoyIOvd52DhBXk91g9s6ncgMPdt86
	PXQAbsiri19wxOiFySkHj5nw7VFuXac8EDA69fU8cfq4QPppsKQDHYOEwg784cJ44jC2/n8ROg4D9
	d/3TZ4vgvCz2zqYd321z1AycpPtw2jD52E8m5RK1TC0147tcuT3pFP+bhzpIyG4uCXl3VtXHeBUKe
	0Cc7IZxXre589veGJDG4J8cG8tUSL9KcUJYQqnNCrOLj0+y1QSILFHSXqx9/Z9R98Te5F23kdUlu+
	9XkqIVR6NrRp4KpwGjiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsoAt-0007TZ-80; Wed, 31 Jul 2019 12:57:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsoAl-0007T1-Ow
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 12:57:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 34DE2206B8;
 Wed, 31 Jul 2019 12:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564577859;
 bh=okXF5i5vaeExDoO318U4IQz1NUTULDtYpMjX5VybXa8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0gNz/z2N2FVKJSq5nKsfxQ6jkM5bXwbk5ejbg/oueGFf+66HxtP1VObGp+PPHvXcT
 FCqoVb+UTvs3fMs+tQ9QtSOVfexkt+fZ9rSzwg53vqD9CtvotI1ILU8g0mcNCNOeBK
 w8h++X9My6pAOdZdbUIMywBPN0q2a84InCI2zQ6U=
Date: Wed, 31 Jul 2019 13:57:33 +0100
From: Will Deacon <will@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH] arm64: debug: Make 'btc' and similar work in kdb
Message-ID: <20190731125733.op3y5j5psuj6pet3@willie-the-truck>
References: <20190730221800.28326-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730221800.28326-1-dianders@chromium.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_055739_824476_758A4D29 
X-CRM114-Status: GOOD (  16.71  )
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kgdb-bugreport@lists.sourceforge.net,
 Jason Wessel <jason.wessel@windriver.com>, linux-kernel@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Doug,

On Tue, Jul 30, 2019 at 03:18:00PM -0700, Douglas Anderson wrote:
> diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
> index 43119922341f..b666210fbc75 100644
> --- a/arch/arm64/kernel/kgdb.c
> +++ b/arch/arm64/kernel/kgdb.c
> @@ -148,6 +148,45 @@ sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *task)
>  	gdb_regs[32] = cpu_context->pc;
>  }
>  
> +void kgdb_call_nmi_hook(void *ignored)
> +{
> +	struct pt_regs *regs;
> +
> +	/*
> +	 * NOTE: get_irq_regs() is supposed to get the registers from
> +	 * before the IPI interrupt happened and so is supposed to
> +	 * show where the processor was.  In some situations it's
> +	 * possible we might be called without an IPI, so it might be
> +	 * safer to figure out how to make kgdb_breakpoint() work
> +	 * properly here.
> +	 */
> +	regs = get_irq_regs();
> +
> +	/*
> +	 * Some commands (like 'btc') assume that they can find info about
> +	 * a task in the 'cpu_context'.  Unfortunately that's only valid
> +	 * for sleeping tasks.  ...but let's make it work anyway by just
> +	 * writing the registers to the right place.  This is safe because
> +	 * nobody else is using the 'cpu_context' for a running task.
> +	 */
> +	current->thread.cpu_context.x19 = regs->regs[19];
> +	current->thread.cpu_context.x20 = regs->regs[20];
> +	current->thread.cpu_context.x21 = regs->regs[21];
> +	current->thread.cpu_context.x22 = regs->regs[22];
> +	current->thread.cpu_context.x23 = regs->regs[23];
> +	current->thread.cpu_context.x24 = regs->regs[24];
> +	current->thread.cpu_context.x25 = regs->regs[25];
> +	current->thread.cpu_context.x26 = regs->regs[26];
> +	current->thread.cpu_context.x27 = regs->regs[27];
> +	current->thread.cpu_context.x28 = regs->regs[28];
> +	current->thread.cpu_context.fp = regs->regs[29];
> +
> +	current->thread.cpu_context.sp = regs->sp;
> +	current->thread.cpu_context.pc = regs->pc;
> +
> +	kgdb_nmicallback(raw_smp_processor_id(), regs);
> +}

This is really gross... :/

Can you IPI the other CPUs instead and have them backtrace locally, like we
do for things like magic sysrq (sysrq_handle_showallcpus())?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
