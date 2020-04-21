Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052B11B3032
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 21:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:Message-ID:To:From:In-Reply-To:Subject:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=ck5ym+GulMGjGAGwnPYrl91cDzVyJJE8TqbiWGcVDPM=; b=B20upuMOJBktjPH+FCTY5izUq
	JXHnqUBpxz6Jt9uNreMreDI5ugui9o80LIN9DnmgewMvm+7g7dLv5kDy4G9qsPdb8KHpreBP8C4Iw
	1HkVA5YvBYbf3NQXePTfwksbSfN45AkRkCVJE/g062Oj2pdeRJrp6t15zkt6EOx5Yqoxk2h2D+Obm
	f1atSE5CL3DtO67OF0L9yorvWob2erV/VgJV0CM/S3Zec8cFaJaTBjxy3wbzTw6hnwOeKeI1Yqv+R
	RcFGK4e+I3BCjf0ObVpjbqOFSI4TeEL5e/8CoPU2Dl9W6+fB+D/1HFHEDLt89uoh5IIYdrwdjoRJh
	PWdjZLbxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQyRX-0003lx-Ck; Tue, 21 Apr 2020 19:20:27 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQyQm-0003UD-Ba
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 19:19:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id d24so5627322pll.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 12:19:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=hPVhiHCru66F7M87+182p9Tvtpc85gfkzQRDqIRO1ko=;
 b=r3C7ZPWnB+/BSMYac/cFV6GVQaCwnWAzI9frvjDJLQJR9jPwOhTonM3kEUjmpl4L+j
 a3b25Q+Me2vR+TR33Cc9mp0t9k9AFV03JP9k6k2XYvuWbYyCHCZOWQGB3RYjMjGPpdsp
 pr/Br9+xNw0bAaHb5zRMaYp0pSBSk3qkO7dyjVI54G40sbnt7iz3w1dHKBtMKl8Pqn0k
 0rkFqLQ3FwTIn86ZUeObV+i+tZgjpGexmA5F+2PaDHBsF126dAzWbuh2xb6KYqkJKrGl
 NVkZWpY0UrIl5iMLGM7D1P8IU6mGulUTyns47YhRZWP2kGD/vnVFoDzu9sXDhTS0X4vQ
 W2Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=hPVhiHCru66F7M87+182p9Tvtpc85gfkzQRDqIRO1ko=;
 b=FGVZgjYiE+jYjDFfCR+nbZyMdCMhmG/8v6LsCD/r00kQw3mXx8kTH1m+HDFNjztXzj
 1csyE90qlZh4WB8QtCYBgqpWRFehLB87cBEHL6ooGjM3pAqPVU4pp3UmPEh0mcWG0fuR
 GdvOV9beO3i6sFt3RAha/qqnT42AOpPX79lCaS+hnwu3MIx49dcoGHEZg/AN+KmHbn6g
 OHZdYXYWfo6fULXQJ+jkO0A7dcoIusmvuTq93C0T6e+wLT67a201iV3ctKoaAyX+o72t
 JtGj9Zqe2t28m0j5zAzG6N96SBEtB6gajBK50kkg1Y0C/VG0LSVNAMzr75K/ztan+FQu
 yISg==
X-Gm-Message-State: AGi0PuZbhGOzVGz0+y4e7ejvP0IG/BsD9z3hyCzNXubRkljWNS65On4f
 shr59NVG0DN3mWDcwCKXaKcbFw==
X-Google-Smtp-Source: APiQypJtA1GPjuyjU1rDoIKjs5ei8Wc2RGLVpz0+8Vkr8sWRjn179ks5m9kyaVeEtaU2mYrSUVbc1g==
X-Received: by 2002:a17:902:aa94:: with SMTP id
 d20mr22883245plr.313.1587496779466; 
 Tue, 21 Apr 2020 12:19:39 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net.
 [76.210.143.223])
 by smtp.gmail.com with ESMTPSA id b11sm2934507pgj.92.2020.04.21.12.19.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 12:19:38 -0700 (PDT)
