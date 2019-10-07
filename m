Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8117CEA37
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:10:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc2bXw9KIwJqUWA0otfTeR/QMB4U5griwADtwbd4Fpc=; b=p5iQfEbnN4nweR
	ldt0hv9XIBueZgAYViDNB2qe+utkMq7mXIsakKcUZ11SnUux0rWBzKa0r+z+nlPLdFnzMEFJ1hqAM
	M8u5PhMXnIbZ+Fa9JNVSu3oxZaymD9mgx3JslcZGE9lOjonFrDoI+pTfMQO5kfAYJ0Uv4x/+R5Nx9
	2WOdg15vgs80neBerENtcwU14laJIoHwZClnGkI+umIYB2CF2NvjR3N5MmginJGvit4vU1EKd1nKL
	bK9EVTeU4p3P30KDoaj3KZ6WkUz88SYOAkIx/w/QG5ddFjewMvQxCvTuZ9lOZDypz2tBh0IRsWiDb
	PkS9xKZUFol0swGA2EMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWW7-0005Ls-8g; Mon, 07 Oct 2019 17:09:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWVy-0005Ke-9j
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 17:09:44 +0000
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
 [209.85.208.175])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 67FA121479
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  7 Oct 2019 17:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570468181;
 bh=sEUyCrkWSJhUAah+kIOaxdt7uVOhlnp+VLGnLHpIjVQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=ATaDT6kBWMNjukC/v/xuTue6EoXEpuIRJV2osq04lQ9SO6aes/2hdxPxkHoQlSfE/
 Vi3r8BZKZQCx521H+zrpoi4RXtkHoKWQJRsC9wM1m5XRl7DARdZYaGUSXuMZqMhUtR
 XsKHHvf3LrQpfIG4qAaaeZmaxPTWHFVzEptLQdHM=
Received: by mail-lj1-f175.google.com with SMTP id m7so14521029lji.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 10:09:41 -0700 (PDT)
X-Gm-Message-State: APjAAAU7XKwdd7gUbbP59Lyn2Kr8Fj1ibFy7oYCLD8NE2sMw2ximCzjS
 Cbv9IdtOmt+01V6XkSFO1df2XpiFXqv/nHr+d6s=
X-Google-Smtp-Source: APXvYqxsj2x2Dds3Uzee66b/2onTiWHkAnOmZ53UVQGb37tOsYvxS4qruO2qWrwZKDnFs80J+RochL5wu/NKYF+dsQE=
X-Received: by 2002:a2e:a0cd:: with SMTP id f13mr19200320ljm.93.1570468179431; 
 Mon, 07 Oct 2019 10:09:39 -0700 (PDT)
MIME-Version: 1.0
References: <5d9a8a3c.1c69fb81.14b6f.10d1@mx.google.com>
In-Reply-To: <5d9a8a3c.1c69fb81.14b6f.10d1@mx.google.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Mon, 7 Oct 2019 19:09:27 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeZQ_hZqUdtFrr-wGiwdM4KVjD_7CArEWhZgo+1EJPqew@mail.gmail.com>
Message-ID: <CAJKOXPeZQ_hZqUdtFrr-wGiwdM4KVjD_7CArEWhZgo+1EJPqew@mail.gmail.com>
Subject: Re: krzysztof/for-next boot bisection: v5.4-rc1-48-g0bc9c79979ea on
 peach-pi
