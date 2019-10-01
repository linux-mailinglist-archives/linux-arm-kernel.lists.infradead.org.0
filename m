Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 597E3C35A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:27:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJ9nC1/5SUJb3ljlbxrsIRtdoXu1KgWRk6fxgxSmaPQ=; b=BC8aWZANxP/UI3
	/t0CCiD2xCPg0oyawVEpaYwMr1F2m+Z61f2hoExRA8eTgl1VdYtHGb1Rn2yVX/NfksHuMOztxdbUf
	V3OgtZqlUhjNF/fvsnGM/cgeN5oTVa+xrOmFrHJCHi3hY3/0hoin+6sDy6zmtQ3+BYdq5gUioVCJh
	eEhv2MviRMYQm3y1Wlq+wXSFSm2/csPci95t6+HUj3Sz7Cws1SuEr62Ff4i1G7IwHEa5zCo12SWV2
	ggy1RfkY0H0OYhN//L8yzas6mKFzBmr0YQUtY+I8hQo0rPO5gczXnG1kMCYK8uy4RUwP+ajMPWtgn
	Ws2aEagGILqlDKDs+4WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFIBt-0006YI-Om; Tue, 01 Oct 2019 13:27:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFIBm-0006XM-NM
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:27:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D2B91000;
 Tue,  1 Oct 2019 06:27:34 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6A3973F534; Tue,  1 Oct 2019 06:27:33 -0700 (PDT)
Date: Tue, 1 Oct 2019 14:27:31 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20191001132731.GG41399@arrakis.emea.arm.com>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_062738_804010_58A728B1 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 02:14:23PM +0100, Will Deacon wrote:
> On Thu, Sep 26, 2019 at 10:43:38PM +0100, Vincenzo Frascino wrote:
> > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > index 37c610963eee..0e5beb928af5 100644
> > --- a/arch/arm64/Kconfig
> > +++ b/arch/arm64/Kconfig
> > @@ -110,7 +110,7 @@ config ARM64
> >  	select GENERIC_STRNLEN_USER
> >  	select GENERIC_TIME_VSYSCALL
> >  	select GENERIC_GETTIMEOFDAY
> > -	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
> > +	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPATCC_IS_ARM_GCC)
> >  	select HANDLE_DOMAIN_IRQ
> >  	select HARDIRQS_SW_RESEND
> >  	select HAVE_PCI
> > @@ -313,6 +313,9 @@ config KASAN_SHADOW_OFFSET
> >  	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
> >  	default 0xffffffffffffffff
> >  
> > +config COMPATCC_IS_ARM_GCC
> > +	def_bool $(success,$(COMPATCC) --version | head -n 1 | grep -q "arm-.*-gcc")
> 
> I've seen toolchains where the first part of the tuple is "armv7-", so they
> won't get detected here. However, do we really need to detect this? If
> somebody passes a duff compiler, then the build will fail in the same way as
> if they passed it to CROSS_COMPILE=.

Not sure what happens if we pass an aarch64 compiler. Can we end up with
a 64-bit compat vDSO?

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
