Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5655E02DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 13:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2309EUqNQZUpZSWmKrwP3u4C60VHH4aPMEg7r33LuYI=; b=qPW9YzPdwyh2Fz
	/zNrq5UDzG1T9H+9bdbjkdl1YYg0KSkqbpmVXv3T3IbiFJgHyFt4WHmkR04JwJaiKt2letY8qn5+O
	7W3sY0voU+6VRC15cV4oSW5P0wRdNKvOQf3kQl5gT9UkT+EZJ2vI7n932YxFs9ax0ryuc+6TG8QpI
	cfGtiHp4gbexajYbCPrOEX4lkUm17UP0hjfBjMFnqWaRPKt3UwGxbFXowVShcMx1L2gM6ElMdUtRD
	62gpff5RVtEokbiaqkBtHlY+EizyXzhB3WvSR0xkksgxVxV9wGQvBCXRnm3fVRvDK0+VwElDBpMsa
	GWcZHXUiNWJlc3g77jpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMsLE-0004ZB-JS; Tue, 22 Oct 2019 11:28:44 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMsL4-0004YL-Pq
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 11:28:36 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E47011007;
 Tue, 22 Oct 2019 04:28:23 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6E213F718;
 Tue, 22 Oct 2019 04:28:21 -0700 (PDT)
Date: Tue, 22 Oct 2019 12:28:11 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [PATCH 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191022112811.GA11583@lakrids.cambridge.arm.com>
References: <20191021163426.9408-1-mark.rutland@arm.com>
 <20191021163426.9408-2-mark.rutland@arm.com>
 <20191021140756.613a1bac@gandalf.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021140756.613a1bac@gandalf.local.home>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_042834_925257_6DF5D7DA 
X-CRM114-Status: GOOD (  23.49  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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

On Mon, Oct 21, 2019 at 02:07:56PM -0400, Steven Rostedt wrote:
> On Mon, 21 Oct 2019 17:34:19 +0100
> Mark Rutland <mark.rutland@arm.com> wrote:
> 
> > Architectures may need to perform special initialization of ftrace
> > callsites, and today they do so by special-casing ftrace_make_nop() when
> > the expected branch address is MCOUNT_ADDR. In some cases (e.g. for
> > patchable-function-entry), we don't have an mcount-like symbol and don't
> > want a synthetic MCOUNT_ADDR, but we may need to perform some
> > initialization of callsites.
> > 
> > To make it possible to separate initialization from runtime
> > modification, and to handle cases without an mcount-like symbol, this
> > patch adds an optional ftrace_init_nop() function that architectures can
> > implement, which does not pass a branch address.
> > 
> > Where an architecture does not provide ftrace_init_nop(), we will fall
> > back to the existing behaviour of calling ftrace_make_nop() with
> > MCOUNT_ADDR.
> > 
> > At the same time, ftrace_code_disable() is renamed to
> > ftrace_code_init_disabled() to make it clearer that it is intended to
> > intialize a callsite into a disabled state, and is not for disabling a
> > callsite that has been runtime enabled.
> 
> To make the name even better, let's just rename it to:
> 
>  ftrace_nop_initialization()
> 
> I think that may be the best description for it.

Perhaps ftrace_nop_initialize(), so that it's not a noun?

I've made it ftrace_nop_initialization() in my branch for now.

> > diff --git a/kernel/trace/ftrace.c b/kernel/trace/ftrace.c
> > index f296d89be757..afd7e210e595 100644
> > --- a/kernel/trace/ftrace.c
> > +++ b/kernel/trace/ftrace.c
> > @@ -2493,15 +2493,22 @@ struct dyn_ftrace *ftrace_rec_iter_record(struct ftrace_rec_iter *iter)
> >  	return &iter->pg->records[iter->index];
> >  }
> >  
> > +#ifndef ftrace_init_nop
> > +static int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
> > +{
> > +	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> > +}
> > +#endif
> 
> Can you place the above in the ftrace.h header. That's where that would
> belong.
> 
> #ifndef ftrace_init_nop
> struct module;
> static inline int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
> {
> 	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> }
> #endif

True.

I've put this immediately after ftrace_make_nop() in the header, and
given it a kerneldoc comment. There's a declaration for struct module at
the top of the header, so I've just relied on that

That looks like:

| /**
|  * ftrace_init_nop - initialize a nop call site
|  * @mod: module structure if called by module load initialization
|  * @rec: the mcount call site record
|  *
|  * This is a very sensitive operation and great care needs
|  * to be taken by the arch.  The operation should carefully
|  * read the location, check to see if what is read is indeed
|  * what we expect it to be, and then on success of the compare,
|  * it should write to the location.
|  *
|  * The code segment at @rec->ip should be as initialized by the
|  * compiler
|  *
|  * Return must be:
|  *  0 on success
|  *  -EFAULT on error reading the location
|  *  -EINVAL on a failed compare of the contents
|  *  -EPERM  on error writing to the location
|  * Any other value will be considered a failure.
|  */
| #ifndef ftrace_init_nop
| static int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
| {
| 	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
| }
| #endif

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
