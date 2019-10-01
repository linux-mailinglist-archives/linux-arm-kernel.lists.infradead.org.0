Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF05C3BC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 18:47:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poRbSFV1quM0Btx/JAGOYfcV2pa6m/Ce8eiEhziXnAQ=; b=matLYXLmN2kW7a
	7c/XXkEYugqAZe8x/kzDvj9Vrr1KoVjPx0jJX92x5P+pWaw8CAgK4i4q5I5T0ntklg/GlJRF3R2Gw
	aFL4S71aKHo3xdSKU0jhzJ+owmDQPLrfTOXlMdSygLUbp9h9ZRK1mYWtfigRWTumyIjiUAYonFHjo
	TXqz7rHrXmI+NdG4KtjX3vlhEBdfd4/w+5rBtEZcf6o1PhVBBZAvbBVS2E10yJGEi5vcdFqGO2Yno
	QEQqHnS3vqkU+9WfN1bzOY2OrF4Do4yRH1Cj6bLi021EoBhi2LlowKWmLD/b8hizdOpkIlao2mcvh
	CV81TWKopGc5jPhKLG6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLIs-00017K-VU; Tue, 01 Oct 2019 16:47:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLIl-00016U-9M
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 16:47:05 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A536F20659;
 Tue,  1 Oct 2019 16:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569948423;
 bh=JJ7gDG/KutG+i9qf0bFYfM+IUFqtjNVsTgvgalBoxf4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n+MevooD/Y954ryuPnnAl+0+Zq2uKrhxzZTbolBu/i9o/zKOEX4H36Tuu0z4eyDn/
 Y5ggKuu+7ovuOJw2z3rF9yTMrRzgSbmPal9VvuzLj/i95/F+lUfVA1Prs+gaE+EAWk
 Ei+64VscEu5RoGOeA3OeGSVNOgveAV1TdLXEBsQg=
Date: Tue, 1 Oct 2019 17:46:58 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20191001164657.l2wz3ghq6icm3lim@willie-the-truck>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
 <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
 <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
 <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
 <20191001153056.GO41399@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001153056.GO41399@arrakis.emea.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_094703_343332_71EA60B2 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 04:30:56PM +0100, Catalin Marinas wrote:
> On Tue, Oct 01, 2019 at 03:43:54PM +0100, Will Deacon wrote:
> > > >>>> On Thu, Sep 26, 2019 at 10:43:38PM +0100, Vincenzo Frascino wrote:
> > > >>>>> +config COMPATCC_IS_ARM_GCC
> > > >>>>> +	def_bool $(success,$(COMPATCC) --version | head -n 1 | grep -q "arm-.*-gcc")
> [...]
> > My point was that we don't attempt to sanitise the compiler passed via
> > CROSS_COMPILE, so I don't think we should do anything special for COMPATCC
> > either.
> 
> What I really want from kbuild with this patch is:
> 
> 1. Not to warn me that I don't have a CROSS_COMPILE_COMPAT set
> 
> 2. Not to give me a compilation error if the makefile made up a COMPATCC
>    that doesn't work
> 
> Since we dropped the Kconfig option for the compat gcc prefix (which I
> didn't like anyway), COMPATCC is now initialised to
> (CROSS_COMPILE_COMPAT)gcc. This means that it is valid compiler (and
> it's an aarch64 compiler on my machine). The COMPATCC_IS_ARM_GCC
> silently disables the compat vDSO for this case rather than giving me a
> build error if we don't have such checks.
> 
> In the long run, I wouldn't mandate CROSS_COMPILE_COMPAT to always be
> set for the compat vDSO since with clang we could use the same compiler
> binary for both native and compat (with different flags). That's once we
> cleaned up the headers.

But we'll still need it even with clang so that the relevant triple can be
passed to the --target option. The top-level Makefile already does this:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Makefile#n544

so I think we should do the same thing for the compat vdso as well, which
would allow us to remove this complexity by requiring that
CROSS_COMPILE_COMPAT identifies the cross-compiler to use in exactly the
same way as CROSS_COMPILE does.

Am I missing something here?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
