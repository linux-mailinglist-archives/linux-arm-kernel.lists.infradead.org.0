Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D93EF26E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 02:04:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsYw9aly1O8FzZwiY6bjiurCxcj6fEdrVUjFSU/QMn8=; b=ri7Or1dIK8WkTy
	Rhz74vxQAELj/jBJdHzlTpXwOjPUtz7WvJ/LRS6NmWRnSRKsfqu2P/gPJykXybIHyEHeddAbqoG1X
	h/kTcg2XOhixXvy3CGGE0IJWu7kn1EsNGeqfZaOjpF0VHgwYPK/6x9D+54HHVEyX4XzClLhPTcnvE
	q1t4D3a6jLs1J3yEa6TY1mNV9td+dJZkft6/QaFzXF/6cx6slp6bUMnZudlPWACzF3zyNUOeVcKG3
	WbQ04Sm3NW5wB5Y0Zjcd886HEP0dnI9CREFMvG+hWmtsYNjSSvl+aYTD2uMOByUZTS3dxdbXTJnDV
	X8jeP2x0eYEcEol7hJ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRnGm-0004Cz-Gg; Tue, 05 Nov 2019 01:04:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRnGf-0004CA-Ft
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 01:04:24 +0000
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CD6B8214D9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  5 Nov 2019 01:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572915860;
 bh=sTcBCA8l2RZxRpdS9VTLmDe7MskoQYokwGOaXyovaL0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SEBWjM+2C7C+IcNnpZxGZfG9B2EaB1eSzHoQ6F4AHHiw7rFMeAukOWRRIbLk7Buxd
 M8jOUKACjHyvm1xZxB+aM2PzpGfOwuCSQn3SszWspFcSDzBeUiCxV/M48Gg6Y60cos
 55l1rgdjNrkh4pK/dr0GP8NZzO8ffSU1uKHuSusI=
Received: by mail-qk1-f173.google.com with SMTP id d13so19629383qko.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 17:04:19 -0800 (PST)
X-Gm-Message-State: APjAAAURvEfcK3LenIjhwd/4zCPNxPJDrWsK6+IHDru601a52Ugb4LwZ
 3Z+HCNbASAOpdjSSQjXhjezSxwYkgM9NIit7dA==
X-Google-Smtp-Source: APXvYqwsMu703NinjvwjbQZjTIbHvV30WH6ox/R/wnr91ZuuYkfPj8qqz/+pre0d3AXOsSI7kgSuVkXvG0Sts88cEm4=
X-Received: by 2002:a37:f703:: with SMTP id q3mr25759531qkj.254.1572915858826; 
 Mon, 04 Nov 2019 17:04:18 -0800 (PST)
MIME-Version: 1.0
References: <20191101081148.23274-1-yamada.masahiro@socionext.com>
 <20191101081148.23274-3-yamada.masahiro@socionext.com>