Date: Tue, 21 Apr 2020 12:19:38 -0700 (PDT)
X-Google-Original-Date: Tue, 21 Apr 2020 12:19:13 PDT (-0700)
Subject: Re: [v2 PATCH 3/5] RISC-V: Define fixmap bindings for generic early
 ioremap support
In-Reply-To: <20200413212907.29244-4-atish.patra@wdc.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Atish Patra <Atish.Patra@wdc.com>
Message-ID: <mhng-bccab71a-2ee1-4f4b-a7c3-90c1340e525b@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_121940_398361_17EE5850 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 linux@armlinux.org.uk, linux-riscv@lists.infradead.org, will@kernel.org,
 ardb@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Apr 2020 14:29:05 PDT (-0700), Atish Patra wrote:
> UEFI uses early IO or memory mappings for runtime services before
> normal ioremap() is usable. This patch only adds minimum necessary
> fixmap bindings and headers for generic ioremap support to work.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Acked-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/riscv/Kconfig              |  1 +
>  arch/riscv/include/asm/Kbuild   |  1 +
>  arch/riscv/include/asm/fixmap.h | 18 ++++++++++++++++++
>  arch/riscv/include/asm/io.h     |  1 +
>  4 files changed, 21 insertions(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index a197258595ef..f39e326a7a42 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -68,6 +68,7 @@ config RISCV
>  	select ARCH_HAS_GCOV_PROFILE_ALL
>  	select HAVE_COPY_THREAD_TLS
>  	select HAVE_ARCH_KASAN if MMU && 64BIT
> +	select GENERIC_EARLY_IOREMAP
>
>  config ARCH_MMAP_RND_BITS_MIN
>  	default 18 if 64BIT
> diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
> index 3d9410bb4de0..59dd7be55005 100644
> --- a/arch/riscv/include/asm/Kbuild
> +++ b/arch/riscv/include/asm/Kbuild
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0
> +generic-y += early_ioremap.h
>  generic-y += extable.h
>  generic-y += flat.h
>  generic-y += kvm_para.h
> diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
> index 2368d49eb4ef..ba5096d65fb0 100644
> --- a/arch/riscv/include/asm/fixmap.h
> +++ b/arch/riscv/include/asm/fixmap.h
> @@ -30,6 +30,24 @@ enum fixed_addresses {
>  	FIX_TEXT_POKE1,
>  	FIX_TEXT_POKE0,
>  	FIX_EARLYCON_MEM_BASE,
> +	/*
> +	 * Make sure that it is 2MB aligned.
> +	 */
> +#define NR_FIX_SZ_2M	(SZ_2M / PAGE_SIZE)
> +	FIX_THOLE = NR_FIX_SZ_2M - FIX_PMD - 1,
> +
> +	__end_of_permanent_fixed_addresses,
> +	/*
> +	 * Temporary boot-time mappings, used by early_ioremap(),
> +	 * before ioremap() is functional.
> +	 */
> +#define NR_FIX_BTMAPS		(SZ_256K / PAGE_SIZE)
> +#define FIX_BTMAPS_SLOTS	7
> +#define TOTAL_FIX_BTMAPS	(NR_FIX_BTMAPS * FIX_BTMAPS_SLOTS)
> +
> +	FIX_BTMAP_END = __end_of_permanent_fixed_addresses,
> +	FIX_BTMAP_BEGIN = FIX_BTMAP_END + TOTAL_FIX_BTMAPS - 1,
> +
>  	__end_of_fixed_addresses
>  };
>
> diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
> index 0f477206a4ed..047f414b6948 100644
> --- a/arch/riscv/include/asm/io.h
> +++ b/arch/riscv/include/asm/io.h
> @@ -14,6 +14,7 @@
>  #include <linux/types.h>
>  #include <asm/mmiowb.h>
>  #include <asm/pgtable.h>
> +#include <asm/early_ioremap.h>
>
>  /*
>   * MMIO access functions are separated out to break dependency cycles

Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
