Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9217D1DC531
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 04:29:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yqgwsxQQ1875ZlnRip0rHa0m7rQ3VXoqeduQpdIAbus=; b=ZaNHjU6rndmAfR
	/qm50Guknwu7sI25uPmiMZZq5yEqMvl9n4gOsFzCAgsh+mTkU59MIRYciKhJRtUnNL4/MzTvNzime
	a1+3oZo9cUm56QNsVhMARfOuttE7025+hqF7h5rr1UyoFAWRpPOUKZNfz+9mQX8AScGv25WefkyOV
	W9vzUtAGKn+cTCgcOahf+FF8IN8RxsxWLsxkNHcnGwSS9m6qQC0IpG66QR35N5U5wan4mdBYglfwK
	ICsEd2UvzLuXz9HYGzvzO4G/xBdOG8LSNjLxvWP4EfXBmuse5Ro7FnAg7Hf2doSZKmpIYtTSJQCe6
	lYI6A20yP6sbfRmvKHqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbaxQ-0003kf-Qq; Thu, 21 May 2020 02:29:16 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbaxI-0003ja-BX
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 02:29:09 +0000
Received: by mail-vk1-xa42.google.com with SMTP id o8so1325599vkd.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 19:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kqq9nD5oDHucLRSSU1RU5vZGB/pj8xXntJ0sAJIv3cA=;
 b=na4/xlvnbUwhslC6KgAbQi8W0vpMvvs4MvGH83Fgv2W39mdUISpR0XNdBzPsEFDsrR
 wlNDQOg0hXXwgG8qB+VhsVpATIfIb9sW9f9LokQ1hpBClJyRaYyz53t3CbcQ4wjFMRcR
 LUD33rfMgddHHoPs1qO3Ew3V1WQiS/0Kxlp4Icpk08OIXBqu49Qef6Wl6SuguLFkH9xu
 q5I+qMUB5ZyuWWc7c0GvEsHp5h2OcQVW1HQLodngcUsmvEx9ayfG5vAMyYuYIanoB2Ou
 MeuqzDXykMCYn1Fu7Z9le/wdQdO6hZfjEzuUvlXDKlGKZCBB7wio70AoXfEtGzM/+CSm
 PS0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kqq9nD5oDHucLRSSU1RU5vZGB/pj8xXntJ0sAJIv3cA=;
 b=gLLAMNRZEiw/2/zeDrsIFrR21sLrzDwR5QRC0p+WF7+cMivY16ultz2s7mWm/rVqwm
 4YeLExNo+xxudH3eT5Mi+I7cutmA9jG8Ha7DTMKc5d9A6rfuSIfXjZNcGCO685n4BQ3c
 z+6VvaCrfI7/YvLL/H0GsqGhzxTmWpA6GRTGKueZDtk8OjBMs0qoCFVBAj+3FqLjutw3
 5+tBKFIl0PLnL/TsMvMomONPOC40K4L41kVvqsdwsY053P9+EEmIgw7jOFui1Pg1HsEG
 GWjYM/4MP97BYn1cuyy0WFaosS8R+8k4VRCqf1PUfl/lIyVoV8y54HNLmuWJbN6565J4
 ZCVQ==
X-Gm-Message-State: AOAM533LhmKSimgiNej2DI/h74klVXv26Cj99+gxqy82a2m4bkzIj2cr
 SjVnKVvvLkmKPaECOX8ZO1VDjZ4XVx8UMEfX7+PiAxT5
X-Google-Smtp-Source: ABdhPJwdp5UARJ2fw0dxo/YuRKg6X9FX5YNwbJGGTaGrftOIdyDKLnfr57gJgBsYq/n0VFly3FKHbu44QMxfr0Of3AI=
X-Received: by 2002:ac5:c92c:: with SMTP id u12mr6208199vkl.93.1590028139033; 
 Wed, 20 May 2020 19:28:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200508020106.136652-1-pcc@google.com>
 <20200513180914.50892-1-pcc@google.com>
 <20200513202808.GY21779@arm.com>
 <CAMn1gO4V05nD-Tq4dES0QyO73bAT-Nwo1ABnz0nuous8Rq+dGA@mail.gmail.com>
 <20200518095313.GZ21779@arm.com>
 <CAMn1gO4c3-hG_i6ZWsk-+oUGQQBdzFJRMrpehT3OFERF2Z7nrg@mail.gmail.com>
 <20200520085502.GC24293@willie-the-truck> <20200520092558.GI5031@arm.com>
