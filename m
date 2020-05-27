Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D761E50B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:48:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I3RO1gMsoPGJMzk4iyJ9Tk8/sPuZ2Op3y5nZJTPz/gI=; b=M4g/oG7dG9sLJN
	AUlKnQ3oKf9ivw4JIEHAudHQ6Qpb/AJ45Toovq+WKL73RmReq1FTZOb/H5RFXe1z3CllpQW98UfKw
	kytxQjyvW+JUkfCJ/5Ufjcyx+8E95tzBSbib1TsPGlRPiUkX5aHdpNph9QQJCiEAfO0zk6ZRUexs2
	gcw2kZlrHa1ZoPDPnBcdKVBz89hxT2EnJD5cIcD8kjbYls9d6h4C3HAAMElBQIoaVgXCvhwjMPdqA
	TIeBDjS9kubzU433fZrUPsHtXmhM+/Ym9XjW3dHec3tbwz+SI3V5L8AkbPiLY1/BVgLtFmS6hJa8/
	/g0tlkfKcmGihb8E3x8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3uG-0003uQ-0T; Wed, 27 May 2020 21:48:12 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3u5-0003t1-Fr
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 21:48:03 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l73so1415671pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 14:48:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uUE+yaVqbQ0I2ARdSwp4rhmwlgUiG1jizmnSZ18yQmk=;
 b=WGjWZ9LYIG4bhpnAggUwVyC39aV55gk1tlRF6BPT1tDi2QyyI33Yz+MDrB++C+10LA
 P/7SZQi/37ah/zsKAdZVNzCYRUgR3bIl5Mumr12a96S6GfMEofK/jLmxO5LdvjT2xpk7
 vtfFoy1/kfyZqE+oHe0T9wlPXFDD0R0+WaM/1mg72izQm8vu8q7YQxfNpOgGb0u9aRVE
 KzR+CT+hrHKXJ9iZBcwYzS3ikHiF1Gi7d9UcLl/iVHgohcBWN/+HobXQclYwYY1umXvC
 U6IR5LiY7Z+dtOL6ohXAvujCJxMNrd+uTD8l47hlTFJFg7Ay1R5qazeFpToOj8K8gS+0
 8NyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uUE+yaVqbQ0I2ARdSwp4rhmwlgUiG1jizmnSZ18yQmk=;
 b=Vh6K3WCK1/9+e0XX798mBGNsvm9eyvQ47Bc+fjfj+j68x8Us5WizjgyvBo8gvX3oMA
 wY4LO3fEYXgAGe/xMVejEkbem5gqy3oFxf1Uuh0y08ny+33HqRYyjZ1Ku+REGlsYuWas
 KHCVIeDwm+K7nWAT8zkwZro6JRjuQpikLhY7T3wuAybe058czk7S6Az4AiUSe9mKu6Y4
 kTy3fO8PCEYz6ktBI7aBO0vLjcsGfDMarFU2zrs4Y9Rh6Dv3ig5btsgXJSofP5KIKdv4
 8qw4Fi5VndwfTy0oONgwqrRDlVw+VHFR9v3YN9E1rsw+kd4Zgqd2Lpl33xUmtrvjY7De
 TwOw==
X-Gm-Message-State: AOAM530XuOTlBFeDkALsDdmg2+TMYGi88nzNTG/btSmuVEz1YOtMJEWk
 nTMk+3zOQhJhYiC8EyRtUI7Ni+Rc/znOKi5WrdDN8A==
X-Google-Smtp-Source: ABdhPJyh/8Od7/mjuecpRfPBkc+3tMrs5hRTRH6UC/99lw4+qFip0WaLTFVugV8Iu9KOyTA0arufWFYpU/EBAW7ZarI=
X-Received: by 2002:a17:90a:2a4a:: with SMTP id
 d10mr449054pjg.32.1590616079419; 
 Wed, 27 May 2020 14:47:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
 <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
 <CAKwvOdn1W4C5HRJEch5PS-Atcmysh0UD+VZX_wi8tviGwhmM7Q@mail.gmail.com>
 <CAKwvOd=Zxm9TDPNd4Qvn6Ru==FLasiP1xWXMM7ji08VWRjBu2g@mail.gmail.com>
