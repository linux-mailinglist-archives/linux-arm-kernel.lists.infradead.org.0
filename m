Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A12A646F19
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 10:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzlA3ItMOwlpJjx/R+n1dQO111XQ41ZzIIrhZPmh8RY=; b=f0Pbx/RWGIw4yx
	i24q8NeegsYt3aa9BMpsPIyiqfivXXi7R6fPnISZITkk4JtdPVsThpIXpbHxGU4b02ne0nA/cISzv
	EwsRpClzjzhDYHw7b4ZBZvQPIfUSHnx+j6kDcKx6oAb2ZXmbrQ/OKJc0pKuYd6Nmnb/d3Kb5J9+UP
	8mbZv4lBolyCg1ogyCiipfY4Ngnl8GjgfDFoX1Hn2eFmtAkPOI8TB3Hd7QkvIvkFlmAyZvPRAOuP4
	OCzccQBHsBQsLSs5GP3p+2yMx6c2w6wXCOofynW2i/H6XR88iHu+6PjSc1i42a5OOImzFHkqm3b3r
	kgt4TFzPvHdQq5rdR6Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hc4Lp-0006Tv-Kz; Sat, 15 Jun 2019 08:47:53 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hc4LU-0006TZ-AP
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 08:47:34 +0000
Received: by mail-io1-xd41.google.com with SMTP id w25so10916033ioc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 15 Jun 2019 01:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CQIeCnt1AsA94ywJQw2hHXpqHxAaixVgEOd73UMhR9A=;
 b=HtVAF8JGfXGtOsKn/5hM4jRmWuZDCxK4P1zPKEn8a/W1ElFoLR0yxiljTiXqDFRN9w
 uce22IF6s/ZbcZINbvHP03ObxEO1YTv9Ip5P6Dd1hct7PsfAyMGwKivGcbUz3HKmbwR+
 FpIXs1XzRfzFepK/TD1J/eqpUyDg4KuDlcy0VMt48B94/vAHwA2PTHizRfi5lWFbFbiF
 WllwKHfQ37mU52orMh5JG1HbNF5BnxiHGQ4cjfQfkNuXEoPW1QfnTZTJfVr/e7SPTmzo
 B45LKuV/ATZzQFm7Me7KR6PnbVuiJqGqmbKo89KnLnQBDcUuC9syIHM//N+LAYvSLS1S
 zJ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CQIeCnt1AsA94ywJQw2hHXpqHxAaixVgEOd73UMhR9A=;
 b=P1023w4LEDfutQbXTksQBatUStlrfgvRqY8/HBQlyNN6/eJyYzmkCGTadHIC06CdqU
 Nfmuc10BDJMDfFKIc37vp5FwSMBeE/B//9dW45lV2XvPaIzZrwHXM/QLhjRyEqB8mU17
 TpJ4VtPDql9prDcElH+QRWHq/I6Orz/q/SLIlyFj9P+Y6C5TauM08uC1LkLaV4/20ACm
 Rl+aLaTo3qJ5dHxGEnTbawYAm6tCLX8lU5PTbuPXcpQCYgwTD0P8iG4TBzRWYEEHkMk1
 K0bdbcS9S+3HrorZE2YP59ugwbawRkbEvFgVMi95kLVoXA6reioZH+ERdqC4eF52l5sM
 dckA==
X-Gm-Message-State: APjAAAVM8so1wW5A9KbwjlQg0zsQ0Bu0h06mCxPVCX57LO4/HsLFODgz
 +eJlFOoGbYOQZqCqMTS3TkgjYD42Jh0CA0YvOSOg9Q==
X-Google-Smtp-Source: APXvYqwFMTWQEehXvCimHm7jziuGsyJXKdLo7cMtRP4IicmyX8EmmlCo7hLF6O0vBLtfullbb5IKTHnNO1vZBWbmf/A=
X-Received: by 2002:a02:9143:: with SMTP id b3mr46140454jag.12.1560588450839; 
 Sat, 15 Jun 2019 01:47:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
 <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
 <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
 <20190612093151.GA11554@brain-police>
 <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
 <20190614095846.GC10506@fuggles.cambridge.arm.com>
 <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
 <20190614103850.GG10659@fuggles.cambridge.arm.com>
 <201906142026.1BC27EDB1E@keescook>
