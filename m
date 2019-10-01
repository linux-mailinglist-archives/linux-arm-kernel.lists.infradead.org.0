Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBF9C3547
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 15:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3Ze2jQc0w2Jl06CzksAr2xSQdX14Ur6+zu2EUV1PaY=; b=GFetN7zmz2Wozo
	ov44gGpMZRnJQyftkD8xni41FtdBOP8pQKh5/P0ECM1EqT3Qyuo/KVPXZ1VMxQoLIBn32Tf63+J3v
	msbl+hvNmncLXfl60oZk27IZMz/89ru9lOb01k2xhMxeLpMfDxhWdEyKD2/DQxSJ1nP1ouLJfFpUn
	WOfiWN+FpBb5nieRSIyf2/Q0W9y4aH1evJ4Y6OXQXBAhINeBXHrgsvs0/TQKkZSJL2xAYyEG8Noq+
	dGsAj3b4sxQHlqMJfszISTPdQu1WQoHfaXpCqHPpGmgziYVPcSghffZ6D47LPcBAPhrI9K2YL+9Tl
	dG61/pYdtjbO3291u6ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHzG-0007Pk-U4; Tue, 01 Oct 2019 13:14:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHz1-0007N3-US
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 13:14:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D47320640;
 Tue,  1 Oct 2019 13:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569935667;
 bh=USjyyXfyKCbNO6tLGkaM43cTWlPVDGf+sgQmt+K7JEE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XVdzqlbYrBfzwj0oKPB4Ei42Ra4tnPKM1W4qUXly4CNnSqC8uEjNLuzD+/nGLB+Uz
 OY/qQeLMUrvO9vRl/K8zArFDPV8wioU4UDLEMB9e9nKmv4d7V+vDkqcBaAtMJ6lpEp
 Xe+SVraz3XKSKwMGFdzITHT7q3zqYS1EOdnItJUc=
Date: Tue, 1 Oct 2019 14:14:23 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926214342.34608-1-vincenzo.frascino@arm.com>
 <20190926214342.34608-2-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926214342.34608-2-vincenzo.frascino@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_061428_036279_0958DB63 
X-CRM114-Status: GOOD (  23.13  )
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
Cc: ard.biesheuvel@linaro.org, catalin.marinas@arm.com, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 10:43:38PM +0100, Vincenzo Frascino wrote:
> As reported by Will Deacon the .config file and the generated
> include/config/auto.conf can end up out of sync after a set of
> commands since CONFIG_CROSS_COMPILE_COMPAT_VDSO is not updated
> correctly.
> 
> The sequence can be reproduced as follows:
> 
> $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig
> [...]
> $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- menuconfig
> [set CONFIG_CROSS_COMPILE_COMPAT_VDSO="arm-linux-gnueabihf-"]
> $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
> 
> Which results in:
> 
> arch/arm64/Makefile:62: CROSS_COMPILE_COMPAT not defined or empty,
> the compat vDSO will not be built
> 
> even though the compat vDSO has been built:
> 
> $ file arch/arm64/kernel/vdso32/vdso.so
> arch/arm64/kernel/vdso32/vdso.so: ELF 32-bit LSB pie executable, ARM,
> EABI5 version 1 (SYSV), dynamically linked,
> BuildID[sha1]=c67f6c786f2d2d6f86c71f708595594aa25247f6, stripped
> 
> A similar case that involves changing the configuration parameter multiple
> times can be reconducted to the same family of problems.
> 
> The reason behind it comes from the fact that the master Makefile includes
> that architecture Makefile twice, once before the syncconfig and one after.
> Since the synchronization of the files happens only upon syncconfig, the
> architecture Makefile included before this event does not see the change in
> configuration.
> 
> As a consequence of this it is not possible to handle the cross compiler
> definitions inside the architecture Makefile.
> 
> Address the problem removing CONFIG_CROSS_COMPILE_COMPAT_VDSO and moving
> the detection of the correct compiler into Kconfig via COMPAT_CC_IS_GCC.
> 
> As a consequence of this it is not possible anymore to set the compat
> cross compiler from menuconfig but it requires to be exported via
> command line.
> 
> E.g.:
> 
> $ make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
> CROSS_COMPILE_COMPAT=arm-linux-gnueabihf
> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/Kconfig                |  5 ++++-
>  arch/arm64/Makefile               | 18 +++++-------------
>  arch/arm64/kernel/vdso32/Makefile |  2 --
>  3 files changed, 9 insertions(+), 16 deletions(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 37c610963eee..0e5beb928af5 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -110,7 +110,7 @@ config ARM64
>  	select GENERIC_STRNLEN_USER
>  	select GENERIC_TIME_VSYSCALL
>  	select GENERIC_GETTIMEOFDAY
> -	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT)
> +	select GENERIC_COMPAT_VDSO if (!CPU_BIG_ENDIAN && COMPAT && COMPATCC_IS_ARM_GCC)
>  	select HANDLE_DOMAIN_IRQ
>  	select HARDIRQS_SW_RESEND
>  	select HAVE_PCI
> @@ -313,6 +313,9 @@ config KASAN_SHADOW_OFFSET
>  	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
>  	default 0xffffffffffffffff
>  
> +config COMPATCC_IS_ARM_GCC
> +	def_bool $(success,$(COMPATCC) --version | head -n 1 | grep -q "arm-.*-gcc")

I've seen toolchains where the first part of the tuple is "armv7-", so they
won't get detected here. However, do we really need to detect this? If
somebody passes a duff compiler, then the build will fail in the same way as
if they passed it to CROSS_COMPILE=.

I'd prefer to drop this check altogether.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
