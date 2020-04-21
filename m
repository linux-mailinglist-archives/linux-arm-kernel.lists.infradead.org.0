Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3E21B3035
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 21:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=p2d6k+aL/poDeHO2p7pafsSoOaISru4vnsS2TE1O2PY=; b=qll4s1aXdJhWPgWmDqzwI64Pk
	JjbWef9LtEPMeYKd5dW1vqxm06Hiab1uXUeB4aFZTU9CqvxG/fmaRMlQPj8Q9PdvAuWmRxUVdH3ao
	WujjyTvpSi90hJ9T5BF4JRummqqO19GQADu4GDY+TZqD+UVTyH+OSSA1+SbD8Wp4E9wCJw8oVdF1X
	IIOSlhQ5jUCN4K8vLgKvtE0dgPI8i6I1xA60Zo2kNACZ09AL4k5EHHQpOlmlI55QXv6UDFXSVVMed
	jLSxhqU35OmhTk4bVvjEQBzpEZ56N5YMd728+M21jZ4lNse0/Ldeb6XqLgb+KA5LA1SPVjJWbPebN
	yBWyLB33w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQyRq-0006Yc-Vc; Tue, 21 Apr 2020 19:20:47 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQyQl-0003Te-Vb
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 19:19:43 +0000
Received: by mail-pf1-x442.google.com with SMTP id x77so4434118pfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 12:19:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=zV3gw/uKi336nRCyLIo9GVBDExpx/8EbybbTlqONiC8=;
 b=lQTdziWaWdVMMR7+Hgf+u1fu7sE66M6OwtGwtQkmfinY9mlGjvx5AgHISTGKmZEyyE
 +JWjh0H5Cr7W6KNCChqBCCrDA/Paf/KhoaUXuKpdA0R45sIgOj09qiWWTvXpowF8akdb
 IXZ+JZQVbry/QI9l0u1xPTLS+phfl+AOQioKWau0bJfrGMONJK9MtuM32HjAwtIaW+YR
 uG8/8IdXyYCVCfD5BSuoXhgoqytP98crm5MwPYMFkZWhGz29nv5oofRpqARr9SRsUhGh
 2VLb0HYWDOqVETYw9SSKqEu7MmXr2OEJO5M2E3ud77SML2s5I+kK37KeEJVuig4rtGus
 SdIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=zV3gw/uKi336nRCyLIo9GVBDExpx/8EbybbTlqONiC8=;
 b=Chozi24YTa9nvUn8Cj0NqdWd4I3j0VHZ4JizsaKdpyXQ2KQqB1xxBgHaqWAVLNV70G
 50Awwx1Qh28sHrL3VmrH7WbRy+k2LvlsYLSay/ZRPM7ucW2326CtFL3bhzzObbWcvJ8q
 x06trnB9Q3QrL38UbaH08VjHiNGRkRXXsbdu+g5Rej3ndHpnw2Oufj5qBifFywXbhswC
 KLaVDpsTw9wCUdmRplIpLW2mk9MJ3xbF6INRHXYRtBhVeqDOaZRTz9kIoHcBhtzGhnvu
 eeEN/PVTc0pLOfTgm4sOsfP7aUPGr8qsB7s7ppBqKqq9Q6ZCQA6FIPb4sZauQ0hCA97b
 UoDQ==
X-Gm-Message-State: AGi0Pub4rZQ40rBNGIuV6M1cdLRbh2ReALK9Z1CyuQspU+LjM+rHTtkx
 1mrqqTjemn12mu9NVyI8Ue5sDg==
X-Google-Smtp-Source: APiQypJeWmVIOit6du3j3KEdDat9GlbxkfiixP2PltpfTYsCcF/BTSesgtei5NYRwrtfb7Y3piTpkg==
X-Received: by 2002:aa7:9f87:: with SMTP id z7mr3439600pfr.177.1587496777951; 
 Tue, 21 Apr 2020 12:19:37 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id h11sm3103183pfn.125.2020.04.21.12.19.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 12:19:37 -0700 (PDT)
