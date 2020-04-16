Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2AC1ACC37
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3bA5Ylt7T9dB3oStZyRuWuovwPQitJLKxfnyZrRmGk=; b=j/tpwAaSZzVYA4
	RYvW+5U4ORkEd/GoWaxFgya6NLk9uPBRQkPIbgp1qcMKtnhuQRsEYYFBE4otiThTMEq5Uk0iv4cp/
	ZYTQJFC+6HYOINHOAirSgVK/QjDiGr/NYXfoB48j5jLCXjOk8S6L6vOZRS2jME6z+jV+SL7Hl/83e
	/ystpLLjDpN1N1w6EByT1qFxAZqebNefafCxfFmemS7DTLrYFjqGWFnJyEHwVpiKYDXVWH/NxcG6L
	dygZilrphegwL6+mIzUMB+qGrY8OCcXcee/WKLRfA5jsRdFFZJscwe0Qpy4Fb6mgsjALoT6nRdrbI
	saTZ7B1DpUNUXd1G+3yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6tD-0007Hn-Cc; Thu, 16 Apr 2020 15:57:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6sz-0007Gk-Sl
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:57:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2620A30E;
 Thu, 16 Apr 2020 08:57:05 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 94EA73F237;
 Thu, 16 Apr 2020 08:57:03 -0700 (PDT)
Date: Thu, 16 Apr 2020 16:56:56 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH 2/2] [RFC] arm64: Add dependencies to vendor-specific
 errata
Message-ID: <20200416155655.GA7155@lakrids.cambridge.arm.com>
References: <20200416115658.20406-1-geert+renesas@glider.be>
 <20200416115658.20406-3-geert+renesas@glider.be>
 <20200416125630.GF4987@lakrids.cambridge.arm.com>
 <CAMuHMdWRW4+YLR8fz0hUTAPupRkM4Y5c82XHuOWSvNYOh-BZ0A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdWRW4+YLR8fz0hUTAPupRkM4Y5c82XHuOWSvNYOh-BZ0A@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_085710_246883_8165BADB 
X-CRM114-Status: GOOD (  22.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Wei Xu <xuwei5@hisilicon.com>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Gross <agross@kernel.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 05:38:07PM +0200, Geert Uytterhoeven wrote:
> On Thu, Apr 16, 2020 at 2:56 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > On Thu, Apr 16, 2020 at 01:56:58PM +0200, Geert Uytterhoeven wrote:
> > > Currently the user is asked about enabling support for each and every
> > > vendor-specific erratum, even when support for the specific platform is
> > > not enabled.
> > >
> > > Fix this by adding platform dependencies to the config options
> > > controlling support for vendor-specific errata.

> > I'm not su1re that it makes sense to do this in general, becaose the
> > ARCH_* platform symbols are about plactform/SoC support (e.g. pinctrl
> > drivers), and these are (mostly) CPU-local and/or VM-visible.
> >
> > I think that it makes sense for those to be independent because:
 
> > * It prevents building a minimal VM image with all (non-virtualized)
> >   platform support disabled, but all possible (VM-visible) errata
> >   options enabled. I do that occassionally for testing/analysis, and I
> >   can imagine this is useful for those building images that are only
> >   intended to be used in VMs.
> 
> Oh, you also want to build a "generic" guest kernel, with all ARCH_*
> symbols disabled. 

Yup! As above I do this today for building test kernels I run on a
number of different hosts, and I'm aware of other use-cases (e.g. WSL2
or docker for mac) where you may want to do this to minimize the core
kernel either for size or security reasons.

> Let's hope a maleficent user cannot disable errata mitigations in the
> guest kernel and break the host ;-)

Indeed ;)

For cases where a malicious guest could cause harm we've added
workarounds in KVM, so unless we've missed something that shouldn't be
the case.

Otherwise, a guest missing these is just shooting itself in the foot.

> And perhaps you do want to enable some platform-specific drivers for
> VFIO pass-through?  Hence having ARCH_* dependencies on those drivers
> means they cannot be enabled :-( Hmm...

IIRC platform device passthrough requires an corresponding VFIO platform
driver in the host to handle reset and so on, but it does seem a shame
to not allow the user to select a driver if they really want it.

I guess there might be platform-specific PCIe drivers too, which might
work with VFIO regardless.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
