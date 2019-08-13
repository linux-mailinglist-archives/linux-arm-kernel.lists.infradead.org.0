Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B63CD8BF94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5d9C5KESaRqqoQCJ3JPKl78UZqyHGGSe6vajxd7N4Qc=; b=mVRpN33GKmFUu+
	zPM0IZfXg+nvgzM2+o0xMhUqttzQF0Cmxfs3snG3SvXcBTg1Nb2CRyKvlvV+SNHZ2rfVuafg5/tND
	kaOzHAY5c6GnBBxCnFJTSwlPjjYrqD830q59wWcXAsNi837QvDKch2vy8hqQOazg7yqzVGunI8SJf
	l6u8vPJIzwekGkKHR3L6fFX6UvYU8xPRp9dTUUt70RC8BlyhYyACnzykOZCNlSsnkyZYraYnnQDES
	k/YTBmPRLaRGFcvXMkc+7UMVga7WKGhd051JH2/kKCPpwf9kvjAGwNDz+i0HGBxQGKwy1SBlCrZ7h
	3rYZQiTRlvKUd+portjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaYN-0003vg-8M; Tue, 13 Aug 2019 17:25:47 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaYC-0003vH-Od
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:25:38 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C565320663;
 Tue, 13 Aug 2019 17:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565717136;
 bh=XA2SzVqVCbd2dapKCVkJJtNCTikMgmxGnHHSOngg3qU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yj3til7vW4LDEfy8ejg7W+eJrC6oUi2VU2To2ZORRkgKtOU1HXAfm1cHhsGYh83Zy
 ZJrmfwFeDCbspoyVBzcvEfQgFmCcstolHJb8MonTk34fWHzU7P9i/sxK9DsI6I6xyM
 Q8R2DdWCCwqOQeG/5WbBZbU8gMESvLAfVRJTQ9Oo=
Date: Tue, 13 Aug 2019 18:25:33 +0100
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/2] arm64: Add initial support for E0PD
Message-ID: <20190813172532.hid5cmzhrq7s742l@willie-the-truck>
References: <20190812125738.17388-1-broonie@kernel.org>
 <20190812125738.17388-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812125738.17388-2-broonie@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_102536_823370_3467A224 
X-CRM114-Status: GOOD (  19.77  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 01:57:37PM +0100, Mark Brown wrote:
> Kernel Page Table Isolation (KPTI) is used to mitigate some speculation
> based security issues by ensuring that the kernel is not mapped when
> userspace is running but this approach is expensive and is incompatible
> with SPE.  E0PD, introduced in the ARMv8.5 extensions, provides an
> alternative to this which ensures that accesses from userspace to the
> kernel's half of the memory map to always fault with constant time,
> preventing timing attacks without requiring constant unmapping and
> remapping or preventing legitimate accesses.
> 
> This initial patch does not yet integrate with KPTI, this will be dealt
> with in followup patches.  Ideally we could ensure that by default we
> don't use KPTI on CPUs where E0PD is present.
> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/Kconfig                     | 14 +++++++++++++
>  arch/arm64/include/asm/cpucaps.h       |  3 ++-
>  arch/arm64/include/asm/pgtable-hwdef.h |  2 ++
>  arch/arm64/include/asm/sysreg.h        |  1 +
>  arch/arm64/kernel/cpufeature.c         | 27 ++++++++++++++++++++++++++
>  5 files changed, 46 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index c6a978b0fb7c..3a6875a5bb99 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1409,6 +1409,20 @@ config ARM64_PTR_AUTH
>  
>  endmenu
>  
> +menu "ARMv8.5 architectural features"
> +
> +config ARM64_E0PD
> +	bool "Enable support for E0PD"
> +	default y
> +	help
> +	   E0PD (part of the ARMv8.5 extensions) ensures that EL0
> +	   accesses made via TTBR1 always fault in constant time,
> +	   providing the same guarantees as KPTI with lower overhead.

This could do with a slight tweak, since there are two E0PD bits in the
TCR, which apply to TTBR0 and TTBR1 separately. I'd also be reluctant
to state that it provides the /same/ guarantees as kpti, since I don't
think it will cause a translation fault.

It's probably also worth mentioning that, unlike kpti, E0PDx doesn't
break profiling with SPE.

> +	   This option enables E0PD where available.

For TTBR1.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
