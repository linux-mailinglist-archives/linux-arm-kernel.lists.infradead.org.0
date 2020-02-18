Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC5E16359F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 23:00:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tz/lxnVshB4hXPNCt9U0/1oGybLa+213fb7x5vXSqDk=; b=rKpd3wD30NkOjb
	QwcPpuA3gOKCptUlsj7QgvjSxl6oFbmXYqQO/Hn5Qfw2VjW9c2CUE7crsuU3/ixYMFum8yOaloMMP
	Y3eHwc/RLR3Ccq1itgJAetFP0qaZHCr0DfzY8uZg5YLg9hDr0ppfLuBzlS4KeO2EeCYjCXYiNeG+n
	ZCx6eqf5cSlQ3eoj0ZfFEtANZSDlZOe38CBvJKlK5pesm7NW6Re7OeEt8dfgjahNBZgT9KvAsPEPo
	Y+bwzCN9nqspwOsC2gSAxB54yz1O0ASG0uuwP/Kc0WMy3JES1EGvl+jmKgDooHTghE5Xh46zMXfgP
	BR2TIp6LUNFgfHDH8Uzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Aum-0003So-NK; Tue, 18 Feb 2020 22:00:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Aub-0003S8-2v
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 22:00:14 +0000
Received: by mail-wr1-x444.google.com with SMTP id u6so25900705wrt.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 14:00:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RXQHJwHEEnVHauBnQEp+K06dMcddSWeFIBEKwcqNjvY=;
 b=nreTZoRpOvqTwmumvsIXMrFVOQXcDbnv6W15HbKXapZS3n8EE++vulDuWNS626JKXw
 +zgAgLRoc6fC6Il9RExWb4VJrWYxeW9A3UWfjSLrUx417GidXbEIcvyt6DOW901H8KG8
 DiNoEwck1n/rwqtQ7ihZ0svt7RwwHRNHDwpmVdmUUUA40GjEvFcDcb9FkeuzTSiyzL81
 ccvxaeOFJ9URflRugRrRHN4FbYbQg2rBsn1R5N2O2PLq4xuXt4kzQfRvD/QBS3bbaoOg
 JsFkoI4Ejjtrng4tW/kSPuVNJ4IJ7HsjxshWOcGGeQ4LNLmP8r2hE3bJ27FuwV7azSJ2
 kpbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RXQHJwHEEnVHauBnQEp+K06dMcddSWeFIBEKwcqNjvY=;
 b=VXYvU2u5jkIbX+GytCUsygoS1Zg+NIkD6hTqIJdMEenUOZT3B99+Z9y7Fl2vr8eZXW
 cqUjpX0YFUnTrlXZbB2uY1RimdPiEMDMAVzuKfjVywnPNxcGVPfZVDHugRNEoEkB1iVK
 0y/r8mgVZ0wp++FjIc2kP+iAxpJzjG0p/joARP86skhTHgS9EsoXSC1jMoLE3z11M1pC
 599JBqhaRg4uKRsCJOnsq2zOeHQeE1xvSWlJOlwnfFx7ODsaN2yD6tXphK9gehaVYS1D
 K3jLR5ojAwzcHU2qnyl6OGmF3lx40qr9bemUvd64P2Q3Cwy+9maLf6p4h1DP/yJ2p28L
 Hkmg==
X-Gm-Message-State: APjAAAVYjhSq5xzcSJX3GMCRZ2wjoVFo1x4kGSorwJyQ/vdufj/rDIP+
 mzVsLapn1Tfl6CPAGtVVF33d7IXw0jnQfXHvsNMkcw==
X-Google-Smtp-Source: APXvYqy6irBj57I3FWNNO68AlkFwJP+eCW7WSFRMfNtH7vP/kn7OPj/7/NLtMwqMwPtdUdZ5NYhKCB5JRZmiRVLY0As=
X-Received: by 2002:adf:e40f:: with SMTP id g15mr30563070wrm.223.1582063187500; 
 Tue, 18 Feb 2020 13:59:47 -0800 (PST)
