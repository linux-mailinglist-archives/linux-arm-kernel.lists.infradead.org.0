Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CD414208F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 23:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GE7AOdzmFeHBPakaMw5c4DYbZXvt/Uv3qpC50zYtIdQ=; b=f/MtSiYKR45pv+
	oEA6S9NT2w8TzZWczIdYOl4jYJKDQFCieydcqSjAnvAmcXpn4fkjFBOmhzOV1fWk+5fJxW+b4+KU6
	ebYBZFtqUf2dWeKZ99eI0VYDWULvOsn5zGPJZH6pA2flGBNFV1gripeuS9gftoRmGm5MTMVsZInmG
	r6F95I2TXn+x8lTwPoulXqpIPnuMQZdnglVxv1V3pxKwVbZqkrwHuN7fd3aNKGBRRZgZcP94si/Fj
	dF3YfIp54AavCdeTRfxin1bV2kjZ6o+ilUtcjTSTM5gT3aW9h1ogaVe9TJxK3R5vlsqNaA0tCiyGw
	vwyUvyUGpeBUOiTW7omg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itJMi-0001g3-Ip; Sun, 19 Jan 2020 22:48:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itJMZ-0001fI-WA
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 22:48:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2r7Xga6Fo/WNpNRqHvLRNjk43UErmgoTrtImC8Pe00U=; b=Z+rlP21BHWh8YaCdiqm7Kf6PR
 NDgvGaEMxX3SToIyWzUF5IEE6LeAT9pU47cr98Vn7pVkZB5z3l7ZFzPuzsPIATYV0G0ZnokvdivpC
 ZnRinmatnR/rUcjmXW26wUxwk/8xdoIqAaYrydmIsaw7qWsIw+VM8Cssogmhc1bxuCdRJfa8FET4G
 iijvGsShFQF6eCQx0nDL88dnWeJ4uu3d8DSe6QvV0E5vaYGtrpPgoiuNULNzZmNeXWuy5eUOOoMq8
 2OJD1gXMwaxgWQkLdUh7f19XaeugAAZPOkgR8vxHR4cfJV/HPWZoZekLNfcgy0NZbPHWJK9diQQFB
 yw4HNtAdg==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:40592)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1itJMU-0002QX-6V; Sun, 19 Jan 2020 22:48:06 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1itJMT-0002Dy-JW; Sun, 19 Jan 2020 22:48:05 +0000