In-Reply-To: <20200520092558.GI5031@arm.com>
From: Peter Collingbourne <pcc@google.com>
Date: Wed, 20 May 2020 19:28:46 -0700
Message-ID: <CAMn1gO7VWBcbMvqNeyBdfpO71kfhrZbHwkOC0JeSX13_HUMmWA@mail.gmail.com>
Subject: Re: [PATCH v6] arm64: Expose FAR_EL1 tag bits in sigcontext
To: Dave Martin <Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_192908_412351_AE7CDF0B 
X-CRM114-Status: GOOD (  31.64  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Eric W. Biederman" <ebiederm@xmission.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Oleg Nesterov <oleg@redhat.com>,
 Kostya Serebryany <kcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Evgenii Stepanov <eugenis@google.com>, Richard Henderson <rth@twiddle.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 2:26 AM Dave Martin <Dave.Martin@arm.com> wrote:
>
> On Wed, May 20, 2020 at 09:55:03AM +0100, Will Deacon wrote:
> > On Tue, May 19, 2020 at 03:00:12PM -0700, Peter Collingbourne wrote:
> > > On Mon, May 18, 2020 at 2:53 AM Dave Martin <Dave.Martin@arm.com> wrote:
> > > > On Thu, May 14, 2020 at 05:58:21PM -0700, Peter Collingbourne wrote:
> > > > > diff --git a/arch/arm64/kernel/signal.c b/arch/arm64/kernel/signal.c
> > > > > index baa88dc02e5c..5867f2fdbe64 100644
> > > > > --- a/arch/arm64/kernel/signal.c
> > > > > +++ b/arch/arm64/kernel/signal.c
> > > > > @@ -648,6 +648,7 @@ static int setup_sigframe(struct
> > > > > rt_sigframe_user_layout *user,
> > > > >                 __put_user_error(ESR_MAGIC, &esr_ctx->head.magic, err);
> > > > >                 __put_user_error(sizeof(*esr_ctx), &esr_ctx->head.size, err);
> > > > >                 __put_user_error(current->thread.fault_code,
> > > > > &esr_ctx->esr, err);
> > > > > +               current->thread.fault_code = 0;
> > > >
> > > > Perhaps, but we'd need to be careful.  For example, can we run out of
> > > > user stack before this and deliver a SIGSEGV, but with the old
> > > > fault_code still set?  Then we'd emit the old fault code with the
> > > > new "can't deliver signal" signal, which doesn't make sense.
> > > >
> > > > Stuff may also go wrong with signal prioritisation.
> > > >
> > > > If a higher-priority signal (say SIGINT) comes in after a data abort
> > > > enters the kernel but before the resulting SIGSEGV is dequeued for
> > > > delivery, wouldn't we deliver SIGINT first, with the bogus fault code?
> > > > With your change we'd then have cleared the fault code by the time we
> > > > deliver the SIGSEGV it actually relates to, if I've understood right.
> > > >
> > > > Today, I think we just attach that fault code to every signal that's
> > > > delivered until something overwrites or resets it, which means that
> > > > a signal that needs fault_code gets it, at the expense of attaching
> > > > it to a bunch of other random signals too.
> > > >
> > > >
> > > > Checking the signal number and si_code might help us to know what we
> > > > should be doing with fault_code.  We need to have sure userspace can't
> > > > trick us with a non kernel generated signal here.  It would also be
> > > > necessary to check how PTRACE_SETSIGINFO interacts with this.
> > >
> > > With these possible interactions in mind I think we should store the
> > > fault code and fault address in kernel_siginfo instead of
> > > thread_struct (and clear these fields when we receive a siginfo from
> > > userspace, i.e. in copy_siginfo_from_user which is used by
> > > ptrace(PTRACE_SETSIGINFO) among other places). That way, the
> > > information is clearly associated with the signal itself and not the
> > > thread, so we don't need to worry about our signal being delivered out
> > > of order.
> >
> > Hmm, I can't see a way to do that that isn't horribly invasive in the core
> > signal code. Can you?

I think I've come up with a way that doesn't seem to be too invasive.
See patch #1 of the series that I'm about to send out.

> > But generally, I agree: the per-thread handling of fault_address and
> > fault_code appears to be quite broken in the face of signal prioritisation
> > and signals that don't correspond directly to hardware trap. It would be
> > nice to have some tests for this...
> >
> > If we want to pile on more bodges, perhaps we could stash the signal number
> > to which the fault_{address,code} relate, and then check that at delivery
> > and clear on a match. I hate it.
>
> I agree with Daniel's suggestion in principle, but I was also concerned
> about whether it would be too invasive elsewhere.
>
> Question though: does the core code take special care to make sure that
> a force_sig cannot be outprioritised by a regular signal?  If so,
> perhaps we get away with it.  I ask this, because the same same issue
> may be hitting other arches otherwise.

Not as far as I can tell. There does appear to be prioritisation for
synchronous signals [1] but as far as I can tell nothing to
distinguish one of these signals from one with the same signal number
sent from userspace (e.g. via kill(2)).

Peter

[1] https://github.com/torvalds/linux/blob/b85051e755b0e9d6dd8f17ef1da083851b83287d/kernel/signal.c#L222

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
