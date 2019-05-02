Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF01411906
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 14:28:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OaZDkF22Vp4eQrKFNrYsxkmWWtKnLbmublAB+kcSQF8=; b=SwXTOPPQBO1gMO
	3Uh+0OyJcskFqwaG1a5N4tC8fX/71zsidzKN+rSN6fyd04Q1E9Yb4MnRJxUeGY/xk2NbR+BWhDt7J
	sCGUdJp1hjtoO2vLHx+0Zi3BpTxOZZVQRi3s/vKBKEBxPq4conTjcDcaSbcgJaY9NlRc3lFZ5rQn9
	ukK35QAs1ud0Bnrk8wGt6Jc6zY/pFWCWUFF38vL4FpgHRwXYpeldB04/XQhf/dv+pJ9d/YGnHD19I
	ji0rHO6JIZvs0iTnXNt/0FOzTRgAKgBzgL8GWEKwCLpwacQS0An4cHCilFBxiRungqUmtxejnCJg4
	zGQdct2lssdcsuq8e2SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMApG-0000qw-KT; Thu, 02 May 2019 12:28:34 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMApA-0000qT-5e
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 12:28:29 +0000
Received: by mail-it1-x144.google.com with SMTP id q14so2958279itk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 05:28:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qS8OB3VzoLdC268eCczKcFn55LM1oxTu+ok9okBkG08=;
 b=u2Fb0VEiEPKYS2lyoP0w+zDLAxdc0Y+Lu+XmbcPk0hOncu35cxJdVQNfyR1Kr9iRSl
 D6JqBV6XIUH2J/LuCfg1+m5IEzBmvJJ0LeGtTyII1hnKt7v8PXLmZHuXbYiyhFG6LvKy
 ACa2kX+fyH0aZWvCQTmRIjYpux7MJDyJu1zn0Qr2qLEnd2RTyjioyd87O4DbcyyW9UHg
 UvnXg7LMBYNhVpCL5q9PZgHSpiFLT0O3NJ/wc8YHO5+cMQO6HjjL4M1KGaW6OIQQus5F
 w8vm6injChmckOvBLbP6YhWBQEZKZ9cynhjTXoDTX6YDOzmkHyMp9zqA8vgN5EtIB7aG
 T8OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qS8OB3VzoLdC268eCczKcFn55LM1oxTu+ok9okBkG08=;
 b=tUixN1yUzvX5PzpOB8N1SS+mRNpqbpYS1mLurYXKwsg3i0+imY+tezjoDIsR92SI8d
 0HYBhAe6l2CwcPJ9IAz08cneZoB+VK8tl2b8aF3uCJrXAYqdolRL6lGGT9Qsozn5hyCA
 clmWp1+y0Nh6tA8lG69bkXwDB2+h0IMrAm+zQUZ4bmoUvpAd2mN+TDf0bRET9MLr6FX3
 QbfMpBiq2S8h0NO7E/MoBsfxmgZymPfvLiaMVD2lP64ZGl9JdrYssuokPoAm/cGrZ3Jz
 DxH/lV194sV5EGahT42YM/n7zlqTi3+Hziq9dJabewmTIRWkxBfIRSD6UuTdEcDUpjhY
 A8BQ==
X-Gm-Message-State: APjAAAU+T5haPuqAQRtcjEkNfih9gz6XzYkqy/6V2OEhh0z6Q3YrFUak
 XX28thnbV0DNwI0A2CjdHMtJ8mwB+yL/3+k7FVa4Dw==
X-Google-Smtp-Source: APXvYqwJETuC7vw+qurNB5pJo86YjOPjRJ86zJ3FKV/99cEXgbC9zDaW7HI8pfE7rfIP+OLD3HQncoxYMtEUhye/4pc=
X-Received: by 2002:a24:59c1:: with SMTP id p184mr2312120itb.158.1556800106816; 
 Thu, 02 May 2019 05:28:26 -0700 (PDT)
