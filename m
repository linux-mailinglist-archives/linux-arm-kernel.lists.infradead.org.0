Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D491746B1D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3NqLi3noQhscEuEIcpdthWMQjf7jWONoRYi2s4YDzY=; b=KGVwT2RQfRpyxz
	L7xsbKMIdrN2DSkyfc8X5xD60KdkwsiU8mvLpv0oGe3AmsCJLL/HZCytapEsbm9UA9yNLXk93vMhl
	fYPCCQ6Fho3PLJfZtwtFYQo8ZVb8DVnQyRm57Ms8W2dhl5HcmDmHLRaQ98IPOYXVKCjEg2jz8ekFy
	vcZLjq3rrPtJCzFMu978PdHnEzsU2M4SCsGlSaUIOWKIWhyVHtRw+nFRMjP29uqGTcjoIonGpRm7Z
	bP90si6ZyMhLYU3PLcYKwJiQECqB8rvyD67GNmVZ9fIhza5ESt39xZBTuRoYEKvFzWApOeyuv4tEt
	zy+GJRn1Pj1NsNSE/nJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt0M-000075-Fc; Fri, 14 Jun 2019 20:40:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswU-00042H-AL
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:36:59 +0000
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E25621871
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 20:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560544617;
 bh=BMo9z7ktz9HuAZSsZMrvij5s/QTJTao6137g4UhlIgs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vWedKb+jbEbTSmw49dIs6fTCJMj1eNLfzV8lZhNRiHHoNikTzq2f3wdnIMZkVCQyL
 knYe1cDPqn1d10QezlNcqa/UafNrHuBUfY7wb2TBsdKdscj2QcfL0si88DVa5eR8xe
 an96ZnAgozIFPA2aIN/tmAjrRvruXjj6fWhglrLM=
Received: by mail-qt1-f180.google.com with SMTP id a15so4019938qtn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:36:57 -0700 (PDT)
X-Gm-Message-State: APjAAAXJ52LMOF4sWGBjSAjDwjCflUSbULTFwTU77zd3yp1sobUlF8kE
 Nh7Zw/SqVXkWQkyqww8TrRWoCSUNzOu7LeuhJg==
X-Google-Smtp-Source: APXvYqyWRzWEZ0HIsQNXaYvRLs4N5ZiA6PSR36infTnI62eYz0wn0LN3U9LzbcQ569w7rU4GDgO6FBTD8OY61VcRQO8=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr10202928qve.72.1560544616863; 
 Fri, 14 Jun 2019 13:36:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-1-joseph.kogut@gmail.com>
 <20190614203144.3850-2-joseph.kogut@gmail.com>
In-Reply-To: <20190614203144.3850-2-joseph.kogut@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 14 Jun 2019 14:36:45 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJjqCRU2a9sfMimTJoMQnR6CjqAqjHRAxyaebWAad299g@mail.gmail.com>
Message-ID: <CAL_JsqJjqCRU2a9sfMimTJoMQnR6CjqAqjHRAxyaebWAad299g@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
To: Joseph Kogut <joseph.kogut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133658_378585_AA4D80E5 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 David Airlie <airlied@linux.ie>, dri-devel <dri-devel@lists.freedesktop.org>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 14, 2019 at 2:31 PM Joseph Kogut <joseph.kogut@gmail.com> wrote:
>
> Add device tree node for mali gpu on Odroid XU3 SoCs.
>
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
>  .../boot/dts/exynos5422-odroidxu3-common.dtsi  | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> index 93a48f2dda49..1f2ae19d01af 100644
> --- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> +++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> @@ -48,6 +48,24 @@
>                 cooling-levels = <0 130 170 230>;
>         };
>
> +       gpu: gpu@11800000 {
> +               compatible = "samsung,exynos-mali", "arm,mali-t628";
> +               reg = <0x11800000 0x5000>;
> +               interrupts = <0 117 0>,
> +                            <0 219 0>,
> +                            <0 74  0>;
> +               interrupt-names = "gpu", "job", "mmu";

Please use the order defined in the binding doc.

> +               clocks = <&clock CLK_G3D>,
> +                        <&clock CLK_DOUT_ACLK_G3D>,
> +                        <&clock CLK_FOUT_VPLL>;

The binding doc says a single clock.

> +               mali-supply = <&buck4_reg>;
> +               operating-points = <

The binding doc says operating-points-v2.

> +                       /* KHz  uV   */
> +                       600000  1150000
> +                       177000  812500
> +               >;
> +       };
> +
>         thermal-zones {
>                 cpu0_thermal: cpu0-thermal {
>                         thermal-sensors = <&tmu_cpu0 0>;
> --
> 2.22.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
