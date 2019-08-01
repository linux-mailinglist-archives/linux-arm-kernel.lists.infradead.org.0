Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E487DD71
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 16:08:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2F7DAvZFnIoV0kM5oM5740Gy2HiSbG4OZ+EuE607+w=; b=S4BU64RKq+iNTp
	X3caVOVuEek/WLy4YFW038AQyk+bJHeZK+EA6DDsAP2WXPeIqByohD+xYHrnkpAnxrC7QdxlSHiHD
	cb7yB0Ff86Dz15rtn45eOXoyQa+Bye31ocLYdDRFwgRXrR7UZsQowW3eogQ0KmEOo5zAQi8F3oeNr
	sqKVjyfDeFs29LxBPzQof6OAwF8gaCXH75B2MP7DLOrOAHkkWDiXOq21bhyBTpEfkL2rX5Vx/6ITA
	4I/wJt8FW1gxIBASbLkfz+DY1PwPiuUDw4r4ihyVdWoByMoKXGT4GBo3xmjlTialHpjb7K73J88i0
	XCyHW+Q3fE4z4TFET+MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htBl9-00089C-9G; Thu, 01 Aug 2019 14:08:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htBkn-0007y6-D5
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 14:08:26 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A220720679;
 Thu,  1 Aug 2019 14:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564668504;
 bh=IXX2z3LZp9/vh6A4fK4Aj8M5DxOuM9+ZGyNm+tX+k/4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pm+No2ALbNs9D3JreUMGhHDgHvV3biwf7mnRH8qzi9I1RVHSjqyh5YskaCxmu8kYo
 NCLqpdwJ/Ba06p49XKSvpMUCc85N3f4O02ZpbUBh0Ijkk1TNIti22T7W1c9YS+Ctyb
 cvO99qd1mQuHyQFpT6gORgPt9mR4kon+2lKfkQss=
Date: Thu, 1 Aug 2019 23:08:18 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 1/4] arm64: kprobes: Recover pstate.D in single-step
 exception handler
Message-Id: <20190801230818.72fadeea8a58d1f657179b30@kernel.org>
In-Reply-To: <20190801121622.vs57a6e2syklyr3z@willie-the-truck>
References: <156404254387.2020.886452004489353899.stgit@devnote2>
 <156404255444.2020.3301023170351823334.stgit@devnote2>
 <20190801121622.vs57a6e2syklyr3z@willie-the-truck>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_070825_477937_5FCD6794 
X-CRM114-Status: GOOD (  18.95  )
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Matt Hart <matthew.hart@linaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 1 Aug 2019 13:16:22 +0100
Will Deacon <will@kernel.org> wrote:

> On Thu, Jul 25, 2019 at 05:15:54PM +0900, Masami Hiramatsu wrote:
> > kprobes manipulates the interrupted PSTATE for single step, and
> > doesn't restore it. Thus, if we put a kprobe where the pstate.D
> > (debug) masked, the mask will be cleared after the kprobe hits.
> > 
> > Moreover, in the most complicated case, this can lead a kernel
> > crash with below message when a nested kprobe hits.
> > 
> > [  152.118921] Unexpected kernel single-step exception at EL1
> > 
> > When the 1st kprobe hits, do_debug_exception() will be called.
> > At this point, debug exception (= pstate.D) must be masked (=1).
> > But if another kprobes hits before single-step of the first kprobe
> > (e.g. inside user pre_handler), it unmask the debug exception
> > (pstate.D = 0) and return.
> > Then, when the 1st kprobe setting up single-step, it saves current
> > DAIF, mask DAIF, enable single-step, and restore DAIF.
> > However, since "D" flag in DAIF is cleared by the 2nd kprobe, the
> > single-step exception happens soon after restoring DAIF.
> > 
> > This has been introduced by commit 7419333fa15e ("arm64: kprobe:
> > Always clear pstate.D in breakpoint exception handler")
> > 
> > To solve this issue, this stores all DAIF bits and restore it
> > after single stepping.
> > 
> > Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> > Fixes: commit 7419333fa15e ("arm64: kprobe: Always clear pstate.D in breakpoint exception handler")
> > Reviewed-by: James Morse <james.morse@arm.com>
> > Tested-by: James Morse <james.morse@arm.com>
> > Signed-off-by: Masami Hiramatsu <mhiramat@kernel.org>
> > ---
> >   Changes in v3:
> >    - Update patch description
> >    - move PSR_DAIF_MASK in daifflags.h
> >   Changes in v2:
> >    - Save and restore all DAIF flags.
> >    - Operate pstate directly and remove spsr_set_debug_flag().
> > ---
> >  arch/arm64/include/asm/daifflags.h |    2 ++
> >  arch/arm64/kernel/probes/kprobes.c |   39 +++++-------------------------------
> >  2 files changed, 7 insertions(+), 34 deletions(-)
> 
> I'm seeing an allmodconfig build failure with this:
> 
> arch/arm64/kernel/probes/kprobes.c: In function ‘kprobes_save_local_irqflag’:
> arch/arm64/kernel/probes/kprobes.c:181:38: error: ‘DAIF_MASK’ undeclared (first use in this function); did you mean ‘BIT_MASK’?
>   kcb->saved_irqflag = regs->pstate & DAIF_MASK;
>                                       ^~~~~~~~~
>                                       BIT_MASK
> arch/arm64/kernel/probes/kprobes.c:181:38: note: each undeclared identifier is reported only once for each function it appears in
> arch/arm64/kernel/probes/kprobes.c: In function ‘kprobes_restore_local_irqflag’:
> arch/arm64/kernel/probes/kprobes.c:190:19: error: ‘DAIF_MASK’ undeclared (first use in this function); did you mean ‘BIT_MASK’?
>   regs->pstate &= ~DAIF_MASK;
>                    ^~~~~~~~~
>                    BIT_MASK
> make[2]: *** [scripts/Makefile.build:274: arch/arm64/kernel/probes/kprobes.o] Error 1

Oops, daifflags.h is included via kvm_host.h...
OK, kprobes.c must include daifflags.h directly in this case.

I'll update this patch too.

Thank you,

> 
> Will


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
