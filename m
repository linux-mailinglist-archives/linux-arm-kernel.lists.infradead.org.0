Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911DFF0661
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 20:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xC5u1o00QkwTtE2ceYqOcCfeF++7bxoa7SVITFLg8Rw=; b=GO0VFWieK4Xa2t
	us/x8VjXJgCmNv6/Een01pD1dc7OLuattxOMCE2BrFvnJaI9doOP3MG6BoCA0Xzdzk+SUx7oQcbOi
	6dWfHtz2CHkS7xFxSFvyD6AF4C2DRscIZyGsBFdFLLBWWH/v3eOzN+7hRRRXAh5nzv2A32sFW5sdZ
	7DACRZ4c9PuY2nfGNCE5f7sth5z9u2OPMqfKT4k+Uq4ZPGuEHzAOhH4STjaJ5XHrZ3P/ZI0jFN2vD
	pYickDSVL5olEsLfO39x9Urn1sbFjgVxVfkfUCRT95jP969jDy56zGFDzAL9o+1RqHlMFSwLMJnq/
	OsyO49owJYKTy6HLu6XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4v6-0000IK-JZ; Tue, 05 Nov 2019 19:55:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4uq-00007D-NM
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 19:55:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8DFB87AD;
 Tue,  5 Nov 2019 11:54:56 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AFF33FBB1;
 Tue,  5 Nov 2019 01:17:25 -0800 (PST)
Date: Tue, 5 Nov 2019 09:17:23 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [PATCH v4 07/17] scs: add support for stack usage debugging
Message-ID: <20191105091723.GC4743@lakrids.cambridge.arm.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191101221150.116536-1-samitolvanen@google.com>
 <20191101221150.116536-8-samitolvanen@google.com>
 <20191104124017.GD45140@lakrids.cambridge.arm.com>
 <CABCJKueoJs7hS7VrVoz6CY_oAjTGcV-W61v9GAdwg+zk0W5ErA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABCJKueoJs7hS7VrVoz6CY_oAjTGcV-W61v9GAdwg+zk0W5ErA@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_115500_808725_D1187F47 
X-CRM114-Status: GOOD (  15.60  )
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
Cc: Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Kernel Hardening <kernel-hardening@lists.openwall.com>,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 04, 2019 at 01:35:28PM -0800, Sami Tolvanen wrote:
> On Mon, Nov 4, 2019 at 4:40 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > > +#ifdef CONFIG_DEBUG_STACK_USAGE
> > > +static inline unsigned long scs_used(struct task_struct *tsk)
> > > +{
> > > +     unsigned long *p = __scs_base(tsk);
> > > +     unsigned long *end = scs_magic(tsk);
> > > +     uintptr_t s = (uintptr_t)p;
> >
> > As previously, please use unsigned long for consistency.
> 
> Ack.
> 
> > > +     while (p < end && *p)
> > > +             p++;
> >
> > I think this is the only place where we legtimately access the shadow
> > call stack directly.
> 
> There's also scs_corrupted, which checks that the end magic is intact.

Ah, true. I missed that.

> > When using SCS and KASAN, are the
> > compiler-generated accesses to the SCS instrumented?
> >
> > If not, it might make sense to make this:
> >
> >         while (p < end && READ_ONCE_NOCKECK(*p))
> >
> > ... and poison the allocation from KASAN's PoV, so that we can find
> > unintentional accesses more easily.
> 
> Sure, that makes sense. I can poison the allocation for the
> non-vmalloc case, I'll just need to refactor scs_set_magic to happen
> before the poisoning.

Sounds good!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
