Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 313EAE76E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 17:44:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M4VDH7ctLSQuYLQUQMX/uKBVCE+Hi+2KQXeBz4N9D4k=; b=etvieBgEvmv1Su
	IACdDBVvqO3V9mKAa2D03KHJp167DlhAzuvUmGTGO2HBOA88TWs8k747EqarRIKSym3MrAHS4eq+q
	qzNY2KOITrFXhZ3ZDBu5yzTn52jNLT0F4llTWuVf6LJ7eu8Nsgrz2yNZiJ7KfMQDnCTtp37xTksTE
	9gwxY49W535LHbty7pZImCsPdcGEXja77CFUT7J6sZCXrLBsNGVU+O1kQjYuycW5qJYirbmvKvaHx
	LVF1gY0jZTEvYHhN5Alt+oe9BDiROSMZqYQ6enN90nLs7Hk9s/qJHwX/EUzzeyo5VEfrPNYaU8Abj
	wVBcmrCN4w58Nt0PFEHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP87p-0001s9-4i; Mon, 28 Oct 2019 16:44:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP7zZ-0001hg-Jm
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 16:35:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F03761FB;
 Mon, 28 Oct 2019 09:35:39 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D03093F6C4;
 Mon, 28 Oct 2019 09:35:37 -0700 (PDT)
Date: Mon, 28 Oct 2019 16:35:33 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20191028163532.GA52213@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
 <20191025105643.GD40270@lakrids.cambridge.arm.com>
 <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_093541_788161_B2556889 
X-CRM114-Status: GOOD (  22.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 01:49:21PM -0700, Sami Tolvanen wrote:
> On Fri, Oct 25, 2019 at 3:56 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > > +#define SCS_END_MAGIC        0xaf0194819b1635f6UL
> >
> > Keyboard smash? ... or is there a prize for whoever figures out the
> > secret? ;)
> 
> It's a random number, so if someone figures out a secret in it,
> they'll definitely deserve a prize. :)

I'll Cc some treasure hunters. :)

> > > diff --git a/kernel/fork.c b/kernel/fork.c
> > > index bcdf53125210..ae7ebe9f0586 100644
> > > --- a/kernel/fork.c
> > > +++ b/kernel/fork.c
> > > @@ -94,6 +94,7 @@
> > >  #include <linux/livepatch.h>
> > >  #include <linux/thread_info.h>
> > >  #include <linux/stackleak.h>
> > > +#include <linux/scs.h>
> >
> > Nit: alphabetical order, please (this should come before stackleak.h).
> 
> The includes in kernel/fork.c aren't in alphabetical order, so I just
> added this to the end here.

Fair enough. It looked otherwise in the context, and we generally aim
for that as a soft rule.

[...]

> > > +static inline void *__scs_base(struct task_struct *tsk)
> > > +{
> > > +     return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > +}
> >
> > We only ever assign the base to task_scs(tsk), with the current live
> > value being in a register that we don't read. Are we expecting arch code
> > to keep this up-to-date with the register value?
> >
> > I would have expected that we just leave this as the base (as we do for
> > the regular stack in the task struct), and it's down to arch code to
> > save/restore the current value where necessary.
> >
> > Am I missing some caveat with that approach?
> 
> To keep the address of the currently active shadow stack out of
> memory, the arm64 implementation clears this field when it loads x18
> and saves the current value before a context switch. The generic code
> doesn't expect the arch code to necessarily do so, but does allow it.
> This requires us to use __scs_base() when accessing the base pointer
> and to reset it in idle tasks before they're reused, hence
> scs_task_reset().

Ok. That'd be worth a comment somewhere, since it adds a number of
things which would otherwise be unnecessary.

IIUC this assumes an adversary who knows the address of a task's
thread_info, and has an arbitrary-read (to extract the SCS base from
thead_info) and an arbitrary-write (to modify the SCS area).

Assuming that's the case, I don't think this buys much. If said
adversary controls two userspace threads A and B, they only need to wait
until A is context-switched out or in userspace, and read A's SCS base
using B.

Given that, I'd rather always store the SCS base in the thread_info, and
simplify the rest of the code manipulating it.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
