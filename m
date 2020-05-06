Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733D61C71D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 15:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4y/Hq7E1LvDnTrhoVfcUW9WBLNCAj8e8JcybX49y2c=; b=M5aAtuodK/A5eb
	LwqlL77O0mUTyZqjVts1UhlkmslRRNJwZ6QZl0HC99BBCPywl0tF5Yv+J1LN9o7HKrIKmkoaNvxKh
	RO3NuE33K4bCZd0bZ1ci3eE+FmzDflIGUyvh9KQEQd5t8Ge7jo00srLjf51x7+e56a5cu4jD0pSvh
	q5+5ZPX78D8hTmve0sDZ8msxVuQVzjCPYtAkzlo4GeD2XCBZ7+zWlGz6m+6r9rev2qjL3MTHHlxNv
	/3GiuoXJ5f+ig3G63xO767ZK1Ku1rqAeffP02SO7mRs2kiyt4RrRjJDW1vrGReMKBJz+bntEuqTKe
	1IPt3XIOVMETltiLlWDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWKHp-0000Pa-HQ; Wed, 06 May 2020 13:40:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWKHi-0000PA-UQ
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 13:40:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E3B2D6E;
 Wed,  6 May 2020 06:40:24 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 452A03F68F;
 Wed,  6 May 2020 06:40:23 -0700 (PDT)
Date: Wed, 6 May 2020 14:40:21 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506134021.GU30377@arm.com>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
 <20200506071025.GA7021@willie-the-truck>
 <20200506104152.GA5299@sirena.org.uk>
 <20200506105006.GC8043@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506105006.GC8043@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_064027_066871_B90F3D67 
X-CRM114-Status: GOOD (  30.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 11:50:06AM +0100, Will Deacon wrote:
> On Wed, May 06, 2020 at 11:41:52AM +0100, Mark Brown wrote:
> > On Wed, May 06, 2020 at 08:10:26AM +0100, Will Deacon wrote:
> > > On Tue, May 05, 2020 at 06:21:00PM +0100, Mark Brown wrote:
> > 
> > > > > > > aarch64-none-linux-gnu-ld: arch/arm64/kernel/vdso/vgettimeofday.o: warning: BTI turned on by -z force-bti when all inputs do not have BTI in NOTE section.
> > 
> > > > so if this is a clang issue it looks like they fixed it in the clang-10
> > > > branch.  I'm not sure it's worth trying to detect and handle this or
> > > > not, I don't know how widely deployed toolchains that don't emit the
> > > > property are and there's a fairly clear solution.  What do you think?
> > 
> > > The linker fixes this up when it warns, right? If so, I think the current
> > 
> > The linker is fixing this up, yes.
> > 
> > > behaviour is fine *but* we might want to improve the diagnostic a bit not
> > > to worry/confuse people. e.g. something like:
> > 
> > >   "Your compiler is not emitting '.note.gnu.property' sections: forcing
> > >    support for BTI in the linker, but consider upgrading your toolchain."
> > 
> > Well, the theory behind the warning is that if the compiler is emitting
> > code suitable for the features described in the note then it should
> > always emit the appropriate annotations so the warning is more intended
> > to be telling the user that the code is trying to link in code that's
> > not built properly and will most likely fail at runtime.  In the current
> > situation that's an issue with the toolchain not emitting the
> > annotations but the common case expectation is that the issue will be
> > that there are object files that weren't built appropriately.
> 
> Hmm, I suppose, although it's a bit belt-and-braces given that we've got
> the right options in KBUILD_CFLAGS. What about:
> 
> 	"Your compiler is not emitting '.note.gnu.property' sections: forcing
> 	 support for BTI in the linker, but check your CFLAGS and consider
> 	 upgrading your toolchain."
> 
> I'd usually not be too bothered, but having run into this yesterday and
> not understood the problem, I'd like to save somebody else from puzzling
> over this if we can!

I really don't think we should fudge this: if the linker doesn't think
the inputs are BTI-enabled then the compiler or linker is broken, or
there's a bug in the kernel source tree.

The checking done by the toolchain is important -- if we want to
suppress it, we should have an override option than depends on BROKEN
(because yes, you're explicitly risking a broken kernel if you do this).

The fact that all gcc and clang both screwed this up in various ways at
some point is not our fault, or our problem, providing that fixes are
available...

Am I being too paranoid?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
