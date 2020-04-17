Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164F51AE110
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 17:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UqaTAXd7u4jktSkA3NEIfXHlfGWs6tDLd3BRozTEGcw=; b=sVuW68rVMIWAju
	kze2BMpbGoZ+S+XTMlcMQuVopncvd3XlKjpH7UGSKHSPhu5OYlDo/74l+Dl2Ewuqdh63C0CNPsAYw
	jI9X7uoE0hihIuN8ZSEol61W642i+4O/Yb6rXalZ5ETT7uxmWs4uOn6YT5M3y5Fwm3HqqYahXVlKj
	0QSZyup7/SAhOYHn4y/F9/mtuuD+suDvzGDa2YtHcukYdWlWaHx++WRLb988vITb5GocEMv28Nioc
	CSiw63y1N8CL3bEPDEDWcnO4Ev7Y2shbSFhEtJaHq/8dUT8z63lxzvp3nMz0r2Q3Z79wI8qdll30M
	ImC41xpxruh/bLXoAjbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPStb-0000Fh-83; Fri, 17 Apr 2020 15:27:11 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPStE-0008Sz-Ht; Fri, 17 Apr 2020 15:26:48 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id DF502304E03;
 Fri, 17 Apr 2020 17:26:45 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id BFFE02B12192B; Fri, 17 Apr 2020 17:26:45 +0200 (CEST)
Date: Fri, 17 Apr 2020 17:26:45 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v11 04/12] scs: disable when function graph tracing is
 enabled
Message-ID: <20200417152645.GH20730@hirez.programming.kicks-ass.net>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-5-samitolvanen@google.com>
 <20200417100039.GS20730@hirez.programming.kicks-ass.net>
 <20200417144620.GA9529@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200417144620.GA9529@lakrids.cambridge.arm.com>
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

On Fri, Apr 17, 2020 at 03:46:21PM +0100, Mark Rutland wrote:
> > > diff --git a/arch/Kconfig b/arch/Kconfig
> > > index 691a552c2cc3..c53cb9025ad2 100644
> > > --- a/arch/Kconfig
> > > +++ b/arch/Kconfig
> > > @@ -542,6 +542,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
> > >  
> > >  config SHADOW_CALL_STACK
> > >  	bool "Clang Shadow Call Stack"
> > > +	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
> > >  	depends on ARCH_SUPPORTS_SHADOW_CALL_STACK
> > >  	help
> > >  	  This option enables Clang's Shadow Call Stack, which uses a
>  
> > AFAICT you also need to kill KRETPROBES, which plays similar games.
> 
> Hmm... how does KREPROBES work? If you can only mess with the return
> address when probing the first instruction in the function, it'll just
> work for SCS or pointer authentication, as the LR is used at that
> instant. If KRETPROBES tries to mess with the return address elsewhere
> it'd be broken today...

To be fair, I've not looked at the arm64 implementation. x86 does gross
things like ftrace does. On x86 ftrace_graph and kretprobe also can't
be on at the same time for the same function, there's some yuck around
there.

Rostedt was recently talking about cleaning some of that up.

But if kretprobe can work on arm64, then ftrace_graph can too, but I
think that links back to what you said earlier, you didn't want more
ftrace variants or something.

> > And doesn't BPF also do stuff like this?
> 
> Can BPF mess with return addresses now!?

At least on x86 I think it does. But what do I know, I can't operate
that stuff. Rostedt might know.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
