Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA5D108664
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 02:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhOnt75ZZ4P7jHosthpmgDbgLF5dMxOrCqUhZlv9AFY=; b=iggq6kJUQeA691
	YhNc4skrHQ3mIy+tRMacqGYqnna+ssXPza4WDqR1Z/9eR5kTlEMZ1eQFSls64QxJUTyEJNo1n33T/
	0VcugU8sqqhgBTGwNzr5b7kFSfRdy8pgBdzIxMMH33EWiV/nxhEf4u65XlryE1+kVkGm0vn4tzjSd
	fFVvap6m/rPEHrYRl5qkIiuldOFHtcD02ulmwi6V7E6t6LkmcrszxShfFZnCbK/uMx2U2ala7+d4d
	GVaAWpvcN5Pqyf8fa+bZGDwlK1fLJIj1BJVAgB5i4HyS6zDOZ0mAF9BTzQWRADKqqeo+zp1Wu3i07
	+HuL1V4XhqRgOEPg1MIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZ3Iv-0002vZ-Go; Mon, 25 Nov 2019 01:36:41 +0000
Received: from conssluserg-03.nifty.com ([210.131.2.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZ3Ik-0002uS-WC
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 01:36:33 +0000
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-03.nifty.com with ESMTP id xAP1Zu0s023728
 for <linux-arm-kernel@lists.infradead.org>; Mon, 25 Nov 2019 10:35:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com xAP1Zu0s023728
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1574645757;
 bh=4zS9ONB1lX0XUDCYAcZW6UgeXuejST5UVyfhFO/g8d8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=R1fYDaTvWZSIXPD0BXg/G6ZmTOZMjjFenSgrGicPFQT+3Y3g/m/ZrhOyG2ZLObk9H
 jSDKaIdbzPFBTfl1xJZMsZJ81783Qg75CmGSqzoPciMOvaYC3saanAxYYIjtyXFHC5
 XpMkLxiVblDfIwKlBHkAczgogRU8wVT/JOwppExseIgxtiiL6HSRfwU+JnROtKzXCB
 0majHYE5wni9B61LcBG+CKkDMhKnKSmaJuTncJPy2oI75R0i2izRD9kV1YGyZXqnXf
 k9MTvxkdR0dxuhxT8t1KHwfECJzy7sfW/CyqMeI3qoUrxjTmPVy291lkq65GHgy3ml
 OF0e3gT7gcnCw==
X-Nifty-SrcIP: [209.85.217.48]
Received: by mail-vs1-f48.google.com with SMTP id 190so8910261vss.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 24 Nov 2019 17:35:57 -0800 (PST)
X-Gm-Message-State: APjAAAWnN2R9eUhD8WJSnwb1FMVkM5Qc00f9Vg/Xt4/gXgZI27natFOD
 yK7wxoe4K7IyzhKbtYyc5O7kd1ijZUtKUFQ1cbM=
X-Google-Smtp-Source: APXvYqzsFOr3V5Ucu7w0+x7MvZdRFWrrwm3B2vqt1VuyZEdFouFkB+5X8be1VVTCyuUplwtsLKcFkuk0UX620+G6KNg=
X-Received: by 2002:a05:6102:726:: with SMTP id
 u6mr17181884vsg.179.1574645756005; 
 Sun, 24 Nov 2019 17:35:56 -0800 (PST)
MIME-Version: 1.0
References: <20191113071202.11287-1-yamada.masahiro@socionext.com>
In-Reply-To: <20191113071202.11287-1-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 25 Nov 2019 10:35:19 +0900
X-Gmail-Original-Message-ID: <CAK7LNARSSSORFCrTt0abgiyUffnTtgFFh8XbVNvbkxZ=NbcX_A@mail.gmail.com>
Message-ID: <CAK7LNARSSSORFCrTt0abgiyUffnTtgFFh8XbVNvbkxZ=NbcX_A@mail.gmail.com>
Subject: Re: [PATCH v3] libfdt: define INT32_MAX and UINT32_MAX in libfdt_env.h
To: DTML <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_173631_261796_74CB3BAE 
X-CRM114-Status: GOOD (  23.12  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.82 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, Russell King <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 4:13 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> The DTC v1.5.1 added references to (U)INT32_MAX.
>
> This is no problem for user-space programs since <stdint.h> defines
> (U)INT32_MAX along with (u)int32_t.
>
> For the kernel space, libfdt_env.h needs to be adjusted before we
> pull in the changes.
>
> In the kernel, we usually use s/u32 instead of (u)int32_t for the
> fixed-width types.
>
> Accordingly, we already have S/U32_MAX for their max values.
> So, we should not add (U)INT32_MAX to <linux/limits.h> any more.
>
> Instead, add them to the in-kernel libfdt_env.h to compile the
> latest libfdt.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

Please let me ping this
in case this is useful for future resync.




>
> My initial plan was to change this in a series of 3 patches
> since it is clean, and reduces the code.
>
> [1/3] https://lore.kernel.org/patchwork/patch/1147095/
> [2/3] https://lore.kernel.org/patchwork/patch/1147096/
> [3/3] https://lore.kernel.org/patchwork/patch/1147097/
>
> 1/3 is stuck in the license bikeshed.
>
> For 2/3, I have not been able to get Ack from Russell.
>
> So, I chose a straight-forward fixup.
>
>
> Changes in v3:
>  - Resend as a single patch
>
>  arch/arm/boot/compressed/libfdt_env.h | 4 +++-
>  arch/powerpc/boot/libfdt_env.h        | 2 ++
>  include/linux/libfdt_env.h            | 3 +++
>  3 files changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/compressed/libfdt_env.h b/arch/arm/boot/compressed/libfdt_env.h
> index b36c0289a308..6a0f1f524466 100644
> --- a/arch/arm/boot/compressed/libfdt_env.h
> +++ b/arch/arm/boot/compressed/libfdt_env.h
> @@ -2,11 +2,13 @@
>  #ifndef _ARM_LIBFDT_ENV_H
>  #define _ARM_LIBFDT_ENV_H
>
> +#include <linux/limits.h>
>  #include <linux/types.h>
>  #include <linux/string.h>
>  #include <asm/byteorder.h>
>
> -#define INT_MAX                        ((int)(~0U>>1))
> +#define INT32_MAX      S32_MAX
> +#define UINT32_MAX     U32_MAX
>
>  typedef __be16 fdt16_t;
>  typedef __be32 fdt32_t;
> diff --git a/arch/powerpc/boot/libfdt_env.h b/arch/powerpc/boot/libfdt_env.h
> index 2abc8e83b95e..9757d4f6331e 100644
> --- a/arch/powerpc/boot/libfdt_env.h
> +++ b/arch/powerpc/boot/libfdt_env.h
> @@ -6,6 +6,8 @@
>  #include <string.h>
>
>  #define INT_MAX                        ((int)(~0U>>1))
> +#define UINT32_MAX             ((u32)~0U)
> +#define INT32_MAX              ((s32)(UINT32_MAX >> 1))
>
>  #include "of.h"
>
> diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
> index edb0f0c30904..1adf54aad2df 100644
> --- a/include/linux/libfdt_env.h
> +++ b/include/linux/libfdt_env.h
> @@ -7,6 +7,9 @@
>
>  #include <asm/byteorder.h>
>
> +#define INT32_MAX      S32_MAX
> +#define UINT32_MAX     U32_MAX
> +
>  typedef __be16 fdt16_t;
>  typedef __be32 fdt32_t;
>  typedef __be64 fdt64_t;
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



-- 
Best Regards
Masahiro Yamada

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