MIME-Version: 1.0
References: <20191217180152.GO5624@arrakis.emea.arm.com>
 <20191220013639.212396-1-pcc@google.com>
 <20200212110903.GE488264@arrakis.emea.arm.com>
In-Reply-To: <20200212110903.GE488264@arrakis.emea.arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Tue, 18 Feb 2020 13:59:34 -0800
Message-ID: <CAMn1gO6bDenF95Rk2sUyGhm0f7PfEj6i_tmH+geVdU3ZqcRifw@mail.gmail.com>
Subject: Re: [PATCH] arm64: mte: Do not service syscalls after async tag fault
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_140013_130397_8041A7AE 
X-CRM114-Status: GOOD (  22.49  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 linux-mm@kvack.org, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Marc Zyngier <maz@kernel.org>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kostya Serebryany <kcc@google.com>, Evgenii Stepanov <eugenis@google.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 12, 2020 at 3:09 AM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Thu, Dec 19, 2019 at 05:36:39PM -0800, Peter Collingbourne wrote:
> > When entering the kernel after an async tag fault due to a syscall, rather
> > than for another reason (e.g. preemption), we don't want to service the
> > syscall as it may mask the tag fault. Rewind the PC to the svc instruction
> > in order to give a userspace signal handler an opportunity to handle the
> > fault and resume, and skip all other syscall processing.
> >
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
> > ---
> [...]
> >  arch/arm64/kernel/syscall.c | 22 +++++++++++++++++++---
> >  1 file changed, 19 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> > index 9a9d98a443fc..49ea9bb47190 100644
> > --- a/arch/arm64/kernel/syscall.c
> > +++ b/arch/arm64/kernel/syscall.c
> > @@ -95,13 +95,29 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
> >  {
> >       unsigned long flags = current_thread_info()->flags;
> >
> > -     regs->orig_x0 = regs->regs[0];
> > -     regs->syscallno = scno;
> > -
> >       cortex_a76_erratum_1463225_svc_handler();
> >       local_daif_restore(DAIF_PROCCTX);
> >       user_exit();
> >
> > +#ifdef CONFIG_ARM64_MTE
> > +     if (flags & _TIF_MTE_ASYNC_FAULT) {
> > +             /*
> > +              * We entered the kernel after an async tag fault due to a
> > +              * syscall, rather than for another reason (e.g. preemption).
> > +              * In this case, we don't want to service the syscall as it may
> > +              * mask the tag fault. Rewind the PC to the svc instruction in
> > +              * order to give a userspace signal handler an opportunity to
> > +              * handle the fault and resume, and skip all other syscall
> > +              * processing.
> > +              */
> > +             regs->pc -= 4;
> > +             return;
> > +     }
> > +#endif
> > +
> > +     regs->orig_x0 = regs->regs[0];
> > +     regs->syscallno = scno;
>
> I'm slightly worried about the interaction with single-step, other
> signals. It might be better if we just use the existing syscall
> restarting mechanism. Untested diff below:
>
> -------------------8<-------------------------------
> diff --git a/arch/arm64/kernel/syscall.c b/arch/arm64/kernel/syscall.c
> index a12c0c88d345..db25f5d6a07c 100644
> --- a/arch/arm64/kernel/syscall.c
> +++ b/arch/arm64/kernel/syscall.c
> @@ -102,6 +102,16 @@ static void el0_svc_common(struct pt_regs *regs, int scno, int sc_nr,
>         local_daif_restore(DAIF_PROCCTX);
>         user_exit();
>
> +       if (system_supports_mte() && (flags & _TIF_MTE_ASYNC_FAULT)) {
> +               /*
> +                * Process the asynchronous tag check fault before the actual
> +                * syscall. do_notify_resume() will send a signal to userspace
> +                * before the syscall is restarted.
> +                */
> +               regs->regs[0] = -ERESTARTNOINTR;
> +               return;
> +       }
> +
>         if (has_syscall_work(flags)) {
>                 /* set default errno for user-issued syscall(-1) */
>                 if (scno == NO_SYSCALL)

That works for me, and I verified that my small test program as well
as some larger unit tests behave as expected.

Tested-by: Peter Collingbourne <pcc@google.com>


Peter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
