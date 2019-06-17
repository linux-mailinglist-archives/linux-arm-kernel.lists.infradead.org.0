Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B5648A0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 19:26:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nx3wl5sOeuQqMnyqVdP34kI9w9kqH51a6YiJmKg0bM0=; b=j0T7jYVNndj4jM
	4/pL8AAGQNr+Qxc33uiyQvI53rif37l+Gv2jH932hE2q9dx4Nj6t6+s4vWGqKaN8Wt7PkYGymfati
	w1ogtNnlo1GSeb/MeT53GlRHmYW45PxD5OUMfalDg0dvo+Cs12s1UjDO+f/PCHERyr8dzwoaFvc0E
	aC2+yKMEfmB3FypaNbznM/OT8uVgDOCgfDo/QevXEwt/711aWgUCh4qtD/txo3/YcHt/zakQoQutg
	l+hxU8G0XwI5ZC7nC4G8A7AzA9fEHRck+CBnxACg31ApKSwRByIofhwiafdPoJ0K8zN056rZLiqwn
	8wo4m6TjAIjRMi42l60g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvOv-00075Q-T4; Mon, 17 Jun 2019 17:26:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvOi-00073v-Mr
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 17:26:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D841628;
 Mon, 17 Jun 2019 10:26:23 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B94A93F246;
 Mon, 17 Jun 2019 10:26:22 -0700 (PDT)
Date: Mon, 17 Jun 2019 18:26:20 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC] Disable lockref on arm64
Message-ID: <20190617172620.GK30800@fuggles.cambridge.arm.com>
References: <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
 <20190614095846.GC10506@fuggles.cambridge.arm.com>
 <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
 <20190614103850.GG10659@fuggles.cambridge.arm.com>
 <201906142026.1BC27EDB1E@keescook>
 <CAKv+Gu_XuhgUCYOeykrbaxJz-wL1HFrc_O+HeZHqaGkMHd2J9Q@mail.gmail.com>
 <201906150654.FF4400F7C8@keescook>
 <CAKv+Gu9-rZ16Nb9t3=knzW0BHu0eNxQoPwWS4c8UMMm=2iqiuw@mail.gmail.com>
 <201906161429.BCE1083@keescook>
 <CAKv+Gu_8ibO4D01DZv6KjL2GnvKuVBVnt=doxkN0w=4utJ7NvQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_8ibO4D01DZv6KjL2GnvKuVBVnt=doxkN0w=4utJ7NvQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_102624_834397_65DAB71C 
X-CRM114-Status: GOOD (  21.52  )
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
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 01:33:19PM +0200, Ard Biesheuvel wrote:
> On Sun, 16 Jun 2019 at 23:31, Kees Cook <keescook@chromium.org> wrote:
> > On Sat, Jun 15, 2019 at 04:18:21PM +0200, Ard Biesheuvel wrote:
> > > Yes, I am using the same saturation point as x86. In this example, I
> > > am not entirely sure I understand why it matters, though: the atomics
> > > guarantee that the write by CPU2 fails if CPU1 changed the value in
> > > the mean time, regardless of which value it wrote.
> > >
> > > I think the concern is more related to the likelihood of another CPU
> > > doing something nasty between the moment that the refcount overflows
> > > and the moment that the handler pins it at INT_MIN/2, e.g.,
> > >
> > > > CPU 1                   CPU 2
> > > > inc()
> > > >   load INT_MAX
> > > >   about to overflow?
> > > >   yes
> > > >
> > > >   set to 0
> > > >                          <insert exploit here>
> > > >   set to INT_MIN/2
> >
> > Ah, gotcha, but the "set to 0" is really "set to INT_MAX+1" (not zero)
> > if you're using the same saturation.
> >
> 
> Of course. So there is no issue here: whatever manipulations are
> racing with the overflow handler can never result in the counter to
> unsaturate.
> 
> And actually, moving the checks before the stores is not as trivial as
> I thought, E.g., for the LSE refcount_add case, we have
> 
>         "       ldadd           %w[i], w30, %[cval]\n"                  \
>         "       adds            %w[i], %w[i], w30\n"                    \
>         REFCOUNT_PRE_CHECK_ ## pre (w30))                               \
>         REFCOUNT_POST_CHECK_ ## post                                    \
> 
> and changing this into load/test/store defeats the purpose of using
> the LSE atomics in the first place.
> 
> On my single core TX2, the comparative performance is as follows
> 
> Baseline: REFCOUNT_TIMING test using REFCOUNT_FULL (LSE cmpxchg)
>       191057942484      cycles                    #    2.207 GHz
>       148447589402      instructions              #    0.78  insn per
> cycle
> 
>       86.568269904 seconds time elapsed
> 
> Upper bound: ATOMIC_TIMING
>       116252672661      cycles                    #    2.207 GHz
>        28089216452      instructions              #    0.24  insn per
> cycle
> 
>       52.689793525 seconds time elapsed
> 
> REFCOUNT_TIMING test using LSE atomics
>       127060259162      cycles                    #    2.207 GHz

Ok, so assuming JC's complaint is valid, then these numbers are compelling.
In particular, my understanding of this thread is that your optimised
implementation doesn't actually sacrifice any precision; it just changes
the saturation behaviour in a way that has no material impact. Kees, is that
right?

If so, I'm not against having this for arm64, with the premise that we can
hide the REFCOUNT_FULL option entirely given that it would only serve to
confuse if exposed.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
