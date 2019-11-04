Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 271E7EE160
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHDeHXFuYhXFjDO2SMEN6LXR9ynxgc6YSiBaiHiI48A=; b=pLpTB4dVxdfqGO
	erb0iLevNXcHi7l4BQ44l7UNvzjmGiN6O4kx4w9JfWKvsIs015x1qtCyNFSXvqe2fnyP/U9dVXd0R
	8FIHaGWnQpJcxXSPprZPlA/OWFO45wl2fKn4oEeDJf8OJzCI6HMV0ubYkLtrROCfgXT/YyNJvxMsO
	/rXmKdc7H5QtTPNyzgYz0P0UmaWTgj5wLyAiiXPvM9sCuG9XjK4PsfIMFC23VIpKhZJr6S5wEXMPo
	TXDVDuBo9odaYxiYkoffmCbLNy5NGbXb3ioy7znkt+blysRcjNJ4aX6Qmd4b4QzDXiCcL+yQuG/Cu
	sUYnYYCAiXRa/2Nnr/Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcXe-0003v2-5A; Mon, 04 Nov 2019 13:37:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcXX-0003ua-98
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:37:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6117A1FB;
 Mon,  4 Nov 2019 05:37:02 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2702E3F6C4;
 Mon,  4 Nov 2019 05:37:00 -0800 (PST)
Date: Mon, 4 Nov 2019 13:36:58 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCHv2 1/8] ftrace: add ftrace_init_nop()
Message-ID: <20191104133657.GE45140@lakrids.cambridge.arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-2-mark.rutland@arm.com>
 <daad0785-a33f-3cfb-cf0f-657b6c677257@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <daad0785-a33f-3cfb-cf0f-657b6c677257@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_053703_409182_40745876 
X-CRM114-Status: GOOD (  31.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 02, 2019 at 05:49:00PM +0530, Amit Daniel Kachhap wrote:
> Hi Mark,

Hi Amit,

Thanks for the review!
 
> On 10/29/19 10:28 PM, Mark Rutland wrote:
> > Architectures may need to perform special initialization of ftrace
> > callsites, and today they do so by special-casing ftrace_make_nop() when
> > the expected branch address is MCOUNT_ADDR. In some cases (e.g. for
> > patchable-function-entry), we don't have an mcount-like symbol and don't
> s/an mcount/a mcount.
> > want a synthetic MCOUNT_ADDR, but we may need to perform some
> > initialization of callsites.
> > 
> > To make it possible to separate initialization from runtime
> > modification, and to handle cases without an mcount-like symbol, this
> Same as above.

Using 'an' in both of these cases is correct, even though 'mcount'
starts with a consonant, since it's pronounced as-if it were 'emcount'.
I will leave this as-is.

> > patch adds an optional ftrace_init_nop() function that architectures can
> > implement, which does not pass a branch address.
> > 
> > Where an architecture does not provide ftrace_init_nop(), we will fall
> > back to the existing behaviour of calling ftrace_make_nop() with
> > MCOUNT_ADDR.
> > 
> > At the same time, ftrace_code_disable() is renamed to
> > ftrace_nop_initialize() to make it clearer that it is intended to
> > intialize a callsite into a disabled state, and is not for disabling a
> > callsite that has been runtime enabled. The kerneldoc description of rec
> > arguments is updated to cover non-mcount callsites.
> > 
> > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > Reviewed-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > Cc: Ingo Molnar <mingo@redhat.com>
> > Cc: Steven Rostedt <rostedt@goodmis.org>
> > Cc: Torsten Duwe <duwe@suse.de>
> > ---
> >   include/linux/ftrace.h | 35 ++++++++++++++++++++++++++++++++---
> >   kernel/trace/ftrace.c  |  6 +++---
> >   2 files changed, 35 insertions(+), 6 deletions(-)
> > 
> > diff --git a/include/linux/ftrace.h b/include/linux/ftrace.h
> > index 8a8cb3c401b2..9867d90d635e 100644
> > --- a/include/linux/ftrace.h
> > +++ b/include/linux/ftrace.h
> > @@ -499,7 +499,7 @@ static inline int ftrace_disable_ftrace_graph_caller(void) { return 0; }
> >   /**
> >    * ftrace_make_nop - convert code into nop
> >    * @mod: module structure if called by module load initialization
> > - * @rec: the mcount call site record
> > + * @rec: the call site record (e.g. mcount/fentry)
> >    * @addr: the address that the call site should be calling
> >    *
> >    * This is a very sensitive operation and great care needs
> > @@ -520,9 +520,38 @@ static inline int ftrace_disable_ftrace_graph_caller(void) { return 0; }
> >   extern int ftrace_make_nop(struct module *mod,
> >   			   struct dyn_ftrace *rec, unsigned long addr);
> > +
> > +/**
> > + * ftrace_init_nop - initialize a nop call site
> > + * @mod: module structure if called by module load initialization
> > + * @rec: the call site record (e.g. mcount/fentry)
> > + *
> > + * This is a very sensitive operation and great care needs
> > + * to be taken by the arch.  The operation should carefully
> > + * read the location, check to see if what is read is indeed
> > + * what we expect it to be, and then on success of the compare,
> > + * it should write to the location.
> > + *
> > + * The code segment at @rec->ip should contain the contents created by
> > + * the compiler
> Nit: Will it be better to write it as "@rec->ip should store the adjusted
> ftrace entry address of the call site" or something like that.

This was the specific wording requested by Steve, and it's trying to
describe the instructions at rec->ip, rather than the value of rec->ip,
so I think it's better to leave this as-is.

> > + *
> > + * Return must be:
> > + *  0 on success
> > + *  -EFAULT on error reading the location
> > + *  -EINVAL on a failed compare of the contents
> > + *  -EPERM  on error writing to the location
> > + * Any other value will be considered a failure.
> > + */
> > +#ifndef ftrace_init_nop
> > +static inline int ftrace_init_nop(struct module *mod, struct dyn_ftrace *rec)
> > +{
> > +	return ftrace_make_nop(mod, rec, MCOUNT_ADDR);
> > +}
> > +#endif
> > +
> Now that ftrace_init_nop is also an arch implemented function so it may be
> added in Documentation/trace/ftrace-design.rst along with ftrace_make_nop.
> In general also, adding some description about patchable-function-entry
> in kernel Documentation will be useful.

I agree that would be a good thing, but as Steve suggests I will leave
this for subsequent rework, as I think that also implies more
rework/renaming in the core code (e.g. to more cleanly separate the
notion of a callsite from mcount specifically).

Steve, if you'd like help with that (or review), I'd be happy to help.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
