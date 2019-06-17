Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0440648878
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8hRDZ1qjHDF4M+M4s/8vycoDNKDpMriwZfUjWEqsYd4=; b=Z/eQjq9+2dYhKP
	i9oTHo2OjJSXHN15+PDuk/kmRUIOoeOpljlYoNKneWT+YAkha1nvr7OTeqoAJAO52C9+JgSlQMomO
	A5Kk0uR81qISmuIdW2HzRatTTLzEDIJpYGip6EJqIFMc3G4O1+3qrUwMI39djkUbt3r17+3Em66EF
	4uBmg+7NZJTdCxWRgWH8I1yw5+INs4j/VRQb9AJP3WTlMruDY0oxSzM7JcWIXsqiZMEoV0RPcH55i
	f/hwe2PyIgEojfnFtgu8dQSjUy3gYM6/suJtf4WruRXa0sY73hUVBgfNiaD+d1OI0eiy6+yIa7nL+
	OkXZDr0gO1MW/Y94NLdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcuGd-0002mz-KU; Mon, 17 Jun 2019 16:13:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcuGE-0002jR-GL
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:13:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C13FA28;
 Mon, 17 Jun 2019 09:13:33 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 19A283F718;
 Mon, 17 Jun 2019 09:13:31 -0700 (PDT)
Date: Mon, 17 Jun 2019 17:13:30 +0100
From: Will Deacon <will.deacon@arm.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
Message-ID: <20190617161330.GD30800@fuggles.cambridge.arm.com>
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_091334_672689_F0A212A7 
X-CRM114-Status: GOOD (  33.52  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Julien Grall <julien.grall@arm.com>, Alan Hayward <alan.hayward@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Alex =?iso-8859-1?Q?Benn=E9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 02:21:46PM +0200, Arnd Bergmann wrote:
> On Mon, Jun 17, 2019 at 1:26 PM Will Deacon <will.deacon@arm.com> wrote:
> > On Mon, Jun 17, 2019 at 12:42:11PM +0200, Arnd Bergmann wrote:
> > > genksyms does not understand __uint128_t, so we get a build failure
> > > in the fpsimd module when it cannot export a symbol right:
> >
> > The fpsimd code is builtin, so which module is actually failing? My
> > allmodconfig build succeeds, so I must be missing something.
> 
> It happened for me on randconfig builds, you can find one such configuration
> at https://pastebin.com/cU8iQ4ta now. I was building this with clang
> rather than gcc, which may affect the issue, but I assumed not.

Hmm, I've failed to reproduce the issue with that config and either GCC
(7.1.1 and 8.3.0) or Clang (a flavour of 9.0.0 from a few months ago).

> > > WARNING: EXPORT symbol "kernel_neon_begin" [vmlinux] version generation failed, symbol will not be versioned.
> > > /home/arnd/cross/x86_64/gcc-8.1.0-nolibc/aarch64-linux/bin/aarch64-linux-ld: arch/arm64/kernel/fpsimd.o: relocation R_AARCH64_ABS32 against `__crc_kernel_neon_begin' can not be used when making a shared object
> > > arch/arm64/kernel/fpsimd.o:(.data+0x0): dangerous relocation: unsupported relocation
> > > arch/arm64/kernel/fpsimd.o:(".discard.addressable"+0x0): dangerous relocation: unsupported relocation
> > > arch/arm64/kernel/fpsimd.o:(".discard.addressable"+0x8): dangerous relocation: unsupported relocation
> > >
> > > We could teach genksyms about the type, but it's easier to just
> > > work around it by defining that type locally in a way that genksyms
> > > understands.
> > >
> > > Fixes: 41040cf7c5f0 ("arm64/sve: Fix missing SVE/FPSIMD endianness conversions")
> >
> > I can't see which part of that patch causes the problem, so I'm a bit wary
> > of the fix. We've been using __uint128_t for a while now, and I see there's
> > one in the x86 kvm code as well, so it would be nice to understand what's
> > happening here so that we can avoid running into it in future as well.
> 
> The problem is only in files that export a symbol. This is also the
> case in arch/x86/kernel/kvm.c, but it may be lucky because the
> type only appears /after/ the last export in that file.
> 
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > ---
> > >  arch/arm64/kernel/fpsimd.c | 3 +++
> > >  1 file changed, 3 insertions(+)
> > >
> > > diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> > > index 07f238ef47ae..2aba07cccf50 100644
> > > --- a/arch/arm64/kernel/fpsimd.c
> > > +++ b/arch/arm64/kernel/fpsimd.c
> > > @@ -400,6 +400,9 @@ static int __init sve_sysctl_init(void) { return 0; }
> > >  #define ZREG(sve_state, vq, n) ((char *)(sve_state) +                \
> > >       (SVE_SIG_ZREG_OFFSET(vq, n) - SVE_SIG_REGS_OFFSET))
> > >
> > > +#ifdef __GENKSYMS__
> > > +typedef __u64 __uint128_t[2];
> > > +#endif
> >
> > I suspect I need to figure out what genksyms is doing, but I'm nervous
> > about exposing this as an array type without understanding whether or
> > not that has consequences for its operation.
> 
> The entire point is genksyms is to ensure that types of exported symbols
> are compatible. To do this, it has a limited parser for C source code that
> understands the basic types (char, int, long, _Bool, etc) and how to
> aggregate them into structs and function arguments. This process has
> always been fragile, and it clearly breaks when it fails to understand a
> particular type.

Ok, but the patch that appears to cause this problem doesn't change the
type of anything we're exporting. The symbol in your log is
"kernel_neon_begin" which is:

	void kernel_neon_begin(void);

so I'm still fairly confused about the problem. In fact, even if I create
a silly:

	void will_kernel_neon_begin(__uint128_t);

function, then somehow I see it being processed:

	__crc_will_kernel_neon_begin = 0x5401d250;

Is there some way that your passing '-w' to genksyms?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
