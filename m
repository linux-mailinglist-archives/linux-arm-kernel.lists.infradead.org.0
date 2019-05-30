Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ACC53051E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 01:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQPV9q7hZaLqyodObil5ssJTKaUDi642I4ogcsU5gB8=; b=DbbnV3skMykBbD
	IPi4Ca6UzhfeEpiXdm6xDqCk9QB3PJTYBsOHG4Aj5/dtGaHJoDz9RMRFX0jPO0hRkRRF2ooUdUO9N
	jcDycuYENPQv/d3nYyQI7hFYTvW7nxyw+ZaIT4CGBfJzde1T07Wde4FNzhoylLEMGFEMg09PuDFIj
	GLFkkY+w3GGdrCKS75Z8ocnO2znO8eL/YjhREH6e9/IKnkd5zqu6jRkCJhXN3nUsdZ3WNH6UsZI/z
	YULFSjtRjwZbaoytk34JDMgQ7fcM1pj9//7BT07PSJb1IMDRiD3r+5O+3AfGaQQRuWRia2kMwxfZy
	eRoDIMZCuHjMV7qjQHnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWU2D-0000r1-Cc; Thu, 30 May 2019 23:00:33 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWU24-0000qd-Ri
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 23:00:26 +0000
Received: by mail-pg1-x544.google.com with SMTP id h2so2870266pgg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 May 2019 16:00:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=J3Ml1kVDfcGNXRU8AMdpUqA4MON/FUbb6KbQvnG2TAY=;
 b=Mc8IVN+Jet472ysNby9MRU/0w5bKhDiKU1ycaA76ZU/WvYmTz7sKUGtHPAKH9XKKSH
 x4icaO4oUeyANR1j313ji8wynv9/sYM+cUvppQG2TsRXbkwgPV5GaUX7DVgXUh5kf1g5
 iJ5Un2qIVCDon0Xtc3QkyM65CA0t93sesy6Y/ApOimfCK7G3oTMIz9nuZ18kzHjI59N2
 fTjHSHnELbvtgIe/DxhTQn11QaRPliYD5s/2HL8srtLfhrdcy7yh36ifrSS7/5xoIxHH
 dTjHcURfUTD88d+2ZZM33lXC3xPuAv02x2Q176F8Co4hQ8RGJG6jWviV0Nw70X20+gw3
 Bprw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=J3Ml1kVDfcGNXRU8AMdpUqA4MON/FUbb6KbQvnG2TAY=;
 b=a3gzq3wxl2pZqmU5TCD+qkJLwsBAzOVTiy+UA435EE9xW4+t2UdF3+LZqv3Jkda+fX
 65ydE76KjndKuwQ6EIwyOlbd4QlLaDevaIwyWpvXHIFUvgDZIiugkI/HaJZFiMxVaXFq
 DxVzAQhNNUK8Mjyn2kuYFIue+L3mZs3AHoaqhdQG/y70Yi/iwP8k6AB7sau/NOw8+4cL
 ByifkEv2sm6Ruu0AiXqXiSitb2FjK5ZJku6ktZ/u2l8kPtsNGdjzPutLP1bd76ax6JXI
 GzerYu72EU5sR4rep524Sr76w5NL3Ies/Mo7MgH2XlpLXeR8GZD2NBc7OhNClGuKnZ/R
 iV4w==
X-Gm-Message-State: APjAAAVi9D10rHsAMpd6AnR3KH+AvSTiouu+CY4raC+be8wJ/R1RMp+o
 Ag9KUEcypPH+WI06+X/nhR2pYHour3RlnKDYwhN3EA==
X-Google-Smtp-Source: APXvYqxnliwS0y68lZKpmGnvf7C3CCbfTbvNyAthaZZoO/VviHLzQUhXFyPt+J70SIH4/nMod7UH5Zp975sz1t8EUXI=
X-Received: by 2002:a17:90a:2308:: with SMTP id
 f8mr5548309pje.123.1559257223506; 
 Thu, 30 May 2019 16:00:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190528235742.105510-1-natechancellor@gmail.com>
In-Reply-To: <20190528235742.105510-1-natechancellor@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 30 May 2019 16:00:12 -0700
Message-ID: <CAKwvOdngj29-W-FvUVtqgrkDof_oDU6+Z9kTbyha=OZi_XAKJQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: xor-neon: Replace __GNUC__ checks with
 CONFIG_CC_IS_GCC
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_160024_916571_4159479C 
X-CRM114-Status: GOOD (  21.83  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Stefan Agner <stefan@agner.ch>,
 Russell King <linux@armlinux.org.uk>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 4:57 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Currently, when compiling this code with clang, the following warning is
> emitted:
>
>     CC      arch/arm/lib/xor-neon.o
>   arch/arm/lib/xor-neon.c:33:2: warning: This code requires at least
>   version 4.6 of GCC [-W#warnings]
>
> This is because clang poses as GCC 4.2.1 with its __GNUC__ conditionals
> for glibc compatibility[1]:
>
> $ echo | clang -dM -E -x c /dev/null | grep GNUC | awk '{print $2" "$3}'
> __GNUC_MINOR__ 2
> __GNUC_PATCHLEVEL__ 1
> __GNUC_STDC_INLINE__ 1
> __GNUC__ 4
>
> As pointed out by Ard Biesheuvel and Arnd Bergmann in an earlier
> thread[2], the oldest version of GCC that is currently supported is gcc
> 4.6 after commit cafa0010cd51 ("Raise the minimum required gcc version
> to 4.6") so we do not need to check for anything older anymore.
>
> However, just removing the version check is not enough to silence clang
> because it does not recognize '#pragma GCC optimize':
>
>   arch/arm/lib/xor-neon.c:25:13: warning: unknown pragma ignored
>   [-Wunknown-pragmas]
>   #pragma GCC optimize "tree-vectorize"
>
> Looking into it further, -ftree-vectorize (which '#pragma GCC optimize
> "tree-vectorize"' enables) is an alias in clang for -fvectorize[3],
> which according to the documentation is on by default[4] (at least at
> -O2 or -Os).
>
> Just add the pragma when compiling with GCC so that clang does not
> unnecessarily warn.
>
> [1]: https://reviews.llvm.org/D51011#1206981
> [2]: https://lore.kernel.org/lkml/CAK8P3a3NjTCgFd2dQ9KbHP8DpXf6s-ULfeU6acAYC4SDi+2qvw@mail.gmail.com/
> [3]: https://github.com/llvm/llvm-project/blob/eafe8ef6f2b44ba/clang/include/clang/Driver/Options.td#L1729
> [4]: https://llvm.org/docs/Vectorizers.html#usage
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/496
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

LGTM, thanks Nathan.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  arch/arm/lib/xor-neon.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
>
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index c691b901092f..d532bc072ee4 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -22,15 +22,8 @@ MODULE_LICENSE("GPL");
>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>   * NEON instructions.
>   */
> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> +#ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -#else
> -/*
> - * While older versions of GCC do not generate incorrect code, they fail to
> - * recognize the parallel nature of these functions, and emit plain ARM code,
> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> - */
> -#warning This code requires at least version 4.6 of GCC
>  #endif
>
>  #pragma GCC diagnostic ignored "-Wunused-variable"
> --
> 2.22.0.rc1
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
