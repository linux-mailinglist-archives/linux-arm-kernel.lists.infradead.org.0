Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C51B87291B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 09:39:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/+kWNt9xi0i7f4zvglB5jOnRHvyqmZ4lX5NkbAf4lE=; b=ALi3+XfL2n8z+Z
	Mc6Hw/IvFvUZ60rTpnTN93/AXDeQbWd661lHmDpMhHp9FpV11vyC97P2kBDgl1VARPSnP5LzDmwoY
	8AMXTWGzVd7pWyEgZb9+eiAo7luJ7372KMIsSV78NpRXeDStWvx67mUAOTIDtQpt4l0nlOdmI1FLH
	N0XuZ8zA6kmXZacymTmQi8lSdOoGDmQqa70F38AFIWlzJneguSOQwDlN4JgXebnIKtSarBFI4jd/b
	5cnemXphpkYZvcZ4gFAyHeALBM2jXe2u/+IRtN9yw3Bv1ZGWS8+8PMDtiKmnRVMGLbUF7bqIWZ7XK
	yN+QfLZ/Yeyg3MvhKQGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqBs8-0004ul-89; Wed, 24 Jul 2019 07:39:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqBru-0004tw-RV
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 07:39:24 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A905E2190F;
 Wed, 24 Jul 2019 07:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563953959;
 bh=3OKqgzs2jnudJmaJ1fcYoQAJqJWDM8bUh9bJQ45NSkI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=hA5wQJB8VlSNHaopfRrW7e8DmkAvgmuY5km09VFj+Yq3nKbkU5r4vaq9IyLnNcTim
 YnSznD43WXE5G8u+azjQMxtazOvFUZud+1Wtv9MKYQ7rIfGTkgRVoqsctKPR55XHyj
 wPF1nikOuCz6xxX345efpmjyHjkYjNnQBEJciH/g=
Date: Wed, 24 Jul 2019 16:39:14 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v2 2/4] arm64: unwind: Prohibit probing on return_address()
Message-Id: <20190724163914.c4a9cea2b5b9df3116e5e694@kernel.org>
In-Reply-To: <038c4b88-e7ef-aaab-0a79-5d7371719aa5@arm.com>
References: <156378170297.12011.17385386326930403235.stgit@devnote2>
 <156378172702.12011.1144595747474511323.stgit@devnote2>
 <038c4b88-e7ef-aaab-0a79-5d7371719aa5@arm.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_003922_910625_9DDA986F 
X-CRM114-Status: GOOD (  18.04  )
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

On Tue, 23 Jul 2019 17:04:21 +0100
James Morse <james.morse@arm.com> wrote:

> Hi,
> 
> On 22/07/2019 08:48, Masami Hiramatsu wrote:
> > Prohibit probing on return_address() and subroutines which
> > is called from return_address(), since the it is invoked from
> > trace_hardirqs_off() which is also kprobe blacklisted.
> 
> (Nits: "which are called" and "since it is")

Thanks!

> 
> 
> > diff --git a/arch/arm64/kernel/return_address.c b/arch/arm64/kernel/return_address.c
> > index b21cba90f82d..7f8a143268b0 100644
> > --- a/arch/arm64/kernel/return_address.c
> > +++ b/arch/arm64/kernel/return_address.c
> > @@ -8,6 +8,7 @@
> >  
> >  #include <linux/export.h>
> >  #include <linux/ftrace.h>
> > +#include <linux/kprobes.h>
> >  
> >  #include <asm/stack_pointer.h>
> >  #include <asm/stacktrace.h>
> > @@ -17,7 +18,7 @@ struct return_address_data {
> >  	void *addr;
> >  };
> >  
> > -static int save_return_addr(struct stackframe *frame, void *d)
> > +static nokprobe_inline int save_return_addr(struct stackframe *frame, void *d)
> 
> This nokprobe_inline ends up as __always_inline if kprobes is enabled.
> What do we expect the compiler to do with this? save_return_addr is passed as a
> function-pointer to walk_stackframe()... I don't see how the compiler can inline it!

Oops, that's my mistake. Then it should be NOKPROBE_SYMBOL.

> 
> This would be needed for on_accessible_stack().
> Should we cover ftrace_graph_get_ret_stack()?, or is that already in hand?

No, that is OK. It just covers that the functions which are involved in
the kprobe execution path. ftrace_graph_ret_stack() is out of the debug
exception handler.

Thank you,

> >  {
> >  	struct return_address_data *data = d;
> >  
> > @@ -52,3 +53,4 @@ void *return_address(unsigned int level)
> >  		return NULL;
> >  }
> >  EXPORT_SYMBOL_GPL(return_address);
> > +NOKPROBE_SYMBOL(return_address);
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
