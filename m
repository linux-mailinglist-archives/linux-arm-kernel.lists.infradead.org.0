Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422A8C36F4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 16:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4selmPhutqJFhOQQOPZzGKc9H3xbLYcguGyldqDu2g=; b=bXSgVXof/Cw/zQ
	paTU1A4jhlCgD6GyTcMi2omtZEghJdrnCdo8cyt+3/PqTuqS/O+lWlpXuxgPo9Nd6uNbHkGVIauPb
	dOpRElLuB9uHK+iAdf+fJtdW4vRWBCP0r1vlHMrhH/NjpYRc9kJYW/AjPhcyNtLxdsb6m4KOsPQXr
	7jtPSxune8MuKmJhEvwg/7xS/6hkag5YsmnvhBMTKhbC8HVAKyPGEfFTKO3DC85jfi6EnoWzfGY/M
	vC8SNgGUCP76mIO7sPoFRsZdTV2ll7DkNXcnZTEekSoaapuGalFU9Pyb3nZxg7AuRBJi9SSIj9CLI
	Bg0jzyDkiDCcyBWIGT2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJ1G-0008Bu-1s; Tue, 01 Oct 2019 14:20:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJ19-0008BH-DU
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 14:20:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C0DA421855;
 Tue,  1 Oct 2019 14:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569939643;
 bh=24fhhR5+md0mOeWNqDkBGyechQDCTAZku95IGy5Kpq4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jdn5igzjnGX4prnKpEQ8P1d+jyX9se7sEYUPNxIR9MYZeZqVKZAfyH6mXOH4fCNEh
 JjHQv7fjkLwYVD0zlQkch0rQghb8GHS4zeKXGu65/O8F9Ed+EJFms67kJfX9Kicc7Y
 a2kAezvPOFD0qedCPm1KM0ntFTjOY3NWCCk9gXa8=
Date: Tue, 1 Oct 2019 15:20:38 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_072043_476679_41BDF8AA 
X-CRM114-Status: GOOD (  19.13  )
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
Cc: ard.biesheuvel@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 ndesaulniers@google.com, linux-kernel@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 03:20:35PM +0100, Vincenzo Frascino wrote:
> On 10/1/19 2:27 PM, Catalin Marinas wrote:
> > On Tue, Oct 01, 2019 at 02:14:23PM +0100, Will Deacon wrote:
> >> On Thu, Sep 26, 2019 at 10:43:38PM +0100, Vincenzo Frascino wrote:
> >>> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> >>> index 37c610963eee..0e5beb928af5 100644
> >>> --- a/arch/arm64/Kconfig
> >>> +++ b/arch/arm64/Kconfig
> >>> @@ -110,7 +110,7 @@ config ARM64
> >>>  	select GENERIC_STRNLEN_USER
> >>>  	select GENERIC_TIME_VSYSCALL
> >>>  	select GENERIC_GETTIMEOFDAY
> >>> -	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
> >>> +	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPATCC_IS_ARM_GCC)
> >>>  	select HANDLE_DOMAIN_IRQ
> >>>  	select HARDIRQS_SW_RESEND
> >>>  	select HAVE_PCI
> >>> @@ -313,6 +313,9 @@ config KASAN_SHADOW_OFFSET
> >>>  	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
> >>>  	default 0xffffffffffffffff
> >>>  
> >>> +config COMPATCC_IS_ARM_GCC
> >>> +	def_bool $(success,$(COMPATCC) --version | head -n 1 | grep -q "arm-.*-gcc")
> >>
> >> I've seen toolchains where the first part of the tuple is "armv7-", so they
> >> won't get detected here. However, do we really need to detect this? If
> >> somebody passes a duff compiler, then the build will fail in the same way as
> >> if they passed it to CROSS_COMPILE=.
> > 
> > Not sure what happens if we pass an aarch64 compiler. Can we end up with
> > a 64-bit compat vDSO?
> > 
> 
> I agree with Catalin here. The problem is not only when you pass and aarch64
> toolchain but even an x86 and so on.

I disagree. What happens if you do:

$ make ARCH=arm64 CROSS_COMPILE=x86_64-linux-gnu-

on your x86 box?

> If the problem is related to armv7- we can change the rule as "arm.*-gcc" which
> should detect them as well. Do you know what is the triple that an armv7-
> toolchain prints?

'fraid not, since I don't have one to hand. I think you'd end up matching
arm*-gcc, which is pretty broad.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
