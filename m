Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2A98D71F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 17:20:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWZoecQZHFMn2xrir6IbqbWBDHgvi7kkzWH1xiKz/ts=; b=RV7YTeqVyRzUyy
	eesJqRDZBSAi67wEi/nK+iuRdPC1uv2npYUuton5cA6CUmv4MUI/LvBGa5EcFK7Ssc6GBSoCAnkrT
	uyxIxqnoli1AYK3LirUTti5j+SjZsvCI647LohI5dbShYrjoIPHWKfgQMRQk0KEEY5cIfOsrob9LW
	MxXLdhwQLd+mODUdLiclGxzDICKzYT6KZTUubM4PAOMihkJwP/a89XStg33yCfSEQfmwpAb0IyfXx
	pyFgPZc7qks2TyHPxtc/VFBhth0x6X6KiAsucQNqwohYmEuuUyX5divH4MLbPuIV8AJm1gv00sLs4
	E/8PSPmTT6xEPu+5p90A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxv4q-0004P1-CJ; Wed, 14 Aug 2019 15:20:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxv4b-0004Od-Ae
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 15:20:26 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3597928;
 Wed, 14 Aug 2019 08:20:21 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1535E3F694;
 Wed, 14 Aug 2019 08:20:19 -0700 (PDT)
Date: Wed, 14 Aug 2019 16:20:18 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Steve Capper <steve.capper@arm.com>, will@kernel.org
Subject: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE (was:
 Re: [PATCH V5 03/12] arm64: kasan: Switch to using)
 KASAN_SHADOW_OFFSET
Message-ID: <20190814152017.GD51963@lakrids.cambridge.arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
 <20190807155524.5112-4-steve.capper@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807155524.5112-4-steve.capper@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_082025_458087_7DFDE508 
X-CRM114-Status: GOOD (  17.22  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,

On Wed, Aug 07, 2019 at 04:55:15PM +0100, Steve Capper wrote:
> +config KASAN_SHADOW_OFFSET
> +	hex
> +	depends on KASAN
> +	default 0xdfffa00000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && !KASAN_SW_TAGS
> +	default 0xdfffd00000000000 if ARM64_VA_BITS_47 && !KASAN_SW_TAGS
> +	default 0xdffffe8000000000 if ARM64_VA_BITS_42 && !KASAN_SW_TAGS
> +	default 0xdfffffd000000000 if ARM64_VA_BITS_39 && !KASAN_SW_TAGS
> +	default 0xdffffffa00000000 if ARM64_VA_BITS_36 && !KASAN_SW_TAGS
> +	default 0xefff900000000000 if (ARM64_VA_BITS_48 || ARM64_USER_VA_BITS_52) && KASAN_SW_TAGS
> +	default 0xefffc80000000000 if ARM64_VA_BITS_47 && KASAN_SW_TAGS
> +	default 0xeffffe4000000000 if ARM64_VA_BITS_42 && KASAN_SW_TAGS
> +	default 0xefffffc800000000 if ARM64_VA_BITS_39 && KASAN_SW_TAGS
> +	default 0xeffffff900000000 if ARM64_VA_BITS_36 && KASAN_SW_TAGS
> +	default 0xffffffffffffffff
> +
>  source "arch/arm64/Kconfig.platforms"
>  
>  menu "Kernel Features"
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index b2400f9c1213..2b7db0d41498 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -126,14 +126,6 @@ KBUILD_CFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
>  KBUILD_CPPFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
>  KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
>  
> -# KASAN_SHADOW_OFFSET = VA_START + (1 << (VA_BITS - KASAN_SHADOW_SCALE_SHIFT))
> -#				 - (1 << (64 - KASAN_SHADOW_SCALE_SHIFT))
> -# in 32-bit arithmetic
> -KASAN_SHADOW_OFFSET := $(shell printf "0x%08x00000000\n" $$(( \
> -	(0xffffffff & (-1 << ($(CONFIG_ARM64_VA_BITS) - 1 - 32))) \
> -	+ (1 << ($(CONFIG_ARM64_VA_BITS) - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) \
> -	- (1 << (64 - 32 - $(KASAN_SHADOW_SCALE_SHIFT))) )) )
> -
>  export	TEXT_OFFSET GZFLAGS
>  
>  core-y		+= arch/arm64/kernel/ arch/arm64/mm/

I've just spotted this breaks build using CONFIG_KASAN_SW_TAGS &&
CONFIG_KASAN_INLINE, as scripts/Makefile.kasan only propagates
CONFIG_KASAN_SHADOW_OFFSET into KASAN_SHADOW_OFFSET when
CONFIG_KASAN_GENERIC is selected, but consumes KASAN_SHADOW_OFFSET
regardless.

I think that's by accident rather than by design, but to
minimize/localize the fixup, how about the below? I can send a cleanup
patch for scripts/Makefile.kasan later.

Build and boot tested with CONFIG_KASAN_{SW_TAGS,GENERIC} and
VA_BITS_52 (on a 48-bit VA system).

Thanks,
Mark.

---->8----
From b1a6f2dd5aa30d874c4bd97a20ea1330607da624 Mon Sep 17 00:00:00 2001
From: Mark Rutland <mark.rutland@arm.com>
Date: Wed, 14 Aug 2019 15:51:14 +0100
Subject: [PATCH] arm64: fix CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE

Since commit:

  6bd1d0be0e97936d ("arm64: kasan: Switch to using KASAN_SHADOW_OFFSET")

... attempting to build with CONFIG_KASAN_SW_TAGS && CONFIG_KASAN_INLINE
results ins splat:

| [mark@lakrids:~/src/linux]% usellvm 8.0.1 usekorg 8.1.0  make ARCH=arm64 CROSS_COMPILE=aarch64-linux- CC=clang
| scripts/kconfig/conf  --syncconfig Kconfig
|   CC      scripts/mod/empty.o
| clang (LLVM option parsing): for the -hwasan-mapping-offset option: '' value invalid for uint argument!
| scripts/Makefile.build:273: recipe for target 'scripts/mod/empty.o' failed
| make[1]: *** [scripts/mod/empty.o] Error 1
| Makefile:1123: recipe for target 'prepare0' failed
| make: *** [prepare0] Error 2

... since Makefile.kasan only consumes CONFIG_KASAN_SHADOW_OFFSET when
CONFIG_KASAN_GENERIC is selected, and for CONFIG_KASAN_SW_TAGS it consumes
KASAN_SHADOW_OFFSET (without a CONFIG_ prefix).

For the moment, let's always propagate CONFIG_KASAN_SHADOW_OFFSET into
KASAN_SHADOW_OFFSET via the arm64 Makefile. We can clean up the generic kasan
Makefile later down the line.

Fixes: 6bd1d0be0e97936d ("arm64: kasan: Switch to using KASAN_SHADOW_OFFSET")
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Steve Capper <steve.capper@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index a8d2a241ac58..a0c733f93b5b 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -126,6 +126,8 @@ KBUILD_CFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 KBUILD_CPPFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 KBUILD_AFLAGS += -DKASAN_SHADOW_SCALE_SHIFT=$(KASAN_SHADOW_SCALE_SHIFT)
 
+KASAN_SHADOW_OFFSET := $(CONFIG_KASAN_SHADOW_OFFSET)
+
 export	TEXT_OFFSET GZFLAGS
 
 core-y		+= arch/arm64/kernel/ arch/arm64/mm/
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
