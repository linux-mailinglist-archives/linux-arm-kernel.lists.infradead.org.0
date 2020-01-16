Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D51F13D881
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:03:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ai1XQGcK4Lc36uFjDjSvksN24naw2uZtEV2NtaZPJxY=; b=W2jATqe3oS7RzP
	JY1DOjLq0m9ypGHHfZZX6bgJuYX9vhHEEQCUq0kMpITDIC3GYg4SmLdjxFWsxNNQ0wBF3TXtAs4Ma
	F22Ilc0lQvMKe5ZgjlRaz3UZAnvv7Dim0w4pPYPD8v6ytsVvIJMMYDuG7FJ/Nv41LvWjT/2q1YTPN
	NXXQdpRztMSbfWGA2v1WilqKUfczVUfxVXvXgzvtVhkPaG+W3r6FUJq9b5cVjL6Zb3oGLxs2FfJDv
	OxHQ4ih6tU+7pGF/5xAdE53HzTzAEHpqufnoqQb7DRiAD9+zv+6NRwFraoAlVqzqqtoKSlXCKtsZK
	Sz/Nrq5YA5pVyhF/Clow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is2vY-0001gu-6L; Thu, 16 Jan 2020 11:03:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is2vK-0001fU-BD
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:02:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C40331B;
 Thu, 16 Jan 2020 03:02:48 -0800 (PST)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.197.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 940A13F534; Thu, 16 Jan 2020 03:02:47 -0800 (PST)
Date: Thu, 16 Jan 2020 11:02:45 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Richard Henderson <richard.henderson@linaro.org>
Subject: Re: [PATCH v10 1/3] arm64: Implement archrandom.h for ARMv8.5-RNG
Message-ID: <20200116110245.GB10277@arrakis.emea.arm.com>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-2-broonie@kernel.org>
 <20200114174432.GG2579@willie-the-truck>
 <CAKv+Gu9pVZZm_gvsKfrCG_cM=1TmAAH+sj06GzT+Ag9Ej7__fg@mail.gmail.com>
 <20200115091651.GB21692@willie-the-truck>
 <CAKv+Gu-NZBo2q4_Yh068UENun0mkLitN473D-w7KBFXVpfdKqA@mail.gmail.com>
 <20200115110720.GG3897@sirena.org.uk>
 <20200115142611.GC3429@arrakis.emea.arm.com>
 <a789713b-8d0a-a997-d348-3521950e9d90@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a789713b-8d0a-a997-d348-3521950e9d90@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_030250_426705_CD14377E 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Mark Brown <broonie@kernel.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 02:23:39PM -1000, Richard Henderson wrote:
> On 1/15/20 4:26 AM, Catalin Marinas wrote:
> > On Wed, Jan 15, 2020 at 11:07:20AM +0000, Mark Brown wrote:
> >> On Wed, Jan 15, 2020 at 10:24:21AM +0100, Ard Biesheuvel wrote:
> >>> On Wed, 15 Jan 2020 at 10:16, Will Deacon <will@kernel.org> wrote:
> >>
> >>>> I see your argument, but I was just going on the side of consistency because
> >>>> we're continuing to expose other features as HWCAPs when the capability is
> >>>> just a proxy for the cpuid field. I was in favour of stopping the addition
> >>>> of such HWCAPs years ago, but I couldn't convince Catalin ;)
> >>
> >>>> The way I see it, we'll soon run out of HWCAP2 bits and then we'll have
> >>>> our hand forced.
> >>
> >>> I don't have a strong opinion either way.
> >>
> >> Me either, or at least not enough to object to doing it - Will?
> >> Catalin?
> > 
> > Until the ifunc resolver can work with CPUID, I think we should keep
> > adding HWCAPn bits. We can revisit this with the toolchain people before
> > introducing HWCAP3.
> 
> Why would the ifunc resolver not be able to use HWCAP_CPUID?

It can indeed check the HWCAP_CPUID but I haven't seen any plans to
implement the next part, actual use of an MRS instruction to read the
corresponding ID_AA64* regs. This MRS emulation was requested by (some
of) the toolchain people, even the architecture gained a feature to
simplify the emulation, but followed by complete silence from the
toolchain folk.

> That said, speaking as a toolchain guy, you should conserve HWCAP2 bits so
> that, by preference, you do not need to introduce AT_HWCAP3.  Or at least delay
> adding it.

We still have some time before AT_HWCAP3. Also, we have 32-bit spare in
both HWCAP and HWCAP2 which we can use. IIRC we didn't go into the top
32-bit of HWCAP because we were still debating whether ILP32 makes
sense (and now I'm 100% convinced it doesn't ;)).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
