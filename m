Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48002CC0DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 18:34:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x74H7firZz+BVbPSV3VB9B81+7GcktEPZGLeBnBttEU=; b=o3evnWHgVNIqSC
	iS0P3T4GQtjQEQkTCySXHNc+8CzlkgEyv4ziQyHLWn+c6wbAlxJxX3lKUxSrubMIsMShpFBlbBgzJ
	A/mdV9Aqv9wPpXnzukn/SqW2Rr4i0zDZbrRRHoG9XfsKULDQVPQ4NThsFUXcq2W0kZSxnQSYZxTsS
	uUy75HAAIh1xYyXIlPJDI6sKfl6QSVuLRtOJ7ICoaiZj3lmiyMWYncpgLXpWZGpKFX7S83/Rxu+IV
	bcgDmM1ZHNRmymRiq6jpGEvHgV+4BSzYCNIVO8sh2XQdLBQW/yVhCQ06PiMpz08NU0uYIQYSRzOrt
	ERyyIQH2jdEImSv8YmfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGQXI-0000zP-S9; Fri, 04 Oct 2019 16:34:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGQXA-0000yu-Q0
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 16:34:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 112161597;
 Fri,  4 Oct 2019 09:34:24 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28CA43F68E;
 Fri,  4 Oct 2019 09:34:23 -0700 (PDT)
Date: Fri, 4 Oct 2019 17:34:21 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH 2/8] arm64: remove __exception annotations
Message-ID: <20191004163420.GL34756@lakrids.cambridge.arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
 <20191003171642.135652-3-james.morse@arm.com>
 <20191004101717.GB34756@lakrids.cambridge.arm.com>
 <20191004231033.537af57806db6316b18cb0b5@kernel.org>
 <c2332ce4-6b0f-ee1a-ff48-59bba6afdd22@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c2332ce4-6b0f-ee1a-ff48-59bba6afdd22@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_093424_887478_4E6C9838 
X-CRM114-Status: GOOD (  19.29  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Will Deacon <will@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 04, 2019 at 05:08:11PM +0100, James Morse wrote:
> On 04/10/2019 15:10, Masami Hiramatsu wrote:
> > On Fri, 4 Oct 2019 11:17:17 +0100
> > Mark Rutland <mark.rutland@arm.com> wrote:
> >> On Thu, Oct 03, 2019 at 06:16:36PM +0100, James Morse wrote:
> >>> Since commit 732674980139 ("arm64: unwind: reference pt_regs via embedded
> >>> stack frame") arm64 has has not used the __exception annotation to dump
> >>> the pt_regs during stack tracing. in_exception_text() has no callers.
> >>>
> >>> This annotation is only used to blacklist kprobes, it means the same as
> >>> __kprobes.
> >>>
> >>> Section annotations like this require the functions to be grouped
> >>> together between the start/end markers, and placed according to
> >>> the linker script. For kprobes we also have NOKPROBE_SYMBOL() which
> >>> logs the symbol address in a section that kprobes parses and
> >>> blacklists at boot.
> >>>
> >>> Using NOKPROBE_SYMBOL() instead lets kprobes publish the list of
> >>> blacklisted symbols, and saves us from having an arm64 specific
> >>> spelling of __kprobes.
> 
> >>> diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> >>> index a17393ff6677..b0b3ba56e919 100644
> >>> --- a/arch/arm64/include/asm/exception.h
> >>> +++ b/arch/arm64/include/asm/exception.h
> >>
> >> [...]
> >>
> >>> -asmlinkage void __exception do_debug_exception(unsigned long addr_if_watchpoint,
> >>> -					       unsigned int esr,
> >>> -					       struct pt_regs *regs)
> >>> +asmlinkage void do_debug_exception(unsigned long addr_if_watchpoint,
> >>> +				   unsigned int esr, struct pt_regs *regs)
> >>>  {
> >>>  	const struct fault_info *inf = esr_to_debug_fault_info(esr);
> >>>  	unsigned long pc = instruction_pointer(regs);
> >>
> >> I assume you meant to add NOKPROBE_SYMBOL(do_debug_exception) here.
> >>
> >> Assuming so, and with that fixed up:
> >>
> >> Acked-by: Mark Rutland <mark.rutland@arm.com>
> > 
> > Good catch, if so, this looks good to me too.
> 
> I should have noted it in the commit message, but the NOKPROBE_SYMBOL(do_debug_exception)
> is already there! Added by commit 2dd0e8d2d2a15 ("arm64: Kprobes with single stepping
> support").
> 
> (kprobing the debug handler is so bad, we blacklist it twice!)

Ah; neat!

> I'll fix the commit message.
> 
> 
> > with that fixed up:
> > 
> > Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
> 
> I assume you're both happy for me to apply these tags.

Certainly!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
