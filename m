Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5E448A28
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 19:33:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqkJmnUgVI1X7+kTisdR/7h1x4BwrfSksk+dIroQvXs=; b=mDxIcTxracp96n
	f42+l+riFY8TrYebDuCT3EgjYQ8vNhcn5erf3jtkdzN6aGeUIDSQbLXW66baaKHPvp1RduDP8d6WR
	FLlR84uSS0fafKfBqznGF4BC7yOgTQljogk+jpUO6lhI6Wb9ImtCGswyBoJQFUENm5cGbTWeiT73q
	F2jmLG2lkFV9YoUew+THNPBpYMwIxfZ3fxJ6hyNEVy4G0w0OmlMpMj3IWTAKd+7Thgzsn9BE9oHqV
	geNqzegVsIPizLEwXo/RhLajYka+pzzOthJ7vwsb+BTolN0FcbGWpeHSlmlAx0xmLBzcIcqUGwhI8
	Y8p+8JBZNLNXA8283/og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcvV3-0001P2-TK; Mon, 17 Jun 2019 17:32:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcvUr-0001OZ-LA
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 17:32:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CADFE28;
 Mon, 17 Jun 2019 10:32:44 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C6A293F246;
 Mon, 17 Jun 2019 10:32:43 -0700 (PDT)
Date: Mon, 17 Jun 2019 18:32:41 +0100
From: Will Deacon <will.deacon@arm.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: Re: [PATCH] arm64: Allow user selection of ARM64_MODULE_PLTS
Message-ID: <20190617173241.GM30800@fuggles.cambridge.arm.com>
References: <20190614025932.533-1-f.fainelli@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614025932.533-1-f.fainelli@gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_103245_742722_14ECEBE5 
X-CRM114-Status: GOOD (  16.55  )
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
Cc: ard.biesheuvel@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 open list <linux-kernel@vger.kernel.org>,
 bcm-kernel-feedback-list@Broadcom.com, linux-arm-kernel@vger.kernel.org,
 "moderated list:ARM64 PORT \(AARCH64 ARCHITECTURE\)"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 07:59:32PM -0700, Florian Fainelli wrote:
> Make ARM64_MODULE_PLTS a selectable Kconfig symbol, since some people
> might have very big modules spilling out of the dedicated module area
> into vmalloc. Help text is copied from the ARM 32-bit counterpart.
> 
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
> ---
>  arch/arm64/Kconfig | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 697ea0510729..36befe987b73 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1418,8 +1418,20 @@ config ARM64_SVE
>  	  KVM in the same kernel image.
>  
>  config ARM64_MODULE_PLTS
> -	bool
> +	bool "Use PLTs to allow module memory to spill over into vmalloc area"
>  	select HAVE_MOD_ARCH_SPECIFIC
> +	help
> +	  Allocate PLTs when loading modules so that jumps and calls whose
> +	  targets are too far away for their relative offsets to be encoded
> +	  in the instructions themselves can be bounced via veneers in the
> +	  module's PLT. This allows modules to be allocated in the generic
> +	  vmalloc area after the dedicated module memory area has been
> +	  exhausted. The modules will use slightly more memory, but after
> +	  rounding up to page size, the actual memory footprint is usually
> +	  the same.

Isn't the worry really about the runtime performance overhead introduced
by the veneers, as opposed to the memory usage of the module?

> +	  Disabling this is usually safe for small single-platform
> +	  configurations. If unsure, say y.

So should this be on by default?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
