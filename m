Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65BBE48901
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:32:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M5aU0LaDZd6aBv0lJD+b32vLB5wzzMVeIh9BGZCwkMc=; b=emXWitwa154VzC
	ykgDwLEOealu21VH/RvDMOkJXrnfg1MLHQQrJ588byDvVXVvdELcHYDhH7VPco81XGlJ5uhNAYZ5W
	izzF3WTTDEreVtjd0s7zDHyY6mZv0Rk5udQQVDC9DOXAdaLWmbsgzTuU6lvB7O+36uRKqPia1ak4n
	/OyMil5BPSQzJI1RFHuFV2RvD0Qmi4o4qR5HIcsRB3OHvXtO9rTFY5aTHObLHCDXHGkdQtmQ7toMW
	GtEmiGuGVi4VlDog3PsOckdKGiHClydh0PFvsskolHmyCyyIh2ukaOHmpY9TAU9zNzbT5jwJoVAA1
	01UB3LfVwh6uZZIt8tUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuYk-0005SG-Iw; Mon, 17 Jun 2019 16:32:42 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuYX-0005Rk-FA
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:32:31 +0000
Received: by mail-io1-xd43.google.com with SMTP id h6so22638070ioh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 09:32:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XyvlBZ9D/Zjk2MW/3VQHdWy6VMYt1yotnl1P/NZQLYw=;
 b=EJ/Cp9sFXyoWPLdx4T75q2KAVuLe6xIazZp50xTNkSvbp8Lz55BFAWfHHcfdafuJLs
 rlzMdiwYuGiot4wub+V48pZl2j6EaWZEUAPGnv1eowEzTFIfxowKcHGD2WhSXEPd3aJX
 k+rOD1WfnXUFECEDLjKKiLM/n6SgQ8XemLXAdZF7CeRJvGVkxwuaytocJcGMKDqTZjvu
 Rp10jnCmEfwE65wcMd3FVaQXFBQarjFZFkqWhKUbFJuDR4QXJbCetOuFahb5+xVGEJI5
 c3H+CYuwx5kdUNS04YSIWIKRkcCrolC/vwbXKKuzWcgbrPcC+cjdcYDeYQdPNqfcL9RQ
 VxWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XyvlBZ9D/Zjk2MW/3VQHdWy6VMYt1yotnl1P/NZQLYw=;
 b=NOEky38AlT5FAx0R1XSuIaP/atJgkPirzNCiOkNyDyu9/IswdPJA6PHBIyj8iBgUXm
 md3Dxa5PDA01cVFx1unXGh5zps2LTxI5p6MdT7+MFZwF9vF7jY8JLVBgQkmqZDCOvDxu
 FrwXmwQfAEqtb9Xtd80y6jIzPMmk+m1FL16JYvogxNDXByB1kLkaajt0BBcd7p4/5AYn
 H+sxP+ck2wm8Zx9vahmFywdSTWPaRijBweOeixH7sUoX9g6N8/Mb7Xzu6PpTBaM77/Ke
 q/tvqx9KJ74bCg62+Nt7R1I9J36zl534VCXRi9Bxm0xPbvppCotS7jNiCbU2J2YBINYm
 KcKA==
X-Gm-Message-State: APjAAAUzu/HYy3yfDccf7db+p52Z/zi1jm25+tfmLgVXiPIdxOn5QJf0
 gpZGOZFMZURSQPmfZ6AYZA62QtdYTZZVrxzacc6UFA==
X-Google-Smtp-Source: APXvYqx5u4mTUnavwavifEXCjDNol/Lgb4aYt5qFQmeAoCNvZzuBGMwtrlzB5E5q3/XAvaD2Tw3E0ByOs8hoi+G+mpQ=
X-Received: by 2002:a05:6602:98:: with SMTP id
 h24mr11263939iob.49.1560789148415; 
 Mon, 17 Jun 2019 09:32:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
 <20190617161330.GD30800@fuggles.cambridge.arm.com>
