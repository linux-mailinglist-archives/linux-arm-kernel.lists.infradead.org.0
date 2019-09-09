Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E68ADA34
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 15:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2EBx74I4x2MhyAEfn3C/7jZDgN4Y6UB06m8EbpRXYWY=; b=ZcvZzwVoGHRNgV
	Igg9Nxg91+FeyHkr2/twuh9GPnnVHpQSrnrVCP4cIB4owJJw+qmxFqrirD1X5WjlzlRd5nonZOExZ
	rtYJphHmiHMSmYM0gCKNwkgjREa4uuP6RshNHVODPZPZMLKutfy7Hk4wxRIo/vQFNS4tzUMUmF3Rs
	Yua89F4Ch7BAF+Brd2Ev5CiEovbDXdPwMjHsoVGqtJSQQqj3eEdWLrUf+1KJL18Ya7oHwsq1V+SCz
	cr/XL2Rh2MDjza5wh6gUfnWEbmNgx/P4oL/lOg82p10cOMcouygYuxXdotuoNiYQv5APdWWjqr+nI
	LveAd1mFuT1jYdtVclQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JxG-0008WQ-7S; Mon, 09 Sep 2019 13:43:42 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Jx3-0008VY-9I
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 13:43:30 +0000
Received: by mail-io1-xd44.google.com with SMTP id d17so6820897ios.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Sep 2019 06:43:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uj8cYXkJhMazfj5NVd7OEEcgf5lel1QFfUYYz9PuuUg=;
 b=UqN2xHEmmSJ1Tbexwa/6YF0SY6Z9ftkKgsluGYRUfEyaZqnL/bopjFCtdThnhz94wb
 DLnryRY7NutxIOR/1GcLArrU6bmd+HGgbRmoM3KqNSIM9agjAL8Aeru4AkTIb+rrz3v6
 W8bjrNNMgdCn6XSulgErtfETBqXJH/O05uU7OYWzd/j8ubB0w/M/7CLBwmIukwTyVaRk
 Tir3dBK+aqja3hUpyX/IWVMVkRSGIxJ9iHqyKMvCk51Z4EVY8Hi4m0SnEYzVlHV9W4vM
 tnDKLv7EkZLrXKBDsaqBOvsYgiVgwM+AP8dF7rjf+eASRy9Fa9OJobz7Jx4LfjDLnBI/
 00aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uj8cYXkJhMazfj5NVd7OEEcgf5lel1QFfUYYz9PuuUg=;
 b=AnIBiwLolKddo8VDlCWEqb0V7Q1uJNklsezMlqXxb/GVJA59BR1vqmdfMpnXAWaTT9
 Jj4dNDfSJQx4U6r47T7nTQPXR35lXxf8tMUtqZllGqD3wK9yq8bwPJVTK+bbGXqKjsjo
 JuICRh9c98zhHyaiQGRQbARfmZAkBjbHclYBK6WysnSAoOWhpRmONeq+cDMplvOQ4TfD
 vOVmke84ZkumBerATUMXv2Cm+OqplS1f9MvM+FBS4Pz5PbozhAlmXKXOcZL1zYOr9BKD
 yPh3ffu/E9/v+bZaWniBMQOUKZDEiO3HNAji+0yV0whNHqWqLCiPvxRxWoRUL0zZjlFe
 ozKA==
X-Gm-Message-State: APjAAAXTgdu2YvjMxQf7TEhdh7+wqTE1eoVUqiIAaw4ebzebCEZm7vlY
 SoWW3MK1zrJkShcNlaKv0TF/6u+dTx5nXyFLphA=
X-Google-Smtp-Source: APXvYqy1FVHSsfxS0gbdJaZ5R+pfPURTnvUsc65w9GB7f807rv62m+M+MNCwIT3h/4mgCrzpftjHKSoawakRZLLsqqo=
X-Received: by 2002:a05:6638:627:: with SMTP id
 h7mr26456899jar.33.1568036604928; 
 Mon, 09 Sep 2019 06:43:24 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1567878413.git.hns@goldelico.com>
 <784d0d08ee585fc436f15de4edb58b394d0f4452.1567878413.git.hns@goldelico.com>
