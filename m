Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD4EE556F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 22:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L7PqIErvnGy+WlWz24k24RmLRH5qL/66OWg/Jznb7Zw=; b=fTrSKEV11LRR36
	VnC2TRAuD8OtezNdtaWNMT/5cB5+5IKjLkyx8y+DBuMSVP0rMzJT787SkwK/iBhuUYv6GSlXXU0oh
	RI936RY5GyEVnqb4jDP8HE9JGBfX7AZGkPp2GmwDGwWqwfFx/ecRIYvVnygU+tZJRYjD9B3UFgsEf
	4qVNhzB9MjBMvHcIcRb1qfZ8G0i4PXlQTPZwO8elqp33pJkOdJro7O7XWxT93AGvP4ii9vMvFca2F
	UvC44/h0zQk8SCuSo1Wnu9nlzm17OAX0b1FU23Cd4KA7CK+LlieRpIUXPQxIaEZQtthvScrEuiKon
	rvwk++2+Kkuohuz1XOHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6Wr-0008F0-ST; Fri, 25 Oct 2019 20:49:49 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO6Wd-0008Dj-N0
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 20:49:37 +0000
Received: by mail-vs1-xe42.google.com with SMTP id e12so2378587vsr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 13:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=B01qVjfF1LUa0PK52bjL02zxaBRU3eQBI1v+W/4JeHk=;
 b=LoSD3OZaEiLCMCyYB7WH+dmOE3giL1Rn/oOCaqr8KZIUPs9oNnBAX6h7DIpplETh/t
 Omaop/utJ7AeIZA9zdG2w3rvVFoP7cm2sHz8InOOQrKWFNZwxRR99vskLqIZWxI+akK7
 Cn8Rjj+QMmBCU8FITbSo18rQdoyRMsKUvjpt6Ar8qszVQ65XaVmFB+VKjRWHMe854GK3
 ASqeAGPJEm1/jq31LvxmrmHzMfPkeiCJgRdv49M55kLjJgk0flgNf6HmaNmtlpmBIPyW
 bbCRcDAnLzrC5k0HlPPGloTl1WOPl/1JYKEDPIqkdq+OQXGt/qBiXYUzNyt2hflsRSK0
 sD9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=B01qVjfF1LUa0PK52bjL02zxaBRU3eQBI1v+W/4JeHk=;
 b=cljeoSkjNTgCW20+EcPGr2zJHyzmwynSuUs4QAOIa91Zqz50TGoaDQ2Bud1zgUK2Ot
 br05bXH3coidK03OWkLoMjQ12aLHd1XwJTPnBeRkOe4bcZG5yug7hxHDYWT5loT6I0NT
 jfYAaoLq0gWcJbF5ksR2G1GIdZxKbrdZfeScthaxeVP3ZAKH4XvOtY4NCMVMospZoZyp
 hw8Lv7iCz8Vqt3HAFkVGMcPYMS8GyRM6t2z31+Tc9++Rk7SBaOkGIMZX+50CQBXBvfvA
 XmZTcPi/hPnozmq38qzXqsVHu4/Ojbt9qTx2262/9znNu/0vZuLF3h59kshAZS9W+wkD
 UlTQ==
X-Gm-Message-State: APjAAAWvjguyGHo4PDXpElCbk3Y5T3J3ObnZYHWUY/D1lqI2lQe/it7X
 KLrNo9Y485R5qZXhdSeMzTw3ywOQYQdDFnb0DnpbYA==
X-Google-Smtp-Source: APXvYqzcB7+AMsKpePQsUZyUkWAMYpmk/dddGNr2g0bTzgYSUkedQgyZ3hkkauso52AIP99G7DNDWaPuxb1mAJtXqiU=
X-Received: by 2002:a67:ffc7:: with SMTP id w7mr3154037vsq.15.1572036572738;
 Fri, 25 Oct 2019 13:49:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com>
 <20191024225132.13410-6-samitolvanen@google.com>
 <20191025105643.GD40270@lakrids.cambridge.arm.com>
