Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C521AE171
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5w4Hcu2UdbV6DEOgvdjoBnKZvdgRTjbVgMtJxysWIgo=; b=HkxF8Qc83Sq3uE
	VTjDSDiO8slXq6YeGHy2bXEIUYVVe1E/ojxrazj80PuH6ezTvNJIALvDWW/IgZFc/d5m743Dl3Yr2
	axJoI1tuuKbVGBzyFOSjMjPIEafoTYbSWpqLnII8nQTpyCuKBaA4+af5G+3ewWZcq4q6Zc0XtDaWI
	ZMMJbttxCqK7McwEUDJUOAvNTBY04PhK7uK3mH7SA/UNFXAd9YaNBc0BAVgG1DEUcFDL7D/weESPR
	JkQCjNTvrgAMveyJmOLfcOMFp9YxAYI9RawQ/w/bT3h98SnG57Lh0YzzYYmIkRorkXwUZ6BYb+55O
	DxLdJeTNkv+5Q5N6y2mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTCI-0005JF-2d; Fri, 17 Apr 2020 15:46:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTC8-0005IY-Cl
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 15:46:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F0C81FB;
 Fri, 17 Apr 2020 08:46:19 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 920063F73D;
 Fri, 17 Apr 2020 08:46:16 -0700 (PDT)
Date: Fri, 17 Apr 2020 16:46:14 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v11 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200417154613.GB9529@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
 <20200417100039.GS20730@hirez.programming.kicks-ass.net>
 <20200417144620.GA9529@lakrids.cambridge.arm.com>
 <20200417152645.GH20730@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417152645.GH20730@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_084620_890438_637FC975 
X-CRM114-Status: GOOD (  23.89  )
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

On Fri, Apr 17, 2020 at 05:26:45PM +0200, Peter Zijlstra wrote:
> On Fri, Apr 17, 2020 at 03:46:21PM +0100, Mark Rutland wrote:
> > > > diff --git a/arch/Kconfig b/arch/Kconfig
> > > > index 691a552c2cc3..c53cb9025ad2 100644
> > > > --- a/arch/Kconfig
> > > > +++ b/arch/Kconfig
> > > > @@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
> > > >  
> > > >  config SHADOW_CALL_STACK
> > > >  	bool "Clang Shadow Call Stack"
> > > > +	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
> > > >  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > > >  	help
> > > >  	  This option enables Clang's Shadow Call Stack, which uses a
> >  
> > > AFAICT you also need to kill KRETPROBES, which plays similar games.
> > 
> > Hmm... how does KREPROBES work? If you can only mess with the return
> > address when probing the first instruction in the function, it'll just
> > work for SCS or pointer authentication, as the LR is used at that
> > instant. If KRETPROBES tries to mess with the return address elsewhere
> > it'd be broken today...
> 
> To be fair, I've not looked at the arm64 implementation. x86 does gross
> things like ftrace does. On x86 ftrace_graph and kretprobe also can't
> be on at the same time for the same function, there's some yuck around
> there.

I can imagine the same holds true for us there.

> Rostedt was recently talking about cleaning some of that up.
> 
> But if kretprobe can work on arm64, then ftrace_graph can too, but I
> think that links back to what you said earlier, you didn't want more
> ftrace variants or something.

I just want to avoid yet another implementation of the underlying
mechanism. For DYNAMIC_FTRACE_WITH_REGS we can mess with the LR before
pauth or SCS sees it, so those definitely work.

If KRETPROBES works by messing with the LR at the instnat the function
is entered, that should work similarly. If it works by replacing the
RET it should also work out since any pauth/SCS work will have been
undone by that point. If it attempts to mess with the return address in
the middle of a function then it's not reliable today.

I'll take a look, since 

> > > And doesn't BPF also do stuff like this?
> > 
> > Can BPF mess with return addresses now!?
> 
> At least on x86 I think it does. But what do I know, I can't operate
> that stuff. Rostedt might know.

Sounds like I might need to do some digging...

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
