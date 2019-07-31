Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F06B7CC28
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 20:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vt5ngS+zlwR5lGyxEaXiXsCVO441od9VniaPKE9j2mY=; b=LwsIEP7JhUZ6bf
	mAp+yXCOEQREuMRuOJgxrgmW5bxY9smuntxlOJ5w738KD8Ajru0cNOrvYcCRJCVOW59bUK8BKptid
	p4J8seC1TCW+uCVV4Lmo8a23D46O5zstJu2KpLBxb2Xn0kgNvaI04BoIw38h9+w2VyDiD2E/f3IJN
	++cH7diyB2fNohjO53nVgkLD/wUn6v44WVG/5RpdCgUhJIALrLm2FWd7A+knofblHnCsCUBOvoD/J
	EO/qf32f3Ky8dLWT8jfE9c1CPYvmoIw8kTibj6oI8TyovP5WuBr+1yaM24QzfvkubEougTGd5cCWT
	ZLy9bmtXGEwtTHSaJ30Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hstXn-00070c-WD; Wed, 31 Jul 2019 18:41:48 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hstXg-0006zu-7u
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 18:41:42 +0000
Received: by mail-io1-xd44.google.com with SMTP id f4so138553380ioh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 11:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3AsLIdRn1/s/ajhZAFGpfmDm8iyB8h5HN7OzbntAvwU=;
 b=PxOfkjT7L+Hwdws3JZ6LI7RIiZnSFD26K9lcMVVxc7bdsCSr6UJeCFlxR2ViMJRVgZ
 kKcCXB97d79J4mBEjnLyj18g9tQyLOnRgxTkJ1nN/qkHZ8DkRWoinzBu16Zow0FHmIpz
 HVoScJTEr7/TuqQu0dTMDxJariUa7FqrVwyGs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3AsLIdRn1/s/ajhZAFGpfmDm8iyB8h5HN7OzbntAvwU=;
 b=Chpu/j21nFLkXZACPPiZYFR7Axuw8eFe5zOcxyqoSuPgaton+gRyPniijlgjjOKeLw
 VQChygZAWwgd8NI8GdSo6/5eKF1t9Nc53KIkBqbIOJ299ueFMxbIMtmXd+IlaTYXWq8H
 DqcrSK5iBc1E4DjYJHFJRYFRsXhNjrRiu7y3xqq/smVB3AZML1o4SLryarGu5XQjwGGQ
 5U7I3U16iqEPE+bOMW8F0yvVC2hxPHJhzQFxIdMprIWuDd+uZ/Wm8YdYQDAOQwg9v+GJ
 B4LWOJWRVgV7Thba1of6Te/SOvsXsd5lsWSPxTapHiSnLvb1N4aNEyevCVXYlIqnZ/ir
 llWg==
X-Gm-Message-State: APjAAAXAkHqera5I9sF6Td8j22AreigI03thcoaA/97lRLFZ4Bqz1aaB
 lsAfRXMJy7u/ykDPNKrHAaiqbqSptvA=
X-Google-Smtp-Source: APXvYqzXxRHqqVbS74XAp/mM39fnK4haAnmFrRi7tObTWYKHMZMvb3qL1K96q3moBbYWQ9y9NVY0RA==
X-Received: by 2002:a5d:9711:: with SMTP id h17mr41363653iol.280.1564598498001; 
 Wed, 31 Jul 2019 11:41:38 -0700 (PDT)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com.
 [209.85.166.54])
 by smtp.gmail.com with ESMTPSA id d25sm56032981iom.52.2019.07.31.11.41.37
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 11:41:37 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id q22so18725690iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 11:41:37 -0700 (PDT)
X-Received: by 2002:a02:a1c7:: with SMTP id o7mr131531038jah.26.1564598496739; 
 Wed, 31 Jul 2019 11:41:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190730221800.28326-1-dianders@chromium.org>
 <20190731125733.op3y5j5psuj6pet3@willie-the-truck>
