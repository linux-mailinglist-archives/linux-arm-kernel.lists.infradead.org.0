Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 797731968D9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Mar 2020 20:05:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TvF3Saz7CZaponvnX6VKIvE9Kn+wyQnYiDeIwQjXsJw=; b=DBmjSyVxBK+Gs4
	8/C51rKniuH+xSw1CeVPlds6J3qbVIe60OqsKY5epPM4ViTUcnP5T5RByw+xAG4nZCCiMB6ikT6sM
	u15CWdhzqUCDk5ygDGl5pwZ9nlZhlccVnzGaMwXd9CdzSoGdSQopW9emxZ1WPYPdTS2JFio+p1vSv
	Suxj/ZTAdN581EF0myq+lndUqu5ciXN5MquErRSK2bAjjet3gRdATRw6hvnhW/Z11Dd9Z956UKLR/
	WqiGK2Q3oucqFtzZdxkDyKMehb6LJYJBN1Si42SpT7MRIAQo/vzokwcnB3LGP3jzGtRclZRgRMxzX
	j8mhbnTygtWfSi449ahA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIGlV-0007eX-RE; Sat, 28 Mar 2020 19:05:05 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIGlJ-0007dk-BP
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Mar 2020 19:04:54 +0000
Received: by mail-il1-x142.google.com with SMTP id i75so4687006ild.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Mar 2020 12:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AP+1qId3R/yF3OuH9WI1UJKSGs0Ex2bEojikXrSbq98=;
 b=Sk88MhJOXT+yZvT3IzSNNVPqpypHQwBvXLRR0hKLFRtdqYUq+QMn0Y8tms1RA8D2bq
 9NK7sIn6jnFSLisf5wIXycz1rXYpaMOo/AUuSZz5C41VgNwMMARLDFW9AUPXeOacVQ5f
 VqjPPebPuB7i6P9j+xOD+coJl4yF1fp1iHCLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AP+1qId3R/yF3OuH9WI1UJKSGs0Ex2bEojikXrSbq98=;
 b=QsqtCx+59ZuRV+OazHh0sLzMfkLABhtk0dTWRv9ZDroL5tRaO85GwJC3ZP9UH7poqz
 zixZEH63gD2ZMqvi6A86sE+pQ6Ee7dOJP1xYM/wIVfE76sorRh85D/xINO8hS2Ti0In1
 MeMY4XxHW6qwzbwgBTt20wDt28fu5Lie8SiHE/26afQ6uEfyGVG9WmoXVQ4cPI0qGJbd
 afxnlALRcWbiZeEH03eWcDo6+PoKYJqqb1fn/6QxmpMhAsX0OYVHECBpvRYZBdIIJ2LQ
 LZtf8DcKZ8vaVGEpr3sknQvWsNqK1ZrJo/k9pWCio5/l/1GWVDEMC4Fm+0Ml7NcDYCM5
 nxRQ==
X-Gm-Message-State: ANhLgQ0Uri80Y79J5F97e85H5TAg/S4rWqUo+wOYiLJIGlOnMng804kG
 hE1R7GZ8ccdHsp2SWA+7LSMViFd0TsmhxrMlqTNFsw==
X-Google-Smtp-Source: ADFU+vv2wg+b/xOJOKCXXGuy2LimYRCOQ60Jb9R7Ciwy6mzswC/bVOyrg2XS5brYA2vB48Vsdjsgr5WIhIk6BHLVk54=
X-Received: by 2002:a92:8517:: with SMTP id f23mr5046513ilh.106.1585422289417; 
 Sat, 28 Mar 2020 12:04:49 -0700 (PDT)
MIME-Version: 1.0
References: <202003281643.02SGhMtr029198@sdf.org>
In-Reply-To: <202003281643.02SGhMtr029198@sdf.org>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Sun, 29 Mar 2020 03:04:24 +0800
Message-ID: <CAJMQK-g7ah22RKaeMNyzBn70_vN2xS1P7Kx445WzmSn4iqRHfQ@mail.gmail.com>
Subject: Re: [RFC PATCH v1 39/50] arm: kexec_file: Avoid temp buffer for RNG
 seed
To: George Spelvin <lkml@sdf.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_120453_416469_D657147F 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Mar 29, 2020 at 12:43 AM George Spelvin <lkml@sdf.org> wrote:
>
> After using get_random_bytes(), you want to wipe the buffer
> afterward so the seed remains secret.
>
> In this case, we can eliminate the temporary buffer entirely.
> fdt_setprop_placeholder returns a pointer to the property value
> buffer, allowing us to put the random data directy in there without
> using a temporary buffer at all.  Faster and less stack all in one.
>
> Signed-off-by: George Spelvin <lkml@sdf.org>
> Cc: Hsin-Yi Wang <hsinyi@chromium.org>
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org

Acked-by: Hsin-Yi Wang <hsinyi@chromium.org>

> ---
>  arch/arm64/kernel/machine_kexec_file.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/kernel/machine_kexec_file.c b/arch/arm64/kernel/machine_kexec_file.c
> index 7b08bf9499b6b..69e25bb96e3fb 100644
> --- a/arch/arm64/kernel/machine_kexec_file.c
> +++ b/arch/arm64/kernel/machine_kexec_file.c
> @@ -106,12 +106,12 @@ static int setup_dtb(struct kimage *image,
>
>         /* add rng-seed */
>         if (rng_is_initialized()) {
> -               u8 rng_seed[RNG_SEED_SIZE];
> -               get_random_bytes(rng_seed, RNG_SEED_SIZE);
> -               ret = fdt_setprop(dtb, off, FDT_PROP_RNG_SEED, rng_seed,
> -                               RNG_SEED_SIZE);
> +               void *rng_seed;
> +               ret = fdt_setprop_placeholder(dtb, off, FDT_PROP_RNG_SEED,
> +                               RNG_SEED_SIZE, &rng_seed);
>                 if (ret)
>                         goto out;
> +               get_random_bytes(rng_seed, RNG_SEED_SIZE);
>         } else {
>                 pr_notice("RNG is not initialised: omitting \"%s\" property\n",
>                                 FDT_PROP_RNG_SEED);
> --
> 2.26.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