To: "kernelci.org bot" <bot@kernelci.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_100942_386384_836BDBD0 
X-CRM114-Status: GOOD (  19.00  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Kukjin Kim <kgene@kernel.org>, tomeu.vizoso@collabora.com,
 guillaume.tucker@collabora.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 broonie@kernel.org, matthew.hart@linaro.org, mgalka@collabora.com,
 enric.balletbo@collabora.com,
 Kamil Konieczny <k.konieczny@partner.samsung.com>, khilman@baylibre.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 7 Oct 2019 at 02:43, kernelci.org bot <bot@kernelci.org> wrote:
>
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
> * This automated bisection report was sent to you on the basis  *
> * that you may be involved with the breaking commit it has      *
> * found.  No manual investigation has been done to verify it,   *
> * and the root cause of the problem may be somewhere else.      *
> *                                                               *
> * If you do send a fix, please include this trailer:            *
> *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
> *                                                               *
> * Hope this helps!                                              *
> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>
> krzysztof/for-next boot bisection: v5.4-rc1-48-g0bc9c79979ea on peach-pi
>
> Summary:
>   Start:      0bc9c79979ea Merge branch 'for-v5.5/memory-samsung-dmc-dt' into for-next
>   Details:    https://kernelci.org/boot/id/5d9a50af59b5141ce5857c07
>   Plain log:  https://storage.kernelci.org//krzysztof/for-next/v5.4-rc1-48-g0bc9c79979ea/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-exynos5800-peach-pi.txt
>   HTML log:   https://storage.kernelci.org//krzysztof/for-next/v5.4-rc1-48-g0bc9c79979ea/arm/multi_v7_defconfig/gcc-8/lab-collabora/boot-exynos5800-peach-pi.html
>   Result:     0899a480ac65 ARM: dts: exynos: Add initial data for coupled regulators for Exynos5422/5800

Thanks for the report. Marek Szyprowski reported it on last Friday. I
dropped the patch as of now as it exposes some deadlock in regulator
code.

Best regards,
Krzysztof

>
> Checks:
>   revert:     PASS
>   verify:     PASS
>
> Parameters:
>   Tree:       krzysztof
>   URL:        https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux.git
>   Branch:     for-next
>   Target:     peach-pi
>   CPU arch:   arm
>   Lab:        lab-collabora
>   Compiler:   gcc-8
>   Config:     multi_v7_defconfig
>   Test suite: boot
>
> Breaking commit found:
>
> -------------------------------------------------------------------------------
> commit 0899a480ac658144b1fa351bb880c2858d43f824
> Author: Marek Szyprowski <m.szyprowski@samsung.com>
> Date:   Thu Oct 3 12:08:14 2019 +0200
>
>     ARM: dts: exynos: Add initial data for coupled regulators for Exynos5422/5800
>
>     Declare Exynos5422/5800 voltage ranges for opp points for big cpu core and
>     bus wcore and couple their voltage supllies as vdd_arm and vdd_int should
>     be in 300mV range.
>
>     Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>     [k.konieczny: add missing patch description]
>     Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
>     Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
>     Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
> index 2c131ad78c09..d08101b1018c 100644
> --- a/arch/arm/boot/dts/exynos5420.dtsi
> +++ b/arch/arm/boot/dts/exynos5420.dtsi
> @@ -48,62 +48,62 @@
>
>                 opp-1800000000 {
>                         opp-hz = /bits/ 64 <1800000000>;
> -                       opp-microvolt = <1250000>;
> +                       opp-microvolt = <1250000 1250000 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-1700000000 {
>                         opp-hz = /bits/ 64 <1700000000>;
> -                       opp-microvolt = <1212500>;
> +                       opp-microvolt = <1212500 1212500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-1600000000 {
>                         opp-hz = /bits/ 64 <1600000000>;
> -                       opp-microvolt = <1175000>;
> +                       opp-microvolt = <1175000 1175000 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-1500000000 {
>                         opp-hz = /bits/ 64 <1500000000>;
> -                       opp-microvolt = <1137500>;
> +                       opp-microvolt = <1137500 1137500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-1400000000 {
>                         opp-hz = /bits/ 64 <1400000000>;
> -                       opp-microvolt = <1112500>;
> +                       opp-microvolt = <1112500 1112500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-1300000000 {
>                         opp-hz = /bits/ 64 <1300000000>;
> -                       opp-microvolt = <1062500>;
> +                       opp-microvolt = <1062500 1062500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-1200000000 {
>                         opp-hz = /bits/ 64 <1200000000>;
> -                       opp-microvolt = <1037500>;
> +                       opp-microvolt = <1037500 1037500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-1100000000 {
>                         opp-hz = /bits/ 64 <1100000000>;
> -                       opp-microvolt = <1012500>;
> +                       opp-microvolt = <1012500 1012500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-1000000000 {
>                         opp-hz = /bits/ 64 <1000000000>;
> -                       opp-microvolt = < 987500>;
> +                       opp-microvolt = < 987500 987500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-900000000 {
>                         opp-hz = /bits/ 64 <900000000>;
> -                       opp-microvolt = < 962500>;
> +                       opp-microvolt = < 962500 962500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-800000000 {
>                         opp-hz = /bits/ 64 <800000000>;
> -                       opp-microvolt = < 937500>;
> +                       opp-microvolt = < 937500 937500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>                 opp-700000000 {
>                         opp-hz = /bits/ 64 <700000000>;
> -                       opp-microvolt = < 912500>;
> +                       opp-microvolt = < 912500 912500 1500000>;
>                         clock-latency-ns = <140000>;
>                 };
>         };
> @@ -1097,23 +1097,23 @@
>
>                         opp00 {
>                                 opp-hz = /bits/ 64 <84000000>;
> -                               opp-microvolt = <925000>;
> +                               opp-microvolt = <925000 925000 1400000>;
>                         };
>                         opp01 {
>                                 opp-hz = /bits/ 64 <111000000>;
> -                               opp-microvolt = <950000>;
> +                               opp-microvolt = <950000 950000 1400000>;
>                         };
>                         opp02 {
>                                 opp-hz = /bits/ 64 <222000000>;
> -                               opp-microvolt = <950000>;
> +                               opp-microvolt = <950000 950000 1400000>;
>                         };
>                         opp03 {
>                                 opp-hz = /bits/ 64 <333000000>;
> -                               opp-microvolt = <950000>;
> +                               opp-microvolt = <950000 950000 1400000>;
>                         };
>                         opp04 {
>                                 opp-hz = /bits/ 64 <400000000>;
> -                               opp-microvolt = <987500>;
> +                               opp-microvolt = <987500 987500 1400000>;
>                         };
>                 };
>
> diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> index 829147e320e0..9b8de61b0385 100644
> --- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> +++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> @@ -524,6 +524,8 @@
>                                 regulator-max-microvolt = <1400000>;
>                                 regulator-always-on;
>                                 regulator-boot-on;
> +                               regulator-coupled-with = <&buck2_reg>;
> +                               regulator-coupled-max-spread = <300000>;
>
>                                 regulator-state-mem {
>                                         regulator-off-in-suspend;
> @@ -544,6 +546,8 @@
>                                 regulator-max-microvolt = <1500000>;
>                                 regulator-always-on;
>                                 regulator-boot-on;
> +                               regulator-coupled-with = <&buck3_reg>;
> +                               regulator-coupled-max-spread = <300000>;
>
>                                 regulator-state-mem {
>                                         regulator-off-in-suspend;
> diff --git a/arch/arm/boot/dts/exynos5800-peach-pi.dts b/arch/arm/boot/dts/exynos5800-peach-pi.dts
> index 60ca3d685247..c1e38139ce4f 100644
> --- a/arch/arm/boot/dts/exynos5800-peach-pi.dts
> +++ b/arch/arm/boot/dts/exynos5800-peach-pi.dts
> @@ -257,6 +257,8 @@
>                                 regulator-always-on;
>                                 regulator-boot-on;
>                                 regulator-ramp-delay = <12500>;
> +                               regulator-coupled-with = <&buck3_reg>;
> +                               regulator-coupled-max-spread = <300000>;
>                                 regulator-state-mem {
>                                         regulator-off-in-suspend;
>                                 };
> @@ -269,6 +271,8 @@
>                                 regulator-always-on;
>                                 regulator-boot-on;
>                                 regulator-ramp-delay = <12500>;
> +                               regulator-coupled-with = <&buck2_reg>;
> +                               regulator-coupled-max-spread = <300000>;
>                                 regulator-state-mem {
>                                         regulator-off-in-suspend;
>                                 };
> diff --git a/arch/arm/boot/dts/exynos5800.dtsi b/arch/arm/boot/dts/exynos5800.dtsi
> index de639eecc5c9..27789f5f9798 100644
> --- a/arch/arm/boot/dts/exynos5800.dtsi
> +++ b/arch/arm/boot/dts/exynos5800.dtsi
> @@ -22,61 +22,61 @@
>
>  &cluster_a15_opp_table {
>         opp-1700000000 {
> -               opp-microvolt = <1250000>;
> +               opp-microvolt = <1250000 1250000 1500000>;
>         };
>         opp-1600000000 {
> -               opp-microvolt = <1250000>;
> +               opp-microvolt = <1250000 1250000 1500000>;
>         };
>         opp-1500000000 {
> -               opp-microvolt = <1100000>;
> +               opp-microvolt = <1100000 1100000 1500000>;
>         };
>         opp-1400000000 {
> -               opp-microvolt = <1100000>;
> +               opp-microvolt = <1100000 1100000 1500000>;
>         };
>         opp-1300000000 {
> -               opp-microvolt = <1100000>;
> +               opp-microvolt = <1100000 1100000 1500000>;
>         };
>         opp-1200000000 {
> -               opp-microvolt = <1000000>;
> +               opp-microvolt = <1000000 1000000 1500000>;
>         };
>         opp-1100000000 {
> -               opp-microvolt = <1000000>;
> +               opp-microvolt = <1000000 1000000 1500000>;
>         };
>         opp-1000000000 {
> -               opp-microvolt = <1000000>;
> +               opp-microvolt = <1000000 1000000 1500000>;
>         };
>         opp-900000000 {
> -               opp-microvolt = <1000000>;
> +               opp-microvolt = <1000000 1000000 1500000>;
>         };
>         opp-800000000 {
> -               opp-microvolt = <900000>;
> +               opp-microvolt = <900000 900000 1500000>;
>         };
>         opp-700000000 {
> -               opp-microvolt = <900000>;
> +               opp-microvolt = <900000 900000 1500000>;
>         };
>         opp-600000000 {
>                 opp-hz = /bits/ 64 <600000000>;
> -               opp-microvolt = <900000>;
> +               opp-microvolt = <900000 900000 1500000>;
>                 clock-latency-ns = <140000>;
>         };
>         opp-500000000 {
>                 opp-hz = /bits/ 64 <500000000>;
> -               opp-microvolt = <900000>;
> +               opp-microvolt = <900000 900000 1500000>;
>                 clock-latency-ns = <140000>;
>         };
>         opp-400000000 {
>                 opp-hz = /bits/ 64 <400000000>;
> -               opp-microvolt = <900000>;
> +               opp-microvolt = <900000 900000 1500000>;
>                 clock-latency-ns = <140000>;
>         };
>         opp-300000000 {
>                 opp-hz = /bits/ 64 <300000000>;
> -               opp-microvolt = <900000>;
> +               opp-microvolt = <900000 900000 1500000>;
>                 clock-latency-ns = <140000>;
>         };
>         opp-200000000 {
>                 opp-hz = /bits/ 64 <200000000>;
> -               opp-microvolt = <900000>;
> +               opp-microvolt = <900000 900000 1500000>;
>                 clock-latency-ns = <140000>;
>         };
>  };
> -------------------------------------------------------------------------------
>
>
> Git bisection log:
>
> -------------------------------------------------------------------------------
> git bisect start
> # good: [2924a93b4c2b1934c0ec59d28f46814a83259f11] Merge branch 'for-v5.5/memory-samsung-dmc-dt' into for-next
> git bisect good 2924a93b4c2b1934c0ec59d28f46814a83259f11
> # bad: [0bc9c79979ea0b607a0751968840483fd296f6ef] Merge branch 'for-v5.5/memory-samsung-dmc-dt' into for-next
> git bisect bad 0bc9c79979ea0b607a0751968840483fd296f6ef
> # bad: [0899a480ac658144b1fa351bb880c2858d43f824] ARM: dts: exynos: Add initial data for coupled regulators for Exynos5422/5800
> git bisect bad 0899a480ac658144b1fa351bb880c2858d43f824
> # good: [56c126e87e2980d5e2ca5d77b28899f8521af9d7] ARM: dts: exynos: Rename SysRAM node to "sram"
> git bisect good 56c126e87e2980d5e2ca5d77b28899f8521af9d7
> # first bad commit: [0899a480ac658144b1fa351bb880c2858d43f824] ARM: dts: exynos: Add initial data for coupled regulators for Exynos5422/5800
> -------------------------------------------------------------------------------

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