In-Reply-To: <20191101081148.23274-3-yamada.masahiro@socionext.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 4 Nov 2019 19:04:07 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+_vKmhVacTnt7fXJFsFGkg0AopdiZ4XaQ3V4M=zhn_CA@mail.gmail.com>
Message-ID: <CAL_Jsq+_vKmhVacTnt7fXJFsFGkg0AopdiZ4XaQ3V4M=zhn_CA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] ARM: decompressor: simplify libfdt builds
To: Masahiro Yamada <yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_170421_568664_1F99890F 
X-CRM114-Status: GOOD (  20.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 David Gibson <david@gibson.dropbear.id.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 1, 2019 at 3:12 AM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> Copying source files during the build time may not end up with
> as clean code as you expect.
>
> lib/fdt*.c simply wrap scripts/dtc/libfdt/fdt*.c, and it works
> nicely. Let's follow that approach for the arm decompressor, too.
>
> Add four wrappers, arch/arm/boot/compressed/fdt*.c and remove the
> Makefile messes.
>
> Another nice thing is we no longer need to maintain the separate
> libfdt_env.h since we can include <linux/libfdt_env.h>, and the
> diff stat also looks nice.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>
> Changes in v2: None
>
>  arch/arm/boot/compressed/.gitignore     |  9 -------
>  arch/arm/boot/compressed/Makefile       | 33 +++++++------------------
>  arch/arm/boot/compressed/atags_to_fdt.c |  1 +
>  arch/arm/boot/compressed/fdt.c          |  2 ++
>  arch/arm/boot/compressed/fdt_ro.c       |  2 ++
>  arch/arm/boot/compressed/fdt_rw.c       |  2 ++
>  arch/arm/boot/compressed/fdt_wip.c      |  2 ++
>  arch/arm/boot/compressed/libfdt_env.h   | 22 -----------------
>  8 files changed, 18 insertions(+), 55 deletions(-)
>  create mode 100644 arch/arm/boot/compressed/fdt.c
>  create mode 100644 arch/arm/boot/compressed/fdt_ro.c
>  create mode 100644 arch/arm/boot/compressed/fdt_rw.c
>  create mode 100644 arch/arm/boot/compressed/fdt_wip.c
>  delete mode 100644 arch/arm/boot/compressed/libfdt_env.h

Looks fine to me other than my question on licensing on patch 1.

Who did you want to take the series? I can take it with Russell's ack.

One other side comment below.

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
> index 9219389bbe61..a0d645c66980 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -76,29 +76,23 @@ compress-$(CONFIG_KERNEL_LZMA) = lzma
>  compress-$(CONFIG_KERNEL_XZ)   = xzkern
>  compress-$(CONFIG_KERNEL_LZ4)  = lz4
>
> -# Borrowed libfdt files for the ATAG compatibility mode
> -
> -libfdt         := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c
> -libfdt_hdrs    := fdt.h libfdt.h libfdt_internal.h
> -
> -libfdt_objs    := $(addsuffix .o, $(basename $(libfdt)))
> -
> -$(addprefix $(obj)/,$(libfdt) $(libfdt_hdrs)): $(obj)/%: $(srctree)/scripts/dtc/libfdt/%
> -       $(call cmd,shipped)
> +ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> +libfdt_objs = fdt_rw.o fdt_ro.o fdt_wip.o fdt.o atags_to_fdt.o
>
> -$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
> -       $(addprefix $(obj)/,$(libfdt_hdrs))
> +OBJS   += $(libfdt_objs)

Seems like this file could benefit from doing 'OBJS-$(CONFIG_*)' style
variables.

> -ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
> -OBJS   += $(libfdt_objs) atags_to_fdt.o
> +# -fstack-protector-strong triggers protection checks in this code,
> +# but it is being used too early to link to meaningful stack_chk logic.
> +nossp_flags := $(call cc-option, -fno-stack-protector)
> +$(foreach o, $(libfdt_objs), \
> +       $(eval CFLAGS_$(o) := -I $(srctree)/scripts/dtc/libfdt) $(nossp_flags))
>  endif
>
>  targets       := vmlinux vmlinux.lds piggy_data piggy.o \
>                  lib1funcs.o ashldi3.o bswapsdi2.o \
>                  head.o $(OBJS)
>
> -clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S \
> -               $(libfdt) $(libfdt_hdrs) hyp-stub.S
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
> -nossp_flags := $(call cc-option, -fno-stack-protector)
> -CFLAGS_atags_to_fdt.o := $(nossp_flags)
> -CFLAGS_fdt.o := $(nossp_flags)
> -CFLAGS_fdt_ro.o := $(nossp_flags)
> -CFLAGS_fdt_rw.o := $(nossp_flags)
> -CFLAGS_fdt_wip.o := $(nossp_flags)
> -
>  ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
>  asflags-y := -DZIMAGE
>
> diff --git a/arch/arm/boot/compressed/atags_to_fdt.c b/arch/arm/boot/compressed/atags_to_fdt.c
> index 330cd3c2eae5..53a60ba066a1 100644
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
> index 000000000000..f8ea7a201ab1
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt.c
> @@ -0,0 +1,2 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include "../../../../lib/fdt.c"
> diff --git a/arch/arm/boot/compressed/fdt_ro.c b/arch/arm/boot/compressed/fdt_ro.c
> new file mode 100644
> index 000000000000..93970a4ad5ae
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt_ro.c
> @@ -0,0 +1,2 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include "../../../../lib/fdt_ro.c"
> diff --git a/arch/arm/boot/compressed/fdt_rw.c b/arch/arm/boot/compressed/fdt_rw.c
> new file mode 100644
> index 000000000000..f7c6b8b7e01c
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt_rw.c
> @@ -0,0 +1,2 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include "../../../../lib/fdt_rw.c"
> diff --git a/arch/arm/boot/compressed/fdt_wip.c b/arch/arm/boot/compressed/fdt_wip.c
> new file mode 100644
> index 000000000000..048d2c7a088d
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt_wip.c
> @@ -0,0 +1,2 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#include "../../../../lib/fdt_wip.c"
> diff --git a/arch/arm/boot/compressed/libfdt_env.h b/arch/arm/boot/compressed/libfdt_env.h
> deleted file mode 100644
> index b36c0289a308..000000000000
> --- a/arch/arm/boot/compressed/libfdt_env.h
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -/* SPDX-License-Identifier: GPL-2.0 */
> -#ifndef _ARM_LIBFDT_ENV_H
> -#define _ARM_LIBFDT_ENV_H
> -
> -#include <linux/types.h>
> -#include <linux/string.h>
> -#include <asm/byteorder.h>
> -
> -#define INT_MAX                        ((int)(~0U>>1))
> -
> -typedef __be16 fdt16_t;
> -typedef __be32 fdt32_t;
> -typedef __be64 fdt64_t;
> -
> -#define fdt16_to_cpu(x)                be16_to_cpu(x)
> -#define cpu_to_fdt16(x)                cpu_to_be16(x)
> -#define fdt32_to_cpu(x)                be32_to_cpu(x)
> -#define cpu_to_fdt32(x)                cpu_to_be32(x)
> -#define fdt64_to_cpu(x)                be64_to_cpu(x)
> -#define cpu_to_fdt64(x)                cpu_to_be64(x)
> -
> -#endif
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