In-Reply-To: <20191025105643.GD40270@lakrids.cambridge.arm.com>
From: Sami Tolvanen <samitolvanen@google.com>
Date: Fri, 25 Oct 2019 13:49:21 -0700
Message-ID: <CABCJKuc+XiDRdqfvjwCF7y=1wX3QO0MCUpeu4Gdcz91+nmnEAQ@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_134935_777094_502C7A01 
X-CRM114-Status: GOOD (  26.42  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

On Fri, Oct 25, 2019 at 3:56 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > +#define SCS_SIZE     1024
>
> I think it'd be worth a comment on how this size was chosen. IIRC this
> empirical?

Correct. I'll add a comment.

> > +#define SCS_END_MAGIC        0xaf0194819b1635f6UL
>
> Keyboard smash? ... or is there a prize for whoever figures out the
> secret? ;)

It's a random number, so if someone figures out a secret in it,
they'll definitely deserve a prize. :)

> > +static inline void task_set_scs(struct task_struct *tsk, void *s)
> > +{
> > +     task_thread_info(tsk)->shadow_call_stack = s;
> > +}
>
> This should probably be named get and set, or have:
>
> #define task_scs(tsk)   (task_thread_info(tsk)->shadow_call_stack)
>
> ... which can have a trivial implementation as NULL for the !SCS case.

Sure, sounds good.

> For all the trivial wrappers you can put the implementation on the same
> line as the prototype. That makes it a bit easier to compare against the
> prototypes on the other side of the ifdeffery.
>
> e.g. this lot can be:
>
> static inline void *task_scs(struct task_struct *tsk) { return 0; }
> static inline void task_set_scs(struct task_struct *tsk, void *s) { }
> static inline void scs_init(void) { }

Agreed.

> > diff --git a/kernel/fork.c b/kernel/fork.c
> > index bcdf53125210..ae7ebe9f0586 100644
> > --- a/kernel/fork.c
> > +++ b/kernel/fork.c
> > @@ -94,6 +94,7 @@
> >  #include <linux/livepatch.h>
> >  #include <linux/thread_info.h>
> >  #include <linux/stackleak.h>
> > +#include <linux/scs.h>
>
> Nit: alphabetical order, please (this should come before stackleak.h).

The includes in kernel/fork.c aren't in alphabetical order, so I just
added this to the end here.

> > +     retval = scs_prepare(p, node);
> > +     if (retval)
> > +             goto bad_fork_cleanup_thread;
>
> Can we please fold scs_prepare() into scs_task_init() and do this in
> dup_task_struct()? That way we set this up consistently in one place,
> where we're also allocating the regular stack.

Yes, that does sound cleaner. I'll change that.

> > +     scs_task_reset(idle);
>
> I'm a bit confused by this -- please see comments below on
> scs_task_reset().

> > +static inline void *__scs_base(struct task_struct *tsk)
> > +{
> > +     return (void *)((uintptr_t)task_scs(tsk) & ~(SCS_SIZE - 1));
> > +}
>
> We only ever assign the base to task_scs(tsk), with the current live
> value being in a register that we don't read. Are we expecting arch code
> to keep this up-to-date with the register value?
>
> I would have expected that we just leave this as the base (as we do for
> the regular stack in the task struct), and it's down to arch code to
> save/restore the current value where necessary.
>
> Am I missing some caveat with that approach?

To keep the address of the currently active shadow stack out of
memory, the arm64 implementation clears this field when it loads x18
and saves the current value before a context switch. The generic code
doesn't expect the arch code to necessarily do so, but does allow it.
This requires us to use __scs_base() when accessing the base pointer
and to reset it in idle tasks before they're reused, hence
scs_task_reset().

> > +     BUILD_BUG_ON(SCS_SIZE > PAGE_SIZE);
>
> It's probably worth a comment on why we rely on SCS_SIZE <= PAGE_SIZE.

Ack.

> > +static inline unsigned long *scs_magic(struct task_struct *tsk)
> > +{
> > +     return (unsigned long *)(__scs_base(tsk) + SCS_SIZE - sizeof(long));
>
> Slightly simpler as:
>
>         return (unsigned long *)(__scs_base(tsk) + SCS_SIZE) - 1;

Yes, that's a bit cleaner.

I'll fix these in v3. Thank you for the review!

Sami

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
