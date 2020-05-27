Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5A61E4F52
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 22:31:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hvwq8hmpaoD2u8oNMmLB5nEZ/UBGVlWax0D0vegT6HY=; b=NIaQO7OhLEBULf
	juTmEH6scf8VHC7cU135KROGnhDhFTVKVhlhbdqVr4KvXCJfiixywgxnXxLhJwHDxV7wU4Xh0WemW
	LxUcq64rCb/hquGD50nfOq+zsWPRn/4KZgDbiLuKv0ORwd3Qy2UFB9vA3vmVs+pfUNRAf2LsIeQ/J
	CFtqGyFeV7HG3CGE3eIE12w2bb+NMO84hwvv0iGTo0SnmF3jllMVm6VaHhNGJhMteDYWcSnvd5lI5
	B2p2Z+OflogHa2WMq9BmYc6m2KTv9my8HAotCTZ4DWPoekl5VExv29FAFCldykmbfZ63XwACne0OX
	Tp8pRId9B5jmL7FP1/rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je2hx-0005UN-9r; Wed, 27 May 2020 20:31:25 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je2hn-0005TU-Gf
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 20:31:17 +0000
Received: by mail-pj1-x1043.google.com with SMTP id fs4so2103633pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 13:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gqTtOxf1VeVKv93J0vI4JCcXB031qmV7s7ROwagrA3E=;
 b=vray6QFipLSa6Zrr1DR1XbG3QjUIDz/wbMWL+WLYA1+neDtywxY3+/s5y+zWzdoB2f
 qcu8k4EXyQPVMggMeGyT/CQ9XK4CBK++Jq3i/kNJYoseBryOweQ4U/JWICMdXEIS/gY9
 PiJfNiDTLhYrsbc/SDK1sXcoIuPAOqUi1ek/KdDACdvra8MZ3+ynrN1HLtTQ0QxUK7zo
 i810G43EuzbbVtDQ7+T4jKwB+NVnKMs7X2zNXRtBM9vXj9JWHlZuNbQXz9MGXiJXlERu
 cUFKBjpcVg9ytJ8L2k8bxE9kDLheC45LReO6csE4GmcfiyocPw0ty4eFWVbamUXeN7Mm
 1siw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gqTtOxf1VeVKv93J0vI4JCcXB031qmV7s7ROwagrA3E=;
 b=ideudB5vieTE4lcxiJ9ttX86ZAycHXGkL6b8IPbU9OwmYg+q6lPlGvSjiNoG1hEIh5
 YMUxUE41R1rAQnjuX0d4nBW2QSPDqXHea0TUOtcbfp3YrUgdEiWYvhKhfR/ZF2072EfA
 sY+E6V+ilw4/SPQXeKeDlaK1dcdH8sCymyEqbuZ+dRwNmK8sjKXUkVgUaYRSqNAA0deM
 SmZiy7QQQpNFs9vYJlzpWRWMbqca8fXOki+V4aP/I69mLvHqRRTX6ooKRqbbPN5CgLkU
 MYLXRmOr/OGm4gBEe4QRRug4SFtHoYW0MmGTXn2I/RcNaD+slX7WC6nTUAsh6L6aSuc4
 7Vfg==
X-Gm-Message-State: AOAM531Nc/oniMYDhY/IC4Dc3GPMdMsZgqvpGqs7MAXnw4AkOHJv2qZb
 2JdTVkbFhytkxrrkmKLp3sGNasIpYYFmzwWehN8ONg==
X-Google-Smtp-Source: ABdhPJygdUZklCY45cKMtHF7+W8TRx7Zi+nO1S9a/7BQuk6a5E/aPgvj4vI0zAAr+LRr8v57FOgpTLXG8R8KUxpiLHc=
X-Received: by 2002:a17:90a:2a4a:: with SMTP id
 d10mr180245pjg.32.1590611474425; 
 Wed, 27 May 2020 13:31:14 -0700 (PDT)
MIME-Version: 1.0
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
 <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
 <CAKwvOdn1W4C5HRJEch5PS-Atcmysh0UD+VZX_wi8tviGwhmM7Q@mail.gmail.com>
In-Reply-To: <CAKwvOdn1W4C5HRJEch5PS-Atcmysh0UD+VZX_wi8tviGwhmM7Q@mail.gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 27 May 2020 13:31:03 -0700
Message-ID: <CAKwvOd=Zxm9TDPNd4Qvn6Ru==FLasiP1xWXMM7ji08VWRjBu2g@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_133115_581274_E8F9DF14 
X-CRM114-Status: GOOD (  21.99  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
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

On Wed, May 27, 2020 at 1:14 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Wed, May 27, 2020 at 12:28 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2020-05-27 18:55, Nick Desaulniers wrote:
> > > On Wed, May 27, 2020 at 6:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
> > >>
> > >> On 2020-05-26 18:31, Nick Desaulniers wrote:
> > >>> Custom toolchains that modify the default target to -mthumb cannot
> > >>> compile the arm64 compat vdso32, as
> > >>> arch/arm64/include/asm/vdso/compat_gettimeofday.h
> > >>> contains assembly that's invalid in -mthumb.  Force the use of -marm,
> > >>> always.
> > >>
> > >> FWIW, this seems suspicious - the only assembly instructions I see there
> > >> are SWI(SVC), MRRC, and a MOV, all of which exist in Thumb for the
> > >> -march=armv7a baseline that we set.
> > >>
> > >> On a hunch, I've just bodged "VDSO_CFLAGS += -mthumb" into my tree and
> > >> built a Thumb VDSO quite happily with Ubuntu 19.04's
> > >> gcc-arm-linux-gnueabihf. What was the actual failure you saw?
> > >
> > >  From the link in the commit message: `write to reserved register 'R7'`
> > > https://godbolt.org/z/zwr7iZ
> > > IIUC r7 is reserved for the frame pointer in THUMB?
> >
> > It can be, if you choose to build with frame pointers and the common
> > frame pointer ABI for Thumb code that uses r7. However it can also be
> > for other things like the syscall number in the Arm syscall ABI too.
>
> Ah, right, with -fomit-frame-pointer, this error also goes away.  Not
> sure if we prefer either:
> - build the compat vdso as -marm always or
> - disable frame pointers for the vdso (does this have unwinding implications?)
> - other?
>
> > I
> > take it Clang has decided that writing syscall wrappers with minimal
> > inline asm is not a thing people deserve to do without arbitrary other
> > restrictions?
>
> Was the intent not obvious? We would have gotten away with it, too, if
> wasn't for you meddling kids and your stupid dog! /s
> https://www.youtube.com/watch?v=hXUqwuzcGeU
> Anyways, this seems to explain more the intentions:
> https://reviews.llvm.org/D76848#1945810
> + Victor, Kristof (ARM)

And maybe some other useful data points regarding warning on use of r7
and frame pointers.
https://github.com/ClangBuiltLinux/linux/issues/701#issuecomment-591325758
https://bugs.llvm.org/show_bug.cgi?id=45826
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94986

+ Peter (ARM)
+ David, Arnd (Linaro)
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
