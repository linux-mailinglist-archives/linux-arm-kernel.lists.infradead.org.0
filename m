Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D59791BBDCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 14:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1StyhmVCMRVl0PyPp3VPfGTyFiId4eIF9+VWmdpAgSU=; b=lsGBIOQ2P9AMwq
	8qp9mn7l7+Rd1FA8Aail6HIv59QNapNfVetr7kgKCPdneOAaGD4SAiD2DxEeUTdFDjSUehpNGZ+Lm
	AIz9AlAF/n+sQU/0APgb6u+47I26aTD4F6pU8ATo34UxkRzXpJ0KH9DTz169tvaL8mTYr3eGWtjXm
	wxwWfpL5/x4bcakOCh2EjFJQxuCEyWB+mGSQvmGbImNh/NZOxfG4BJJFR+D4S2GqF4ubKOes9N0ty
	3YPX01HwMHqYeyIkPg53b/6f2YD3Zz5b+yeNTaPL5RfR+14rgbUffXy6IStegx77G52Sob1k5Jxq8
	ps8SBKQUGuKnZSeLE9qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTPay-0005CU-I2; Tue, 28 Apr 2020 12:44:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPak-0005Ax-V4
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 12:44:07 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EE2DD206D7;
 Tue, 28 Apr 2020 12:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588077838;
 bh=CVRjm30sHLoCl7FWd6zwZ1E/Qbxux90QieIo35ASapk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eQRonB+qS6OkQ0xSNP3pXLCxeR/l1v0b3QdFMv2Vukh65kk2GuCeAaP+VJfaVeHNa
 XTGbKX/SA1x4VkN5Apiw+E3lGp3wPohHld/0I/o6fkwWPKtNAUjVYa6un27ofrulTI
 ncMR0WqpsZ8NWG4bPhVbHKFL2moUHAmqHWd8c3uY=
Date: Tue, 28 Apr 2020 13:43:54 +0100
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64/vdso: Remove unused makefile variable
Message-ID: <20200428124353.GB6791@willie-the-truck>
References: <d8baa0e5-0e20-9f58-5e79-34a272f86d1d@infradead.org>
 <20200427203520.GA23186@willie-the-truck>
 <c3c48a79-6a0c-2bae-16a8-507f05ee5473@arm.com>
 <CAMj1kXHoEbG_Ff21Qs1eQJ=3zuqE_RuMzVWbmopv5FP52pqJgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXHoEbG_Ff21Qs1eQJ=3zuqE_RuMzVWbmopv5FP52pqJgQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_054403_021426_4ED027B2 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Geoff Levand <geoff@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 01:52:55PM +0200, Ard Biesheuvel wrote:
> On Tue, 28 Apr 2020 at 12:45, Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
> > On 4/27/20 9:35 PM, Will Deacon wrote:
> > > [+Vincenzo]
> > >
> > > On Fri, Apr 24, 2020 at 08:58:49AM -0700, Geoff Levand wrote:
> > >> The vdso makefile variable VDSO_LDFLAGS is defined, but never used,
> > >> so remove it.
> > >>
> > >> Signed-off-by: Geoff Levand <geoff@infradead.org>
> > >> ---
> > >>
> > >> Hi,
> > >>
> > >> This seems to be left over from a code cleanup that missed it.
> > >
> > > While I agree that this isn't used, I'm wondering why '-Bsymbolic' is used
> > > to link the compat vDSO but not the native one. It seems weird to differ
> > > in this regard.
> > >
> > > Vincenzo? Looks like you added this unused variable in 28b1a824a4f44
> > > ("arm64: vdso: Substitute gettimeofday() with C implementation").
> > >
> >
> > My understanding is that "-Bsymbolic" is required by both compat and normal vdso
> > because when the shared library is built it adds a flag in the dynamic section
> > of the binary called DT_SYMBOLIC which alters the dynamic linker's symbol
> > resolution algorithm to search for references for a symbol inside the library
> > first and then into the executable.
> >
> 
> DT_SYMBOLIC doesn't (or shouldn't) change the dynamic linking
> behavior. It informs the linker that ELF symbol preemption may not
> work, since the .so has bound internal references to its exported
> symbols to the internal versions directly, rather than allowing the
> application to supersede (i.e., 'preempt') them. This is an obscure
> feature that isn't really relevant for the VDSO, since we carefully
> control what we export from the .so anyway (via the linker script's
> VERSIONS section)
> 
> > This becomes useful for example when an executable built with -fPIC is trying to
> > call a public vDSO function from assembly (bl symbol).
> >
> > The issue here seems to be that I used VDSO_LDFLAGS instead of ldflags-y. I can
> > post a patch and Cc stable. Adding Geoff as Reported-by.
> >
> 
> I think it can be removed.

Hmm, so I did a little bit more digging because -Bsymbolic is used to link
the vDSO on arm, mips, sparc and x86. Commit 6f121e548f83 ("x86, vdso:
Reimplement vdso.so preparation in build-time C") suggests that it's a good
idea to prevent any unexpected dynamic relocations appearing in the vDSO
object.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