In-Reply-To: <20190617161330.GD30800@fuggles.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Mon, 17 Jun 2019 18:32:16 +0200
Message-ID: <CAKv+Gu9Fh3anh6-TeDWZ+pL7rs7EBWZqvLXASRNjicGu7k+WKw@mail.gmail.com>
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_093229_573378_948F3540 
X-CRM114-Status: GOOD (  36.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?B?QWxleCBCZW5uw6ll?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 17 Jun 2019 at 18:13, Will Deacon <will.deacon@arm.com> wrote:
>
> On Mon, Jun 17, 2019 at 02:21:46PM +0200, Arnd Bergmann wrote:
> > On Mon, Jun 17, 2019 at 1:26 PM Will Deacon <will.deacon@arm.com> wrote:
> > > On Mon, Jun 17, 2019 at 12:42:11PM +0200, Arnd Bergmann wrote:
> > > > genksyms does not understand __uint128_t, so we get a build failure
> > > > in the fpsimd module when it cannot export a symbol right:
> > >
> > > The fpsimd code is builtin, so which module is actually failing? My
> > > allmodconfig build succeeds, so I must be missing something.
> >
> > It happened for me on randconfig builds, you can find one such configuration
> > at https://pastebin.com/cU8iQ4ta now. I was building this with clang
> > rather than gcc, which may affect the issue, but I assumed not.
>
> Hmm, I've failed to reproduce the issue with that config and either GCC
> (7.1.1 and 8.3.0) or Clang (a flavour of 9.0.0 from a few months ago).
>
> > > > WARNING: EXPORT symbol "kernel_neon_begin" [vmlinux] version generation failed, symbol will not be versioned.
> > > > /home/arnd/cross/x86_64/gcc-8.1.0-nolibc/aarch64-linux/bin/aarch64-linux-ld: arch/arm64/kernel/fpsimd.o: relocation R_AARCH64_ABS32 against `__crc_kernel_neon_begin' can not be used when making a shared object
> > > > arch/arm64/kernel/fpsimd.o:(.data+0x0): dangerous relocation: unsupported relocation
> > > > arch/arm64/kernel/fpsimd.o:(".discard.addressable"+0x0): dangerous relocation: unsupported relocation
> > > > arch/arm64/kernel/fpsimd.o:(".discard.addressable"+0x8): dangerous relocation: unsupported relocation
> > > >
> > > > We could teach genksyms about the type, but it's easier to just
> > > > work around it by defining that type locally in a way that genksyms
> > > > understands.
> > > >
> > > > Fixes: 41040cf7c5f0 ("arm64/sve: Fix missing SVE/FPSIMD endianness conversions")
> > >
> > > I can't see which part of that patch causes the problem, so I'm a bit wary
> > > of the fix. We've been using __uint128_t for a while now, and I see there's
> > > one in the x86 kvm code as well, so it would be nice to understand what's
> > > happening here so that we can avoid running into it in future as well.
> >
> > The problem is only in files that export a symbol. This is also the
> > case in arch/x86/kernel/kvm.c, but it may be lucky because the
> > type only appears /after/ the last export in that file.
> >
> > > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > > ---
> > > >  arch/arm64/kernel/fpsimd.c | 3 +++
> > > >  1 file changed, 3 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> > > > index 07f238ef47ae..2aba07cccf50 100644
> > > > --- a/arch/arm64/kernel/fpsimd.c
> > > > +++ b/arch/arm64/kernel/fpsimd.c
> > > > @@ -400,6 +400,9 @@ static int __init sve_sysctl_init(void) { return 0; }
> > > >  #define ZREG(sve_state, vq, n) ((char *)(sve_state) +                \
> > > >       (SVE_SIG_ZREG_OFFSET(vq, n) - SVE_SIG_REGS_OFFSET))
> > > >
> > > > +#ifdef __GENKSYMS__
> > > > +typedef __u64 __uint128_t[2];
> > > > +#endif
> > >
> > > I suspect I need to figure out what genksyms is doing, but I'm nervous
> > > about exposing this as an array type without understanding whether or
> > > not that has consequences for its operation.
> >
> > The entire point is genksyms is to ensure that types of exported symbols
> > are compatible. To do this, it has a limited parser for C source code that
> > understands the basic types (char, int, long, _Bool, etc) and how to
> > aggregate them into structs and function arguments. This process has
> > always been fragile, and it clearly breaks when it fails to understand a
> > particular type.
>
> Ok, but the patch that appears to cause this problem doesn't change the
> type of anything we're exporting. The symbol in your log is
> "kernel_neon_begin" which is:
>
>         void kernel_neon_begin(void);
>
> so I'm still fairly confused about the problem. In fact, even if I create
> a silly:
>
>         void will_kernel_neon_begin(__uint128_t);
>
> function, then somehow I see it being processed:
>
>         __crc_will_kernel_neon_begin = 0x5401d250;
>
> Is there some way that your passing '-w' to genksyms?
>

The problem is not about the types we're *exporting*. Genksyms just
gives up halfway through the file, as soon as it encounters something
it doesn't like, and any symbol that hasn't been encountered yet at
that point will not have a crc generated for it.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
