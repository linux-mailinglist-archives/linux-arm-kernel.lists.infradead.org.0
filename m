Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1466E1E4CED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:18:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3rSKmRlrRmmkBPpHeAEni9Vm48Q1l5fb3leq6m+JaI=; b=EMApcc94F4VNZi
	eB0lkF0Tuc8erWeeKRjjWuLiurMw5hATd38jH8nE5KPg4FyV1jtv1fvBx1Ca8j93oc6X2U/V/5I6j
	0UysRyLbA4G7VGMQZBUPDGKtqrGHy6mqbwvCfkTWVZj+BGq3AKWI5RQRu8WbusX9gF+ogeIEn5MFW
	l8kkV4vh1MAfulqtXaglbJ4VaW2ysp5RKxZnG3rOUcy9+nVgfedlQ5wYBsB5hamshPy/fcKM36RON
	tc7GZ4XqtwF8mrQm2KLGg41gRAc8AK8/wUMAjoTqhqjZSCFJ8Y/EIL3BWKt/vt576HBYoLkirW6OU
	Al2W66pUEnuRqhA1xs9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0ck-0004aI-Hf; Wed, 27 May 2020 18:17:54 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0cb-0004Zo-M0
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:17:47 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ci21so1923967pjb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:17:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sfeuf1RcsifrB3Z4RHr75dVIcka7dq4SQp4hnMKidtE=;
 b=jW9I6IcISPBM5odZ0BBjMleOhp3HrTz9i9z9t14jKrriGmH38qc4vC4E7I7/9cJ2SM
 H/jUBbMYY0HmfRStYhkSugbSHV5HxjSC9y37pi78dxd6I23oImiF5in+948rZ+zBhizp
 7jKLslPhjxB4C/PiKSQKABEF9x5ifrbEBOfqbUumjhb2k6NLf7r9gsr86IG2lqWCSx5V
 wHRkvgfhXWOXK6u5JMHoQSRNkrOOb7UgEXE78GT9bQcYIX5tLLiAJqjfu90k5O6QjvO9
 /nPSE9QpMJG4R+YNscIU4e9LW+m9lTxcjktaQmrV9jJZPz/VJr0Nln2Fy9jnRIirunBr
 jBFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sfeuf1RcsifrB3Z4RHr75dVIcka7dq4SQp4hnMKidtE=;
 b=s+P1szvo+m367cIuVyad5EGdhNBKbBq2YTgepunPGCJ1z4powapzP6dzDsCfAJkAQo
 O1nshD1f6q4bx+HiK+/ry5hRJiFNjH3xm61pphhlgLNaTqL7dImqeM1dxUEPdlGCZPYo
 v4yeKQF0dQNr2fTvBTRZVlpFuUEFJ1vcIfDj9R2Q+o3ayBsDPiVTzj7rhV+au9Bfqw23
 Iv+huQRwuuULHUPkJzG/893SqBQToYN4TJdODJw9BFA4e789ShRXAVdnywXtOFYtlhpP
 vODbeS2bhN5rnoMy2jwNx5w1quKA1w2cGFOcRcbA9oOUt8QY4BfZ9XKc9heqFXQ+btPp
 i4Bg==
X-Gm-Message-State: AOAM530QVA/3+Ii7GLrGowOE7CNFxcLcs6AyxW5SnCnX27/jVNG6ujzA
 A4eK82sx7esHd3lvpdV/ueEkodWthGGhD49+6RSwSw==
X-Google-Smtp-Source: ABdhPJyjh15doArAoxCqTXh0jXL58m+0M+ODK5t8I5EYjY3oEL4CWvhsrwLclt6q37m0hfEZn9W/NelVh8W+dscvGLM=
X-Received: by 2002:a17:90a:4e8c:: with SMTP id
 o12mr5942532pjh.25.1590603464524; 
 Wed, 27 May 2020 11:17:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
 <20200527180839.GA16411@willie-the-truck>
In-Reply-To: <20200527180839.GA16411@willie-the-truck>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 27 May 2020 11:17:33 -0700
Message-ID: <CAKwvOdm5hGzJ0WY_GAywRZ1c8MkA=H7imY0rrVgB4MgtyJ+iRg@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_111745_738482_74D01A1D 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:08 AM Will Deacon <will@kernel.org> wrote:
>
> On Wed, May 27, 2020 at 10:55:24AM -0700, Nick Desaulniers wrote:
> > On Wed, May 27, 2020 at 6:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 2020-05-26 18:31, Nick Desaulniers wrote:
> > > > Custom toolchains that modify the default target to -mthumb cannot
> > > > compile the arm64 compat vdso32, as
> > > > arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > > > contains assembly that's invalid in -mthumb.  Force the use of -marm,
> > > > always.
> > >
> > > FWIW, this seems suspicious - the only assembly instructions I see there
> > > are SWI(SVC), MRRC, and a MOV, all of which exist in Thumb for the
> > > -march=armv7a baseline that we set.
> > >
> > > On a hunch, I've just bodged "VDSO_CFLAGS += -mthumb" into my tree and
> > > built a Thumb VDSO quite happily with Ubuntu 19.04's
> > > gcc-arm-linux-gnueabihf. What was the actual failure you saw?
> >
> > From the link in the commit message: `write to reserved register 'R7'`
> > https://godbolt.org/z/zwr7iZ
> > IIUC r7 is reserved for the frame pointer in THUMB?
> >
> > What is the implicit default of your gcc-arm-linux-gnueabihf at -O2?
> > -mthumb, or -marm?
>
> Hmm, but this *is* weird because if I build a 32-bit kernel then I get
> either an ARM or a Thumb-2 VDSO depending on CONFIG_THUMB2_KERNEL. I'm
> not sure if that's deliberate, but both build and appear to work.

That's because there's 3 VDSO's when it comes to ARM:
arm64's 64b vdso: arch/arm64/kernel/vdso
arm64's 32b vdso: arch/arm64/kernel/vdso32/
arm's 32b vdso: arch/arm/kernel/vdso.c

When you build a 32b kernel, you're only making use of the last of
those three; the arm64 vdso and vdso32 code is irrelevant.
This patch is specific to the second case, which is the 32b compat
vdso for a 64b kernel.

>
> I'll drop this patch for now, while we figure it out a bit more.
>
> Cheers,
>
> Will



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
