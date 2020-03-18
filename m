Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 787B7189B9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 13:06:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oKksQb6a2MPaXU8D1VL0gNmixOZsBrJeZI6hsZNMag=; b=XmPvJEjFXjYLnI
	vVWXG4D89l940IfmCaY1YJ3oh+qmOzBQVALJl8/Q+4uwlnAhe+teZ6TOGRA/RtZaE2Z/zB9+d7VM6
	iLQrqqrjhmdbb6wI0CeGrd1C1v0TfFGJfPOC7v0maNSYdiTtdr0+qP/jvMGSIXGSaWMbw6Nfk8OIS
	1XVK7q4P72xUhzxeIzqWB0UqPFRTXYdGuoWRgtvMj4tdBC8GKJiRcuKqfFd6Xt+wfdUqao63f8Br8
	abQbQK7yb8o1RFZihg52VlEsX/PoFJtBdZ8442CjbDMj9zjFACsKV2iTRCwzX8ZJk0XOFm47YQH0X
	21AE5d4l7HhhExl5BVeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEXSu-0005q3-CI; Wed, 18 Mar 2020 12:06:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEXSl-0005pV-Mk
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 12:06:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE82B1FB;
 Wed, 18 Mar 2020 05:06:16 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.71])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 201DE3F534; Wed, 18 Mar 2020 05:06:16 -0700 (PDT)
Date: Wed, 18 Mar 2020 12:06:14 +0000
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: arm64/for-kernelci build: 3 builds: 1 failed, 2 passed, 1 error
 (v5.6-rc6-67-gcf89e8c383a6)
Message-ID: <20200318120614.GA94111@arrakis.emea.arm.com>
References: <5e715a20.1c69fb81.d52f4.2251@mx.google.com>
 <20200318082830.GA31312@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318082830.GA31312@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_050619_780244_C37176A3 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 "kernelci.org bot" <bot@kernelci.org>, kernel-build-reports@lists.linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 08:28:31AM +0000, Will Deacon wrote:
> On Tue, Mar 17, 2020 at 04:15:44PM -0700, kernelci.org bot wrote:
> > arm64/for-kernelci build: 3 builds: 1 failed, 2 passed, 1 error (v5.6-rc6-67-gcf89e8c383a6)
> > 
> > Full Build Summary: https://kernelci.org/build/arm64/branch/for-kernelci/kernel/v5.6-rc6-67-gcf89e8c383a6/
> > 
> > Tree: arm64
> > Branch: for-kernelci
> > Git Describe: v5.6-rc6-67-gcf89e8c383a6
> > Git Commit: cf89e8c383a6447a635400f669d0cd97e89770d9
> > Git URL: https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git
> > Built: 1 unique architecture
> > 
> > Build Failure Detected:
> > 
> > arm64:
> >     allnoconfig: (gcc-8) FAIL
> > 
> > Errors Detected:
> > 
> > arm64:
> >     allnoconfig (gcc-8): 1 error
> 
> Looks like this is easily fixed as per below.
> 
> Will
> 
> --->8
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index d65d226a77ec..53c77711f752 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -64,7 +64,7 @@ config ARM64
>  	select ARCH_INLINE_SPIN_UNLOCK_IRQRESTORE if !PREEMPTION
>  	select ARCH_KEEP_MEMBLOCK
>  	select ARCH_USE_CMPXCHG_LOCKREF
> -	select ARCH_USE_GNU_PROPERTY if BINFMT_ELF
> +	select ARCH_USE_GNU_PROPERTY
>  	select ARCH_USE_QUEUED_RWLOCKS
>  	select ARCH_USE_QUEUED_SPINLOCKS
>  	select ARCH_SUPPORTS_MEMORY_FAILURE

If ARCH_USE_GNU_PROPERTY is specific to ELF only, I'd rather not select
it unconditionally (and the option should probably depend on
BINFMT_ELF). Following the pattern of ARCH_HAVE_EXTRA_ELF_NOTES, we
could fix it up as below:

diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
index 4f00d50585a4..2eef3672de50 100644
--- a/arch/arm64/include/asm/elf.h
+++ b/arch/arm64/include/asm/elf.h
@@ -238,6 +238,7 @@ struct arch_elf_state {
 	.flags = 0,				\
 }
 
+#ifdef CONFIG_ARCH_USE_GNU_PROPERTY
 static inline int arch_parse_elf_property(u32 type, const void *data,
 					  size_t datasz, bool compat,
 					  struct arch_elf_state *arch)
@@ -259,6 +260,7 @@ static inline int arch_parse_elf_property(u32 type, const void *data,
 
 	return 0;
 }
+#endif
 
 static inline int arch_elf_pt_proc(void *ehdr, void *phdr,
 				   struct file *f, bool is_interp,

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
