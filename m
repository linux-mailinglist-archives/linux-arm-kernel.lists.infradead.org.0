Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8314EFED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 22:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTrH/kMFGtj9eIHFjoTEoqp61P/Rha8uLlL+7nEJn2c=; b=atUAB5gUjByauf
	lKUT8ZWdRj/g7HXl1DRL92gDOiQpRtCDfcfWtGb7sSPyVZrxGhhnUu790NOkIFPrsMWsVbWkLrg/q
	M4xfGEk6dqdPHPdEKn11S8oohUjO7Ryin8AnTfVMet1Tt+ktMHavi2CQhoyuKY/BF/z+1c22GyJBW
	8OfnfvJSFvZErziKKdzXXuUd8CNDS4y2mRurbOlpNq2XGHxok4v9dnYyxAgqAkUNy4NGH0IL3K8Lw
	cl5PtHpLAVXB0KIC5R5yVs+ucYnwXDg18O+/9plv1Q4Pn6tibnlsQxXlywRV9UAqw9Xh04bR7vzdO
	2aLO0VWXCOx26/LHbuGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hePx6-0004m6-QJ; Fri, 21 Jun 2019 20:16:04 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hePwu-0004l0-1c
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 20:15:54 +0000
Received: by mail-ot1-x343.google.com with SMTP id d17so7515745oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 21 Jun 2019 13:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Mzt2KqaKRns439nf1E0NkuZmvKiRIAINQSETZ97d2PM=;
 b=ImlsjQ/rYDPh01yLV/h4IoJNfeNXruc4vXFeH+bJvYhHCuw3SKYEgWl4abUTP2QvxN
 MfJrHQdgcmbD3KfXnQIjyt1wZ9sm8L9FaXP+wsXlc/YQuy8Utz4XVap35YA5b7d1c4K2
 OG+EiVNBoswmXAheOG9KDVkROd8tlscncA8Kri59jZpz/MoodvfLn7qn5e31GgjK+Jdi
 1ohMEzsUA+Snmy9b5lCtBkOLAp/a4HuD74VFksj6ASBEXwdeEz1B26tthpC7Dq8dLm4c
 upJD0HbKhjEu+zmZ0IxXeqlk1Zkz/n+kFxgq0jMitXgAIOkCkgHo1NNnOfAX+0BlJYWg
 8BXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Mzt2KqaKRns439nf1E0NkuZmvKiRIAINQSETZ97d2PM=;
 b=kDWzPnj6lauE1v/HXlwZdlUfjwlWL2MdR4a07g/d0yIeTgwtJrFho4HaX4ettMwQlo
 pgrfsrmFyj0QXOvuwX7/+dd7jr6ARbn56EX4KhEjKSOYDYOpj4TzeEGvWPhSp/oIt2RN
 c9sZIGjkgw6ug4KOJWjHAIYVgqP4Ghxsxp5vg2k1WVF7Xi04Jt9QqbeTuyaEsi8nlO3h
 QREYOVvSEiFl5k3M5HswPO6Cz+fNs00U1PLdjNQjnPfWhMQGWN53Z+Lw9sBLGqzlpzOR
 g5wr54PgdziUQ8SDmohivYmpOMl0YYNcTV3fhyxRicrRlgnpdaj598Qtfhg5Hxez3JZ1
 O8Tg==
X-Gm-Message-State: APjAAAX4+Qs0KEocHzwcbwRJwl5ZukN1IEuEiOojdnBIWsUXffGYSAme
 q1QwHaIHNSJiWRaSQmIa/Zadkj5HnYSLVxdX2JE=
X-Google-Smtp-Source: APXvYqzBDkZojNKB/k/9/UKU9XV3h8B9Iu/jGst1/MhqDi2Rm9U75jItEMKKU9mKHMTcTPQHa6+GWsisq10Bm12yFno=
X-Received: by 2002:a9d:d87:: with SMTP id 7mr76241164ots.263.1561148150749;
 Fri, 21 Jun 2019 13:15:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190621180208.25361-1-krzk@kernel.org>
 <20190621180208.25361-7-krzk@kernel.org>
In-Reply-To: <20190621180208.25361-7-krzk@kernel.org>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Fri, 21 Jun 2019 13:15:35 -0700
Message-ID: <CA+E=qVe45NVCfpSHRF6=0aYRpURZA4DVz8W-XkSaNDB=1mX2kA@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] arm64: defconfig: Enable Panfrost driver
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_131552_112417_9734C387 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Inki Dae <inki.dae@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Olof Johansson <olof@lixom.net>,
 Joseph Kogut <joseph.kogut@gmail.com>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 11:04 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> Enable support for Mali GPU with Panfrost driver, e.g. for Exynos5433
> and Exynos7 (having Mali T760).
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  arch/arm64/configs/defconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 6b4f5cf23324..972b17239f13 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -517,6 +517,7 @@ CONFIG_DRM_HISI_HIBMC=m
>  CONFIG_DRM_HISI_KIRIN=m
>  CONFIG_DRM_MESON=m
>  CONFIG_DRM_PL111=m
> +CONFIG_DRM_PANFROST=m

It makes sense to enable lima for arm64 defconfig as well since it's
used on number of 64-bit Allwinner SoCs.

>  CONFIG_FB=y
>  CONFIG_FB_MODE_HELPERS=y
>  CONFIG_BACKLIGHT_GENERIC=m
> @@ -717,7 +718,6 @@ CONFIG_ARCH_TEGRA_194_SOC=y
>  CONFIG_ARCH_K3_AM6_SOC=y
>  CONFIG_SOC_TI=y
>  CONFIG_TI_SCI_PM_DOMAINS=y
> -CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND=y
>  CONFIG_EXTCON_USB_GPIO=y
>  CONFIG_EXTCON_USBC_CROS_EC=y
>  CONFIG_MEMORY=y
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
