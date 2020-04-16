Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B581C1AD0F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 22:16:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJBxGPA9CDN7N+tJ7iT27KQ3MssjU2yLSCc/y5beD6k=; b=KX2xqrmd9BIkkk
	+V7+hmuM1qcq3Xe33fbOKUEa1PsBr1nhNKguVsYnF4i+v33C7pobBc8W9qQ9/Jn4WdJyuKIhJv/Vj
	FG7xm7V+4ThTJ329EXRwtGIGsYWgm4LsI/d9MjGPh8escrIb8NIIhZEftSdHvIJHgRSBliwwafJbi
	LcnMwjnoiqZ4jT2uoVm6xlhxLfK81o806u0t64oHmZfkRuDGc33lpQOXcFWkqeHyuNmgzUXSlds1l
	akqGbQywAD7XWESU0DjD1gk6IOQZsmYrVbCNeL4sy0lPTal1zW3P0a6y8U4Lcg85rfuwKxw+jeNMq
	kEycfoPYnEs/f0nAox6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPAwN-00060r-VZ; Thu, 16 Apr 2020 20:16:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPAwF-0005zD-BE
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 20:16:45 +0000
Received: by mail-pg1-x542.google.com with SMTP id 188so2151291pgj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 13:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vUAOCtCt8du7Os+3vw2Znw14Nonp2UoTlR0pT/AkghM=;
 b=DiLrCwPu0nkuET40jCIp+nDwIo+rN/MpIQKmb/JprzCw+bTM3hdnYeXF8G/NzKbHa0
 sNBe++iudA9Zo4z1DzsoSgR52AWXq/kDU32msbyLU+21z2HumOSfWInDq2l3pWXHHktJ
 psWOB/UZ2KSkQWsW9gO2dsvvBW9/BjYOxuwOWqg9zRJoQTh+TFvfcizmUgM3V/WvByRZ
 z5J32EndrIgceSdtNNvs08D2+jvvqMcsoYAtmkd5R2XuDUTe+GZscFLuuQ4Wm2UYEbZo
 EuXvNDTF+4SLM/B5+tHDv7eOriWPd0emj9c13tacfeQcGiinXBUURMeYdoIvbNJwdcf7
 Sdsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vUAOCtCt8du7Os+3vw2Znw14Nonp2UoTlR0pT/AkghM=;
 b=BhP7q2YKJLIEZeLJyXowiGJQdno7vxkQ7+4v5K06DDc7axi+3bX5ptSd8Lw7OeYMtH
 wKutGIQ5ZEvI77H0dLSWingI8pK8cvEO7VXhNPxTa2mR986nAhaK8yqgUuzZQ5Trtdz7
 TQATBIFDMqypC3hVPT2lwjfmz0zylYBbrw61o9yBUgIqgohhJUo/ZWToLFNntGndjr1H
 Vwc7mA6yPbC0jwmxCCIuOjhM6riTNxPzttlqwG53Z0jN7jQt5pKk7CKcNhRpQDuufDK7
 hlwn15O9SUXfcjQ0doocc0LyuH4d/pVuV/TaTHHeKtXiXhRf6f7lNyFt9hIyD8hKP1+q
 tk8Q==
X-Gm-Message-State: AGi0PuY3LFgFxYdtG8iswuDLgOUcU/RgXGGsZIuhApXvZKJr/yVLVtdr
 CQT/lsTYUouCto5k54cXWi5L06zveWlNK1LhwKSepQ==
X-Google-Smtp-Source: APiQypIyUzh78zWnsuEDX4jhiKakNZ8iouIlNXWcbtqennK3yV9EzmmHfcPXezDACiq0jgMRkO0JT+njkryOVukiahU=
X-Received: by 2002:aa7:919a:: with SMTP id x26mr34178999pfa.39.1587068199267; 
 Thu, 16 Apr 2020 13:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200416182402.16858-1-natechancellor@gmail.com>
In-Reply-To: <20200416182402.16858-1-natechancellor@gmail.com>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 16 Apr 2020 13:16:27 -0700
Message-ID: <CAKwvOdkCMsDUGK88xGqfsA5Nc1eNmR+PbLBoHE0dv65aimcJyQ@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
To: Nathan Chancellor <natechancellor@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_131643_413875_4B7684F1 
X-CRM114-Status: GOOD (  25.95  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 "kernelci . org bot" <bot@kernelci.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-mmc@vger.kernel.org, Adrian Hunter <adrian.hunter@intel.com>,
 Michal Simek <michal.simek@xilinx.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manish Narani <manish.narani@xilinx.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 11:24 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns:
>
> drivers/mmc/host/sdhci-of-arasan.c:784:9: warning: variable 'ret' is
> uninitialized when used here [-Wuninitialized]
>         return ret;
>                ^~~
> drivers/mmc/host/sdhci-of-arasan.c:738:9: note: initialize the variable
> 'ret' to silence this warning
>         int ret;
>                ^
>                 = 0
> drivers/mmc/host/sdhci-of-arasan.c:860:9: warning: variable 'ret' is
> uninitialized when used here [-Wuninitialized]
>         return ret;
>                ^~~
> drivers/mmc/host/sdhci-of-arasan.c:810:9: note: initialize the variable
> 'ret' to silence this warning
>         int ret;
>                ^
>                 = 0
> 2 warnings generated.
>
> This looks like a copy paste error. Neither function has handling that
> needs ret so just remove it and return 0 directly.

Forgive me for not taking the time to look into this more carefully,
but just a thought:

Having functions always return a single integer literal as opposed to
having a `void` return type in their function signature is a code
smell.  Did you consider the call sites of these functions to see if
they do anything with the return value?  I understand it may not be
worthwhile/possible if these functions fulfil an interface that
requires the int return type function signature.  (It's also probably
faster for me to just look rather than type this all out, but I saw no
mention of this consideration in the commit message or patch, so
wanted to check that it had been performed).

>
> Fixes: f73e66a36772 ("sdhci: arasan: Add support for Versal Tap Delays")
> Link: https://github.com/ClangBuiltLinux/linux/issues/996
> Reported-by: kernelci.org bot <bot@kernelci.org>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/mmc/host/sdhci-of-arasan.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
> index 16e26c217a77..18bf0e76b1eb 100644
> --- a/drivers/mmc/host/sdhci-of-arasan.c
> +++ b/drivers/mmc/host/sdhci-of-arasan.c
> @@ -735,7 +735,6 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
>                 container_of(clk_data, struct sdhci_arasan_data, clk_data);
>         struct sdhci_host *host = sdhci_arasan->host;
>         u8 tap_delay, tap_max = 0;
> -       int ret;
>
>         /*
>          * This is applicable for SDHCI_SPEC_300 and above
> @@ -781,7 +780,7 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
>                 sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
>         }
>
> -       return ret;
> +       return 0;
>  }
>
>  static const struct clk_ops versal_sdcardclk_ops = {
> @@ -807,7 +806,6 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
>                 container_of(clk_data, struct sdhci_arasan_data, clk_data);
>         struct sdhci_host *host = sdhci_arasan->host;
>         u8 tap_delay, tap_max = 0;
> -       int ret;
>
>         /*
>          * This is applicable for SDHCI_SPEC_300 and above
> @@ -857,7 +855,7 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
>                 sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
>         }
>
> -       return ret;
> +       return 0;
>  }
>
>  static const struct clk_ops versal_sampleclk_ops = {
>
> base-commit: a3ca59b9af21e68069555ffff1ad89bd2a7c40fc
> --
> 2.26.1
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416182402.16858-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
