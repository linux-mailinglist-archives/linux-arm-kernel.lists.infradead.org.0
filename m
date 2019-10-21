Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B9CDF274
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDhrzzAFvn3T7mUkiTiikW5RWsui5zuWgiOkRm95peE=; b=skJ9BaBaV3p1F1
	ZT3XGSFM2Kqp9jLAkyZfG2kTHi0Z1MLOr6aNvthVMOOMiwG8nOPB9pqdZcuDexZsCr2/Na8Fx0zvT
	ii72HQxlopbOPoNJe5TeFmc1dtuXjd0ToTbnO8u6lNgEoO042ZUJzPViibkuiBXv6xw8avGBgdyUS
	bs4uhRkqT+QHVjis4cDtSONDT/OLMFpTcIpGYfLOmnQWrPBSC/AKllyeqwgROnEX38B5Ly9JMmc5g
	YlBB8X/vZ2A+UpoFAyr1gSQY4ABA6GKtwp50Rz9oc7M2TRo9gWCPOpvLzSkjhhzwl/sUbXeiOsQrs
	d1/0P2xSjWpGb4m4dqAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaEA-0006eZ-1G; Mon, 21 Oct 2019 16:08:14 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaE0-0006dF-Hr
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 16:08:05 +0000
Received: by mail-io1-xd42.google.com with SMTP id z19so16643275ior.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 09:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QoGVt8z7Xqona1SxpdHTyw3J7LGidBEFHR42VoLXFRU=;
 b=KmpFriVhTnDG86I3PIVY7uzgzRy5yfikd7/rJhKkmbBgCaPm4gLz2slAO5cKIIY42E
 lkCegMnUc9yLmebmqGeZ1JzKwJ2IVjk0HBw5rnvqWEHbVYUa+rPnoKqr4vWybDnAjMKO
 v0lkXShVt/n67sMopyAsRw/A9wOUXwZ4Ghovwt9NJXto8fTLOHbd6oNM2jeXq5ACrDCw
 KbZeKbBY2UEa8u4dug26zfSJkkuymjBxHB8aX4P8fjLvj1Zr5UIDfbI40h2x6+F0uo4C
 HqBszL0hl5fflm+3AHi71b2WXVQICuHQ9z9DoVQhCNjg7Pwa3I754JbKsPY2TSQvM19I
 Q3tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QoGVt8z7Xqona1SxpdHTyw3J7LGidBEFHR42VoLXFRU=;
 b=uk3SsAYdE1/y5M21HTrwReYvZs5P2l2o99VCb5SmSVqJwFphrpJn7ST/h0hyO3UhUR
 dxqxdmhWZ+VpzXKerogrYTvNqQPcAvfuU8v9ZC8NDbqHj06USuyAbs5bhYYz0lAXRZE+
 yxaNV8hR8GdAckw94+vx/Bb3NmB92ae9UIXcEP94oNhl+04Q1mQhmYgbH853JH1YUso5
 m9SHO7mHZr1X9TUCDd0x6j+qDvSsVsHl69BGirA4JwzVfDoroPxvnfLne5B3n79RH0rO
 FH0J8ygSlY6DqFkjZnWOpAc4MJ33W2Lb4syrq6MWTmhd/mwOokY0tqG7a607HYSBcrMk
 8p4w==
X-Gm-Message-State: APjAAAXezVL+GtigG4H7SQMdoPypl7nSunhdpwf6tl8wSqZdVF7863+p
 umUZ6OBeoLC9RaNQi1JxO/IUslItxjnCUuhn2IM=
X-Google-Smtp-Source: APXvYqwkUZqqEAi78M4CToxxX7LrSOewa0chx6aLK0CEbG9exQ6nzm5udY+EvrqO/8UmQn0n0KKFAHXzewx9LjlwqLQ=
X-Received: by 2002:a5d:8991:: with SMTP id m17mr22588160iol.106.1571674080766; 
 Mon, 21 Oct 2019 09:08:00 -0700 (PDT)