Date: Tue, 21 Apr 2020 12:19:37 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 12:16:54 PDT (-0700)
Subject: Re: [v2 PATCH 1/5] efi: Move arm-stub to a common file
In-Reply-To: <20200413212907.29244-2-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>, will@kernel.org
Message-ID: <mhng-b521aadc-a209-48d6-886c-957c87f97367@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_121940_053567_F1893B90 
X-CRM114-Status: GOOD (  20.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg KH <gregkh@linuxfoundation.org>, masahiroy@kernel.org,
 linux-kernel@vger.kernel.org, mingo@kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, catalin.marinas@arm.com,
 linux@armlinux.org.uk, linux-riscv@lists.infradead.org, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 14:29:03 PDT (-0700), Atish Patra wrote:
> Most of the arm-stub code is written in an architecture independent manner.
> As a result, RISC-V can reuse most of the arm-stub code.
>
> Rename the arm-stub.c to efi-stub.c so that ARM, ARM64 and RISC-V can use it.
> This patch doesn't introduce any functional changes.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>

We'll need a bunch of Acked-bys for these, but I'm happy to take this in my
tree.

> ---
>  arch/arm/Kconfig                                     |  2 +-
>  arch/arm64/Kconfig                                   |  2 +-
>  drivers/firmware/efi/Kconfig                         |  4 ++--
>  drivers/firmware/efi/libstub/Makefile                | 12 ++++++------
>  .../firmware/efi/libstub/{arm-stub.c => efi-stub.c}  |  0
>  5 files changed, 10 insertions(+), 10 deletions(-)
>  rename drivers/firmware/efi/libstub/{arm-stub.c => efi-stub.c} (100%)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 66a04f6f4775..165987aa5bcd 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -1954,7 +1954,7 @@ config EFI
>  	select UCS2_STRING
>  	select EFI_PARAMS_FROM_FDT
>  	select EFI_STUB
> -	select EFI_ARMSTUB
> +	select EFI_GENERIC_STUB
>  	select EFI_RUNTIME_WRAPPERS
>  	---help---
>  	  This option provides support for runtime services provided
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 40fb05d96c60..32d818c5ccda 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -1785,7 +1785,7 @@ config EFI
>  	select EFI_PARAMS_FROM_FDT
>  	select EFI_RUNTIME_WRAPPERS
>  	select EFI_STUB
> -	select EFI_ARMSTUB
> +	select EFI_GENERIC_STUB
>  	default y
>  	help
>  	  This option provides support for runtime services provided
> diff --git a/drivers/firmware/efi/Kconfig b/drivers/firmware/efi/Kconfig
> index 613828d3f106..2a2b2b96a1dc 100644
> --- a/drivers/firmware/efi/Kconfig
> +++ b/drivers/firmware/efi/Kconfig
> @@ -106,12 +106,12 @@ config EFI_PARAMS_FROM_FDT
>  config EFI_RUNTIME_WRAPPERS
>  	bool
>
> -config EFI_ARMSTUB
> +config EFI_GENERIC_STUB
>  	bool
>
>  config EFI_ARMSTUB_DTB_LOADER
>  	bool "Enable the DTB loader"
> -	depends on EFI_ARMSTUB
> +	depends on EFI_GENERIC_STUB
>  	default y
>  	help
>  	  Select this config option to add support for the dtb= command
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 094eabdecfe6..d590504541f6 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -23,7 +23,7 @@ cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
>  				   -fno-builtin -fpic \
>  				   $(call cc-option,-mno-single-pic-base)
>
> -cflags-$(CONFIG_EFI_ARMSTUB)	+= -I$(srctree)/scripts/dtc/libfdt
> +cflags-$(CONFIG_EFI_GENERIC_STUB)	+= -I$(srctree)/scripts/dtc/libfdt
>
>  KBUILD_CFLAGS			:= $(cflags-y) -DDISABLE_BRANCH_PROFILING \
>  				   -include $(srctree)/drivers/firmware/efi/libstub/hidden.h \
> @@ -45,13 +45,13 @@ lib-y				:= efi-stub-helper.o gop.o secureboot.o tpm.o \
>  				   skip_spaces.o lib-cmdline.o lib-ctype.o
>
>  # include the stub's generic dependencies from lib/ when building for ARM/arm64
> -arm-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
> +efi-deps-y := fdt_rw.c fdt_ro.c fdt_wip.c fdt.c fdt_empty_tree.c fdt_sw.c
>
>  $(obj)/lib-%.o: $(srctree)/lib/%.c FORCE
>  	$(call if_changed_rule,cc_o_c)
>
> -lib-$(CONFIG_EFI_ARMSTUB)	+= arm-stub.o fdt.o string.o \
> -				   $(patsubst %.c,lib-%.o,$(arm-deps-y))
> +lib-$(CONFIG_EFI_GENERIC_STUB)		+= efi-stub.o fdt.o string.o \
> +				   $(patsubst %.c,lib-%.o,$(efi-deps-y))
>
>  lib-$(CONFIG_ARM)		+= arm32-stub.o
>  lib-$(CONFIG_ARM64)		+= arm64-stub.o
> @@ -73,8 +73,8 @@ CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
>  # a verification pass to see if any absolute relocations exist in any of the
>  # object files.
>  #
> -extra-$(CONFIG_EFI_ARMSTUB)	:= $(lib-y)
> -lib-$(CONFIG_EFI_ARMSTUB)	:= $(patsubst %.o,%.stub.o,$(lib-y))
> +extra-$(CONFIG_EFI_GENERIC_STUB)	:= $(lib-y)
> +lib-$(CONFIG_EFI_GENERIC_STUB)	:= $(patsubst %.o,%.stub.o,$(lib-y))
>
>  STUBCOPY_FLAGS-$(CONFIG_ARM64)	+= --prefix-alloc-sections=.init \
>  				   --prefix-symbols=__efistub_
> diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/efi-stub.c
> similarity index 100%
> rename from drivers/firmware/efi/libstub/arm-stub.c
> rename to drivers/firmware/efi/libstub/efi-stub.c

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
