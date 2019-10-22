Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 082BBE0437
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 14:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bSyXPCv+ZGjwHSlZEv71HhGPtwqHDFJq7N3FPWtO9Tk=; b=Hf/h9cH6qN3qNP
	rqoZEIqvCxhahiEdfD1ABFiu7I+Mmydk5xESFTwCVXD3FjhWnHHLoU8hEPj60Jtgje9w/XSpeq9gQ
	dC9ckG1yIkEHyGCephwIPUtyHzwNu+AD7GLzYb177k0yCeWV375a5UUWWa9+3ZzNBW9rsNiYMCipa
	Yyj0CT4mIlnU90uVrHwd/RsejxRfWmKCJKrFMAH7bKcItZng3ksek7RNJMaPOyxsu9LlK5PtpfoZW
	/1f9oN70qFUt6eZYV4h/x5tmY6X8XTzLzmK+YeDZQjEOob5kPpyA0VsgyZroeEEI2uNWZ+/T6LnDF
	UYAgogJGPT0IgKR9W8Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMtgQ-0006V6-Ri; Tue, 22 Oct 2019 12:54:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMtgG-0006Tp-6F
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 12:54:34 +0000
Received: from gandalf.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC95C2075A;
 Tue, 22 Oct 2019 12:54:29 +0000 (UTC)
Date: Tue, 22 Oct 2019 08:54:28 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191022085428.75cfaad6@gandalf.local.home>
In-Reply-To: <20191022112811.GA11583@lakrids.cambridge.arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
 <20191021163426.9408-2-mark.rutland@arm.com>
 <20191021140756.613a1bac@gandalf.local.home>
 <20191022112811.GA11583@lakrids.cambridge.arm.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_055432_272029_A14C63B4 
X-CRM114-Status: GOOD (  22.39  )
X-Spam-Score: -4.8 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: jthierry@redhat.com, will@kernel.org, ard.biesheuvel@linaro.org,
 peterz@infradead.org, catalin.marinas@arm.com, deller@gmx.de,
 jpoimboe@redhat.com, linux-kernel@vger.kernel.org, takahiro.akashi@linaro.org,
 mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org, amit.kachhap@arm.com,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 22 Oct 2019 12:28:11 +0100
Mark Rutland <mark.rutland@arm.com> wrote:

> > To make the name even better, let's just rename it to:
> > 
> >  ftrace_nop_initialization()
> > 
> > I think that may be the best description for it.  
> 
> Perhaps ftrace_nop_initialize(), so that it's not a noun?
> 
> I've made it ftrace_nop_initialization() in my branch for now.

I'm fine with ftrace_nop_initialize().

> 
> > > diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
> > > index f296d89be757..afd7e210e595 100644
> > > --- a/kernel/trace/ftrace.c
> > > +++ b/kernel/trace/ftrace.c
> > > @@ -2493,15 +2493,22 @@ struct dyn_ftrace *ftrace_rec_iter_record(struct ftrace_rec_iter *iter)
> > >  	return &iter->pg->records[iter->index];
> > >  }
> > >  
> > > +#ifndef ftrace_init_nop
> > > +static int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
> > > +{
> > > +	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> > > +}
> > > +#endif  
> > 
> > Can you place the above in the ftrace.h header. That's where that would
> > belong.
> > 
> > #ifndef ftrace_init_nop
> > struct module;
> > static inline int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
> > {
> > 	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> > }
> > #endif  
> 
> True.
> 
> I've put this immediately after ftrace_make_nop() in the header, and
> given it a kerneldoc comment. There's a declaration for struct module at
> the top of the header, so I've just relied on that
> 
> That looks like:
> 
> | /**
> |  * ftrace_init_nop - initialize a nop call site
> |  * @mod: module structure if called by module load initialization
> |  * @rec: the mcount call site record

Perhaps say "mcount/fentry"

> |  *
> |  * This is a very sensitive operation and great care needs
> |  * to be taken by the arch.  The operation should carefully
> |  * read the location, check to see if what is read is indeed
> |  * what we expect it to be, and then on success of the compare,
> |  * it should write to the location.
> |  *
> |  * The code segment at @rec->ip should be as initialized by the

"should be as" is a bit confusing. What about?

 "The code segment at @rec->ip should contain the contents created by
  the compiler".

-- Steve


> |  * compiler
> |  *
> |  * Return must be:
> |  *  0 on success
> |  *  -EFAULT on error reading the location
> |  *  -EINVAL on a failed compare of the contents
> |  *  -EPERM  on error writing to the location
> |  * Any other value will be considered a failure.
> |  */
> | #ifndef ftrace_init_nop
> | static int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
> | {
> | 	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> | }
> | #endif
> 
> Thanks,
> Mark.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