In-Reply-To: <20190731125733.op3y5j5psuj6pet3@willie-the-truck>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 31 Jul 2019 11:41:20 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WYC4x7MCfkHbB=Mm-6NJywbXs4zAGfz0t+5OdXFOmE7g@mail.gmail.com>
Message-ID: <CAD=FV=WYC4x7MCfkHbB=Mm-6NJywbXs4zAGfz0t+5OdXFOmE7g@mail.gmail.com>
Subject: Re: [PATCH] arm64: debug: Make 'btc' and similar work in kdb
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_114140_289505_470F8607 
X-CRM114-Status: GOOD (  26.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 Mark Rutland <mark.rutland@arm.com>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kgdb-bugreport@lists.sourceforge.net,
 Jason Wessel <jason.wessel@windriver.com>, LKML <linux-kernel@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Wed, Jul 31, 2019 at 5:57 AM Will Deacon <will@kernel.org> wrote:
>
> Hi Doug,
>
> On Tue, Jul 30, 2019 at 03:18:00PM -0700, Douglas Anderson wrote:
> > diff --git a/arch/arm64/kernel/kgdb.c b/arch/arm64/kernel/kgdb.c
> > index 43119922341f..b666210fbc75 100644
> > --- a/arch/arm64/kernel/kgdb.c
> > +++ b/arch/arm64/kernel/kgdb.c
> > @@ -148,6 +148,45 @@ sleeping_thread_to_gdb_regs(unsigned long *gdb_regs, struct task_struct *task)
> >       gdb_regs[32] = cpu_context->pc;
> >  }
> >
> > +void kgdb_call_nmi_hook(void *ignored)
> > +{
> > +     struct pt_regs *regs;
> > +
> > +     /*
> > +      * NOTE: get_irq_regs() is supposed to get the registers from
> > +      * before the IPI interrupt happened and so is supposed to
> > +      * show where the processor was.  In some situations it's
> > +      * possible we might be called without an IPI, so it might be
> > +      * safer to figure out how to make kgdb_breakpoint() work
> > +      * properly here.
> > +      */
> > +     regs = get_irq_regs();
> > +
> > +     /*
> > +      * Some commands (like 'btc') assume that they can find info about
> > +      * a task in the 'cpu_context'.  Unfortunately that's only valid
> > +      * for sleeping tasks.  ...but let's make it work anyway by just
> > +      * writing the registers to the right place.  This is safe because
> > +      * nobody else is using the 'cpu_context' for a running task.
> > +      */
> > +     current->thread.cpu_context.x19 = regs->regs[19];
> > +     current->thread.cpu_context.x20 = regs->regs[20];
> > +     current->thread.cpu_context.x21 = regs->regs[21];
> > +     current->thread.cpu_context.x22 = regs->regs[22];
> > +     current->thread.cpu_context.x23 = regs->regs[23];
> > +     current->thread.cpu_context.x24 = regs->regs[24];
> > +     current->thread.cpu_context.x25 = regs->regs[25];
> > +     current->thread.cpu_context.x26 = regs->regs[26];
> > +     current->thread.cpu_context.x27 = regs->regs[27];
> > +     current->thread.cpu_context.x28 = regs->regs[28];
> > +     current->thread.cpu_context.fp = regs->regs[29];
> > +
> > +     current->thread.cpu_context.sp = regs->sp;
> > +     current->thread.cpu_context.pc = regs->pc;
> > +
> > +     kgdb_nmicallback(raw_smp_processor_id(), regs);
> > +}
>
> This is really gross... :/

Well, sort of.  At first I definitely thought of it as a hack.  ...but
then I realized that it's actually not so terrible.  Although the
other processors (the ones that are not the kgdb master) are
technically "running" as far as Linux is concerned, you can also think
of them as "stopped" in the debugger.  It's convenient to think of
them the same way you'd think of sleeping tasks.

Said another way: normally for a "running" task you couldn't put
anything in the "cpu_context" because it'd be wrong the moment you put
it there.  ...but when a CPU is stopped in kgdb then there's actually
something quite sane to put there.

So with just a small shift in the concept of what "cpu_context" is for
then it becomes not so gross.


> Can you IPI the other CPUs instead and have them backtrace locally, like we
> do for things like magic sysrq (sysrq_handle_showallcpus())?

No, unfortunately.  All the other CPUs are in a tight loop (with
interrupts off) waiting to be released by the kgdb master.  Amusingly,
it's possible to simulate this.  You can run a sysrq from the kdb
prompt.  When I do "sr l" from kdb:

A) The CPU running the kgdb master provides a stack crawl but it's not
really what you want.  Presumably this doesn't matter (we wouldn't
want to send the IPI to the calling CPU), but it's interesting to look
at.  We end up in the fallback workqueue case in
sysrq_handle_showallcpus().  Then we will backtrace based on the regs
returned by "get_irq_regs()".  Thus instead of:

