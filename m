Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8DE1E4CA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:03:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CsKYpr7hMxudYbjjXJSBK6SNS5xW9NBH1veXlJrO60=; b=bWu7ccz4orQlsL
	eu3mmv3YIUCdM/2AQwGXDkvC6oHMpUIz6ni5CcsaMw9OXJ2jn6joroUa6f6AOk+ajBVFxvmQz39JI
	+4a2kVHJaByU39Ir48qrY9CsqjkEEl7A/YeQYeiDp//FCAYYyUU8MeUU2RUd11uyvAwNwzE9jYqT/
	pyOi5lMY99ank7aFBbj3/++lzIYShhsNWZg5qiOsZ3gPy2X53paNvhZfkEpyEUFx/2m8vS26IYQah
	oi/UiDnGY0dGrhzf4gp7C30whepP0hX0DWwNJ/++u/i8ehHRkKvoGIwceD72s8Qoh5yaGYegHX5CD
	Q1iZT8ph4ERTqKw9oyDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0P5-0002Aa-I5; Wed, 27 May 2020 18:03:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0Ou-0002AC-K8
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:03:38 +0000
Received: by mail-pf1-x443.google.com with SMTP id g5so667448pfm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1i+2CYKnygDzk/GvSPMFnlsBZ+PDQAs0JHC2OCU8Rpg=;
 b=Juuy34H7e5clylfdiyvSvG4F1wyq9c8Gaj8QNysrOlDgGCGB7A08vEUvk3NP/Wn1H6
 Yog5pD+mXyHk+WVgoLhuHW3Omp5d+eepMRoD2hYNRRK5PkkUSlyxec51h45s6fdpYill
 lA4WHf6wyk335XsVHjeAc4Q2RIQDLyeAIKwrzDBommB66eFrjgaTrHUKh+YskoAupwbq
 eDWaNMQh5VN1aoa5wksCQ49WwMi1vHRhUDNMtMhCEclzc24PdY4Wv3QfxGMydNAOePYK
 xdcnU39N8S3XzdUmTP21oRzd9CrtlFniuJBnOhhkPr0/09QMJdtokXOxrAby+3nxwfjm
 aARA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1i+2CYKnygDzk/GvSPMFnlsBZ+PDQAs0JHC2OCU8Rpg=;
 b=I4Ep0SbrAW2XmIFnmCtME4APV+6xjP3qvxQKagux/8z54rSBP314lhENqy19czXvWM
 9TTLPiKpC8w1J5kVNSE4TgYUXwnnZ8hH6eDJ0z5kR39gqdSnPEcjAPJrsSVdDf7syg3Q
 tpBw/A0Gn7NCK53olz0jbUj+Sw4QN6y86SIPLYI+9hwKFOgO6d+WlDp9izXcw0maOi1r
 8PY6+lRdE+HuHkzj4aMuhfvswmKXc3Y0+2rExrVSu9eEnTVrMqvja2pBFH2tjazFs1R2
 Dqri145ZkONBkS2o5vXJ3fDPlk2PPbfVoxjhC5d+FM+eETIMefJIieM/3TW/14XIkxYD
 mESA==
X-Gm-Message-State: AOAM531Bz09XSCkAAxS8X1QOEoW/mS/orOekEtcuQQXqtbFxS1g+Ym1n
 74U39NKyjY2T2h82IjNkXBLETs89ErkYjnfuKNRq2w==
X-Google-Smtp-Source: ABdhPJzzSTK199jYEXH1x++KGRbblCgHnTwlQdoA6pICLSVL6mQAiv7Qjw8mXRGdXDnysRpSmZq3n9RSuMqpypAtzOk=
X-Received: by 2002:aa7:8c44:: with SMTP id e4mr5128942pfd.108.1590602615524; 
 Wed, 27 May 2020 11:03:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200527141435.1716510-1-arnd@arndb.de>
