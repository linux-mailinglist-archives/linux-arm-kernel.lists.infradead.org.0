Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6791C69D6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xok2byTvu289gLAt/giPnAIw0fQrMaPI9EDnXnHvCKg=; b=Mg2uHs1j9USmmb
	I3ocENVzZaolKGGlkeCQ1UgMY8DAaw7cb6GlsH/PHf03Wdb8Kvmu848EGSlnMw0MOuFdsJs3Wox4e
	I2N4S/1FF/bQnMGqGz/kiWd0S2LiFbk29w3WOQof/ggLeKNqg+ukqhOHMxGSoHko0eVTYawLP92DJ
	i5NX0sSszvdJsYRhqHcil2KZ/pik9tsq/QFRLggx8YcavR9AbokrEQ8Ka4Zxgi8CmZY2MUcBSBi85
	9HqPATVd7rve8u+yB4QJy++KsX0bl/JfHhtFW0X9UNqzl8VLGO0rNzyCdH75Qw4YTfQCcnxMWy45v
	nu1gAIGSyQRR1gun7BNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWECc-00031H-BB; Wed, 06 May 2020 07:10:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWECN-0002zO-Fj
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:10:32 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06B8620721;
 Wed,  6 May 2020 07:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588749031;
 bh=OCkNWWnA7TMeGhQdbDt3X0StvTY71dkLnth0fiXVRG0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Grf6LZ5TUPKBhPiPJanrUoCFG5qBiZeiiMKEoMTr9yxhSt/A0NjfN+0tg3A3ZfCxe
 F8RAASwBcaZx8D0+9RMuHbYMDI+AtXckpG2EH0hJRKWfIHvpt4KKwG3K0msJA9EIky
 Yec86Tw9cR+rUJEK/cPHnPaRsuIMyyxOeSTx+vFs=
Date: Wed, 6 May 2020 08:10:26 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 02/10] arm64: asm: Override SYM_FUNC_START when
 building the kernel with BTI
Message-ID: <20200506071025.GA7021@willie-the-truck>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-3-broonie@kernel.org>
 <20200505145642.GA24239@willie-the-truck>
 <20200505151806.GG5377@sirena.org.uk>
 <20200505160852.GF24239@willie-the-truck>
 <20200505172100.GI5377@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505172100.GI5377@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_001031_546725_E1326BC6 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, May 05, 2020 at 06:21:00PM +0100, Mark Brown wrote:
> On Tue, May 05, 2020 at 05:08:53PM +0100, Will Deacon wrote:
> > On Tue, May 05, 2020 at 04:18:06PM +0100, Mark Brown wrote:
> 
> > > > I also see a scary linker warning about the native VDSO:
> 
> > > > aarch64-none-linux-gnu-ld: arch/arm64/kernel/vdso/vgettimeofday.o: warning: BTI turned on by -z force-bti when all inputs do not have BTI in NOTE section.
> 
> > > I can't reproduce this, I am using clang-10 as well...  can you share
> > > your exact command line and config?  I'm using
> 
> > Just been debugging this, and it seems that not all clangs are created
> > equal. Updating mine from 10.0.2 to 11.0.1 means I now get the
> > '.note.gnu.property' sections emitted for C files compiled using
> > '-mbranch-protection=pac-ret+leaf+bti', whereas I didn't before.
> 
> Oh, that's irritating.  I'm using clang from the llvm.org packages,
> currently that's:
> 
>     10.0.0-++20200115115127+cbe681bd833-1~exp1~20200115105727.528
> 
> so if this is a clang issue it looks like they fixed it in the clang-10
> branch.  I'm not sure it's worth trying to detect and handle this or
> not, I don't know how widely deployed toolchains that don't emit the
> property are and there's a fairly clear solution.  What do you think?

The linker fixes this up when it warns, right? If so, I think the current
behaviour is fine *but* we might want to improve the diagnostic a bit not
to worry/confuse people. e.g. something like:

  "Your compiler is not emitting '.note.gnu.property' sections: forcing
   support for BTI in the linker, but consider upgrading your toolchain."

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
