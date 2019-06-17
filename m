Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCBA248DC3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 21:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YEdVVhyO7FZqh2l62kORR9QvDkMVpXPJBPENtWBC+ms=; b=JHPon+06lofzuJ
	7Vd8w6fYHbNO966XHhUTM5fwfb/bCMO4IA0ep1kn0/0g9sXhXGpWol3v1EXruhaNOYIw53PKPQvgA
	5JM21m9eXh7LOMH/O/QyK1zjKs+gg0Zf5LCd/sXwS7cF5rDYbH1rphCX/55G6NnGWKLGdbYnhKblx
	Wb7IWUR29SBiZYqhr4HzdE5ZMx9+FcbT/akRGFCZHfnP08BsX1OtB1irnLbE2Ut/g+6AaJfB93unP
	CG1xih7wh/3XZ/sKglYsoJQTeMzUwt1VLenki1lVdrVacv8WAIrIan0n6OnTpjg2MOSObSDzz1xA1
	NtMVQzjKA1Qf/BX3giLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcx7l-0006OX-Qg; Mon, 17 Jun 2019 19:17:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcx7V-0006Mw-UC
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 19:16:47 +0000
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com
 [209.85.160.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8ED98208C0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 19:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560799004;
 bh=Gt19uq+qmreWDS4gPNgKL+i/1lZeWJVrbTndQXm88hA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ygI4mXZ4FK/DIAC0x67TCpM/GLGF7iIf6vOaeEfsnPSMNoQfK28rgck+5RB2qRpEO
 CMsaZVg4ehzf/O4mj+wCZIvyxGeQNNkRPycGzlVa9w80eY/UyXxP7tixjhKDXtQyHL
 YyRUpu5ryCwzuA+MoSUQrA/vBH4C2sSnqAWyYbSw=
Received: by mail-qt1-f173.google.com with SMTP id x47so12131522qtk.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 12:16:44 -0700 (PDT)
X-Gm-Message-State: APjAAAUTWX0PMH2+7uD2S0KeHyv7Dpw7gIb0uAl6AohAYhdhzvLbEjZa
 vo+ThPJXfBK+aEtt4jR7uqQGd8dBRi9CkNEBeg==
X-Google-Smtp-Source: APXvYqyVZbh0PlMogbVhE0NULb2YNLy3fCj6PKe8704XokjeEqmm6eZIegjHmk/tzMvMCwl9xNlf5j9cXMv6fjsBPAU=
X-Received: by 2002:ac8:368a:: with SMTP id a10mr13618835qtc.143.1560799003868; 
 Mon, 17 Jun 2019 12:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190614203144.3850-2-joseph.kogut@gmail.com>
 <20190614235719.8134-1-joseph.kogut@gmail.com>
In-Reply-To: <20190614235719.8134-1-joseph.kogut@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Mon, 17 Jun 2019 13:16:31 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKasi4m7xU2AF1YQk-Tp0Z6=qh51LgTpb=xiZ9g6A3HvA@mail.gmail.com>
Message-ID: <CAL_JsqKasi4m7xU2AF1YQk-Tp0Z6=qh51LgTpb=xiZ9g6A3HvA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm: dts: add ARM Mali GPU node for Odroid XU3
To: Joseph Kogut <joseph.kogut@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_121646_270707_0BBE1DA7 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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

On Fri, Jun 14, 2019 at 5:57 PM Joseph Kogut <joseph.kogut@gmail.com> wrote:
>
> Add device tree node for mali gpu on Odroid XU3 SoCs.
>
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
>
> Changes v1 -> v2:
> - Use interrupt name ordering from binding doc
> - Specify a single clock for GPU node
> - Add gpu opp table
> - Fix warnings from IRQ_TYPE_NONE
>
>  .../boot/dts/exynos5422-odroidxu3-common.dtsi | 26 +++++++++++++++++++
>  1 file changed, 26 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> index 93a48f2dda49..b8a4246e3b37 100644
> --- a/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> +++ b/arch/arm/boot/dts/exynos5422-odroidxu3-common.dtsi
> @@ -48,6 +48,32 @@
>                 cooling-levels = <0 130 170 230>;
>         };
>
> +       gpu: gpu@11800000 {
> +               compatible = "samsung,exynos-mali", "arm,mali-t628";
> +               reg = <0x11800000 0x5000>;
> +               interrupts = <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> +                            <GIC_SPI 74  IRQ_TYPE_LEVEL_HIGH>,
> +                            <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +               interrupt-names = "job", "mmu", "gpu";
> +               clocks = <&clock CLK_G3D>;
> +               mali-supply = <&buck4_reg>;
> +               operating-points-v2 = <&gpu_opp_table>;
> +       };
> +
> +       gpu_opp_table: gpu-opp-table {

Not really a new problem in this file, but you are mixing nodes with
and without an address and really the gpu node should be under a
simple-bus node.

If the OPP is only for the GPU, I'd make it a child of the gpu node instead.

> +               compatible = "operating-points-v2";
> +
> +               opp-177000000 {
> +                       opp-hz = /bits/ 64 <117000000>;
> +                       opp-microvolt = <812500>;
> +               };
> +
> +               opp-600000000 {
> +                       opp-hz = /bits/ 64 <600000000>;
> +                       opp-microvolt = <1150000>;
> +               };
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