[0]kdb> bt
Stack traceback for pid 0
0xffffff801101a9c0        0        0  1    0   R  0xffffff801101b3b0 *swapper/0
Call trace:
 dump_backtrace+0x0/0x138
 show_stack+0x20/0x2c
 kdb_show_stack+0x60/0x84
 kdb_bt1+0xb8/0x100
 kdb_bt+0x24c/0x408
 kdb_parse+0x53c/0x664
 kdb_main_loop+0x7fc/0x888
 kdb_stub+0x2b0/0x3d0
 kgdb_cpu_enter+0x27c/0x5c4
 kgdb_handle_exception+0x198/0x1f4
 kgdb_compiled_brk_fn+0x34/0x44
 brk_handler+0x88/0xd0
 do_debug_exception+0xe0/0x128
 el1_dbg+0x18/0x8c
 kgdb_breakpoint+0x20/0x3c
 sysrq_handle_dbg+0x34/0x5c
 __handle_sysrq+0x14c/0x170
 handle_sysrq+0x38/0x44
 serial8250_handle_irq+0xe8/0xfc
 dw8250_handle_irq+0x94/0xd0
 serial8250_interrupt+0x48/0xa4
 __handle_irq_event_percpu+0x134/0x25c
 handle_irq_event_percpu+0x34/0x8c
 handle_irq_event+0x48/0x78
 handle_fasteoi_irq+0xd0/0x1a0
 __handle_domain_irq+0x84/0xc4
 gic_handle_irq+0x10c/0x180
 el1_irq+0xb8/0x180
 cpuidle_enter_state+0x284/0x428
 cpuidle_enter+0x38/0x4c
 do_idle+0x168/0x29c
 cpu_startup_entry+0x24/0x28
 rest_init+0xd4/0xe0
 arch_call_rest_init+0x10/0x18
 start_kernel+0x320/0x3a4

I get:

[0]kdb> sr l
sysrq: Show backtrace of all active CPUs
sysrq: CPU0:
CPU: 0 PID: 0 Comm: swapper/0 Not tainted 5.3.0-rc2+ #28
Hardware name: Google Kevin (DT)
pstate: 20000005 (nzCv daif -PAN -UAO)
pc : cpuidle_enter_state+0x284/0x428
lr : cpuidle_enter_state+0x274/0x428
sp : ffffff8011003e60
x29: ffffff8011003eb0 x28: ffffff8010f366b8
x27: ffffff8011010000 x26: 0000000000000001
x25: ffffff80110eb000 x24: 0000000000000000
x23: 00000024232e8f0a x22: 0000002420501a35
x21: 0000000000000002 x20: ffffffc0ee86e080
x19: ffffffc0f65426c0 x18: 0000000000000000
x17: 000000000000003e x16: 000000000000003f
x15: 0000000000000000 x14: ffffff801101a9c0
x13: 0000000000013320 x12: 0000000000000020
x11: 000000000624dd2f x10: 00000000ffffffff
x9 : 0000000100000001 x8 : 00000000000000c0
x7 : 00000032b5593519 x6 : 0000000000300000
x5 : 0000000000000000 x4 : 0000000000000101
x3 : 00000000ffffffff x2 : 0000000000000001
x1 : ffffffc0f6548d80 x0 : 0000000000000000
Call trace:
 cpuidle_enter_state+0x284/0x428
 cpuidle_enter+0x38/0x4c
 do_idle+0x168/0x29c
 cpu_startup_entry+0x24/0x28
 rest_init+0xd4/0xe0
 arch_call_rest_init+0x10/0x18
 start_kernel+0x320/0x3a4


B) All the other CPUs don't respond.  ...until you exit the debugger
and then they all print their stacks, a little too late.

---

The weird crawl for the master CPU made me think that maybe I could
use "show_regs()" to show the stacks of the other CPUs, but that
didn't work.  The arm64 stack crawling code really only works for a
sleeping task or for the current running task.

...this again gets back to the fact that we can really think of those
other CPUs stopped in the debugger as "sleeping".

=====

OK, so I think I managed to get something that maybe you're happy with:

https://lkml.kernel.org/r/20190731183732.178134-1-dianders@chromium.org

...I still think it's not such a hack to stash the state in the
"cpu_context" and I could imagine it might have other benefits when
debugging, but my new patch does have the advantage that it's more
platform agnostic.  ;-)  Let me know what you think...

-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
