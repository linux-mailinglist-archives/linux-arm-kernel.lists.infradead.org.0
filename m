Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CC683B09
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 23:26:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HOGc7TnCmIjHCjj8yri07ur2E4NuS4XnZDDkkKWpVU=; b=b4KWyEVXSLqBRj
	wEIl4LFinBoY3KG+n2uBcJf7fE4FY8jpAT/51xorFPCO8PewWqz391S1vXyvKANqcUdBWftN6gbtI
	UCOiCFQGtKcZoT+tztyzqAhLlMDj3qFFYJS1nOdWQUwOtGoPCbjSWiA74oVig8siWBMkR2nlFVq4f
	o3Dt+rJiZhrqb8zS8AtiYDfb1hBuGCCu5DSjkDn8v5X1QF2kaYCuxKGAKG7jDuaDGO+EgWogF/5wy
	VNqiEJ/wBd7Mieo3TiuKE2cRGiLIrRef43RxyPXw8Kfqgw++hkoQjZwAvvojPYSpUhor7hZSRrInu
	/H7fNHrPKYzI710OiSGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv6yE-0000AE-JE; Tue, 06 Aug 2019 21:26:14 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv6y0-00009t-Bf
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 21:26:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id w24so38374431plp.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 14:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GObBCpJX+hg87HT6Xs1kywdcUBdqzo4P5DaWgPTYKqY=;
 b=cq8p4S0c6LOKeX374sXgqnNZf8isdnYdAQ5CBxV3rH9WzUm0kP/c5ebST6hppnuvcJ
 TuwrCGqMIIvBy0sPLkFNyV7NjYgzubGAWTsh7OZJMyCGcteQQtF0BDxqKFKn89iROgMd
 r412dLeA2ywDXXhFyOHtnFhIVboAhxhv2jLl5pqDtHJXiEiRmQTwwMGlxfGZBAr7nxbL
 erRArC/F5lTQ4Cfy2UmzZQY8FxiKS6HubIlHNeQHg+3G8msXa+YDCvNeglcYCmAvTRwr
 4Ux+ag+2JrDa4dKEMiR5VE/kcZEayoSB9dg05eHaQQ3CYMm9T+TFX2wU8ZJ4SDNgs3yz
 vvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GObBCpJX+hg87HT6Xs1kywdcUBdqzo4P5DaWgPTYKqY=;
 b=e5r87ndrqr/UzGhWuRI6UJkyr1XXoaceIV0JtvEumEW6K14SyBkkLkUjesbucYM1bM
 iyvVnWCT8XO/iSyQiFTT+vgzIhYK27XrH6Lq4lW4QuDQLMlYD0qyPBNJ2LdSRrTHj+l3
 sM4HS+c3BqcditTE5AxUTIk2QxeezareXRTV+Z+lY7z99ZX1pt4fdmaGkDXjLAsGGvdD
 KV1Bb9hgzSqHvsWIqkLqCQ5VrISJTW64lCKp3x+4BQyKh8s/PcNYSsaAXQwvXolN4Aip
 QRxmnwaZMnYpSJdVKq0tuUNZcFQ+k6PYH6P5q9Gl6KUUizZX62RrxO/RsV2Le+YI4Sze
 z6RQ==
X-Gm-Message-State: APjAAAUnH4oqGGzVOJAxXASZlscbhrTHEoaO53TgczJhcML32/NPnfAZ
 yAplEBWNkzmhAMSbxx60rzTYhoo+7fw16ycXAuUJsA==
X-Google-Smtp-Source: APXvYqwvTzuyB2oDs7Nq+f5T825y0ZJmW12YmvZy7QBQ5K/bvDQcUgNh+5TIyO3NgFt8VmHSnfVfpP8mnumO38nzy7M=
X-Received: by 2002:a17:902:9f93:: with SMTP id
 g19mr4967039plq.223.1565126756358; 
 Tue, 06 Aug 2019 14:25:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190806183918.41078-1-broonie@kernel.org>
In-Reply-To: <20190806183918.41078-1-broonie@kernel.org>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Tue, 6 Aug 2019 14:25:45 -0700
Message-ID: <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_142600_425049_D92BCC32 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 11:39 AM Mark Brown <broonie@kernel.org> wrote:
>
> Current boot tests with clang built big endian kernels in KernelCI are
> showing problems with the kernel being unable to interpret big endian
> userspace. This is a bug and should be fixed but for now let's prevent
> these kernels being built, we may end up needing to add a version
> dependency on the compiler anyway.
>
> Signed-off-by: Mark Brown <broonie@kernel.org>

Link: https://github.com/ClangBuiltLinux/linux/issues/628
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> The clang people (CCed) are aware and looking into this.
>
>  arch/arm64/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> index 990fdcbf05c7..1c32d9889e0f 100644
> --- a/arch/arm64/Kconfig
> +++ b/arch/arm64/Kconfig
> @@ -813,6 +813,7 @@ config ARM64_PA_BITS
>
>  config CPU_BIG_ENDIAN
>         bool "Build big-endian kernel"
> +       depends on !CC_IS_CLANG
>         help
>           Say Y if you plan on running a kernel in big-endian mode.
>
> --
> 2.20.1
>


-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