In-Reply-To: <20200527141435.1716510-1-arnd@arndb.de>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Wed, 27 May 2020 11:03:24 -0700
Message-ID: <CAKwvOdnNxj-MdKj3aWoefF2W9PPG-TSeNU4Ym-N8NODJB5Yw_w@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix clang integrated assembler build
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_110336_677131_49885597 
X-CRM114-Status: GOOD (  23.19  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Fangrui Song <maskray@google.com>, Will Deacon <will@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 "# 3.4.x" <stable@vger.kernel.org>, Jian Cai <jiancai@google.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Bill Wendling <morbo@google.com>,
 Enrico Weigelt <info@metux.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 7:14 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> clang and gas seem to interpret the symbols in memmove.S and
> memset.S differently, such that clang does not make them
> 'weak' as expected, which leads to a linker error, with both
> ld.bfd and ld.lld:
>
> ld.lld: error: duplicate symbol: memmove
> >>> defined at common.c
> >>>            kasan/common.o:(memmove) in archive mm/built-in.a
> >>> defined at memmove.o:(__memmove) in archive arch/arm64/lib/lib.a
>
> ld.lld: error: duplicate symbol: memset
> >>> defined at common.c
> >>>            kasan/common.o:(memset) in archive mm/built-in.a
> >>> defined at memset.o:(__memset) in archive arch/arm64/lib/lib.a
>
> Copy the exact way these are written in memcpy_64.S, which does
> not have the same problem.
>
> I don't know why this makes a difference, and it would be good
> to have someone with a better understanding of assembler internals
> review it.
>
> It might be either a bug in the kernel or a bug in the assembler,
> no idea which one. My patch makes it work with all versions of
> clang and gcc, which is probably helpful even if it's a workaround
> for a clang bug.

+ Bill, Fangrui, Jian
I think we saw this bug or a very similar bug internally around the
ordering of .weak to .global.

>
> Cc: stable@vger.kernel.org
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
> ---
>  arch/arm64/lib/memcpy.S  | 3 +--
>  arch/arm64/lib/memmove.S | 3 +--
>  arch/arm64/lib/memset.S  | 3 +--
>  3 files changed, 3 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/lib/memcpy.S b/arch/arm64/lib/memcpy.S
> index e0bf83d556f2..dc8d2a216a6e 100644
> --- a/arch/arm64/lib/memcpy.S
> +++ b/arch/arm64/lib/memcpy.S
> @@ -56,9 +56,8 @@
>         stp \reg1, \reg2, [\ptr], \val
>         .endm
>
> -       .weak memcpy
>  SYM_FUNC_START_ALIAS(__memcpy)
> -SYM_FUNC_START_PI(memcpy)
> +SYM_FUNC_START_WEAK_PI(memcpy)
>  #include "copy_template.S"
>         ret
>  SYM_FUNC_END_PI(memcpy)
> diff --git a/arch/arm64/lib/memmove.S b/arch/arm64/lib/memmove.S
> index 02cda2e33bde..1035dce4bdaf 100644
> --- a/arch/arm64/lib/memmove.S
> +++ b/arch/arm64/lib/memmove.S
> @@ -45,9 +45,8 @@ C_h   .req    x12
>  D_l    .req    x13
>  D_h    .req    x14
>
> -       .weak memmove
>  SYM_FUNC_START_ALIAS(__memmove)
> -SYM_FUNC_START_PI(memmove)
> +SYM_FUNC_START_WEAK_PI(memmove)
>         cmp     dstin, src
>         b.lo    __memcpy
>         add     tmp1, src, count
> diff --git a/arch/arm64/lib/memset.S b/arch/arm64/lib/memset.S
> index 77c3c7ba0084..a9c1c9a01ea9 100644
> --- a/arch/arm64/lib/memset.S
> +++ b/arch/arm64/lib/memset.S
> @@ -42,9 +42,8 @@ dst           .req    x8
>  tmp3w          .req    w9
>  tmp3           .req    x9
>
> -       .weak memset
>  SYM_FUNC_START_ALIAS(__memset)
> -SYM_FUNC_START_PI(memset)
> +SYM_FUNC_START_WEAK_PI(memset)
>         mov     dst, dstin      /* Preserve return value.  */
>         and     A_lw, val, #255
>         orr     A_lw, A_lw, A_lw, lsl #8
> --
> 2.26.2

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
