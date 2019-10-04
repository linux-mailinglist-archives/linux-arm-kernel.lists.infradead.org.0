Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9F8CB80A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 12:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YkGijLSsMl/M8Y2RFhCflKW1buywIrEsASR2NJKs0Ks=; b=HZMH2WKf2TqHKB
	91UDz8pfujNYDzBV0hqZD6ndXn+w+78Ql/ZZO0xIULWy97z5G81arac6LHut527bQvfphpzLpAZIk
	waGKypbg3h6j2U1kbtFPkGcloNiKiFnN/B65+JYCFntH9HFsplfeYPK2eXiSzvYnicqFkNl2y23Zy
	f+OTvIV5gjYuDx6M0eCqgu8S/FahXhNWlARKtv4gCwtNrZ83NPO9UmTerlooQ137mLrN4TMfHHL92
	QI6c98ViUHF8zsipPsxQReZdmfdQ6XL9euJ302X6kAfTriulRItctDb4nOO8VSXPu5G6FlBeiyfUI
	2h9W60pxIcBe2z/3oIyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGKeU-0007l5-3K; Fri, 04 Oct 2019 10:17:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGKeL-0007kh-Cm
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 10:17:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C66C715A1;
 Fri,  4 Oct 2019 03:17:20 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DD54C3F706;
 Fri,  4 Oct 2019 03:17:19 -0700 (PDT)
Date: Fri, 4 Oct 2019 11:17:17 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 2/8] arm64: remove __exception annotations
Message-ID: <20191004101717.GB34756@lakrids.cambridge.arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
 <20191003171642.135652-3-james.morse@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191003171642.135652-3-james.morse@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_031725_478309_F1AEA475 
X-CRM114-Status: GOOD (  18.01  )
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

On Thu, Oct 03, 2019 at 06:16:36PM +0100, James Morse wrote:
> Since commit 732674980139 ("arm64: unwind: reference pt_regs via embedded
> stack frame") arm64 has has not used the __exception annotation to dump
> the pt_regs during stack tracing. in_exception_text() has no callers.
> 
> This annotation is only used to blacklist kprobes, it means the same as
> __kprobes.
> 
> Section annotations like this require the functions to be grouped
> together between the start/end markers, and placed according to
> the linker script. For kprobes we also have NOKPROBE_SYMBOL() which
> logs the symbol address in a section that kprobes parses and
> blacklists at boot.
> 
> Using NOKPROBE_SYMBOL() instead lets kprobes publish the list of
> blacklisted symbols, and saves us from having an arm64 specific
> spelling of __kprobes.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> Cc: Masami Hiramatsu <mhiramat@kernel.org>
> 
> ---
> (__exception_irq_entry means no-kprobes and optionally in a section
>  ftrace can use to pretty-print interrupt handler boundaries.)
> ---
>  arch/arm64/include/asm/exception.h |  4 ++--
>  arch/arm64/include/asm/traps.h     | 10 ---------
>  arch/arm64/kernel/probes/kprobes.c |  4 ----
>  arch/arm64/kernel/traps.c          | 10 ++++++---
>  arch/arm64/kernel/vmlinux.lds.S    |  3 ---
>  arch/arm64/mm/fault.c              | 34 +++++++++++++++---------------
>  6 files changed, 26 insertions(+), 39 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> index a17393ff6677..b0b3ba56e919 100644
> --- a/arch/arm64/include/asm/exception.h
> +++ b/arch/arm64/include/asm/exception.h

[...]

> -asmlinkage void __exception do_debug_exception(unsigned long addr_if_watchpoint,
> -					       unsigned int esr,
> -					       struct pt_regs *regs)
> +asmlinkage void do_debug_exception(unsigned long addr_if_watchpoint,
> +				   unsigned int esr, struct pt_regs *regs)
>  {
>  	const struct fault_info *inf = esr_to_debug_fault_info(esr);
>  	unsigned long pc = instruction_pointer(regs);

I assume you meant to add NOKPROBE_SYMBOL(do_debug_exception) here.

Assuming so, and with that fixed up:

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
