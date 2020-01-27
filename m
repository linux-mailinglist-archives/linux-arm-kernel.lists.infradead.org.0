Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C0614A643
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kf735pDMH8LIhKO4YdM19ThLER+pPDpalkV4eh3EBkw=; b=r0tvsWPGOfNFnS
	LQljag3K1cwGvV8pDyxWblRo7li3gjOMf8A2t9tHvOXDyvQpwfZGZOd6Yww051jE5h0wqBn8WNTvu
	R0HXbC+fwFiClVDad7/KbT7jXTVHsBApN/vNpZ3j8YFGoSMGSeUeTGEnh86QGcrFcLTFzb/FazBjk
	lELi3FVBefAYVY5BfWhSB3E7giSbuLD9Lnn4TsuiWNBKgk8JIhcO2c4r8GAn0wiHz8eCzyIH0uGs+
	jTKCELLtRudLW1Zjb+O8pfFq0cMOc3RtpJ7SQ5MIHN9hPDDlsKgbTZ3s6OfmGUBz9y5+Z4Dcon08E
	3S3Js2orZpnIxmZfOxgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw5VY-0004jk-0F; Mon, 27 Jan 2020 14:36:56 +0000
Received: from pb-smtp20.pobox.com ([173.228.157.52])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw5VN-0004jK-82
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:36:47 +0000
Received: from pb-smtp20.pobox.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 9DF11A477F;
 Mon, 27 Jan 2020 09:36:42 -0500 (EST)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=date:from:to
 :cc:subject:in-reply-to:message-id:references:mime-version
 :content-type; s=sasl; bh=AYpbzYOryjWOSTiLMEzmBx3t06E=; b=yO+WQu
 Gtbp6h2OsKL8RCtn+UzFeh8Ua/aoTfDuVEOvk6JwcjnnxIwJEJYPSV8sCBt3uemY
 mYBLdNEpXlJRpCxsZXU4pmM4ReUhEgRPn47omiovEVLsB5SiIHt7jb1z3Zy+uBOC
 Q8x3jKr2iCFiLW5aWBrKRxMwWfEkQLrpEmZqg=
Received: from pb-smtp20.sea.icgroup.com (unknown [127.0.0.1])
 by pb-smtp20.pobox.com (Postfix) with ESMTP id 94E2BA477E;
 Mon, 27 Jan 2020 09:36:42 -0500 (EST)
 (envelope-from nico@fluxnic.net)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed; d=fluxnic.net;
 h=date:from:to:cc:subject:in-reply-to:message-id:references:mime-version:content-type;
 s=2016-12.pbsmtp; bh=+5Bg1HIoEiN6+7vs9Iwmp0P4ZwSmL+JeZjJXmZbzWi8=;
 b=ummpGUenVgal5INAmGglZJZjo+7KIlQq+c6QjF0H2iMlbLLLtFuVEyPdfLhdbwGgDLwXeY4tjWeUtk8aKjDplQnNegnkAOUlmmyTeYKY9Q+zVmIzy6o1T5wHLo2eUAwtE2Y3DqDC+MHKzlXrWew9PoTNYtLKOMDdXKKQnqGodsg=
