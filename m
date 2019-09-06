Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35322AB663
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oQ7gPQ5O47vVF7nP5lF1BsRRQO5nZBujSFa2IxxeieQ=; b=G4e9qWSZYvNE/K
	AeF5r/+DaWdDG92FHWXoH2VhmgVzMWxgSzMeLloQGJxuykgtmyP04PfW3Kg5/CPkNv6Q93NOK+RR9
	AH0L83l1fB7ex+s9VkSBt17kcogVnxFuq/fz4umJVnu7Hbr1jFoQbwwWs6AL3197aRGH8eFyA89rI
	Ys4we4lk3FV+YcbVguvseLqPXz+Vuyf5O9mTe3ZBAuaRip8LSwdyO5i4yL1CO885WqorT59ceXez5
	tf9aO4RBy0fYn30CbHjKzti3uBOX2MAzqJb6U4ZaLaxRf1z4Vi642iOx/L4rpW8WvUSdsNwqpDJTp
	44ZWw386jW2kFWZ+DgHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Bpq-00040h-Ol; Fri, 06 Sep 2019 10:51:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Bpk-0003ze-6B
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:51:17 +0000
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com
 [209.85.208.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C48412070C
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 10:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567767075;
 bh=F40/vyERzL2PLT+u7CNuLPRmvSEYRMi6jl/F1YioOow=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=XC7BjD4hpWNrKK1pOpCRX02SjWQJCOK5gbUvFoli/8DoHFwcrigpVQp1QjIv24WpF
 3hJfKMDgOn65XmIZDcVCGO/8Sr3r8YzUkIFTLavQgHRoyJu9StYgFHDfQQAjBcVc19
 ARQKYejAHq4EGjxZetUnrB+vwDkoilM7UE3eDMcE=
Received: by mail-lj1-f170.google.com with SMTP id a22so5609783ljd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 03:51:14 -0700 (PDT)
X-Gm-Message-State: APjAAAUpzf8CuoMNMYopeXsZaWmlvO8y/Pw0x0baQYTCrObxwoh6h5RD
 f9dxlUHyzJRvBJaPY08GbRISKqPURMukgwtmIso=
X-Google-Smtp-Source: APXvYqwz+PkOkcsh+hE8+0p+GyRXl5rEBYk6E+6at+bWRa6Bvz54E4CXhRKX/zpdsB3GgFZGBaVFW3t88k1Ohu8cSYo=
X-Received: by 2002:a2e:8785:: with SMTP id n5mr1760238lji.210.1567767072972; 
 Fri, 06 Sep 2019 03:51:12 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190906101405eucas1p2e3da7b461810a3a520e76c636a06e486@eucas1p2.samsung.com>
 <20190906101344.3535-1-l.luba@partner.samsung.com>
 <20190906101344.3535-2-l.luba@partner.samsung.com>
In-Reply-To: <20190906101344.3535-2-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 6 Sep 2019 12:51:01 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdLhrvqR==k4a9w9cmdnwGRYaTXC1ya+vOeVaGpML0zcQ@mail.gmail.com>
Message-ID: <CAJKOXPdLhrvqR==k4a9w9cmdnwGRYaTXC1ya+vOeVaGpML0zcQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] memory: Exynos5422: minor fixes in DMC
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_035116_789735_9DBB8F9B 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 willy.mh.wolff.ml@gmail.com,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 6 Sep 2019 at 12:14, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> Small fixes captured by static analyzes.

Explain please what are the errors being fixed. Additionally error
message from tool might be useful.

Also:
Reported-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof

> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  drivers/memory/samsung/exynos5422-dmc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
> index 8c2ec29a7d57..a809fa997c03 100644
> --- a/drivers/memory/samsung/exynos5422-dmc.c
> +++ b/drivers/memory/samsung/exynos5422-dmc.c
> @@ -269,7 +269,7 @@ static int exynos5_init_freq_table(struct exynos5_dmc *dmc,
>         return 0;
>
>  err_free_tables:
> -       kfree(dmc->opp);
> +       devm_kfree(dmc->dev, dmc->opp);
>  err_opp:
>         dev_pm_opp_of_remove_table(dmc->dev);
>
> @@ -732,7 +732,7 @@ static struct devfreq_dev_profile exynos5_dmc_df_profile = {
>   * statistics engine which supports only registered values. Thus, some alignment
>   * must be made.
>   */
> -unsigned long
> +static unsigned long
>  exynos5_dmc_align_init_freq(struct exynos5_dmc *dmc,
>                             unsigned long bootloader_init_freq)
>  {
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