MIME-Version: 1.0
References: <20190408163319.10382-1-vichy.kuo@gmail.com>
In-Reply-To: <20190408163319.10382-1-vichy.kuo@gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 2 May 2019 14:28:15 +0200
Message-ID: <CAKv+Gu9gfq6PdwwLJd-zXYTiVT0oKtkhJHG4+AaOdD+N0k6c=Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] kaslr: shift linear region randomization ahead of
 memory_limit
To: pierre Kuo <vichy.kuo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_052828_217394_904C109B 
X-CRM114-Status: GOOD (  22.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, steven.price@arm.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 8 Apr 2019 at 18:33, pierre Kuo <vichy.kuo@gmail.com> wrote:
>
> The following is schematic diagram of the program before and after the
> modification.
>
> Before:
> if (memstart_addr + linear_region_size < memblock_end_of_DRAM()) {} --(a)
> if (memory_limit != PHYS_ADDR_MAX) {}                               --(b)
> if (IS_ENABLED(CONFIG_BLK_DEV_INITRD) && phys_initrd_size) {}       --(c)
> if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {}                           --(d)*
>
> After:
> if (memstart_addr + linear_region_size < memblock_end_of_DRAM()) {} --(a)
> if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {}                           --(d)*
> if (memory_limit != PHYS_ADDR_MAX) {}                               --(b)
> if (IS_ENABLED(CONFIG_BLK_DEV_INITRD) && phys_initrd_size) {}       --(c)
>
> After grouping modification of memstart_address by moving linear region
> randomization ahead of memory_init, driver can safely using macro,
> __phys_to_virt, in (b) or (c), if necessary.
>

Why is this an advantage?

> Signed-off-by: pierre Kuo <vichy.kuo@gmail.com>
> ---
> Changes in v2:
> - add Fixes tag
>
> Changes in v3:
> - adding patch of shifting linear region randomization ahead of
>  memory_limit
>
>  arch/arm64/mm/init.c | 33 +++++++++++++++++----------------
>  1 file changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/arch/arm64/mm/init.c b/arch/arm64/mm/init.c
> index 7205a9085b4d..5142020fc146 100644
> --- a/arch/arm64/mm/init.c
> +++ b/arch/arm64/mm/init.c
> @@ -389,6 +389,23 @@ void __init arm64_memblock_init(void)
>                 memblock_remove(0, memstart_addr);
>         }
>
> +       if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {
> +               extern u16 memstart_offset_seed;
> +               u64 range = linear_region_size -
> +                           (memblock_end_of_DRAM() - memblock_start_of_DRAM());
> +
> +               /*
> +                * If the size of the linear region exceeds, by a sufficient
> +                * margin, the size of the region that the available physical
> +                * memory spans, randomize the linear region as well.
> +                */
> +               if (memstart_offset_seed > 0 && range >= ARM64_MEMSTART_ALIGN) {
> +                       range /= ARM64_MEMSTART_ALIGN;
> +                       memstart_addr -= ARM64_MEMSTART_ALIGN *
> +                                        ((range * memstart_offset_seed) >> 16);
> +               }
> +       }
> +
>         /*
>          * Apply the memory limit if it was set. Since the kernel may be loaded
>          * high up in memory, add back the kernel region that must be accessible
> @@ -428,22 +445,6 @@ void __init arm64_memblock_init(void)
>                 }
>         }
>
> -       if (IS_ENABLED(CONFIG_RANDOMIZE_BASE)) {
> -               extern u16 memstart_offset_seed;
> -               u64 range = linear_region_size -
> -                           (memblock_end_of_DRAM() - memblock_start_of_DRAM());
> -
> -               /*
> -                * If the size of the linear region exceeds, by a sufficient
> -                * margin, the size of the region that the available physical
> -                * memory spans, randomize the linear region as well.
> -                */
> -               if (memstart_offset_seed > 0 && range >= ARM64_MEMSTART_ALIGN) {
> -                       range /= ARM64_MEMSTART_ALIGN;
> -                       memstart_addr -= ARM64_MEMSTART_ALIGN *
> -                                        ((range * memstart_offset_seed) >> 16);
> -               }
> -       }
>
>         /*
>          * Register the kernel text, kernel data, initrd, and initial
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
