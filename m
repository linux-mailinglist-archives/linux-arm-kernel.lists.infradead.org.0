Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F43C1C1259
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 14:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLn0Y2ebioJIlxnPbXiFScbsdJI2T8V+2HtsxfvsMac=; b=ncmh05QSKu8MFx
	AkrgFwFznfdkiVG61wj+A3vDvMZKzh0faA8WY59zMRnXBAIeNtSMYQTzkdzqeJ2CHC5oaXUq+UZyR
	nvTNijIKrWGL7ZSC/Ir34bhrjrQrkNzS4vTQtcc/qiQ1dyBJRpneLQbJBFoRnIUc+BCcP4e6B+Hw/
	Lh4CWfaicIAsAPCTRNydW7vyG7ygIws9MvO0VjYgxXaT62B/r8B2oFH7oO/7hZH5VapEkqVjMEu2B
	YDQE6LloZH7rNmldnu4lnD8B+rxLetj7PuqrhAjhUzO1TFor4W+/R2Zf5J4Bhhhip93yrCw6qSg9+
	Q5p6rC2g04NZ3a0hxLEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUV0x-0006dj-6J; Fri, 01 May 2020 12:43:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUV0m-0006dE-OX
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 12:43:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E16AB1FB;
 Fri,  1 May 2020 05:43:22 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.7.8])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A7C4E3F305;
 Fri,  1 May 2020 05:43:21 -0700 (PDT)
Date: Fri, 1 May 2020 13:43:18 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 3/3] arm64: Disable old style assembly annotations
Message-ID: <20200501124318.GC53528@C02TD0UTHF1T.local>
References: <20200501115430.37315-1-broonie@kernel.org>
 <20200501115430.37315-4-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501115430.37315-4-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_054324_842513_AF53E856 
X-CRM114-Status: GOOD (  14.24  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 12:54:30PM +0100, Mark Brown wrote:
> Now that we have converted arm64 over to the new style SYM_ assembler
> annotations select ARCH_USE_SYM_ANNOTATIONS so the old macros aren't
> available and we don't regress.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 43be825d0730..6f199d8146d4 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -66,6 +66,7 @@ config ARM64
>  	select ARCH_USE_GNU_PROPERTY
>  	select ARCH_USE_QUEUED_RWLOCKS
>  	select ARCH_USE_QUEUED_SPINLOCKS
> +	select ARCH_USE_SYM_ANNOTATIONS
>  	select ARCH_SUPPORTS_MEMORY_FAILURE
>  	select ARCH_SUPPORTS_ATOMIC_RMW
>  	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
