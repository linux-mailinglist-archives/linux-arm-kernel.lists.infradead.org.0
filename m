Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C244B161CBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 22:20:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R8zJJ1F6bZnveiWBy4PV3QybAHGl1E1XwijfNhD11nc=; b=OOWdUH1Sw9QFRN
	q6EMyVEu/x5JLHAdagfiOW/hRxci64GxcA86LYXnylUMYUb9y4hShh7czFvGjAQG4Gkn5igfHhTjU
	b9pGh0xIVLnC6h0nWFcdImS2Z48JZC96maoXLm10VLB0RyFx2Ea4LryZWsa9XT6ULedDyzdzUoNz+
	Lw6cVCi7eXx89rT0/ulHYWWjgrFuqurzTGSrR2x6HiwYoC755A1DYhUdyqicgjyv89fyN+q74WgFw
	8+dp38oGYvSESL1FfczZDVZLnd4pJge6cZUcZpOKIZe88ECMRCdXV5C7yRBNxuveNX4A29UM5mi29
	HvpK/gIYhV0qfN87plwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3nor-0006qX-M2; Mon, 17 Feb 2020 21:20:45 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3noh-0006pm-N7
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 21:20:37 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 5C8B38087;
 Mon, 17 Feb 2020 21:21:14 +0000 (UTC)
Date: Mon, 17 Feb 2020 13:20:27 -0800
From: Tony Lindgren <tony@atomide.com>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] arm: fix Kbuild issue caused by per-task stack protector
 GCC plugin
Message-ID: <20200217211953.GA35972@atomide.com>
References: <20200217203013.20102-1-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217203013.20102-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_132035_797496_16D13BB0 
X-CRM114-Status: GOOD (  22.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Merlijn Wajer <merlijn@wizzup.org>, Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Ard Biesheuvel <ardb@kernel.org> [200217 20:31]:
> When using plugins, GCC requires that the -fplugin= options precedes
> any of its plugin arguments appearing on the command line as well.
> This is usually not a concern, but as it turns out, this requirement
> is causing some issues with ARM's per-task stack protector plugin
> and Kbuild's implementation of $(cc-option).
> 
> When the per-task stack protector plugin is enabled, and we tweak
> the implementation of cc-option not to pipe the stderr output of
> GCC to /dev/null, the following output is generated when GCC is
> executed in the context of cc-option:
> 
>   cc1: error: plugin arm_ssp_per_task_plugin should be specified before \
>          -fplugin-arg-arm_ssp_per_task_plugin-tso=1 in the command line
>   cc1: error: plugin arm_ssp_per_task_plugin should be specified before \
>          -fplugin-arg-arm_ssp_per_task_plugin-offset=24 in the command line
> 
> These errors will cause any option passed to cc-option to be treated
> as unsupported, which is obviously incorrect.
> 
> The cause of this issue is the fact that the -fplugin= argument is
> added to GCC_PLUGINS_CFLAGS, whereas the arguments above are added
> to KBUILD_CFLAGS, and the contents of the former get filtered out of
> the latter before being passed to the GCC running the cc-option test,
> and so the -fplugin= option does not appear at all on the GCC command
> line.
> 
> Adding the arguments to GCC_PLUGINS_CFLAGS instead of KBUILD_CFLAGS
> would be the correct approach here, if it weren't for the fact that we
> are using $(eval) to defer the moment that they are added until after
> asm-offsets.h is generated, which is after the point where the contents
> of GCC_PLUGINS_CFLAGS are added to KBUILD_CFLAGS. So instead, we have
> to add our plugin arguments to both.
> 
> For similar reasons, we cannot append DISABLE_ARM_SSP_PER_TASK_PLUGIN
> to KBUILD_CFLAGS, as it will be passed to GCC when executing in the
> context of cc-option, whereas the other plugin arguments will have
> been filtered out, resulting in a similar error and false negative
> result as above. So add it to ccflags-y instead.
> 
> Reported-by: Tony Lindgren <tony@atomide.com>
> Fixes: 189af4657186da08 ("ARM: smp: add support for per-task stack canaries")
> Cc: Kees Cook <keescook@chromium.org>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

This fixes the appended dtb boot test case for me:

Tested-by: Tony Lindgren <tony@atomide.com>

Also adding Merlijn also to Cc to test his, he originally
reported the issue. So I suggest you please also add:

Reported-by: Merlijn Wajer <merlijn@wizzup.org>

Regards,

Tony


> ---
>  arch/arm/Makefile                 | 4 +++-
>  arch/arm/boot/compressed/Makefile | 4 ++--
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index db857d07114f..1fc32b611f8a 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -307,13 +307,15 @@ endif
>  ifeq ($(CONFIG_STACKPROTECTOR_PER_TASK),y)
>  prepare: stack_protector_prepare
>  stack_protector_prepare: prepare0
> -	$(eval KBUILD_CFLAGS += \
> +	$(eval SSP_PLUGIN_CFLAGS := \
>  		-fplugin-arg-arm_ssp_per_task_plugin-tso=$(shell	\
>  			awk '{if ($$2 == "THREAD_SZ_ORDER") print $$3;}'\
>  				include/generated/asm-offsets.h)	\
>  		-fplugin-arg-arm_ssp_per_task_plugin-offset=$(shell	\
>  			awk '{if ($$2 == "TI_STACK_CANARY") print $$3;}'\
>  				include/generated/asm-offsets.h))
> +	$(eval KBUILD_CFLAGS += $(SSP_PLUGIN_CFLAGS))
> +	$(eval GCC_PLUGINS_CFLAGS += $(SSP_PLUGIN_CFLAGS))
>  endif
>  
>  all:	$(notdir $(KBUILD_IMAGE))
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index da599c3a1193..9c11e7490292 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -101,7 +101,6 @@ clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S \
>  		$(libfdt) $(libfdt_hdrs) hyp-stub.S
>  
>  KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
> -KBUILD_CFLAGS += $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)
>  
>  ifeq ($(CONFIG_FUNCTION_TRACER),y)
>  ORIG_CFLAGS := $(KBUILD_CFLAGS)
> @@ -117,7 +116,8 @@ CFLAGS_fdt_ro.o := $(nossp-flags-y)
>  CFLAGS_fdt_rw.o := $(nossp-flags-y)
>  CFLAGS_fdt_wip.o := $(nossp-flags-y)
>  
> -ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
> +ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin \
> +	     -I$(obj) $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)
>  asflags-y := -DZIMAGE
>  
>  # Supply kernel BSS size to the decompressor via a linker symbol.
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