MIME-Version: 1.0
References: <20191021151440.13505-1-krzk@kernel.org>
In-Reply-To: <20191021151440.13505-1-krzk@kernel.org>
From: Alim Akhtar <alim.akhtar@gmail.com>
Date: Mon, 21 Oct 2019 21:37:24 +0530
Message-ID: <CAGOxZ531SdYcud3nQ-6hbCRZptUYznTRajVyxwEi-mFmm8-zPg@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: exynos: Rename children of SysRAM node to "sram"
To: Krzysztof Kozlowski <krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_090804_593571_997744A6 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alim.akhtar[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 8:45 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> The device node name should reflect generic class of a device so rename
> the children of SysRAM node to "smp-sysram".  This will be also in sync
Typo "smp-sram"
> with upcoming DT schema.  No functional change.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
Looks good to me.

>  arch/arm/boot/dts/exynos3250.dtsi               | 4 ++--
>  arch/arm/boot/dts/exynos4210-universal_c210.dts | 6 +++---
>  arch/arm/boot/dts/exynos4210.dtsi               | 4 ++--
>  arch/arm/boot/dts/exynos4412.dtsi               | 4 ++--
>  arch/arm/boot/dts/exynos5250.dtsi               | 4 ++--
>  arch/arm/boot/dts/exynos54xx.dtsi               | 4 ++--
>  6 files changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/arch/arm/boot/dts/exynos3250.dtsi b/arch/arm/boot/dts/exynos3250.dtsi
> index b016b0b68306..044e5da64a76 100644
> --- a/arch/arm/boot/dts/exynos3250.dtsi
> +++ b/arch/arm/boot/dts/exynos3250.dtsi
> @@ -145,12 +145,12 @@
>                         #size-cells = <1>;
>                         ranges = <0 0x02020000 0x40000>;
>
> -                       smp-sysram@0 {
> +                       smp-sram@0 {
>                                 compatible = "samsung,exynos4210-sysram";
>                                 reg = <0x0 0x1000>;
>                         };
>
> -                       smp-sysram@3f000 {
> +                       smp-sram@3f000 {
>                                 compatible = "samsung,exynos4210-sysram-ns";
>                                 reg = <0x3f000 0x1000>;
>                         };
> diff --git a/arch/arm/boot/dts/exynos4210-universal_c210.dts b/arch/arm/boot/dts/exynos4210-universal_c210.dts
> index 09d3d54d09ff..a1bdf7830a87 100644
> --- a/arch/arm/boot/dts/exynos4210-universal_c210.dts
> +++ b/arch/arm/boot/dts/exynos4210-universal_c210.dts
> @@ -590,16 +590,16 @@
>  };
>
>  &sysram {
> -       smp-sysram@0 {
> +       smp-sram@0 {
>                 status = "disabled";
>         };
>
> -       smp-sysram@5000 {
> +       smp-sram@5000 {
>                 compatible = "samsung,exynos4210-sysram";
>                 reg = <0x5000 0x1000>;
>         };
>
> -       smp-sysram@1f000 {
> +       smp-sram@1f000 {
>                 status = "disabled";
>         };
>  };
> diff --git a/arch/arm/boot/dts/exynos4210.dtsi b/arch/arm/boot/dts/exynos4210.dtsi
> index 554819ae1446..b4466232f0c1 100644
> --- a/arch/arm/boot/dts/exynos4210.dtsi
> +++ b/arch/arm/boot/dts/exynos4210.dtsi
> @@ -79,12 +79,12 @@
>                         #size-cells = <1>;
>                         ranges = <0 0x02020000 0x20000>;
>
> -                       smp-sysram@0 {
> +                       smp-sram@0 {
>                                 compatible = "samsung,exynos4210-sysram";
>                                 reg = <0x0 0x1000>;
>                         };
>
> -                       smp-sysram@1f000 {
> +                       smp-sram@1f000 {
>                                 compatible = "samsung,exynos4210-sysram-ns";
>                                 reg = <0x1f000 0x1000>;
>                         };
> diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
> index 5022aa574b26..48868947373e 100644
> --- a/arch/arm/boot/dts/exynos4412.dtsi
> +++ b/arch/arm/boot/dts/exynos4412.dtsi
> @@ -195,12 +195,12 @@
>                         #size-cells = <1>;
>                         ranges = <0 0x02020000 0x40000>;
>
> -                       smp-sysram@0 {
> +                       smp-sram@0 {
>                                 compatible = "samsung,exynos4210-sysram";
>                                 reg = <0x0 0x1000>;
>                         };
>
> -                       smp-sysram@2f000 {
> +                       smp-sram@2f000 {
>                                 compatible = "samsung,exynos4210-sysram-ns";
>                                 reg = <0x2f000 0x1000>;
>                         };
> diff --git a/arch/arm/boot/dts/exynos5250.dtsi b/arch/arm/boot/dts/exynos5250.dtsi
> index e1f0215e3985..ec983283f573 100644
> --- a/arch/arm/boot/dts/exynos5250.dtsi
> +++ b/arch/arm/boot/dts/exynos5250.dtsi
> @@ -171,12 +171,12 @@
>                         #size-cells = <1>;
>                         ranges = <0 0x02020000 0x30000>;
>
> -                       smp-sysram@0 {
> +                       smp-sram@0 {
>                                 compatible = "samsung,exynos4210-sysram";
>                                 reg = <0x0 0x1000>;
>                         };
>
> -                       smp-sysram@2f000 {
> +                       smp-sram@2f000 {
>                                 compatible = "samsung,exynos4210-sysram-ns";
>                                 reg = <0x2f000 0x1000>;
>                         };
> diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
> index f78dee801cd9..8aa5117e58ce 100644
> --- a/arch/arm/boot/dts/exynos54xx.dtsi
> +++ b/arch/arm/boot/dts/exynos54xx.dtsi
> @@ -62,12 +62,12 @@
>                         #size-cells = <1>;
>                         ranges = <0 0x02020000 0x54000>;
>
> -                       smp-sysram@0 {
> +                       smp-sram@0 {
>                                 compatible = "samsung,exynos4210-sysram";
>                                 reg = <0x0 0x1000>;
>                         };
>
> -                       smp-sysram@53000 {
> +                       smp-sram@53000 {
>                                 compatible = "samsung,exynos4210-sysram-ns";
>                                 reg = <0x53000 0x1000>;
>                         };
> --
> 2.17.1
>


-- 
Regards,
Alim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
