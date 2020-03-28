Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEE0196963
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 22:14:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5zyDParbKk6klA6XQ/hM5GgZxFTUWG0ZKmBCSGQHojc=; b=HcMNVlDs1IrsCa
	aAFV6R+twMeb3wYJbmEwrLT3+WCPl1C804xuBi6PkdzBDkueMArZY1YjflC35ohZAWyS0fXmwi1qx
	Ie9M5sKrWExtphE7FtTC9CFZZsFVIYrBZgRG1nCOBO1S4j1p86Y1+APZ5HHRUKDfQRfPoNtxbkNAP
	ssSR6iGq9/EHwyqNvilrLhywQpmb6eR/WpQ1httSycZennr2O9FJpZyBUaAmutowyykR9adVA33AD
	JHVUXexiPRj7XTR2led9+E/acPtAU7EdkTyjNnx64fQaoLGfR2xLW+KTL0FMsJ5XfpdooMH8o8qFB
	MhIdNeBTQcrpNvNFMSKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIImd-0007DX-51; Sat, 28 Mar 2020 21:14:23 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIImT-0007DA-Be
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 21:14:15 +0000
Received: by mail-pl1-x643.google.com with SMTP id k18so196159pll.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 14:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=z8v8EP+EOuu6etgVH1mWef9Fm4YlWBkx6O/gV189yIA=;
 b=atQH2/kVrmRo1avo8osWsCCDrWXH4w1eZEgh6hIEKN7+OACzYgaUyjhXmvEjjclRFn
 YkT9CHJYIB2bHm1SMPhZdRKAtBgb4Y1iQqRO4GUF8D4tEw33+98xvi1QoWoPTzXuJEVo
 JIOaM6E3jbbXCUe/1u4vZVr7SN9mv+6B5Z6Cs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=z8v8EP+EOuu6etgVH1mWef9Fm4YlWBkx6O/gV189yIA=;
 b=s6S+cPBltJasdex6XJKeCnSVJc+bFewN+QTF6BvEfKcbPu/Ym5UPH+gsAucwC4dOo7
 0/xk7rCFdIyDHYXrDxLu0K5GoYjd0cB2k7EXDMW5sepeYkNlFLO7oWrUQtrm+wSODrGf
 kxOOIJV04ig5NOdxWvjwkp15A934nJ67khdmD0eZu6sSNI7YBDq5lnggx86jIorOCCy8
 nLsZ+WSjzy/4hqLU1pvPasNq9heoE0maFyKlpAiGFC4WThaIAy1kZw/zWj2NrFzucWbv
 mfuqalfCYEhRtXUUJrum/VupRCGrsgRDhXGOlJ2XY3Dxhubuds3M+Qv0zBAPsGNscVuk
 TOTg==
X-Gm-Message-State: ANhLgQ0sf2IugQXBGsXmUoyXspmKVXI/KgO0hLrjBRJXZKorWxfxRgsf
 Mtqt1xWB2E9aE37UpNsjFt2V2g==
X-Google-Smtp-Source: ADFU+vtAYu2Pfl62zP1XJFLpXMLJ5pQg7uiNOmuv//0Lm56m56Qp5Wz4TJmmM9wQ+sN+njH/eeUCrg==
X-Received: by 2002:a17:902:507:: with SMTP id 7mr5514900plf.42.1585430050968; 
 Sat, 28 Mar 2020 14:14:10 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x27sm6881000pfj.74.2020.03.28.14.14.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Mar 2020 14:14:10 -0700 (PDT)
Date: Sat, 28 Mar 2020 14:14:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/5] arm64: bti: Support building kernel C code using BTI
Message-ID: <202003281348.B5ECC9DB2@keescook>
References: <20200327192107.18394-1-broonie@kernel.org>
 <20200327192107.18394-2-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200327192107.18394-2-broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_141413_425726_BB0BB163 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 07:21:03PM +0000, Mark Brown wrote:
> When running with BTI enabled we need to ask the compiler to enable
> generation of BTI landing pads beyond those generated as a result of
> pointer authentication instructions being landing pads. Since the two
> features are practically speaking unlikely to be used separately we
> will make kernel mode BTI depend on pointer authentication in order
> to simplify the Makefile.

Some vendors have been making chips with weird combinations of features.
Is there a better justification to use beyond "unlikely"?

> 
> Signed-off-by: Mark Brown <broonie@kernel.org>
> ---
>  arch/arm64/Makefile | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index f15f92ba53e6..12f942531f32 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile
> @@ -67,7 +67,11 @@ endif
>  
>  ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
>  branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
> +ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
> +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) := -mbranch-protection=pac-ret+leaf+bti
> +else
>  branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> +endif

The compiler appears to accept a leading +, so how about:

__branch-prot-opts-y =

ifeq ($(CONFIG_ARM64_PTR_AUTH),y)
branch-prot-flags-$(CONFIG_CC_HAS_SIGN_RETURN_ADDRESS) := -msign-return-address=all
__branch-prot-opts-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) += +pac-ret+leaf
# -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the
# compiler to generate them and consequently to break the single image contract
# we pass it only to the assembler. This option is utilized only in case of non
# integrated assemblers.
branch-prot-flags-$(CONFIG_AS_HAS_PAC) += -Wa,-march=armv8.3-a
endif

if ($(CONFIG_ARM64_BTI_KERNEL),y)
__branch-prot-opts-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) += +bti
endif

ifneq ($(___branch-prot-opts-y),)
KBUILD_CFLAGS += -mbranch-protection=$(__branch-prot-opts-y) $(branch-prot-flags-y)
endif


Or, this is all overkill. :)

-Kees

>  # -march=armv8.3-a enables the non-nops instructions for PAC, to avoid the
>  # compiler to generate them and consequently to break the single image contract
>  # we pass it only to the assembler. This option is utilized only in case of non
> -- 
> 2.20.1
> 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
