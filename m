Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E2B481E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 14:22:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25DX9sb7AtHBqvW4pghBEPSORITKtYpsorYScPdGWqQ=; b=PW8UzsbLu3PM9J
	oSnuEn82esHvpw+E6uvmN/0KokQvXfb78S/veQv5BXYnPDUXYcolx6/hhud9SbkHAMtsh7ny8rs3l
	RWpjRxErZYRcLFS+ukDcAFJdGLv2WHx0wTzclBpG9rX0ugZCGCUx3UN3VRr0wVzqV8XnnYa6kpB65
	cQ9XpXMCOMGxvyd8gyrJzeH2ZYIvc32tP8RbBNQ+9JZmBuFV8Twi6XJlHMNMPtzcb7vnNPr9VKmeW
	a9PoW15OW71PJdVgVpnu9tR+r0PA/C0Y9IQKaYQRBfvtFPKKxNPeaA4OTO3RCHWwG0Xnrqbmbz2cr
	ZQMru49aVnI02v7jMsYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcqeN-0004xq-8c; Mon, 17 Jun 2019 12:22:15 +0000
Received: from mail-qt1-f196.google.com ([209.85.160.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqeC-0004x9-Uk
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 12:22:06 +0000
Received: by mail-qt1-f196.google.com with SMTP id d23so10402560qto.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 05:22:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J1D0wRVIBxkLJPdsyEaqbWMW7xmtTDyWae7i+70qMQs=;
 b=AV2zFpvOw4Wcdl4s5yX1ZFqs4Whv+aCUIP+eynx8Kjr9DFdXGeDWWP+2rL0Qe5RprM
 /QB3mbI8kUuzzM7xVO68XZBJpTATNj+5x5lMyG99ZdjoCnx7vpt6PTAM0ZfSqY2wXYXA
 rdH2cR4BDh08FSPmc/DJSbvzNQFSUgCWveAM7TeBjLkmThYrX/2zhM4/swWvNsc4yZcf
 vOFA33EQggEC1IeSv40kTB5IWzkJjIfHERGnoz9UnB6KRhIP1uEQDwMQi+aistk/eWKS
 wiAVNtxdx+R0NJ+XMd1/UUhKGnxHdqLGW1eAdrVVqYGFJgpgoVhwN8mGp3Gr0e35n3pT
 ZB/Q==
X-Gm-Message-State: APjAAAUNgaL5wbR3ys1QKjitLA9vF/2jTliX6xrN6uTgOLCnOgHMo/t1
 R6Il8sEueKBkK/ntabKqiDceDjXImznrt7agaLx20stJ0uM=
X-Google-Smtp-Source: APXvYqzBS9/f+FzXIzoMEx/rQKNZckt6bdT2jsoQ/5V9Nb2UOXwEEV6V5B/6sbBr2C25lfeCYsPalMWFzJMpk3UwffM=
X-Received: by 2002:a0c:b758:: with SMTP id q24mr21150036qve.45.1560774123691; 
 Mon, 17 Jun 2019 05:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
In-Reply-To: <20190617112652.GB30800@fuggles.cambridge.arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 17 Jun 2019 14:21:46 +0200
Message-ID: <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_052204_989619_A4AE39C1 
X-CRM114-Status: GOOD (  28.19  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Peter Maydell <peter.maydell@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
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

On Mon, Jun 17, 2019 at 1:26 PM Will Deacon <will.deacon@arm.com> wrote:
>
> Hi Arnd,
>
> On Mon, Jun 17, 2019 at 12:42:11PM +0200, Arnd Bergmann wrote:
> > genksyms does not understand __uint128_t, so we get a build failure
> > in the fpsimd module when it cannot export a symbol right:
>
> The fpsimd code is builtin, so which module is actually failing? My
> allmodconfig build succeeds, so I must be missing something.

It happened for me on randconfig builds, you can find one such configuration
at https://pastebin.com/cU8iQ4ta now. I was building this with clang
rather than gcc, which may affect the issue, but I assumed not.

> > WARNING: EXPORT symbol "kernel_neon_begin" [vmlinux] version generation failed, symbol will not be versioned.
> > /home/arnd/cross/x86_64/gcc-8.1.0-nolibc/aarch64-linux/bin/aarch64-linux-ld: arch/arm64/kernel/fpsimd.o: relocation R_AARCH64_ABS32 against `__crc_kernel_neon_begin' can not be used when making a shared object
> > arch/arm64/kernel/fpsimd.o:(.data+0x0): dangerous relocation: unsupported relocation
> > arch/arm64/kernel/fpsimd.o:(".discard.addressable"+0x0): dangerous relocation: unsupported relocation
> > arch/arm64/kernel/fpsimd.o:(".discard.addressable"+0x8): dangerous relocation: unsupported relocation
> >
> > We could teach genksyms about the type, but it's easier to just
> > work around it by defining that type locally in a way that genksyms
> > understands.
> >
> > Fixes: 41040cf7c5f0 ("arm64/sve: Fix missing SVE/FPSIMD endianness conversions")
>
> I can't see which part of that patch causes the problem, so I'm a bit wary
> of the fix. We've been using __uint128_t for a while now, and I see there's
> one in the x86 kvm code as well, so it would be nice to understand what's
> happening here so that we can avoid running into it in future as well.

The problem is only in files that export a symbol. This is also the
case in arch/x86/kernel/kvm.c, but it may be lucky because the
type only appears /after/ the last export in that file.

> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  arch/arm64/kernel/fpsimd.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> > index 07f238ef47ae..2aba07cccf50 100644
> > --- a/arch/arm64/kernel/fpsimd.c
> > +++ b/arch/arm64/kernel/fpsimd.c
> > @@ -400,6 +400,9 @@ static int __init sve_sysctl_init(void) { return 0; }
> >  #define ZREG(sve_state, vq, n) ((char *)(sve_state) +                \
> >       (SVE_SIG_ZREG_OFFSET(vq, n) - SVE_SIG_REGS_OFFSET))
> >
> > +#ifdef __GENKSYMS__
> > +typedef __u64 __uint128_t[2];
> > +#endif
>
> I suspect I need to figure out what genksyms is doing, but I'm nervous
> about exposing this as an array type without understanding whether or
> not that has consequences for its operation.

The entire point is genksyms is to ensure that types of exported symbols
are compatible. To do this, it has a limited parser for C source code that
understands the basic types (char, int, long, _Bool, etc) and how to
aggregate them into structs and function arguments. This process has
always been fragile, and it clearly breaks when it fails to understand a
particular type.

          Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
