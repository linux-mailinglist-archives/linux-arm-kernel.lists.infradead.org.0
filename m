Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87602CB822
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nxZYrohONh7wY15a839ziWhidwZgFwcaNASKsScv0Bk=; b=LaJ0/w46Z5URH9
	yDohVoKDWlI6L7ctGsVVyzx+oUUyn50cj8K45JQbjPA76mpiVNxH1QMuxlOWkkMbcc+nGbGVbsmeB
	RWqXbzwBFsRtmn2b2RNbChGZqdhyHZ1LLjfLkkrtbOXdlBCLEJp1in/1erIzffNC38cno2AIXcQM3
	squv4PbBJ9MmdL2JwceQjtD8GeOIPPe0biL1NF25TDz8BrlTx6LQKR1f//XM/Ltbd2PJ3iyUsuye4
	ATloD8b2oW7HfObXLuyQxiaainKFlmhnFGF+ACu9v2ND4P+NNbO/JkkyDr/St7wnOFnSsFkaA3VO5
	wXJa5owl/wDwgRbNxzAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKjs-00026Y-9P; Fri, 04 Oct 2019 10:23:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKjk-00025z-0t
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:23:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB82D15A1;
 Fri,  4 Oct 2019 03:22:58 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DF9BE3F706;
 Fri,  4 Oct 2019 03:22:57 -0700 (PDT)
Date: Fri, 4 Oct 2019 11:22:55 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 3/8] arm64: Add prototypes for functions called by entry.S
Message-ID: <20191004102255.GC34756@lakrids.cambridge.arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
 <20191003171642.135652-4-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003171642.135652-4-james.morse@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_032300_109786_7BAFC428 
X-CRM114-Status: GOOD (  13.91  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 03, 2019 at 06:16:37PM +0100, James Morse wrote:
> Functions that are only called by assembly don't always have a
> C header file prototype.
> 
> Add the prototypes before moving the assembly callers to C.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  arch/arm64/include/asm/exception.h | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> index b0b3ba56e919..8bb3fe2d71a8 100644
> --- a/arch/arm64/include/asm/exception.h
> +++ b/arch/arm64/include/asm/exception.h
> @@ -31,5 +31,26 @@ static inline u32 disr_to_esr(u64 disr)
>  }
>  
>  asmlinkage void enter_from_user_mode(void);
> +asmlinkage void do_mem_abort(unsigned long addr, unsigned int esr,
> +			     struct pt_regs *regs);
> +asmlinkage void do_sp_pc_abort(unsigned long addr, unsigned int esr,
> +			       struct pt_regs *regs);
> +asmlinkage void do_undefinstr(struct pt_regs *regs);
> +asmlinkage void bad_mode(struct pt_regs *regs, int reason, unsigned int esr);
> +asmlinkage void do_debug_exception(unsigned long addr, unsigned int esr,
> +				   struct pt_regs *regs);

Trivial: potentially s/addr/addr_if_watchpoint/, since that got renamed
recently.

> +asmlinkage void do_fpsimd_acc(unsigned int esr, struct pt_regs *regs);
> +asmlinkage void do_sve_acc(unsigned int esr, struct pt_regs *regs);
> +asmlinkage void do_fpsimd_exc(unsigned int esr, struct pt_regs *regs);
> +asmlinkage void do_sysinstr(unsigned int esr, struct pt_regs *regs);
> +asmlinkage void do_sp_pc_abort(unsigned long addr, unsigned int esr,
> +			       struct pt_regs *regs);
> +asmlinkage void bad_el0_sync(struct pt_regs *regs, int reason,
> +			     unsigned int esr);
> +asmlinkage void do_cp15instr(unsigned int esr, struct pt_regs *regs);
> +asmlinkage void el0_svc_handler(struct pt_regs *regs);
> +asmlinkage void el0_svc_compat_handler(struct pt_regs *regs);
> +asmlinkage void do_el0_ia_bp_hardening(unsigned long addr,  unsigned int esr,
> +				       struct pt_regs *regs);

Otherwise those all look right, so either way:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

>  
>  #endif	/* __ASM_EXCEPTION_H */
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
