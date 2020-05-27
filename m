Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123291E4436
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 15:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fnHQosCWBcDHABGjToJnEVSl58sCeW0m9EDlpr2K8to=; b=FWH+gj7gAGcFo91+yHNuReaLd
	xtuyklukbS7486KImi20rCttCE8u3cf4EY5wy0T4uQznRQD2xUK5hm5YshS6sRrZjRD1W9WmEASN3
	j2eIRF8GQjboDp33x03uz38Mof4iLyAlonBkO5n6z8TABxG4tyuTNo6nOLGr51odF/3CMZ3oj7Rxg
	2AKcjQ3Pe1gdiUjDKuXMG2lttuxB2MbWslZ57/TBpDfxHB7gEEi1lp3Hn4nF0U4IdpDgfz9G747Wj
	guQlE+NkDq4FeucQ95OMmAGLVuw6wp8XD8d++JkzO+T1SXhRU8vdhM/yfcb49H+mj+Xe0AoPsLJrM
	illQfmHoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwNT-00017Y-6x; Wed, 27 May 2020 13:45:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwNG-00016V-TJ
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 13:45:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CBFFB55D;
 Wed, 27 May 2020 06:45:36 -0700 (PDT)
Received: from [10.57.2.168] (unknown [10.57.2.168])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C0FB23F6C4;
 Wed, 27 May 2020 06:45:34 -0700 (PDT)
Subject: Re: [PATCH] arm64: vdso32: force vdso32 to be compiled as -marm
To: Nick Desaulniers <ndesaulniers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
References: <20200526173117.155339-1-ndesaulniers@google.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2f58c2a4-0f37-d507-7767-00161c6b5d98@arm.com>
Date: Wed, 27 May 2020 14:45:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200526173117.155339-1-ndesaulniers@google.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_064538_987466_DE02FFF6 
X-CRM114-Status: GOOD (  17.80  )
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-05-26 18:31, Nick Desaulniers wrote:
> Custom toolchains that modify the default target to -mthumb cannot
> compile the arm64 compat vdso32, as
> arch/arm64/include/asm/vdso/compat_gettimeofday.h
> contains assembly that's invalid in -mthumb.  Force the use of -marm,
> always.

FWIW, this seems suspicious - the only assembly instructions I see there 
are SWI(SVC), MRRC, and a MOV, all of which exist in Thumb for the 
-march=armv7a baseline that we set.

On a hunch, I've just bodged "VDSO_CFLAGS += -mthumb" into my tree and 
built a Thumb VDSO quite happily with Ubuntu 19.04's 
gcc-arm-linux-gnueabihf. What was the actual failure you saw?

Robin.

> Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1084372
> Cc: Stephen Boyd <swboyd@google.com>
> Reported-by: Luis Lozano <llozano@google.com>
> Tested-by: Manoj Gupta <manojgupta@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Surgeon General's Warning: changing the compiler defaults is not
> recommended and can lead to spooky bugs that are hard to reproduce
> upstream.
> 
>   arch/arm64/kernel/vdso32/Makefile | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 3964738ebbde..c449a293d81e 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -104,6 +104,8 @@ VDSO_CFLAGS += -D__uint128_t='void*'
>   # (on GCC 4.8 or older, there is unfortunately no way to silence this warning)
>   VDSO_CFLAGS += $(call cc32-disable-warning,shift-count-overflow)
>   VDSO_CFLAGS += -Wno-int-to-pointer-cast
> +# Force vdso to be compiled in ARM mode, not THUMB.
> +VDSO_CFLAGS += -marm
>   
>   VDSO_AFLAGS := $(VDSO_CAFLAGS)
>   VDSO_AFLAGS += -D__ASSEMBLY__
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