In-Reply-To: <CAKwvOd=Zxm9TDPNd4Qvn6Ru==FLasiP1xWXMM7ji08VWRjBu2g@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 27 May 2020 14:47:46 -0700
Message-ID: <CAKwvOdkM=zEpYXKf1A2vDeV8ys9+TRg7X_Cgb-yV7YhOAkXy3Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_144801_561399_D59996B5 
X-CRM114-Status: GOOD (  24.34  )
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
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 david.spickett@linaro.org, Peter Smith <Peter.Smith@arm.com>,
 Manoj Gupta <manojgupta@google.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Luis Lozano <llozano@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 victor.campos@arm.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 1:31 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, May 27, 2020 at 1:14 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Wed, May 27, 2020 at 12:28 PM Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 2020-05-27 18:55, Nick Desaulniers wrote:
> > > > On Wed, May 27, 2020 at 6:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > > >>
> > > >> On 2020-05-26 18:31, Nick Desaulniers wrote:
> > > >>> Custom toolchains that modify the default target to -mthumb cannot
> > > >>> compile the arm64 compat vdso32, as
> > > >>> arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > > >>> contains assembly that's invalid in -mthumb.  Force the use of -marm,
> > > >>> always.
> > > >>
> > > >> FWIW, this seems suspicious - the only assembly instructions I see there
> > > >> are SWI(SVC), MRRC, and a MOV, all of which exist in Thumb for the
> > > >> -march=armv7a baseline that we set.
> > > >>
> > > >> On a hunch, I've just bodged "VDSO_CFLAGS += -mthumb" into my tree and
> > > >> built a Thumb VDSO quite happily with Ubuntu 19.04's
> > > >> gcc-arm-linux-gnueabihf. What was the actual failure you saw?
> > > >
> > > >  From the link in the commit message: `write to reserved register 'R7'`
> > > > https://godbolt.org/z/zwr7iZ
> > > > IIUC r7 is reserved for the frame pointer in THUMB?
> > >
> > > It can be, if you choose to build with frame pointers and the common
> > > frame pointer ABI for Thumb code that uses r7. However it can also be
> > > for other things like the syscall number in the Arm syscall ABI too.
> >
> > Ah, right, with -fomit-frame-pointer, this error also goes away.  Not
> > sure if we prefer either:
> > - build the compat vdso as -marm always or
> > - disable frame pointers for the vdso (does this have unwinding implications?)
> > - other?
> >
> > > I
> > > take it Clang has decided that writing syscall wrappers with minimal
> > > inline asm is not a thing people deserve to do without arbitrary other
> > > restrictions?
> >
> > Was the intent not obvious? We would have gotten away with it, too, if
> > wasn't for you meddling kids and your stupid dog! /s
> > https://www.youtube.com/watch?v=hXUqwuzcGeU
> > Anyways, this seems to explain more the intentions:
> > https://reviews.llvm.org/D76848#1945810
> > + Victor, Kristof (ARM)
>
> And maybe some other useful data points regarding warning on use of r7
> and frame pointers.
> https://github.com/ClangBuiltLinux/linux/issues/701#issuecomment-591325758
> https://bugs.llvm.org/show_bug.cgi?id=45826
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94986
>
> + Peter (ARM)
> + David, Arnd (Linaro)

Also, when I looked into this briefly, I didn't happen to see anything
in AAPCS that mentions r7 is used as the frame pointer for THUMB.
Does AAPCS not cover THUMB?  It also states the TPCS is obsolete.
https://developer.arm.com/docs/ihi0042/latest
https://static.docs.arm.com/ihi0042/i/aapcs32.pdf

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
