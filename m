Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A414E72F9B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 15:09:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qwMAV6Nd2S7KpSJ63cpvHCTuUhfF/83Q4L01tf4eG1M=; b=D9+6rq4TDJEvCi
	YgVQoKBQFrOPXgyUKshNxotS3RC0eSuxn7/F3+BRQ8eHojZRr4g+RHRg4ezRYBtx3b5oGYcxijZDl
	a0kJ1StrlyIZGaHnROHN0VwfZLOfnNESu8KmNiA1tIeeKznnWy/D9UtFuYsV04uMsvtQkQtG27xlE
	09i8BhmIgsFa+6grJeDVPQJ8Eu2mSbsX0DxBVougtS+I3wDDogeqtkfzF5bHg2GCNigbjkfbLZsCy
	8yRrzGv1SqVjqiDME/H00qfCGRdSHNOeqekHsIBEnUgVVfz4GuQoHU8Z4BjVEUwiMp17yToZXIZvK
	U9zcgZQXDnB85CS/6VTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqH1n-0006sv-Tz; Wed, 24 Jul 2019 13:09:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqH1c-0006rx-6U
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 13:09:45 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0499022ADA;
 Wed, 24 Jul 2019 13:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563973783;
 bh=HQnELIgl3TdnQCh5BeCoBmx1g3lpU2g4+Ts605esKAE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=fykQJNjKSpXHIBUGMy9nSLhbwbWK0GooK/ySJc6dPvFbbJmHIkBmDwzsZCHmzuFUS
 5q9znIjMc+mOmHsh2LI06Mgoyaze1kjv4tZH2YK8MeNXi89JqFDWoCgK6y/xSD616H
 +G+Q9qyUHSO2nv7u4Y+Qb2Ad3G5s6U9EZN9tddxI=
Date: Wed, 24 Jul 2019 22:09:38 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2 1/4] arm64: kprobes: Recover pstate.D in single-step
 exception handler
Message-Id: <20190724220938.69cb2c3231c8b49bb1197638@kernel.org>
In-Reply-To: <9bb27cda-dac9-eaca-f028-e1c82b9f7a3f@arm.com>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
 <156378171555.12011.2511666394591527888.stgit@devnote2>
 <9bb27cda-dac9-eaca-f028-e1c82b9f7a3f@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_060944_273073_14006494 
X-CRM114-Status: GOOD (  22.69  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 23 Jul 2019 17:03:47 +0100
James Morse <james.morse@arm.com> wrote:

> Hi!
> 
> On 22/07/2019 08:48, Masami Hiramatsu wrote:
> > On arm64, if a nested kprobes hit, it can crash the kernel with below
> > error message.
> > 
> > [  152.118921] Unexpected kernel single-step exception at EL1
> > 
> > This is because commit 7419333fa15e ("arm64: kprobe: Always clear
> > pstate.D in breakpoint exception handler") unmask pstate.D for
> > doing single step but does not recover it after single step in
> > the nested kprobes.
> 
> > That is correct *unless* any nested kprobes
> > (single-stepping) runs inside other kprobes user handler.
> 
> (I don't think this is correct, its just usually invisible as PSTATE.D is normally clear)

Ah, right.

> 
> 
> > When the 1st kprobe hits, do_debug_exception() will be called. At this
> > point, debug exception (= pstate.D) must be masked (=1). When the 2nd
> >  (nested) kprobe is hit before single-step of the first kprobe, it
> > unmask debug exception (pstate.D = 0) and return.
> > Then, when the 1st kprobe setting up single-step, it saves current
> > DAIF, mask DAIF, enable single-step, and restore DAIF.
> > However, since "D" flag in DAIF is cleared by the 2nd kprobe, the
> > single-step exception happens soon after restoring DAIF.
> 
> This is pretty complicated. Just to check I've understood this properly:
> Stepping on a kprobe in a kprobe-user's pre_handler will cause the remainder of the
> handler (the first one) to run with PSTATE.D clear. Once we enable single-step, we start
> stepping the debug handler, and will never step the original kprobe'd instruction.

Yes, that's correct. I saw the single stepping happens on right after recover
the saved daif.

> 
> This is describing the most complicated way that this problem shows up! (I agree its also
> the worst)
> 
> I can get this to show up with just one kprobe. (function/file names here are meaningless):
> 
> | static int wibble(struct seq_file *m, void *discard)
> | {
> |        unsigned long d, flags;
> |
> |        flags = local_daif_save();
> |
> |        kprobe_me();
> |        d = read_sysreg(daif);
> |        local_daif_restore(flags);
> |
> |        seq_printf(m, "%lx\n", d);
> |
> |        return 0;
> | }
> 
> plumbed into debugfs, then kicked using the kprobe_example module:
> | root@adam:/sys/kernel/debug# cat wibble
> | 3c0
> 
> | root@adam:/sys/kernel/debug# insmod ~morse/kprobe_example.ko symbol=kprobe_me
> | [   69.478098] Planted kprobe at [..]
> | root@adam:/sys/kernel/debug# cat wibble
> | [   71.478935] <kprobe_me> pre_handler: p->addr = [..], pc = [..], pstate = 0x600003c5
> | [   71.488942] <kprobe_me> post_handler: p->addr = [..], pstate = 0x600001c5
> | 1c0
> | root@adam:/sys/kernel/debug#
> 
> This is problem for any code that had debug masked, not just kprobes.

Agreed.

> 
> Can we start the commit-message with the simplest description of the problem: kprobes
> manipulates the interrupted PSTATE for single step, and doesn't restore it.

Thanks for making it clearer :)

> 
> (trying to understand this bug through kprobe's interaction with itself is hard!)
> 
> 
> > To solve this issue, this stores all DAIF bits and restore it
> > after single stepping.
> 
> 
> > diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> > index bd5dfffca272..348e02b799a2 100644
> > --- a/arch/arm64/kernel/probes/kprobes.c
> > +++ b/arch/arm64/kernel/probes/kprobes.c
> > @@ -29,6 +29,8 @@
> >  
> >  #include "decode-insn.h"
> >  
> > +#define PSR_DAIF_MASK	(PSR_D_BIT | PSR_A_BIT | PSR_I_BIT | PSR_F_BIT)
> 
> We should probably move this to daifflags.h. Its going to be useful to other series too.

OK.

> 
> 
> Patch looks good!
> Reviewed-by: James Morse <james.morse@arm.com>
> Tested-by: James Morse <james.morse@arm.com>
> 
> (I haven't tried to test the nested kprobes case...)

OK, I'll update and resend it.

Thank you!

> 
> 
> Thanks,
> 
> James


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
