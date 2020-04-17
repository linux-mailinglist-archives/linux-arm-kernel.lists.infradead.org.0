Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEA01AE023
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 16:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uzqbuQ0GFqIYpYobrkKedRlKyUMgEzPR6j6tP7HJ2/Y=; b=fvRRL6UaGr+vRV
	TAtEbDA6aFv5qXYt+okEWjvRFEjx3KudHbWLuhT8lFlsMgqQNYESTKpPFa30mlErqaVwfqRnEBhCz
	4Kye2ZI7w3FcGY3aY92nUtx4Op5CrHbsVBrxix2Al7BwFg3bxYKwzdZ139pv7EMwdmAcsTcsBONB3
	9Jb/KgQ8vF9auMl3UWEhp1oReE67rfo+nbojDbloXORFQTW1ttBCcMyGwWWbEjZkHnhcoym6UOXiG
	l4THQimCquyQylQ4swASM+2Ko6L+s68t0LRSJuJbN3buTjkXI/Mt1SrmlUi4uPaXr7rZCZ6qJZaBS
	EK8gLesC39Iv7+ru7vsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSGP-00010X-5n; Fri, 17 Apr 2020 14:46:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSGJ-0000zP-3i
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 14:46:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D964330E;
 Fri, 17 Apr 2020 07:46:33 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 061A33F73D;
 Fri, 17 Apr 2020 07:46:30 -0700 (PDT)
Date: Fri, 17 Apr 2020 15:46:21 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v11 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200417144620.GA9529@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
 <20200417100039.GS20730@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417100039.GS20730@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_074635_240610_220992E3 
X-CRM114-Status: GOOD (  30.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Juri Lelli <juri.lelli@redhat.com>, kernel-hardening@lists.openwall.com,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Sami Tolvanen <samitolvanen@google.com>, Laura Abbott <labbott@redhat.com>,
 Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peter,

On Fri, Apr 17, 2020 at 12:00:39PM +0200, Peter Zijlstra wrote:
> On Thu, Apr 16, 2020 at 09:12:37AM -0700, Sami Tolvanen wrote:
> > The graph tracer hooks returns by modifying frame records on the
> > (regular) stack, but with SCS the return address is taken from the
> > shadow stack, and the value in the frame record has no effect. As we
> > don't currently have a mechanism to determine the corresponding slot
> > on the shadow stack (and to pass this through the ftrace
> > infrastructure), for now let's disable SCS when the graph tracer is
> > enabled.
> > 
> > With SCS the return address is taken from the shadow stack and the
> > value in the frame record has no effect. The mcount based graph tracer
> > hooks returns by modifying frame records on the (regular) stack, and
> > thus is not compatible. The patchable-function-entry graph tracer
> > used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
> > to the shadow stack, and is compatible.
> > 
> > Modifying the mcount based graph tracer to work with SCS would require
> > a mechanism to determine the corresponding slot on the shadow stack
> > (and to pass this through the ftrace infrastructure), and we expect
> > that everyone will eventually move to the patchable-function-entry
> > based graph tracer anyway, so for now let's disable SCS when the
> > mcount-based graph tracer is enabled.
> > 
> > SCS and patchable-function-entry are both supported from LLVM 10.x.
> 
> SCS would actually provide another way to do return hooking. An arguably
> much saner model at that.
> 
> The 'normal' way is to (temporary) replace the on-stack return value,
> and then replace it back in the return handler. This is because we can't
> simply push a fake return on the stack, because that would wreck the
> expected stack layout of the regular function.
> 
> But there is nothing that would stop us from pushing an extra entry on
> the SCS. It would in fact be a much cleaner solution. The entry hook
> sticks an extra entry on the SCS, the function ignores what's on the
> normal stack and pops from the SCS, we return to the exit handler, which
> in turn pops from the SCS stack at which point we're back to regular.

For background: on arm64 we wanted to use DYNAMIC_FTRACE_WITH_REGS since
we already have to use that to handle pointer authentication, and didn't
want to gain more ways of implementing ftrace.

Arguably we should move the dependency into the arm64 Kconfig for
ARCH_SUPPORTS_SHADOW_CALL_STACK.

> The only 'funny' is that the exit handler itself should not push to the
> SCS, or we should frob the return-to-exit-handler such that it lands
> after the push.
> 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > ---
> >  arch/Kconfig | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 691a552c2cc3..c53cb9025ad2 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
> >  
> >  config SHADOW_CALL_STACK
> >  	bool "Clang Shadow Call Stack"
> > +	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
> >  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> >  	help
> >  	  This option enables Clang's Shadow Call Stack, which uses a
 
> AFAICT you also need to kill KRETPROBES, which plays similar games.

Hmm... how does KREPROBES work? If you can only mess with the return
address when probing the first instruction in the function, it'll just
work for SCS or pointer authentication, as the LR is used at that
instant. If KRETPROBES tries to mess with the return address elsewhere
it'd be broken today...

> And doesn't BPF also do stuff like this?

Can BPF mess with return addresses now!?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
