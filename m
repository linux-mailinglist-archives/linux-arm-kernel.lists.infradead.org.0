Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DA7D6C3B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 01:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfqKwc+3uXjw5W70AcjRJ0h0Fne4FsIBc+IUjtUfxvc=; b=Vcju1+ZM7esWiz
	X6oRfEr5tmMQb0YWQnFJjhxfBzHu8zoTSOJ5RroL6WZS0G844GFLTvCEDhUEV6VQ9Sp6CSsUEJHhS
	w1F6cXzcCXmY6N6JatFQZrUcFRNmYbDXB3QL+w5rIMIG1ria0Kns+W2+5kBqASOwlnblmxjayuWJq
	rdUPef5DvsJXZ1BsxPHOMxNKaLbKkkslo9ogqE8llt4Sgqa2csRJG9PjYgcAWmvFnbezk0Ro7hCbd
	50Fxaa67wOo85pjvBpYm2Xip/OTPGW0oxW38ywqjXkhz5ZnolPeHEUDgm6mGpoCHJq87g6eqOG4Qv
	uW0mfBW3KjxaSQFSTOsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKA9X-00088E-CZ; Mon, 14 Oct 2019 23:53:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKA9N-00087a-Qr
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 23:53:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E43C92064B;
 Mon, 14 Oct 2019 23:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571097197;
 bh=pn1UXmSOevMPTy/YZla2/jaLZUV20NSEdfZVmV8uXa4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wo9m7QA3eBjJJ0G2D2VYCrNKZq0cn27GjXbQasgCNck3ybUVc5rPN/R7ai/3BScEC
 qLXRlH5nKrDvJpl+RbMaSq9ycaaqTXt/EaNTSY5k3HryI8Dx0xudFsY5yTUosv3Y2r
 ka/YXx9S8Wmr72eU8HTyhUfemEVGHplfQtnBKqaA=
Date: Tue, 15 Oct 2019 00:53:12 +0100
From: Will Deacon <will@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] arm64: entry.S: Do not preempt from IRQ before all
 cpufeatures are enabled
Message-ID: <20191014235312.gqb3v7456aouss2k@willie-the-truck>
References: <20191010163447.136049-1-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010163447.136049-1-james.morse@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_165317_912773_045ECB33 
X-CRM114-Status: GOOD (  23.08  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Julien Thierry <julien.thierry@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 05:34:47PM +0100, James Morse wrote:
> From: Julien Thierry <julien.thierry@arm.com>
> 
> Preempting from IRQ-return means that the task has its PSTATE saved
> on the stack, which will get restored when the task is resumed and does
> the actual IRQ return.
> 
> However, enabling some CPU features requires modifying the PSTATE. This
> means that, if a task was scheduled out during an IRQ-return before all
> CPU features are enabled, the task might restore a PSTATE that does not
> include the feature enablement changes once scheduled back in.
> 
> * Task 1:
> 
> PAN == 0 ---|                          |---------------
>             |                          |<- return from IRQ, PSTATE.PAN = 0
>             | <- IRQ                   |
>             +--------+ <- preempt()  +--
>                                      ^
>                                      |
>                                      reschedule Task 1, PSTATE.PAN == 1
> * Init:
>         --------------------+------------------------
>                             ^
>                             |
>                             enable_cpu_features
>                             set PSTATE.PAN on all CPUs
> 
> Worse than this, since PSTATE is untouched when task switching is done,
> a task missing the new bits in PSTATE might affect another task, if both
> do direct calls to schedule() (outside of IRQ/exception contexts).
> 
> Fix this by preventing preemption on IRQ-return until features are
> enabled on all CPUs.
> 
> This way the only PSTATE values that are saved on the stack are from
> synchronous exceptions. These are expected to be fatal this early, the
> exception is BRK for WARN_ON(), but as this uses do_debug_exception()
> which keeps IRQs masked, it shouldn't call schedule().
> 
> Signed-off-by: Julien Thierry <julien.thierry@arm.com>
> [Replaced a really cool hack, with a simpler branch->nop transition,
>  expanded commit message with Julien's cover-letter ascii art]
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
> I think we don't see this happen because cpufeature enable calls happen
> early, when there is not a lot going on. I couldn't hit it when trying.
> I believe Julien did, by adding sleep statements(?) to kthread().
> 
> If we want to send this to stable, the first feature that depended on this
> was PAN:
> Fixes: 7209c868600b ("arm64: mm: Set PSTATE.PAN from the cpu_enable_pan() call")
> 
> 
>  arch/arm64/kernel/cpufeature.c | 8 ++++++++
>  arch/arm64/kernel/entry.S      | 7 +++++++
>  2 files changed, 15 insertions(+)

[...]

> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
> index 84a822748c84..7ab139c44ca5 100644
> --- a/arch/arm64/kernel/entry.S
> +++ b/arch/arm64/kernel/entry.S
> @@ -670,6 +670,13 @@ el1_irq:
>  	irq_handler
>  
>  #ifdef CONFIG_PREEMPT
> +alternative_cb arm64_cpufeature_cb_nop
> +	/*
> +	 * Prevent preempt from IRQ until cpufeatures are enabled. This branch
> +	 * is replaced by a nop by the callback.
> +	 */
> +	b	1f
> +alternative_cb_end

Could we simplify this by intercepting the branch to preempt_schedule_irq()
with a C function that looks at arm64_const_caps_ready?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