Date: Sun, 19 Jan 2020 22:48:05 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Masahiro Yamada <masahiroy@kernel.org>
Subject: Re: [PATCH v2] ARM: decompressor: simplify libfdt builds
Message-ID: <20200119224805.GY25745@shell.armlinux.org.uk>
References: <20200119010822.6897-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200119010822.6897-1-masahiroy@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_144812_478758_4A7EE092 
X-CRM114-Status: GOOD (  23.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 10:08:22AM +0900, Masahiro Yamada wrote:
> Copying source files during the build time may not end up with
> as clean code as expected.
> 
> lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> nicely. Let's follow that approach for the arm decompressor, too.
> 
> Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove
> the Makefile messes. Another nice thing is we no longer need to
> maintain the own libfdt_env.h because the decompressor can include
> <linux/libfdt_env.h>.

Hi,

This is a nice idea, but as Stephen's build has found, it is a very
fragile change, particularly if you're doing a rebuild of an existing
tree.

Stephen's issue appears to be that - he has stale "shipped" copies
that the old Makefile implementation created, which were attempted
to be built with this patch applied.  The result of that is we
try and pick up scripts/dtc/libfdt/libfdt_env.h.

The whole point of the kernel build system is so that we can make
changes to the kernel tree, and then build the kernel, and have the
build system work out how to rebuild the kernel in a proper and safe
way without us having to endlessly clean the build tree just because
a few patches have been added.  This patch breaks that expectation.

At the very least, this build-breaking nature needs to be mentioned,
preferably telling people what they should be doing to fix the issue.

An even better would be to find some way to avoid the issue in the
first place, or find some way to warn about it - maybe by leaving a
libfdt_env.h behind that has an appropriate #warning in it telling
people what to do.  Or something.

Thanks.

> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> KernelVersion: v5.5-rc1
> 
> Changes in v2:
>   - fix build error
> 
>  arch/arm/boot/compressed/.gitignore     |  9 -------
>  arch/arm/boot/compressed/Makefile       | 33 +++++++------------------
>  arch/arm/boot/compressed/atags_to_fdt.c |  1 +
>  arch/arm/boot/compressed/fdt.c          |  1 +
>  arch/arm/boot/compressed/fdt_ro.c       |  1 +
>  arch/arm/boot/compressed/fdt_rw.c       |  1 +
>  arch/arm/boot/compressed/fdt_wip.c      |  1 +
>  arch/arm/boot/compressed/libfdt_env.h   | 24 ------------------
>  8 files changed, 14 insertions(+), 57 deletions(-)
>  create mode 100644 arch/arm/boot/compressed/fdt.c
>  create mode 100644 arch/arm/boot/compressed/fdt_ro.c
>  create mode 100644 arch/arm/boot/compressed/fdt_rw.c
>  create mode 100644 arch/arm/boot/compressed/fdt_wip.c
>  delete mode 100644 arch/arm/boot/compressed/libfdt_env.h
> 
> diff --git a/arch/arm/boot/compressed/.gitignore b/arch/arm/boot/compressed/.gitignore
> index 86b2f5d28240..2fdb4885846b 100644
> --- a/arch/arm/boot/compressed/.gitignore
> +++ b/arch/arm/boot/compressed/.gitignore
> @@ -6,12 +6,3 @@ hyp-stub.S
>  piggy_data
>  vmlinux
>  vmlinux.lds
> -
> -# borrowed libfdt files
> -fdt.c
> -fdt.h
> -fdt_ro.c
> -fdt_rw.c
> -fdt_wip.c
> -libfdt.h
> -libfdt_internal.h
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index da599c3a1193..07962a320b89 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -76,29 +76,23 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
>  compress-$(CONFIG_KERNEL_XZ)   = xzkern
>  compress-$(CONFIG_KERNEL_LZ4)  = lz4
>  
> -# Borrowed libfdt files for the ATAG compatibility mode
> -
> -libfdt		:= fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
> -libfdt_hdrs	:= fdt.h libfdt.h libfdt_internal.h
> -
> -libfdt_objs	:= $(addsuffix .o, $(basename $(libfdt)))
> -
> -$(addprefix $(obj)/,$(libfdt) $(libfdt_hdrs)): $(obj)/%: $(srctree)/scripts/dtc/libfdt/%
> -	$(call cmd,shipped)
> +ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> +libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
>  
> -$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
> -	$(addprefix $(obj)/,$(libfdt_hdrs))
> +OBJS	+= $(libfdt_objs)
>  
> -ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> -OBJS	+= $(libfdt_objs) atags_to_fdt.o
> +# -fstack-protector-strong triggers protection checks in this code,
> +# but it is being used too early to link to meaningful stack_chk logic.
> +nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> +$(foreach o, $(libfdt_objs), \
> +	$(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt $(nossp-flags-y)))
>  endif
>  
>  targets       := vmlinux vmlinux.lds piggy_data piggy.o \
>  		 lib1funcs.o ashldi3.o bswapsdi2.o \
>  		 head.o $(OBJS)
>  
> -clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S \
> -		$(libfdt) $(libfdt_hdrs) hyp-stub.S
> +clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S hyp-stub.S
>  
>  KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
>  KBUILD_CFLAGS += $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)
> @@ -108,15 +102,6 @@ ORIG_CFLAGS := $(KBUILD_CFLAGS)
>  KBUILD_CFLAGS = $(subst -pg, , $(ORIG_CFLAGS))
>  endif
>  
> -# -fstack-protector-strong triggers protection checks in this code,
> -# but it is being used too early to link to meaningful stack_chk logic.
> -nossp-flags-$(CONFIG_CC_HAS_STACKPROTECTOR_NONE) := -fno-stack-protector
> -CFLAGS_atags_to_fdt.o := $(nossp-flags-y)
> -CFLAGS_fdt.o := $(nossp-flags-y)
> -CFLAGS_fdt_ro.o := $(nossp-flags-y)
> -CFLAGS_fdt_rw.o := $(nossp-flags-y)
> -CFLAGS_fdt_wip.o := $(nossp-flags-y)
> -
>  ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
>  asflags-y := -DZIMAGE
>  
> diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
> index 64c49747f8a3..8452753efebe 100644
> --- a/arch/arm/boot/compressed/atags_to_fdt.c
> +++ b/arch/arm/boot/compressed/atags_to_fdt.c
> @@ -1,4 +1,5 @@
>  // SPDX-License-Identifier: GPL-2.0
> +#include <linux/libfdt_env.h>
>  #include <asm/setup.h>
>  #include <libfdt.h>
>  
> diff --git a/arch/arm/boot/compressed/fdt.c b/arch/arm/boot/compressed/fdt.c
> new file mode 100644
> index 000000000000..49bc1fc1e273
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt.c
> @@ -0,0 +1 @@
> +#include "../../../../lib/fdt.c"
> diff --git a/arch/arm/boot/compressed/fdt_ro.c b/arch/arm/boot/compressed/fdt_ro.c
> new file mode 100644
> index 000000000000..fc7f8313e93e
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt_ro.c
> @@ -0,0 +1 @@
> +#include "../../../../lib/fdt_ro.c"
> diff --git a/arch/arm/boot/compressed/fdt_rw.c b/arch/arm/boot/compressed/fdt_rw.c
> new file mode 100644
> index 000000000000..7e9777da2708
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt_rw.c
> @@ -0,0 +1 @@
> +#include "../../../../lib/fdt_rw.c"
> diff --git a/arch/arm/boot/compressed/fdt_wip.c b/arch/arm/boot/compressed/fdt_wip.c
> new file mode 100644
> index 000000000000..f0b580e760a7
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt_wip.c
> @@ -0,0 +1 @@
> +#include "../../../../lib/fdt_wip.c"
> diff --git a/arch/arm/boot/compressed/libfdt_env.h b/arch/arm/boot/compressed/libfdt_env.h
> deleted file mode 100644
> index 6a0f1f524466..000000000000
> --- a/arch/arm/boot/compressed/libfdt_env.h
> +++ /dev/null
> @@ -1,24 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#ifndef _ARM_LIBFDT_ENV_H
> -#define _ARM_LIBFDT_ENV_H
> -
> -#include <linux/limits.h>
> -#include <linux/types.h>
> -#include <linux/string.h>
> -#include <asm/byteorder.h>
> -
> -#define INT32_MAX	S32_MAX
> -#define UINT32_MAX	U32_MAX
> -
> -typedef __be16 fdt16_t;
> -typedef __be32 fdt32_t;
> -typedef __be64 fdt64_t;
> -
> -#define fdt16_to_cpu(x)		be16_to_cpu(x)
> -#define cpu_to_fdt16(x)		cpu_to_be16(x)
> -#define fdt32_to_cpu(x)		be32_to_cpu(x)
> -#define cpu_to_fdt32(x)		cpu_to_be32(x)
> -#define fdt64_to_cpu(x)		be64_to_cpu(x)
> -#define cpu_to_fdt64(x)		cpu_to_be64(x)
> -
> -#endif
> -- 
> 2.17.1
> 
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