Received: from yoda.home (unknown [24.203.50.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pb-smtp20.pobox.com (Postfix) with ESMTPSA id 7F53FA477C;
 Mon, 27 Jan 2020 09:36:39 -0500 (EST)
 (envelope-from nico@fluxnic.net)
Received: from xanadu.home (xanadu.home [192.168.2.2])
 by yoda.home (Postfix) with ESMTPSA id C2FD72DA00E6;
 Mon, 27 Jan 2020 09:36:37 -0500 (EST)
Date: Mon, 27 Jan 2020 09:36:37 -0500 (EST)
From: Nicolas Pitre <nico@fluxnic.net>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH v2] ARM: boot: Obtain start of physical memory from DTB
In-Reply-To: <20200127140716.15673-1-geert+renesas@glider.be>
Message-ID: <nycvar.YSQ.7.76.2001270934440.1655@knanqh.ubzr>
References: <20200127140716.15673-1-geert+renesas@glider.be>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-Pobox-Relay-ID: 6DC9A2DC-4112-11EA-9A8E-B0405B776F7B-78420484!pb-smtp20.pobox.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_063645_356691_63FA670F 
X-CRM114-Status: GOOD (  26.81  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [173.228.157.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
 linux-renesas-soc@vger.kernel.org, Chris Brandt <chris.brandt@renesas.com>,
 =?ISO-8859-15?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Jan 2020, Geert Uytterhoeven wrote:

> Currently, the start address of physical memory is obtained by masking
> the program counter with a fixed mask of 0xf8000000.  This mask value
> was chosen as a balance between the requirements of different platforms.
> However, this does require that the start address of physical memory is
> a multiple of 128 MiB, precluding booting Linux on platforms where this
> requirement is not fulfilled.
> 
> Fix this limitation by obtaining the start address from the DTB instead,
> if available (either explicitly passed, or appended to the kernel).
> Fall back to the traditional method when needed.
> 
> This allows to boot Linux on r7s9210/rza2mevb using the 64 MiB of SDRAM
> on the RZA2MEVB sub board, which is located at 0x0C000000 (CS3 space),
> i.e. not at a multiple of 128 MiB.
> 
> Suggested-by: Nicolas Pitre <nico@fluxnic.net>
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Nicolas Pitre <nico@fluxnic.net>



> ---
> Against arm/for-next.
> 
> Tested with the following configurations:
>   - zImage + DTB (r8a7791/koelsch),
>   - uImage + DTB (r8a73a4/ape6evm, r7s72100/rskrza1, r7s9210/rza2mevb),
>   - zImage with appended DTB (r8a7740/armadillo, sh73a0/kzm9g).
> 
> v2:
>   - Use "cmp r0, #-1", instead of "cmn r0, #1",
>   - Add missing stack setup,
>   - Support appended DTBs.
> 
> v1: https://lore.kernel.org/linux-arm-kernel/20200121192741.20597-1-geert+renesas@glider.be/
> ---
>  arch/arm/boot/compressed/Makefile            |  6 ++-
>  arch/arm/boot/compressed/fdt_get_mem_start.c | 52 ++++++++++++++++++++
>  arch/arm/boot/compressed/head.S              | 52 +++++++++++++++++++-
>  3 files changed, 108 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/boot/compressed/fdt_get_mem_start.c
> 
> diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
> index da599c3a11934332..bbfecd648a1a3b57 100644
> --- a/arch/arm/boot/compressed/Makefile
> +++ b/arch/arm/boot/compressed/Makefile
> @@ -86,12 +86,15 @@ libfdt_objs	:= $(addsuffix .o, $(basename $(libfdt)))
>  $(addprefix $(obj)/,$(libfdt) $(libfdt_hdrs)): $(obj)/%: $(srctree)/scripts/dtc/libfdt/%
>  	$(call cmd,shipped)
>  
> -$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o): \
> +$(addprefix $(obj)/,$(libfdt_objs) atags_to_fdt.o fdt_get_mem_start.o): \
>  	$(addprefix $(obj)/,$(libfdt_hdrs))
>  
>  ifeq ($(CONFIG_ARM_ATAG_DTB_COMPAT),y)
>  OBJS	+= $(libfdt_objs) atags_to_fdt.o
>  endif
> +ifeq ($(CONFIG_USE_OF),y)
> +OBJS	+= $(libfdt_objs) fdt_get_mem_start.o
> +endif
>  
>  targets       := vmlinux vmlinux.lds piggy_data piggy.o \
>  		 lib1funcs.o ashldi3.o bswapsdi2.o \
> @@ -116,6 +119,7 @@ CFLAGS_fdt.o := $(nossp-flags-y)
>  CFLAGS_fdt_ro.o := $(nossp-flags-y)
>  CFLAGS_fdt_rw.o := $(nossp-flags-y)
>  CFLAGS_fdt_wip.o := $(nossp-flags-y)
> +CFLAGS_fdt_get_mem_start.o := $(nossp-flags-y)
>  
>  ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
>  asflags-y := -DZIMAGE
> diff --git a/arch/arm/boot/compressed/fdt_get_mem_start.c b/arch/arm/boot/compressed/fdt_get_mem_start.c
> new file mode 100644
> index 0000000000000000..2c5ac47f656317ee
> --- /dev/null
> +++ b/arch/arm/boot/compressed/fdt_get_mem_start.c
> @@ -0,0 +1,52 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <libfdt.h>
> +
> +static const void *getprop(const void *fdt, const char *node_path,
> +			   const char *property)
> +{
> +	int offset = fdt_path_offset(fdt, node_path);
> +
> +	if (offset == -FDT_ERR_NOTFOUND)
> +		return NULL;
> +
> +	return fdt_getprop(fdt, offset, property, NULL);
> +}
> +
> +static uint32_t get_addr_size(const void *fdt)
> +{
> +	const __be32 *addr_len = getprop(fdt, "/", "#address-cells");
> +
> +	if (!addr_len) {
> +		/* default */
> +		return 1;
> +	}
> +
> +	return fdt32_to_cpu(*addr_len);
> +}
> +
> +/*
> + * Get the start of physical memory
> + */
> +
> +unsigned long fdt_get_mem_start(const void *fdt)
> +{
> +	const __be32 *memory;
> +	uint32_t addr_size;
> +
> +	if (!fdt)
> +		return -1;
> +
> +	if (*(__be32 *)fdt != cpu_to_fdt32(FDT_MAGIC))
> +		return -1;
> +
> +	/* Find the first memory node */
> +	memory = getprop(fdt, "/memory", "reg");
> +	if (!memory)
> +		return -1;
> +
> +	/* There may be multiple cells on LPAE platforms */
> +	addr_size = get_addr_size(fdt);
> +
> +	return fdt32_to_cpu(memory[addr_size - 1]);
> +}
> diff --git a/arch/arm/boot/compressed/head.S b/arch/arm/boot/compressed/head.S
> index 927f5dc413d7dff2..aa2d7de2ddc86fa8 100644
> --- a/arch/arm/boot/compressed/head.S
> +++ b/arch/arm/boot/compressed/head.S
> @@ -235,8 +235,56 @@ not_angel:
>  		.text
>  
>  #ifdef CONFIG_AUTO_ZRELADDR
> +#ifdef CONFIG_USE_OF
>  		/*
> -		 * Find the start of physical memory.  As we are executing
> +		 * Find the start of physical memory.
> +		 * Try the DTB first, if available.
> +		 */
> +		adr	r0, LC0
> +		ldr	r1, [r0]	@ get absolute LC0
> +		ldr	sp, [r0, #28]	@ get stack location
> +		sub	r1, r0, r1	@ compute relocation offset
> +		add	sp, sp, r1	@ apply relocation
> +
> +#ifdef CONFIG_ARM_APPENDED_DTB
> +		/*
> +		 * Look for an appended DTB. If found, use it and
> +		 * move stack away from it.
> +		 */
> +		ldr	r6, [r0, #12]	@ get &_edata
> +		add	r6, r6, r1	@ relocate it
> +		ldmia	r6, {r0, r5}	@ get DTB signature and size
> +#ifndef __ARMEB__
> +		ldr	r1, =0xedfe0dd0	@ sig is 0xd00dfeed big endian
> +		/* convert DTB size to little endian */
> +		eor	r2, r5, r5, ror #16
> +		bic	r2, r2, #0x00ff0000
> +		mov	r5, r5, ror #8
> +		eor	r5, r5, r2, lsr #8
> +#else
> +		ldr	r1, =0xd00dfeed
> +#endif
> +		cmp	r0, r1		@ do we have a DTB there?
> +		bne	1f
> +
> +		mov	r8, r6		@ use it if so
> +		/* preserve 64-bit alignment */
> +		add	r5, r5, #7
> +		bic	r5, r5, #7
> +		add	sp, sp, r5	@ and move stack above it
> +
> +1:
> +#endif /* CONFIG_ARM_APPENDED_DTB */
> +
> +		mov	r0, r8
> +		bl	fdt_get_mem_start
> +		mov	r4, r0
> +		cmp	r0, #-1
> +		bne	1f
> +#endif /* CONFIG_USE_OF */
> +
> +		/*
> +		 * Fall back to the traditional method.  As we are executing
>  		 * without the MMU on, we are in the physical address space.
>  		 * We just need to get rid of any offset by aligning the
>  		 * address.
> @@ -254,6 +302,8 @@ not_angel:
>  		 */
>  		mov	r4, pc
>  		and	r4, r4, #0xf8000000
> +
> +1:
>  		/* Determine final kernel image address. */
>  		add	r4, r4, #TEXT_OFFSET
>  #else
> -- 
> 2.17.1
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
