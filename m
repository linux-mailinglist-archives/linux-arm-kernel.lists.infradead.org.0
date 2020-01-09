Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E168A135C7F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 16:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ya8DRj0b3kTIIx2jhHFXh4b146OJ4KuMZIBZFfTGJQc=; b=cSnM5qD81CItk+
	CajHha2CXY3oaIs5yYsfovXfStToLLIQF7PB6gajx/efkDx2MrUimMHBaDi1t7SYN4fcw4Brfk13R
	PpUN61DHdBbpFoniRMX3iVKJAful4qHeBJ5yAOKSxdLQ6Jn4dCaVlNnkJoRDlfDVbAkKWQxa2L+4m
	WdBt5tb7kqdSW7ohyRL7sYqrIzXrxS+1mHA/gUxrnxihtcOe6SSEF8YxQf3SlpSyGfYip+qmq3CiJ
	bVmWRTlY9aTwi7FqQBFoxUFtcES4Vnsu8tfcEdEgWyXNoryFek1CCC/KWdT9Y7h4ymFfU2tKySlW8
	uq3FIHE3XVF5wjJHvYWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipZbg-0001x0-1q; Thu, 09 Jan 2020 15:20:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipZbO-0001I6-5u
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 15:20:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B0251FB;
 Thu,  9 Jan 2020 07:20:00 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D56C93F534;
 Thu,  9 Jan 2020 07:19:58 -0800 (PST)
Date: Thu, 9 Jan 2020 15:19:56 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: Re: [PATCH 13/17] arm64: entry: move common el0 entry/return work to C
Message-ID: <20200109151956.GG3112@lakrids.cambridge.arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-14-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108185634.1163-14-mark.rutland@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_072002_374914_3F513913 
X-CRM114-Status: GOOD (  18.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: keescook@chromium.org, maz@kernel.org, broonie@kernel.org,
 labbott@redhat.com, robin.murphy@arm.com, julien.thierry.kdev@gmail.com,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 06:56:30PM +0000, Mark Rutland wrote:
> Portions of common EL0 exception entry/return logic are handled in C
> while other parts are handled in assembly. Let's migrate the bulk of it
> to C so that it's easier to follow and maintain.
> 
> This patch moves the ret_to_user/work_pending logic to C. As that
> handled enabling singlestep for userspace, the matching disable is
> similarly factored out of the entry code. Additionally user_enter() is
> factored out of kernel_exit as all the corresponding user_enter() calls
> have already been converted to C.
> 
> Rather than add tedious boilerplate to each top-level exception handler
> to perform this entry/return work, a new EL0_HANDLER() handles this
> automatically. This takes the full name of each handler to keep them
> easy to find with grep, and also takes a name for the pt_regs argument
> so that we don't have a confusing implicit variable.
> 
> Since local_daif_mask() handles the GIC priority, we don't need to mess
> with this explicitly as we did in the old assembly, and the now unused
> gic_prio_kentry_setup macro can be removed.
> 
> Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: James Morse <james.morse@arm.com>
> Cc: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/assembler.h | 18 ----------
>  arch/arm64/include/asm/exception.h |  1 +
>  arch/arm64/kernel/entry-common.c   | 67 +++++++++++++++++++++++++++++++++-----
>  arch/arm64/kernel/entry.S          | 56 ++-----------------------------
>  arch/arm64/kernel/signal.c         |  3 +-
>  5 files changed, 64 insertions(+), 81 deletions(-)

> diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> index 220a7c3971d8..7f367d720ca4 100644
> --- a/arch/arm64/include/asm/exception.h
> +++ b/arch/arm64/include/asm/exception.h
> @@ -52,5 +52,6 @@ void do_el0_svc_compat(struct pt_regs *regs);
>  void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
>  			    struct pt_regs *regs);
>  void do_serror(struct pt_regs *regs, unsigned int esr);
> +void do_notify_resume(struct pt_regs *regs,  unsigned long thread_flags);

I've just realised it's probably better to move do_notify_resume() into
entry-common.c and make it static, so I'll spin a preparatory patch
which moves it.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
