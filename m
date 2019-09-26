Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69248BED76
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 10:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJhBFBoZgDZN0abFizvN06TKdVukzlg6/RNxasjF1tI=; b=UZTUOAsouqhMQp
	nKwiHB8ra111vruT5nWG5QaHoxguUTP4ZNFLxmGO0X31VGMhuo7abofrxBeX4fpek/w2TXbEoiehY
	IQ5XIHiAoWO+F38shKwJ4dP4LVJFUFOIzdWh1RI3+pOpxSqrayKPYD6YUsJzvM9nWwGwOl/t7m5bo
	fobrLYwSBmSYluJcIYD1z/FC3TZlSPcK/4Zm/aN5LgytL8fHCjKENf/ie522ydLpjDFr3WjRoLFkD
	QHYPJaCt2N3kSkKsbdBiFjIJP3a68Q5kARdnDNjAXPxiKULAMMJ7HZdffd8mhHbP4rxVwYis74eu4
	OhLoQvJrgW494Ld8zsTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDPEH-00039U-J5; Thu, 26 Sep 2019 08:34:25 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPAo-0002X0-3y
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 08:31:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C75261000;
 Thu, 26 Sep 2019 01:30:46 -0700 (PDT)
Received: from iMac.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B246F3F836;
 Thu, 26 Sep 2019 01:30:45 -0700 (PDT)
Date: Thu, 26 Sep 2019 09:30:39 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH 2/4] arm64: vdso32: Detect binutils support for dmb ishld
Message-ID: <20190926083039.GC26802@iMac.local>
References: <20190920142738.qlsjwguc6bpnez63@willie-the-truck>
 <20190926060353.54894-1-vincenzo.frascino@arm.com>
 <20190926060353.54894-3-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190926060353.54894-3-vincenzo.frascino@arm.com>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_013055_507274_5766863D 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: ard.biesheuvel@linaro.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, tglx@linutronix.de, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Sep 26, 2019 at 07:03:51AM +0100, Vincenzo Frascino wrote:
> diff --git a/arch/arm64/include/asm/vdso/compat_barrier.h b/arch/arm64/include/asm/vdso/compat_barrier.h
> index fb60a88b5ed4..3fd8fd6d8fc2 100644
> --- a/arch/arm64/include/asm/vdso/compat_barrier.h
> +++ b/arch/arm64/include/asm/vdso/compat_barrier.h
> @@ -20,7 +20,7 @@
>  
>  #define dmb(option) __asm__ __volatile__ ("dmb " #option : : : "memory")
>  
> -#if __LINUX_ARM_ARCH__ >= 8
> +#if __LINUX_ARM_ARCH__ >= 8 && defined(CONFIG_AS_DMB_ISHLD)
>  #define aarch32_smp_mb()	dmb(ish)
>  #define aarch32_smp_rmb()	dmb(ishld)
>  #define aarch32_smp_wmb()	dmb(ishst)
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 1fba0776ed40..1a3299d901b1 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -55,6 +55,9 @@ endif
>  VDSO_CAFLAGS += -fPIC -fno-builtin -fno-stack-protector
>  VDSO_CAFLAGS += -DDISABLE_BRANCH_PROFILING
>  
> +# Check for binutils support for dmb ishld
> +dmbinstr := $(call as-instr,dmb ishld,-DCONFIG_AS_DMB_ISHLD=1)

Is this check for the compat gas or the native one? Looking at
scripts/Kbuild.include, as-instr uses CC but you'd need a COMPATCC here
instead.

I may have missed something but I don't think this fixes the issue
Will's issue since he reported the problem with an old compat binutils.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
