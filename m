Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE931AA103
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LYNF9rvVFkFYa3vc+5Tt/aPsH0ciq5AD4u/1mTDR0sM=; b=LPs/c7xJ/5WApy
	BxlPZpoKZeCi0BjxsZ06/xFZEOC4FA9uDKfR2wRRBF447KOJewb430H39ESHVtnUflbzdf/tC1e2d
	Y4sUNf/8eda9hPMhRMyAOnsaDmBPpMlGWrbUoIiq3nCC3ev8HtNbwQ405/POHCdcTQCQc+qPyBNPc
	6LPgwMvon2iZXDxDM+OJF66WZat8hRp4FTYU0kyOFC/wNieJoGeA1FmCO4NhVlRtpv6+QmFVlH+LQ
	K/IXnfY/HqabruAAMcj1BhTeZdrEdKKwPTPbu7amingT6R1R4RN9lrDgROilckV7Sjub4qU3S9zlO
	chhlybHVrxrvKwpKWB9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhMD-0006et-B2; Wed, 15 Apr 2020 12:41:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhM6-0006e6-DG
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:41:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E75AB1063;
 Wed, 15 Apr 2020 05:41:23 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4C3623F68F;
 Wed, 15 Apr 2020 05:41:22 -0700 (PDT)
Date: Wed, 15 Apr 2020 13:41:16 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm64: drop GZFLAGS definition and export
Message-ID: <20200415124116.GA28304@C02TD0UTHF1T.local>
References: <20200415123049.25504-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415123049.25504-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054126_490244_AE3E79D5 
X-CRM114-Status: GOOD (  14.32  )
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
Cc: catalin.marinas@arm.com, will@kernel.org, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, suzuki.poulose@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 15, 2020 at 02:30:49PM +0200, Ard Biesheuvel wrote:
> Drop the definition and export of GZFLAGS, which was never referenced
> on arm64, and whose last recorded use in the ARM port (on which arm64
> was based original) was removed by patch
> 
>   commit 5e89d379edb5ae08b57f39dd8d91697275245cbf [*]
>   Author: Russell King <rmk@flint.arm.linux.org.uk>
>   Date:   Wed Oct 16 14:32:17 2002 +0100
> 
>     [ARM] Convert ARM makefiles to new kbuild (Sam Ravnborg, Kai, rmk)
> 
> [*] git commit ID based on Thomas Gleixner's historical GIT repository at
>     git://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Acked-by: Mark Rutland <mark.rutland@arm.com>

Mark.

> ---
>  arch/arm64/Makefile | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 8e9445faa8ac..e48867c335d2 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -12,7 +12,6 @@
>  
>  LDFLAGS_vmlinux	:=--no-undefined -X
>  CPPFLAGS_vmlinux.lds = -DTEXT_OFFSET=$(TEXT_OFFSET)
> -GZFLAGS		:=-9
>  
>  ifeq ($(CONFIG_RELOCATABLE), y)
>  # Pass --no-apply-dynamic-relocs to restore pre-binutils-2.27 behaviour
> @@ -131,7 +130,7 @@ KBUILD_CFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
>  KBUILD_CPPFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
>  KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
>  
> -export	TEXT_OFFSET GZFLAGS
> +export	TEXT_OFFSET
>  
>  core-y		+= arch/arm64/
>  libs-y		:= arch/arm64/lib/ $(libs-y)
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
