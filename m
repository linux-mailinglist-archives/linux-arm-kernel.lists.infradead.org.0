Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1661E4F02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 22:15:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jOE4wwHwwWMXATXaoh6J916n6hV/h+bo3kdNvhzp1Y=; b=BVbtwlYSo+b97k
	Zf9p4s0KunuBxYoSvpXxoMiweCcT7dVDfTb/12K4wlF/U7tFMAp9PaMpVN4n3lJWmiuC0r/fgwL9G
	T8KLSnYwpI12W8NL5wdgiLXlLdPOEQUbc7GOGm8okqoQUYxgs7sotU8JPLxqqCnubHFadNPn9x0Tm
	EEqQVnkLpS05h5ritMZ4LAEFYlU1jgOvVmNvJ/B5+5CfdGbkJH3z6yk/IRdAv2jMlkbx76TOwLFJc
	ffidXo86SaRaNmWLa3F/TAxvbs7qWx+m1RQS/ifPPotuDLabwvR2dzN3z5XIJ/qut1BDjyTvNZ+mR
	cjKnenBR3VV4cZlYhIRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je2SN-00020B-0a; Wed, 27 May 2020 20:15:19 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je2S5-0001FA-Jq
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 20:15:03 +0000
Received: by mail-pj1-x1041.google.com with SMTP id nu7so2098664pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 13:15:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FfdtyyVLKdq4NOXXZJIyNw3sD+oufFVMDv2SJ2Qrq/A=;
 b=iOS01wcS1koYPOrmLcJdGte4hEdREZewrFPmwl/ApUOoPSbaa6h1EGPT+K5AzRcK0q
 1IwXjAPfTKsALyRr4GzqzFCVp+xdSFzkrIzwgiSbVtTJsCrxvqHPVVzZcM/NAp6PU3Vb
 dHxxD1ZX+D45FuEy6e3b2MV3QvQEDGYnfyfF0dmosVnDcQn4kqwk6Ea2HjPYVf/2VVnv
 J1spBnWL7rCAOGDrnPQ+F1Q7dL2kCiEp1hB94bxNcc8WiUysLnCVr8BR9ee++3la2qUl
 RwqF89loSOdPVzMUkoJZAM2EtcxsvAUn2GssB5F7zLAEsMkiWm6+hQJyqq3MAtMLmYUS
 K0lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FfdtyyVLKdq4NOXXZJIyNw3sD+oufFVMDv2SJ2Qrq/A=;
 b=RQLkrZfo3DuKaoDnZvJCiJQgiJaONal4XVh0yG6+NREn+zjez9dYlQQEtYR8IC9ex2
 kFhaAjk1AqkW/lRPwIQyit+s7kFaTvruZJtQI6SFLBzMbdnZDmlpXgtFlQfSM/fGLZjp
 TCTiBR7ttHlBFThWvSsIwBUtFwLGMPXct6IHAlrnkKh1MMxqasq1y45eMPKcsxqz5PyO
 yqjbPAhGtRFnf6ziObC0gbdlcm44O30tzt4zFgGZIdx3yM+IhWlA53pKSmZxDafU3EDa
 Lcdp+bKjen1BPICYEQ2CIs4r1ZTAQMYBZO7VLJ1Hy1/PpijQs5nCd36nCGNa1dKOASNt
 zfjg==
X-Gm-Message-State: AOAM5306Gpfn5AAkdPzU9bponFUO26jXQXrNEXsrMplXQN28CjZd0xOv
 MUsUTzBqhakE4u/esjUsrdda9HeIRbS2jhsmk7DtxA==
X-Google-Smtp-Source: ABdhPJxkmmUDLdBND/oo7tPsXbQ7K5srOsr7qRUdoa5Z7H024vJyqnQlLqDUWZ9ULjMDKkGRQvhC0J39xq0J1s/D86s=
X-Received: by 2002:a17:90a:4e8c:: with SMTP id o12mr89158pjh.25.1590610499964; 
 Wed, 27 May 2020 13:14:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200526173117.155339-1-ndesaulniers@google.com>
 <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
 <CAKwvOd=Oy_OfRbL6-q-3CAHxWBNBKE+HkfNfgCiP726u+4dU1Q@mail.gmail.com>
 <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
In-Reply-To: <34f261f7-c4b5-a628-9a4c-eb97b75fba52@arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 27 May 2020 13:14:48 -0700
Message-ID: <CAKwvOdn1W4C5HRJEch5PS-Atcmysh0UD+VZX_wi8tviGwhmM7Q@mail.gmail.com>
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_131501_678499_B4B4A91E 
X-CRM114-Status: GOOD (  18.67  )
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
 Manoj Gupta <manojgupta@google.com>, Kristof Beyls <Kristof.Beyls@arm.com>,
 Luis Lozano <llozano@google.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 victor.campos@arm.com, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 12:28 PM Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2020-05-27 18:55, Nick Desaulniers wrote:
> > On Wed, May 27, 2020 at 6:45 AM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 2020-05-26 18:31, Nick Desaulniers wrote:
> >>> Custom toolchains that modify the default target to -mthumb cannot
> >>> compile the arm64 compat vdso32, as
> >>> arch/arm64/include/asm/vdso/compat_gettimeofday.h
> >>> contains assembly that's invalid in -mthumb.  Force the use of -marm,
> >>> always.
> >>
> >> FWIW, this seems suspicious - the only assembly instructions I see there
> >> are SWI(SVC), MRRC, and a MOV, all of which exist in Thumb for the
> >> -march=armv7a baseline that we set.
> >>
> >> On a hunch, I've just bodged "VDSO_CFLAGS += -mthumb" into my tree and
> >> built a Thumb VDSO quite happily with Ubuntu 19.04's
> >> gcc-arm-linux-gnueabihf. What was the actual failure you saw?
> >
> >  From the link in the commit message: `write to reserved register 'R7'`
> > https://godbolt.org/z/zwr7iZ
> > IIUC r7 is reserved for the frame pointer in THUMB?
>
> It can be, if you choose to build with frame pointers and the common
> frame pointer ABI for Thumb code that uses r7. However it can also be
> for other things like the syscall number in the Arm syscall ABI too.

Ah, right, with -fomit-frame-pointer, this error also goes away.  Not
sure if we prefer either:
- build the compat vdso as -marm always or
- disable frame pointers for the vdso (does this have unwinding implications?)
- other?

> I
> take it Clang has decided that writing syscall wrappers with minimal
> inline asm is not a thing people deserve to do without arbitrary other
> restrictions?

Was the intent not obvious? We would have gotten away with it, too, if
wasn't for you meddling kids and your stupid dog! /s
https://www.youtube.com/watch?v=hXUqwuzcGeU
Anyways, this seems to explain more the intentions:
https://reviews.llvm.org/D76848#1945810
+ Victor, Kristof (ARM)
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