In-Reply-To: <201906142026.1BC27EDB1E@keescook>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Sat, 15 Jun 2019 10:47:19 +0200
Message-ID: <CAKv+Gu_XuhgUCYOeykrbaxJz-wL1HFrc_O+HeZHqaGkMHd2J9Q@mail.gmail.com>
Subject: Re: [RFC] Disable lockref on arm64
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_014732_368860_23EE3814 
X-CRM114-Status: GOOD (  39.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 15 Jun 2019 at 06:21, Kees Cook <keescook@chromium.org> wrote:
>
> tl;dr: if arm/arm64 can catch overflow, untested dec-to-zero, and
> inc-from-zero, while performing better than existing REFCOUNT_FULL,
> it's a no-brainer to switch. Minimum parity to x86 would be to catch
> overflow and untested dec-to-zero. Minimum viable protection would be to
> catch overflow. LKDTM is your friend.
>
> Details below...
>
> On Fri, Jun 14, 2019 at 11:38:50AM +0100, Will Deacon wrote:
> > On Fri, Jun 14, 2019 at 12:24:54PM +0200, Ard Biesheuvel wrote:
> > > On Fri, 14 Jun 2019 at 11:58, Will Deacon <will.deacon@arm.com> wrote:
> > > > On Fri, Jun 14, 2019 at 07:09:26AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > > > > x86 added a arch-specific fast refcount implementation - and the commit
> > > > > specifically notes that it is faster than cmpxchg based code[1].
> > > > >
> > > > > There seems to be an ongoing effort to move over more and more subsystems
> > > > > from atomic_t to refcount_t(e.g.[2]), specifically because refcount_t on
> > > > > x86 is fast enough and you get some error checking atomic_t that does not
> > > > > have.
>
> For clarity: the choices on x86 are: full or fast, where both catch
> the condition that leads to use-after-free that can be unconditionally
> mitigated (i.e. refcount overflow-wrapping to zero: the common missing
> ref count decrement). The _underflow_ case (the less common missing ref
> count increment) can be exploited but nothing can be done to mitigate
> it. Only a later increment from zero can indicate that something went
> wrong _in the past_.
>
> There is not a way to build x86 without the overflow protection, and
> that was matched on arm/arm64 by making REFCOUNT_FULL unconditionally
> enabled. So, from the perspective of my take on weakening the protection
> level, I'm totally fine if arm/arm64 falls back to a non-FULL
> implementation as long as it catches the overflow case (which the prior
> "fast" patches totally did).
>
> > > > Correct, but there are also some cases that are only caught by
> > > > REFCOUNT_FULL.
> > > >
> > > Yes, but do note that my arm64 implementation catches
> > > increment-from-zero as well.
>
> FWIW, the vast majority of bugs that refcount_t has found has been
> inc-from-zero (the overflow case doesn't tend to ever get exercised,
> but it's easy for syzkaller and other fuzzers to underflow when such a
> path is found). And those are only found on REFCOUNT_FULL kernels
> presently, so it'd be nice to have that case covered in the "fast"
> arm/arm64 case too.
>
> > Ok, so it's just the silly racy cases that are problematic?
> >
> > > > > Do you think Ard's patch needs changes before it can be considered? I
> > > > > can take a look at that.
> > > >
> > > > I would like to see how it performs if we keep the checking inline, yes.
> > > > I suspect Ard could spin this in short order.
> > >
> > > Moving the post checks before the stores you mean? That shouldn't be
> > > too difficult, I suppose, but it will certainly cost performance.
> >
> > That's what I'd like to assess, since the major complaint seems to be the
> > use of cmpxchg() as opposed to inline branching.
> >
> > > > > > Whatever we do, I prefer to keep REFCOUNT_FULL the default option for arm64,
> > > > > > so if we can't keep the semantics when we remove the cmpxchg, you'll need to
> > > > > > opt into this at config time.
> > > > >
> > > > > Only arm64 and arm selects REFCOUNT_FULL in the default config. So please
> > > > > reconsider this! This is going to slow down arm64 vs. other archs and it
> > > > > will become worse when more code adopts refcount_t.
> > > >
> > > > Maybe, but faced with the choice between your micro-benchmark results and
> > > > security-by-default for people using the arm64 Linux kernel, I really think
> > > > that's a no-brainer. I'm well aware that not everybody agrees with me on
> > > > that.
> > >
> > > I think the question whether the benchmark is valid is justified, but
> > > otoh, we are obsessed with hackbench which is not that representative
> > > of a real workload either. It would be better to discuss these changes
> > > in the context of known real-world use cases where refcounts are a
> > > true bottleneck.
> >
> > I wasn't calling into question the validity of the benchmark (I really have
> > no clue about that), but rather that you can't have your cake and eat it.
> > Faced with the choice, I'd err on the security side because it's far easier
> > to explain to somebody that the default is full mitigation at a cost than it
> > is to explain why a partial mitigation is acceptable (and in the end it's
> > often subjective because people have different thresholds).
>
> I'm happy to call into question the validity of the benchmark though! ;)
> Seriously, it came up repeatedly in the x86 port, where there was a
> claim of "it's slower" (which is certainly objectively true: more cycles
> are spent), but no one could present a real-world workload where the
> difference was measurable.
>
> > > Also, I'd like to have Kees's view on the gap between REFCOUNT_FULL
> > > and the fast version on arm64. I'm not convinced the cases we are not
> > > covering are such a big deal.
> >
> > Fair enough, but if the conclusion is that it's not a big deal then we
> > should just remove REFCOUNT_FULL altogether, because it's the choice that
> > is the problem here.
>
> The coverage difference on x86 is that inc-from-zero is only caught in
> the FULL case. Additionally there is the internal difference around how
> "saturation" of the value happens. e.g. under FULL a count gets pinned
> either to INT_MAX or to zero.
>
> Since the "fast" arm patch caught inc-from-zero, I would say sure
> ditch FULL in favor of it (though check that "dec-to-zero" is caught:
> i.e. _dec() hitting zero -- instead of dec_and_test() hitting zero). LKDTM
> has extensive behavioral tests for refcount_t, so if the tests show the
> same results before/after, go for it. :) Though note that the logic may
> need tweaking depending on the saturation behavior: right now it expects
> either FULL (INT_MAX/0 pinning) or the x86 saturation (INT_MIN / 2).
>
> Note also that LKDTM has a refcount benchmark as well, in case you want
> to measure the difference between atomic_t and refcount_t in the most
> microbenchmark-y way possible. This is what was used for the numbers in
> commit 7a46ec0e2f48 ("locking/refcounts, x86/asm: Implement fast
> refcount overflow protection"):
>
>  2147483646 refcount_inc()s and 2147483647 refcount_dec_and_test()s:
>                  cycles        protections
>  atomic_t         82249267387  none
>  refcount_t-fast  82211446892  overflow, untested dec-to-zero
>  refcount_t-full 144814735193  overflow, untested dec-to-zero, inc-from-zero
>
> Also note that the x86 fast implementations adjusted memory ordering
> slightly later on in commit 47b8f3ab9c49 ("refcount_t: Add ACQUIRE
> ordering on success for dec(sub)_and_test() variants").
>

Thanks Kees.

That acquire ordering patch appears to carry over cleanly . So the
remaining question Will had was whether it makes sense to do the
condition checks before doing the actual store, to avoid having a time
window where the refcount assumes its illegal value. Since arm64 does
not have memory operands, the instruction count wouldn't change, but
it will definitely result in a performance hit on out-of-order CPUs.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
