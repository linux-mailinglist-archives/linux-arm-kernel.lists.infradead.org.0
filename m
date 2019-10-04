Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6214CBCBD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USPH/USS2OgMmwJ0LNoaN9JsJ+nTHTpwXSJ7IWtGFNw=; b=JkQEfP/MacdNPy
	QNEzF2+IZh+jAswiYoyoSQuk6ggdmT3p//MTTc9QwJsKO/sdavYFSNMVj2W1AM38jw7dy2uLaL0fM
	Lm2ANzyq/uzJ01uOCQRWbi+rD2kc8OC+SSOlUTIQrb4/lb+vDj2+ehG9ukBJ8JEiCX3XZxzyLUEDx
	Jn/ZQxkYkMwbQa0WtOsrVbmATsOvOqOfmFn82phH/VgBNX5Gvmjel4hvS5CSDMsHDrAS2DIRnjIzt
	UphhloTyCleR09T/t523wLh4tgkKVxPzIZf3yKYnDEj/gNRQD61PYYYJp42hY/pWbRZmnQhgXBv7z
	1j9Ue8Nk4XqAyLpno93g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOIB-0005vQ-0F; Fri, 04 Oct 2019 14:10:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOI2-0005ur-IB
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:10:39 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DE0E20873;
 Fri,  4 Oct 2019 14:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570198237;
 bh=hAaNJ5z75b1rpOrr+vUkhUPB9bpYDS+s+qpVlnfDz5I=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=j9oO/LiFkLw0DlZNm5hN5vTIgsIGGCVfmQt6+ayYciKrAtEL4JGDbRyAQJv5qL/mp
 Lsfd73c0hVS0QA6sKaNP60zUcJs5mSErrhPPLYUKVf9AexY6jwOd6I1N+cRfwSO05s
 bRHJu3y1v/ewq/tRMrUzdnkrpPhA0BF+9qFicIKo=
Date: Fri, 4 Oct 2019 23:10:33 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 2/8] arm64: remove __exception annotations
Message-Id: <20191004231033.537af57806db6316b18cb0b5@kernel.org>
In-Reply-To: <20191004101717.GB34756@lakrids.cambridge.arm.com>
References: <20191003171642.135652-1-james.morse@arm.com>
 <20191003171642.135652-3-james.morse@arm.com>
 <20191004101717.GB34756@lakrids.cambridge.arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_071038_638291_80865E02 
X-CRM114-Status: GOOD (  20.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 4 Oct 2019 11:17:17 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> On Thu, Oct 03, 2019 at 06:16:36PM +0100, James Morse wrote:
> > Since commit 732674980139 ("arm64: unwind: reference pt_regs via embedded
> > stack frame") arm64 has has not used the __exception annotation to dump
> > the pt_regs during stack tracing. in_exception_text() has no callers.
> > 
> > This annotation is only used to blacklist kprobes, it means the same as
> > __kprobes.
> > 
> > Section annotations like this require the functions to be grouped
> > together between the start/end markers, and placed according to
> > the linker script. For kprobes we also have NOKPROBE_SYMBOL() which
> > logs the symbol address in a section that kprobes parses and
> > blacklists at boot.
> > 
> > Using NOKPROBE_SYMBOL() instead lets kprobes publish the list of
> > blacklisted symbols, and saves us from having an arm64 specific
> > spelling of __kprobes.
> > 
> > Signed-off-by: James Morse <james.morse@arm.com>
> > Cc: Masami Hiramatsu <mhiramat@kernel.org>
> > 
> > ---
> > (__exception_irq_entry means no-kprobes and optionally in a section
> >  ftrace can use to pretty-print interrupt handler boundaries.)
> > ---
> >  arch/arm64/include/asm/exception.h |  4 ++--
> >  arch/arm64/include/asm/traps.h     | 10 ---------
> >  arch/arm64/kernel/probes/kprobes.c |  4 ----
> >  arch/arm64/kernel/traps.c          | 10 ++++++---
> >  arch/arm64/kernel/vmlinux.lds.S    |  3 ---
> >  arch/arm64/mm/fault.c              | 34 +++++++++++++++---------------
> >  6 files changed, 26 insertions(+), 39 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/exception.h b/arch/arm64/include/asm/exception.h
> > index a17393ff6677..b0b3ba56e919 100644
> > --- a/arch/arm64/include/asm/exception.h
> > +++ b/arch/arm64/include/asm/exception.h
> 
> [...]
> 
> > -asmlinkage void __exception do_debug_exception(unsigned long addr_if_watchpoint,
> > -					       unsigned int esr,
> > -					       struct pt_regs *regs)
> > +asmlinkage void do_debug_exception(unsigned long addr_if_watchpoint,
> > +				   unsigned int esr, struct pt_regs *regs)
> >  {
> >  	const struct fault_info *inf = esr_to_debug_fault_info(esr);
> >  	unsigned long pc = instruction_pointer(regs);
> 
> I assume you meant to add NOKPROBE_SYMBOL(do_debug_exception) here.
> 
> Assuming so, and with that fixed up:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>

Good catch, if so, this looks good to me too.
with that fixed up:

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

Thanks!

-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
