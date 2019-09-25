Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C629ABE366
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 19:32:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUvyFSEAW9eJo+N48697ldK5yxRObN/ySZFisW6Oohw=; b=ZFnDmu+A1Ow0DC
	iYapONpia9snMZE6/+1nprQRxIY4ZfQEjlXuzBCgq+xyjRlXMmATrldCB8z6zNEbB+STcdghN/rsW
	HeuovxhaGmUEsLWeoxxvk1C/0CU57hfDvkclFeqK75TTfVAaYDD9mR6+ejxaPX9pr1/j4EzrF8DMd
	EGV+br3AEoVkLKll7d8HMloQFpWOE4Sp+UZqDkTwoSCGfh4MZhOCV5bRtxe5YDAlnFLNlMYh1YolA
	WRYiW1Fy7M3do3nPxrdKadkpVrMFB/C+H54D9520spgeZ/zqQwOrWpUoSnjD6+l/xgVJVGzV4HF4B
	ri+4UpXAZSc5h/qelt6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDB9A-00046L-8T; Wed, 25 Sep 2019 17:32:12 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDB8x-00045c-Mj
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 17:32:01 +0000
Received: by mail-pl1-x644.google.com with SMTP id f21so415699plj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 10:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T9jMC9IG3snO17QWN/ztIxptE5ObHM9y3wrRE9rosy4=;
 b=tJbPaZd8No6mBXlk39pF1VnwAu+VU+36E+RQXXRob7D+tkC0JFCvg53yEFwVxhmUEF
 72Al+pifPLwC41lE4kODfF/ZLM6wSYuUju2VMmGnWDo6bcmUC3QmbCQgnAYDgHyedmTI
 7I7QHt8zkAUw3wIZ6rfolSCfy1Lkwenw90lBcIG9bclVeo8S1bDtL1m93U6IXeJiJKck
 jc5WOzLG0q4u5FguEubFJZjXfxcTVrVaFU2u3nJEXEWRR6U1rFvIZEJiEygm9DoEzYCq
 zCo6UgPplDK4KQ9Ald4Xk3/IXFQJXWCmIpUKwx0DTcx8X/YwLL1dmqLm3OE309n2NeLm
 +yAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T9jMC9IG3snO17QWN/ztIxptE5ObHM9y3wrRE9rosy4=;
 b=FqVSXn/ZcMlEH4ZpzlfrDpucIF+cepH7A3SsRN6tmQJx7Qy632ytSXq2eKoHKuh65x
 tYmTBMs9+W971Sd5K4o/ApcocVreJKJI6JqOkLk0kq7aIlNzyHuIHTArh2PoyLFGcY4X
 so8TdXVNtnnMlBC9DsAZQANWq9oNoVbIbGDYSa9DEHAwjih5Ny7ovlNXYoB8h4gwMzeb
 00rOHO5oieiHwyIlon27A0fVnLVcjCRUj407HSm3OdDJm3XgN3c+8yLjE+ebQEsKnfSw
 tHwpKgtbrwBnjQ12vNqwy8URvFnET/K7LHhJ/VsV9e5egGB6QI5wynk4/DdOWADmcjhY
 44WA==
X-Gm-Message-State: APjAAAXIo6Tc98og7NvcNSq+IF7OAqTLZwQCAEzHCahltX3IuegNodTY
 8QxLjfj5TyuMx0mmjl2PoyC9U+6HdYAfw7ZMnA5I4g==
X-Google-Smtp-Source: APXvYqyhIESqzzm+gg0yP7ezEx19FYcGL0tK4r8blzfA2HJBIuYhPZv3aVEEJ1ViytNwQYWogBOpkjL73cQ/l/t7hcE=
X-Received: by 2002:a17:902:8484:: with SMTP id
 c4mr10148671plo.223.1569432717179; 
 Wed, 25 Sep 2019 10:31:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190925130926.50674-1-catalin.marinas@arm.com>
 <CAKwvOdn2Sf7aAt0zqUUqGY6nXg-C3be7An9amy4tfiNr_8ERJw@mail.gmail.com>
 <20190925170838.GK7042@arrakis.emea.arm.com>
In-Reply-To: <20190925170838.GK7042@arrakis.emea.arm.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 25 Sep 2019 10:31:45 -0700
Message-ID: <CAKwvOd=GcF0Tv2-h0LNMvCzx+tm5skKW1J7P=NTf8xYbmPiOPw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Allow disabling of the compat vDSO
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_103159_768712_DD7C8543 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 25, 2019 at 10:08 AM Catalin Marinas
<catalin.marinas@arm.com> wrote:
>
> This is just a temporary hiding of the issue, not a complete fix.

Yep.

> Vincenzo will do the fix later on.

Appreciated, I'm happy to help discuss, review, and test.

> > > - check whether COMPATCC is clang or not rather than CC_IS_CLANG, which
> > >   only checks the native compiler
> >
> > When cross compiling, IIUC CC_IS_CLANG is referring to CC which is the
> > cross compiler, which is different than HOSTCC which is the host
> > compiler.  HOSTCC is used mostly for things in scripts/ while CC is
> > used to compile a majority of the kernel in a cross compile.
>
> We need the third compiler here for the compat vDSO (at least with gcc),
> COMPATCC. I'm tempted to just drop the CONFIG_CROSS_COMPILE_COMPAT_VDSO
> altogether and only rely on a COMPATCC. This way we can add
> COMPATCC_IS_CLANG etc. in the Kconfig checks directly.

Oh, man, yeah 3 compilers in that case:
1. HOSTCC
2. CC
3. COMPATCC

>
> If clang can build both 32 and 64-bit with the same binary (just
> different options), we could maybe have COMPATCC default to CC and add a
> check on whether COMPATCC generates 32-bit binaries.

Cross compilation work differently between GCC and Clang from a
developers perspective. In GCC, at ./configure time you select which
architecture you'd like to cross compile for, and you get one binary
that targets one architecture.  You get a nice compiler that can do
mostly static dispatch at the cost of needing multiple binaries in
admittedly rare scenarios like the one we have here.  Clang defaults
to all backends enabled when invoking cmake (though there are options
to enable certain backends; Sony for instance enables only x86_64 for
their PS4 SDK (and thus I break their build frequently with my arm64
unit tests)).

Clang can do all of the above with one binary.  The codebase makes
heavy use of OOP+virtual dispatch to run ISA specific and general code
transformations (virtual dispatch is slower than static dispatch, but
relative to what the compiler is actually doing, I suspect the effects
are minimal. Folks are also heavily invested in researching
"devirtualization").  With one clang binary, I can do:

# implicitly uses the host's ISA, for me that's x86_64-linux-gnu
$ clang foo.c
$ clang -target aarch64-linux-gnu foo.c
$ clang -target arm-linux-gnueabi foo.c

Admittedly, it's not as simple for the kernel's case; the top level
Makefile sets some flags to support invoking Clang from a non-standard
location, and telling it where to find binutils because we can't
assemble the kernel with LLVM's substitute for GAS).
-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