In-Reply-To: <784d0d08ee585fc436f15de4edb58b394d0f4452.1567878413.git.hns@goldelico.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 9 Sep 2019 08:43:13 -0500
Message-ID: <CAHCN7xJU2oW3QggNtcY0qTMTH058EJxKZBC6tRign=kX2Jtg2g@mail.gmail.com>
Subject: Re: [PATCH 2/4] ARM: dts: replace opp-v1 tables by opp-v2 for
 omap34xx and omap36xx
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_064329_356152_1C517C1A 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>,
 linux-pm@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Enric Balletbo i Serra <eballetbo@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>,
 Linux-OMAP <linux-omap@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Sep 7, 2019 at 12:47 PM H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> In addition, move omap3 from whitelist to blacklist in cpufreq-dt-platdev
> in the same patch, because doing either first breaks operation and
> may make trouble in bisect.
>
> We also can remove opp-v1 table for omap3-n950-n9 since it is now
> automatically detected.
>
> We also fix a wrong OPP4 voltage for omap3430 which must be
> 0.6V + 54*12.5mV = 1275mV. Otherwise the twl4030 driver will reject
> this OPP.
>
thank you for your work on this.  I tested it on a a Logit PD DM3730
Torpedo + Wireless kit, and appears to operate normally, but i have
not tested it at temperature.

Tested-by: Adam Ford <aford173@gmail.com>

> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> Acked-by: Tony Lindgren <tony@atomide.com>
> ---
>  arch/arm/boot/dts/omap3-n950-n9.dtsi |  7 ---
>  arch/arm/boot/dts/omap34xx.dtsi      | 65 ++++++++++++++++++++++++----
>  arch/arm/boot/dts/omap36xx.dtsi      | 53 +++++++++++++++++++----
>  drivers/cpufreq/cpufreq-dt-platdev.c |  2 +-
>  4 files changed, 102 insertions(+), 25 deletions(-)
>
> diff --git a/arch/arm/boot/dts/omap3-n950-n9.dtsi b/arch/arm/boot/dts/omap3-n950-n9.dtsi
> index 5441e9ffdbb4..e98b0c615f19 100644
> --- a/arch/arm/boot/dts/omap3-n950-n9.dtsi
> +++ b/arch/arm/boot/dts/omap3-n950-n9.dtsi
> @@ -11,13 +11,6 @@
>         cpus {
>                 cpu@0 {
>                         cpu0-supply = <&vcc>;
> -                       operating-points = <
> -                               /* kHz    uV */
> -                               300000  1012500
> -                               600000  1200000
> -                               800000  1325000
> -                               1000000 1375000
> -                       >;
>                 };
>         };
>
> diff --git a/arch/arm/boot/dts/omap34xx.dtsi b/arch/arm/boot/dts/omap34xx.dtsi
> index f572a477f74c..91154829f86a 100644
> --- a/arch/arm/boot/dts/omap34xx.dtsi
> +++ b/arch/arm/boot/dts/omap34xx.dtsi
> @@ -16,19 +16,66 @@
>  / {
>         cpus {
>                 cpu: cpu@0 {
> -                       /* OMAP343x/OMAP35xx variants OPP1-5 */
> -                       operating-points = <
> -                               /* kHz    uV */
> -                               125000   975000
> -                               250000  1075000
> -                               500000  1200000
> -                               550000  1270000
> -                               600000  1350000
> -                       >;
> +                       /* OMAP343x/OMAP35xx variants OPP1-6 */
> +                       operating-points-v2 = <&cpu0_opp_table>;
> +
>                         clock-latency = <300000>; /* From legacy driver */
>                 };
>         };
>
> +       /* see Documentation/devicetree/bindings/opp/opp.txt */
> +       cpu0_opp_table: opp-table {
> +               compatible = "operating-points-v2-ti-cpu";
> +               syscon = <&scm_conf>;
> +
> +               opp1-125000000 {
> +                       opp-hz = /bits/ 64 <125000000>;
> +                       /*
> +                        * we currently only select the max voltage from table
> +                        * Table 3-3 of the omap3530 Data sheet (SPRS507F).
> +                        * Format is: <target min max>
> +                        */
> +                       opp-microvolt = <975000 975000 975000>;
> +                       /*
> +                        * first value is silicon revision bit mask
> +                        * second one 720MHz Device Identification bit mask
> +                        */
> +                       opp-supported-hw = <0xffffffff 3>;
> +               };
> +
> +               opp2-250000000 {
> +                       opp-hz = /bits/ 64 <250000000>;
> +                       opp-microvolt = <1075000 1075000 1075000>;
> +                       opp-supported-hw = <0xffffffff 3>;
> +                       opp-suspend;
> +               };
> +
> +               opp3-500000000 {
> +                       opp-hz = /bits/ 64 <500000000>;
> +                       opp-microvolt = <1200000 1200000 1200000>;
> +                       opp-supported-hw = <0xffffffff 3>;
> +               };
> +
> +               opp4-550000000 {
> +                       opp-hz = /bits/ 64 <550000000>;
> +                       opp-microvolt = <1275000 1275000 1275000>;
> +                       opp-supported-hw = <0xffffffff 3>;
> +               };
> +
> +               opp5-600000000 {
> +                       opp-hz = /bits/ 64 <600000000>;
> +                       opp-microvolt = <1350000 1350000 1350000>;
> +                       opp-supported-hw = <0xffffffff 3>;
> +               };
> +
> +               opp6-720000000 {
> +                       opp-hz = /bits/ 64 <720000000>;
> +                       opp-microvolt = <1350000 1350000 1350000>;
> +                       /* only high-speed grade omap3530 devices */
> +                       opp-supported-hw = <0xffffffff 2>;
> +               };
> +       };
> +
>         ocp@68000000 {
>                 omap3_pmx_core2: pinmux@480025d8 {
>                         compatible = "ti,omap3-padconf", "pinctrl-single";
> diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
> index 6fb23ada1f64..44f25b0eb45b 100644
> --- a/arch/arm/boot/dts/omap36xx.dtsi
> +++ b/arch/arm/boot/dts/omap36xx.dtsi
> @@ -19,15 +19,52 @@
>         };
>
>         cpus {
> -               /* OMAP3630/OMAP37xx 'standard device' variants OPP50 to OPP130 */
> +               /* OMAP3630/OMAP37xx variants OPP50 to OPP130 and OPP1G */
>                 cpu: cpu@0 {
> -                       operating-points = <
> -                               /* kHz    uV */
> -                               300000  1012500
> -                               600000  1200000
> -                               800000  1325000
> -                       >;
> -                       clock-latency = <300000>; /* From legacy driver */
> +                       operating-points-v2 = <&cpu0_opp_table>;
> +
> +                       clock-latency = <300000>; /* From omap-cpufreq driver */
> +               };
> +       };
> +
> +       /* see Documentation/devicetree/bindings/opp/opp.txt */
> +       cpu0_opp_table: opp-table {
> +               compatible = "operating-points-v2-ti-cpu";
> +               syscon = <&scm_conf>;
> +
> +               opp50-300000000 {
> +                       opp-hz = /bits/ 64 <300000000>;
> +                       /*
> +                        * we currently only select the max voltage from table
> +                        * Table 4-19 of the DM3730 Data sheet (SPRS685B)
> +                        * Format is: <target min max>
> +                        */
> +                       opp-microvolt = <1012500 1012500 1012500>;
> +                       /*
> +                        * first value is silicon revision bit mask
> +                        * second one is "speed binned" bit mask
> +                        */
> +                       opp-supported-hw = <0xffffffff 3>;
> +                       opp-suspend;
> +               };
> +
> +               opp100-600000000 {
> +                       opp-hz = /bits/ 64 <600000000>;
> +                       opp-microvolt = <1200000 1200000 1200000>;
> +                       opp-supported-hw = <0xffffffff 3>;
> +               };
> +
> +               opp130-800000000 {
> +                       opp-hz = /bits/ 64 <800000000>;
> +                       opp-microvolt = <1325000 1325000 1325000>;
> +                       opp-supported-hw = <0xffffffff 3>;
> +               };
> +
> +               opp1g-1000000000 {
> +                       opp-hz = /bits/ 64 <1000000000>;
> +                       opp-microvolt = <1375000 1375000 1375000>;
> +                       /* only on am/dm37x with speed-binned bit set */
> +                       opp-supported-hw = <0xffffffff 2>;
>                 };
>         };
>
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index 03dc4244ab00..68b7fc4225f8 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -86,7 +86,6 @@ static const struct of_device_id whitelist[] __initconst = {
>         { .compatible = "st-ericsson,u9540", },
>
>         { .compatible = "ti,omap2", },
> -       { .compatible = "ti,omap3", },
>         { .compatible = "ti,omap4", },
>         { .compatible = "ti,omap5", },
>
> @@ -132,6 +131,7 @@ static const struct of_device_id blacklist[] __initconst = {
>         { .compatible = "ti,am33xx", },
>         { .compatible = "ti,am43", },
>         { .compatible = "ti,dra7", },
> +       { .compatible = "ti,omap3", },
>
>         { }
>  };
> --
> 2.19.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
