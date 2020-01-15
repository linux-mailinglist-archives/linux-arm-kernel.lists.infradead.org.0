Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1731C13BC37
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:17:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZ/ZFkg2dq047h663sofrhdRd/Vd8esuzKKo5507DUw=; b=nVdWep90UjdFfo
	uq6FUKlfb1v6968CMKU7gAqrxYuA7o9qdh+hAxSs+4LDrJIzsbbF+j7T+OGeyKYHrrko5/sMYr4Ss
	7xZ9sGq6xW6y/4Xdg7ycigzBVZomVXl8ndTYrh53G4GnIfpkjmDrXUEGVtchHIq54M+VFkeaJW3WQ
	ZOkjqNlLH9KTWaMuo7rRtplGtxeexaWlxrSel11YTAQWr9tK9UMED2ACxnFdVG9iDVLxlhC95KssB
	KTraq+4yDsJHEYZ+AYMTsTs5wTfjrexmaRflEq4rwmfvail9QqjU4m1qN9Ws909Q7N/B6poj2dJZ/
	g8uufBt2dmSNYDgdcVuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irenV-0002k1-DF; Wed, 15 Jan 2020 09:17:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irenI-0002jh-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:17:00 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 337662081E;
 Wed, 15 Jan 2020 09:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579079816;
 bh=9HLcLMObfxc+fnbGS8DkK/Re2sQyg70CzuQyYcFjKpA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IYDXxhV2fAMFOq/pJfFaiDdWSV7Ht3wqQlOIay52wYKNitP1LHeZhzF67dRqQQeaJ
 gXQ0s4TfhG9hjw7u1ARBz3RBDSnD4qIYi7VFOHsgOTgD7VxCznl+whBu9xS6aU/UvM
 nAtNoFMtnj4kCES2mvURPBisssriQ5vCgGkjoFhw=
Date: Wed, 15 Jan 2020 09:16:52 +0000
From: Will Deacon <will@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v10 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20200115091651.GB21692@willie-the-truck>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-2-broonie@kernel.org>
 <20200114174432.GG2579@willie-the-truck>
 <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_011656_676214_A6C7E385 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 08:40:46AM +0100, Ard Biesheuvel wrote:
> On Tue, 14 Jan 2020 at 18:44, Will Deacon <will@kernel.org> wrote:
> >
> > On Fri, Jan 10, 2020 at 12:23:39PM +0000, Mark Brown wrote:
> > > From: Richard Henderson <richard.henderson@linaro.org>
> > >
> > > Expose the ID_AA64ISAR0.RNDR field to userspace, as the RNG system
> > > registers are always available at EL0.
> > >
> > > Implement arch_get_random_seed_long using RNDR.  Given that the
> > > TRNG is likely to be a shared resource between cores, and VMs,
> > > do not explicitly force re-seeding with RNDRRS.  In order to avoid
> > > code complexity and potential issues with hetrogenous systems only
> > > provide values after cpufeature has finalized the system capabilities.
> > >
> > > Signed-off-by: Richard Henderson <richard.henderson@linaro.org>
> > > [Modified to only function after cpufeature has finalized the system
> > > capabilities and move all the code into the header -- broonie]
> > > Signed-off-by: Mark Brown <broonie@kernel.org>
> > > Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> > > ---
> > >  Documentation/arm64/cpu-feature-registers.rst |  2 +
> > >  arch/arm64/Kconfig                            | 12 ++++
> > >  arch/arm64/include/asm/archrandom.h           | 67 +++++++++++++++++++
> > >  arch/arm64/include/asm/cpucaps.h              |  3 +-
> > >  arch/arm64/include/asm/sysreg.h               |  4 ++
> > >  arch/arm64/kernel/cpufeature.c                | 13 ++++
> > >  6 files changed, 100 insertions(+), 1 deletion(-)
> > >  create mode 100644 arch/arm64/include/asm/archrandom.h
> >
> > In which case, should we also add an HWCAP for this?
> >
> 
> Isn't this covered by the 'cpuid' HWCAP? We can't prevent EL0 from
> accessing these system registers anyway, even if we wanted to.

I see your argument, but I was just going on the side of consistency because
we're continuing to expose other features as HWCAPs when the capability is
just a proxy for the cpuid field. I was in favour of stopping the addition
of such HWCAPs years ago, but I couldn't convince Catalin ;)

The way I see it, we'll soon run out of HWCAP2 bits and then we'll have
our hand forced.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
