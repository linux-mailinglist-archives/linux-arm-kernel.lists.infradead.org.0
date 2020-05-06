Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D6A1C74F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TN1R2SYwsvTmS6UCnQ6H7Z0JdRV+qo3doR0vyq8cgoo=; b=CSrLnTYdqO/DWG
	c7UgGhXefcBoz7dMfmVQTlw4LU18VJnHwqfrO1lW+qrElNecM9zvstiAd5EXmOY0qsZe7qV17jwOD
	X6vjHiJ8/Xje7GQ7hHKQmAPWQSYc+ce9VAhxdcUbaS1Oer8yqsSRrX0CrdT3e2siY36BthTNFDtwh
	tzJuxo6ggpB9eOQFcZ7tjTeGfe4c6QY958DIz9IwiGb7DwDh7RM6l61QH+mRZiubzdJhF6KBJg0yj
	ZjZdta98dq3B/OMKQtqAh5Yswe/MR0r5EucTs0jkOQHaHMJF4b0A1GOCin4ZFK5LCYJnZjHtQDBXO
	ZuniDNVg7JzD5Uknlnmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWM2s-0006RM-HE; Wed, 06 May 2020 15:33:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWM2k-0006Qa-JL
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:33:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CFB21D6E;
 Wed,  6 May 2020 08:33:05 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E6F083F68F;
 Wed,  6 May 2020 08:33:04 -0700 (PDT)
Date: Wed, 6 May 2020 16:33:02 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506153302.GB21779@arm.com>
References: <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
 <20200506071025.GA7021@willie-the-truck>
 <20200506104152.GA5299@sirena.org.uk>
 <20200506105006.GC8043@willie-the-truck>
 <20200506134021.GU30377@arm.com>
 <20200506144543.GB12919@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506144543.GB12919@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_083306_735176_652FB11C 
X-CRM114-Status: GOOD (  34.43  )
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

On Wed, May 06, 2020 at 03:45:44PM +0100, Will Deacon wrote:
> On Wed, May 06, 2020 at 02:40:21PM +0100, Dave Martin wrote:
> > On Wed, May 06, 2020 at 11:50:06AM +0100, Will Deacon wrote:
> > > On Wed, May 06, 2020 at 11:41:52AM +0100, Mark Brown wrote:
> > > > On Wed, May 06, 2020 at 08:10:26AM +0100, Will Deacon wrote:
> > > > > On Tue, May 05, 2020 at 06:21:00PM +0100, Mark Brown wrote:
> > > > 
> > > > > > > > > aarch64-none-linux-gnu-ld: arch/arm64/kernel/vdso/vgettimeofday.o: warning: BTI turned on by -z force-bti when all inputs do not have BTI in NOTE section.
> > > > 
> > > > > > so if this is a clang issue it looks like they fixed it in the clang-10
> > > > > > branch.  I'm not sure it's worth trying to detect and handle this or
> > > > > > not, I don't know how widely deployed toolchains that don't emit the
> > > > > > property are and there's a fairly clear solution.  What do you think?
> > > > 
> > > > > The linker fixes this up when it warns, right? If so, I think the current
> > > > 
> > > > The linker is fixing this up, yes.
> > > > 
> > > > > behaviour is fine *but* we might want to improve the diagnostic a bit not
> > > > > to worry/confuse people. e.g. something like:
> > > > 
> > > > >   "Your compiler is not emitting '.note.gnu.property' sections: forcing
> > > > >    support for BTI in the linker, but consider upgrading your toolchain."
> > > > 
> > > > Well, the theory behind the warning is that if the compiler is emitting
> > > > code suitable for the features described in the note then it should
> > > > always emit the appropriate annotations so the warning is more intended
> > > > to be telling the user that the code is trying to link in code that's
> > > > not built properly and will most likely fail at runtime.  In the current
> > > > situation that's an issue with the toolchain not emitting the
> > > > annotations but the common case expectation is that the issue will be
> > > > that there are object files that weren't built appropriately.
> > > 
> > > Hmm, I suppose, although it's a bit belt-and-braces given that we've got
> > > the right options in KBUILD_CFLAGS. What about:
> > > 
> > > 	"Your compiler is not emitting '.note.gnu.property' sections: forcing
> > > 	 support for BTI in the linker, but check your CFLAGS and consider
> > > 	 upgrading your toolchain."
> > > 
> > > I'd usually not be too bothered, but having run into this yesterday and
> > > not understood the problem, I'd like to save somebody else from puzzling
> > > over this if we can!
> > 
> > I really don't think we should fudge this: if the linker doesn't think
> > the inputs are BTI-enabled then the compiler or linker is broken, or
> > there's a bug in the kernel source tree.
> > 
> > The checking done by the toolchain is important -- if we want to
> > suppress it, we should have an override option than depends on BROKEN
> > (because yes, you're explicitly risking a broken kernel if you do this).
> > 
> > The fact that all gcc and clang both screwed this up in various ways at
> > some point is not our fault, or our problem, providing that fixes are
> > available...
> > 
> > Am I being too paranoid?
> 
> I don't think so, but I'm just looking for an answer to "What do we do if
> people start running into this warning?". As it stands, it sounds like it's
> unlikely that they will, but if they do then we're going to have to hack
> something to make it go away.

If we can do it in a way that makes it obvious that we consider it
unsafe, I guess having an override would be OK.  I feel the user should
be required to do something explicit like enable a dangerous-looking
Kconfig option, rather than us helpfully working around it
automatically.

Unless someone can explain why this is not dangerous :)

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
