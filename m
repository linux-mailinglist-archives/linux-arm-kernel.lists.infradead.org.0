Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A371D7844
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZM+87pCAE4mVM1OJ89rx9mFhNUEprc10ngGKJIuSg0I=; b=HrFJtwWwCE0PwS
	fE68dblytt/QnJRMSHkOVXOq5cLghFA4d1mkhAYM2G04Qk4ro3zkz1YpJy1ds+u5qKpVIHc5n97ti
	gKYfLboZTxXvne0vrzS5oq8T4qMCSe2MmNuNJLKt1Paz3NWujSdllgYjkHHxBCHN3Z3Bz/dzij3v+
	3VzwS1VCL8oZ3vMsZ4q1rWjeT/9ON4p7Lkmg78OCl7DFdjRM5EHjCUmaxKnHSV22V8Nn/hJV1HR9v
	y0AZEwYHrZHSf6Aw8bsa3aZmxh1gLvw4AmdK9Azyw439lLDaVk4HVp8vDdiNptNdsso4mIkTX8ihl
	bBWCX9fXGlznB7Gd344w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaego-0006WX-DZ; Mon, 18 May 2020 12:16:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaege-0006Vk-5Z
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:16:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C67C3106F;
 Mon, 18 May 2020 05:16:03 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39DE73F305;
 Mon, 18 May 2020 05:16:01 -0700 (PDT)
Date: Mon, 18 May 2020 13:15:58 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 5/6] scs: Remove references to asm/scs.h from core code
Message-ID: <20200518121558.GF1957@C02TD0UTHF1T.local>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-6-will@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515172756.27185-6-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_051604_252679_2EBF1298 
X-CRM114-Status: GOOD (  16.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 06:27:55PM +0100, Will Deacon wrote:
> asm/scs.h is no longer needed by the core code, so remove a redundant
> header inclusion and update the stale Kconfig text.
> 
> Signed-off-by: Will Deacon <will@kernel.org>

With the corruption checks moved out of arch code this looks sound to
me, so modulo my comments on the prior patch, assuming we factor that
out:

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/Kconfig | 4 ++--
>  kernel/scs.c | 1 -
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/Kconfig b/arch/Kconfig
> index 45dfca9a98d3..2e6f843d87c4 100644
> --- a/arch/Kconfig
> +++ b/arch/Kconfig
> @@ -537,8 +537,8 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
>  	bool
>  	help
>  	  An architecture should select this if it supports Clang's Shadow
> -	  Call Stack, has asm/scs.h, and implements runtime support for shadow
> -	  stack switching.
> +	  Call Stack and implements runtime support for shadow stack
> +	  switching.
>  
>  config SHADOW_CALL_STACK
>  	bool "Clang Shadow Call Stack"
> diff --git a/kernel/scs.c b/kernel/scs.c
> index faf0ecd7b893..222a7a9ad543 100644
> --- a/kernel/scs.c
> +++ b/kernel/scs.c
> @@ -10,7 +10,6 @@
>  #include <linux/scs.h>
>  #include <linux/slab.h>
>  #include <linux/vmstat.h>
> -#include <asm/scs.h>
>  
>  static struct kmem_cache *scs_cache;
>  
> -- 
> 2.26.2.761.g0e0b3e54be-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
