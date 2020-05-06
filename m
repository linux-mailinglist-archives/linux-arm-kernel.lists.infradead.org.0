Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E601C6EBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6ld3cA3Vxw+vcL7CmZvo3W+8ph9etBmNa1W1QdklbI=; b=gH5RdPaMZuLYfa
	/Rc81RF4L3jR4W6dKBZPHtrnhfGZ3FvcIa0cV3bHNJB42TDYuByQBiQZ4tFW9Ed7jMCArmZZXQZj2
	3s9CANqgpWKgUxL7W5cjC+zfJzhDkU/+quRI17bTi4G+hscFDPjuAn+cxO9MFde9jtuMhol8x/yGe
	76I8wShGiCTEV8/U0uxd7o8v1MxzMuU0lkT1rdAcuhPbFtXzSTOaxXEBBqL1qLuLq8d9RvPCzYO3d
	ZkG0YYVF126qv+5+ociOuLvMegivRjuzjjcvnBK15JWkwDfSY8Zxc7+nvKxlLCANHngbYW4zd7a/p
	JK9bpdaTYxDQGnr7wr3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHd9-0002K4-HI; Wed, 06 May 2020 10:50:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHcx-00023L-BR
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:50:14 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 14938206B8;
 Wed,  6 May 2020 10:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588762211;
 bh=7LOMUgu2Y0KJhLe9Q2kPABrpZnJywGKH0pYHSznKNW0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GNITnLJiul82KGNCIGroBFNu8rvLNQ2rmkc/Sf907dZe5D3OMv9lO24xy0EujvF0P
 3zPTBMzM/rXJcrMuSw0u+Nk56vgf4iLJ/5nAz9InV6QV3qbb7WlynOeu1zT1XMttLD
 S1ltuY6X0+jvpDHD/Ucoc8QaeYKb3aef7GHBJqkY=
Date: Wed, 6 May 2020 11:50:06 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506105006.GC8043@willie-the-truck>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
 <20200506071025.GA7021@willie-the-truck>
 <20200506104152.GA5299@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506104152.GA5299@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_035011_427520_D54E7437 
X-CRM114-Status: GOOD (  23.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 11:41:52AM +0100, Mark Brown wrote:
> On Wed, May 06, 2020 at 08:10:26AM +0100, Will Deacon wrote:
> > On Tue, May 05, 2020 at 06:21:00PM +0100, Mark Brown wrote:
> 
> > > > > > aarch64-none-linux-gnu-ld: arch/arm64/kernel/vdso/vgettimeofday.o: warning: BTI turned on by -z force-bti when all inputs do not have BTI in NOTE section.
> 
> > > so if this is a clang issue it looks like they fixed it in the clang-10
> > > branch.  I'm not sure it's worth trying to detect and handle this or
> > > not, I don't know how widely deployed toolchains that don't emit the
> > > property are and there's a fairly clear solution.  What do you think?
> 
> > The linker fixes this up when it warns, right? If so, I think the current
> 
> The linker is fixing this up, yes.
> 
> > behaviour is fine *but* we might want to improve the diagnostic a bit not
> > to worry/confuse people. e.g. something like:
> 
> >   "Your compiler is not emitting '.note.gnu.property' sections: forcing
> >    support for BTI in the linker, but consider upgrading your toolchain."
> 
> Well, the theory behind the warning is that if the compiler is emitting
> code suitable for the features described in the note then it should
> always emit the appropriate annotations so the warning is more intended
> to be telling the user that the code is trying to link in code that's
> not built properly and will most likely fail at runtime.  In the current
> situation that's an issue with the toolchain not emitting the
> annotations but the common case expectation is that the issue will be
> that there are object files that weren't built appropriately.

Hmm, I suppose, although it's a bit belt-and-braces given that we've got
the right options in KBUILD_CFLAGS. What about:

	"Your compiler is not emitting '.note.gnu.property' sections: forcing
	 support for BTI in the linker, but check your CFLAGS and consider
	 upgrading your toolchain."

I'd usually not be too bothered, but having run into this yesterday and
not understood the problem, I'd like to save somebody else from puzzling
over this if we can!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
