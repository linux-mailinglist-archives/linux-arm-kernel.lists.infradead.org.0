Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7ED1F4A30
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 01:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1U3q39V5QJD7RjCDSzwogV9z/Csg0XW5DwV96DDYm/Y=; b=lLyppGqt51/s9i
	Lqf2WFEeOMFG6iI1lVkopR2676ZGq6GqNam2gB819xiCFnQPnOxo46o9KgRsjlOzvJd6ZBqDFzW9W
	ncHLZt78lUZ6jp1v0ZUQ0ZoXkxn37I7joI0y00Sdm5wBxBoITTrdcIAVx66LUPV94dDJaI6NX4ns3
	NFwp9a4tmjJ6264hdF4ueEuvBXDvNgt58JY6v9iin7hIGLo+NAzJpMvFvBDCqDUrDTNIZkn2g0wQ6
	VMVUf40Z7l1hiyVQJnFBlOPHsit7R7AZSPF0rPDSP+uf2u/h3NS/s+cPcBUT/JXANJU+g/rlk+5Dk
	zX52icK7Fhb6fr0ZKsWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jio5q-0007z1-9W; Tue, 09 Jun 2020 23:55:46 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jio5a-0007t7-VY
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 23:55:32 +0000
Received: by mail-pl1-x642.google.com with SMTP id t16so214812plo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 16:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DXx+4AN08cMWPSOuEs/2ai9rnq4nQ97k7cBaiF4BCfg=;
 b=q66wWDpXk0iJUR8I2l43jCIuJGlrauLKZMeHmBNa57NglWax7PcrYE1fThpKNf4lL9
 dJwVP8bzub3cQpq4+HtD1aiG0DfT0jWaV5zXSQ4gRFA8vSb+hD8g0079rVCkXE/4H3Cr
 01GeTEYPH17Uf2NjOHzR31pkyFG512jFzIK40TvMzB4nKG7Khz317FPml5U9iXEo7xbB
 /ZA4zVz3lHNK8+v3f84B3h0mVBefldFokJ1umPG0FP1IM7b+nBGszfW8o6EO3KAh+WCM
 o0EZXMNB9ssTfGCirm0e3hODwLCIdGaOydlrYGet3V9u335J4/l49P0fVyzDG70NgZnz
 hM7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DXx+4AN08cMWPSOuEs/2ai9rnq4nQ97k7cBaiF4BCfg=;
 b=uG7aAKD8j9+lWDK4UV3QQFoB41s+FVy1aUaV7u4WHR4N+heE4S0MSpJxQe016sfs7Z
 uJr8nvksVxWlqySwjDwdwZUwdKdusEOoa7WHEYJGkx9FYwHhJTxXP7wdPuGS5ht6PuBs
 oPQVafwCvRGSDhr7lemvK5Md0sZH/Tn6Pe1lcACsiE5klKPgPRd3YsI5GGquNlIJH7bV
 hPRomv6dwnl/KDBsv1c1ZbNJSvOpyY4hrNXs7nuQLgkaXus2fDqN5/Tlh3j87jHomrUe
 Wrm/v5n7m+QqomWYxtVqmvOFtQGxCp37ehOF6HvWPwuESBxrlq6hvgVbhtGYx6v5xnoP
 kq+Q==
X-Gm-Message-State: AOAM530AVCAlifgVOZzN/+hrLFsEqRVYrUrXThhX01cLSrnQfB5JPyIi
 vzaKRZM3aGfcxDmUSNesMaIfO39PjM2pideEhswL6A==
X-Google-Smtp-Source: ABdhPJx8vOo+ybAa4WU/mOk+7qaJQ43m6g1xN3IH64PNoMik3Hg47aoib1u6tVw0WL48Kk7Xg4RcHe0bHBi8vupZLlY=
X-Received: by 2002:a17:902:fe8b:: with SMTP id
 x11mr686509plm.179.1591746925120; 
 Tue, 09 Jun 2020 16:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200528072031.GA22156@willie-the-truck>
 <20200608205711.109418-1-ndesaulniers@google.com>
 <20200609203502.GA21214@gaia>
In-Reply-To: <20200609203502.GA21214@gaia>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 9 Jun 2020 16:55:13 -0700
Message-ID: <CAKwvOdnDeYQ-tbyW8=tcKcbbFxtDzqk8dCUSzbBYP1amb9a2hg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_165531_030075_B7AE6676 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Masahiro Yamada <masahiroy@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 9, 2020 at 1:35 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 08, 2020 at 01:57:08PM -0700, Nick Desaulniers wrote:
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 7f9d38444d6d..fe9e6b231cac 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -1299,6 +1299,14 @@ config COMPAT_VDSO
> >         You must have a 32-bit build of glibc 2.22 or later for programs
> >         to seamlessly take advantage of this.
> >
> > +config THUMB2_COMPAT_VDSO
> > +     bool "Compile the vDSO in THUMB2 mode"
> > +     depends on COMPAT_VDSO
> > +     default y
> > +     help
> > +       Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
> > +       as -marm.
>
> Now that we understood the issue (I think), do we actually need this
> choice? Why not going for -mthumb -fomit-frame-pointer always for the
> compat vdso?

"Why should the compat vdso be configurable?" is a fair question.  I
don't have an answer, but maybe some of the folks on thread do?

Our problem is more so "if the vdso is built as thumb, we need it also
explicitly built with -fomit-frame-pointer."  Whether it should be
built as thumb, arm, or configurable (and which default to pick in
that case) are still an open questions.  Will asked for it to be
configurable, so I sent a patch making it configurable.

I'm not sure what the tradeoffs would be for a A32 vs T32 compat vdso image.

Is it possible to have hardware that's A64+A32 but not T32, or A64+T32
but not A32? (I suspect not).

I'm not sure whether userspace cares about frame pointer based
unwinding through the vdso, but if it's built as THUMB, then that
likely doesn't work for binaries with A32/T32 interworking.  Whether
the functions in the vdso are faster when built as A32 or T32 I cannot
say.
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
