Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F34348938
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 18:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7ZO5vVvmHlCn01twFeHRykMoM80Hk6mmZB5quLXmMxA=; b=bdAVRacxdfPMeQ
	IvtLARybE4iudgYbIcgSkntAXHyDhbyB3I4Mt1f5DcOumJ3vKjwfDlREgjjoTAmU7w/7WAhM8e5NU
	ZYAFKNTIJZnPEFFuQSebQfDmvlpzzeN/lHWcIqIYKFn3KBcsAgurEUVwvmXNE23nvK+XwYv0m7Fzb
	nnF4jK+pm1VcnEw7iXXKa9c0IRxa7jBlx0UIyLLYN2vLJHomlSpx+Dhwrx+dnAM0plm5Erjf7FZdH
	RfTgRgOkoTa/Qs24RvXJ+KjGg18U1OvAMsxFfGDOUvHH1wgY2ytoxoqNuFN5PMFANdSTAU+zVkFF/
	TtzSV/PJD0WQ7HrnWBSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcull-0004VV-Gf; Mon, 17 Jun 2019 16:46:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcula-0004Uj-Qo
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 16:46:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D108028;
 Mon, 17 Jun 2019 09:45:56 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2A1343F718;
 Mon, 17 Jun 2019 09:45:55 -0700 (PDT)
Date: Mon, 17 Jun 2019 17:45:53 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64/sve: fix genksyms generation
Message-ID: <20190617164553.GI30800@fuggles.cambridge.arm.com>
References: <20190617104237.2082388-1-arnd@arndb.de>
 <20190617112652.GB30800@fuggles.cambridge.arm.com>
 <CAK8P3a2aJNiLTyfRDqazJa2sAc-Jf-QShSZ7+4-whHSxKbLUVQ@mail.gmail.com>
 <20190617161330.GD30800@fuggles.cambridge.arm.com>
 <CAKv+Gu9Fh3anh6-TeDWZ+pL7rs7EBWZqvLXASRNjicGu7k+WKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9Fh3anh6-TeDWZ+pL7rs7EBWZqvLXASRNjicGu7k+WKw@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_094558_962465_5323E32D 
X-CRM114-Status: GOOD (  25.79  )
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
 Peter Maydell <peter.maydell@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
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

On Mon, Jun 17, 2019 at 06:32:16PM +0200, Ard Biesheuvel wrote:
> On Mon, 17 Jun 2019 at 18:13, Will Deacon <will.deacon@arm.com> wrote:
> > On Mon, Jun 17, 2019 at 02:21:46PM +0200, Arnd Bergmann wrote:
> > > On Mon, Jun 17, 2019 at 1:26 PM Will Deacon <will.deacon@arm.com> wrote:
> > > > On Mon, Jun 17, 2019 at 12:42:11PM +0200, Arnd Bergmann wrote:
> > > > > diff --git a/arch/arm64/kernel/fpsimd.c b/arch/arm64/kernel/fpsimd.c
> > > > > index 07f238ef47ae..2aba07cccf50 100644
> > > > > --- a/arch/arm64/kernel/fpsimd.c
> > > > > +++ b/arch/arm64/kernel/fpsimd.c
> > > > > @@ -400,6 +400,9 @@ static int __init sve_sysctl_init(void) { return 0; }
> > > > >  #define ZREG(sve_state, vq, n) ((char *)(sve_state) +                \
> > > > >       (SVE_SIG_ZREG_OFFSET(vq, n) - SVE_SIG_REGS_OFFSET))
> > > > >
> > > > > +#ifdef __GENKSYMS__
> > > > > +typedef __u64 __uint128_t[2];
> > > > > +#endif
> > > >
> > > > I suspect I need to figure out what genksyms is doing, but I'm nervous
> > > > about exposing this as an array type without understanding whether or
> > > > not that has consequences for its operation.
> > >
> > > The entire point is genksyms is to ensure that types of exported symbols
> > > are compatible. To do this, it has a limited parser for C source code that
> > > understands the basic types (char, int, long, _Bool, etc) and how to
> > > aggregate them into structs and function arguments. This process has
> > > always been fragile, and it clearly breaks when it fails to understand a
> > > particular type.
> >
> > Ok, but the patch that appears to cause this problem doesn't change the
> > type of anything we're exporting. The symbol in your log is
> > "kernel_neon_begin" which is:
> >
> >         void kernel_neon_begin(void);
> >
> > so I'm still fairly confused about the problem. In fact, even if I create
> > a silly:
> >
> >         void will_kernel_neon_begin(__uint128_t);
> >
> > function, then somehow I see it being processed:
> >
> >         __crc_will_kernel_neon_begin = 0x5401d250;
> >
> > Is there some way that your passing '-w' to genksyms?
> >
> 
> The problem is not about the types we're *exporting*. Genksyms just
> gives up halfway through the file, as soon as it encounters something
> it doesn't like, and any symbol that hasn't been encountered yet at
> that point will not have a crc generated for it.

Hmm, but it appears to be either working or failing silently for me, which
doesn't match what Arnd is seeing. I'd prefer to fix genksyms but I'm not
happy touching it if I can't show it's broken to begin with. If I pass '-w'
I see it barfing on all sorts of random stuff, for example the static_assert
in include/linux/fs.h:

	static_assert(offsetof(struct filename, iname) % sizeof(long) == 0);

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
