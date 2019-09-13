Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23965B271A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 23:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seKCK47Co3V0YqkGSQJHkfIfkiQaiHLpZzrukUfwEtQ=; b=qCoOafVjp0I1O4
	G35a03mv4XsfOrDGU5yrN7ook1oQUUp5CqZ/ks560gscqAjGu8G0MBd2m8qDefCWBGVASm+JfVAop
	SNcmg3OW/8Ttf5eaMvuo7EmQJKHf6yVong6xUtZuvqznbU0HqKA+jrcpRmK3XKz8Up3cNVsvX5dud
	8PTQqlakoNzdQZ9NzxjeZx5J7WWhpjzlIf66tT/9f/QYZe3RVSkgwvUMQRHQ4qpRdD2Fay7MGmm3U
	BxgblfeXqLuTfWdafuxfpK8BzqN+dBNY39eY8jzKvRCq6gJF1m0H/Y07AxQ1waHb7yMacg6jyzHly
	Jvi9ba8+6Whzb2ogdhqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8stV-0001Dq-Gl; Fri, 13 Sep 2019 21:14:17 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8stL-0001Ci-Ra
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 21:14:09 +0000
Received: by mail-io1-xd42.google.com with SMTP id k5so40411858iol.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 14:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UskOfSgg386hDT+uq0TXDMPpn1NNITv5aTMpt8d4CVY=;
 b=KTZO+mFW2Oh+QziZmA+IzJU3e+94+mnT6T1racQjGHE2uMDNbYjP5fICTd+PTf1T0O
 89ZtvAqy7spGERQr6pyWt0bInhVfaqM7cYr9nEcDxs3vFv4hlpWsGBeuOdg+GguUZYSJ
 bbqeOPT7mYQmJu90r9JJUzc1qNfip9Z8r+W2ttzMSo7na/G4+Nmk1bdIF3VPj/Dc6od/
 Ek0kziyGcUuD347XXLB1M9Pc2IIUGHy8R/LJydks5GoSHDhsTv/5ZiThLpcI2YBPuZUh
 UHoU+R1bnjMYHIKQ0+3Kz3Ptw8xP0a7M4AvTuG8tuwis8beY1LHrKv/cDSyHY1Qaf/+w
 nShQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UskOfSgg386hDT+uq0TXDMPpn1NNITv5aTMpt8d4CVY=;
 b=QAcQRjtAXbzSbrTEVXjU44I6MBXuUVfGpbIr9qztZWBfbWtJRf6pzIqAOYi/O6sqb6
 B59NYWE/HISfy/BSa1lO1NxUMlrCD/kVtDt+J1maTIDhHSyFJoaGT/xl/0j9w9Z7JbUx
 wS3/8Lj8ilGxpp7W5+Ffj5Ye4dpDy0bLVh7B2c5faXC3ZGtNKpnXNKTbFj9LXMhZwVqR
 /RsMQtQoS4BGk3cN/FipPGEP9oVSzh4vpuLx6EuK+eLAk6Eh0fVugYF8WkI3XetLtZlB
 xSp+VrhDlCTn3FDOSzI23miYTNfqNJq6USgkVy89cJGLdfqDOc4q/kSzFZ53npACl8cl
 oBcA==
X-Gm-Message-State: APjAAAV7u7ZTiTe6Fbba8HXqwbL00PE7Johczy6yr/zDFLCWIOwOOJIL
 f3dL+ShG+gb9JRQpj9inKBqJtb8KfeoOA3xVuk4=
X-Google-Smtp-Source: APXvYqxRa4Jg1JIT0wxzuiyNm4qA+JzsRMv754ROCdVMD/vIvOO+svXgd/mShdE0/aAd0y6Ox+BfcYHRmgO1HdAv8ek=
X-Received: by 2002:a6b:b78b:: with SMTP id h133mr2158869iof.276.1568409240130; 
 Fri, 13 Sep 2019 14:14:00 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1568224032.git.hns@goldelico.com>
 <59a0f6267c75859c25665548db2e8a9c4229d3b4.1568224033.git.hns@goldelico.com>
In-Reply-To: <59a0f6267c75859c25665548db2e8a9c4229d3b4.1568224033.git.hns@goldelico.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 13 Sep 2019 16:13:49 -0500
Message-ID: <CAHCN7x+RTSHg7jKys=Jv6Urz0PsHNTM8EnFT1dwAZOtsjxpEAw@mail.gmail.com>
Subject: Re: [PATCH v3 6/8] ARM: dts: omap36xx: using OPP1G needs to control
 the abb_ldo
To: "H. Nikolaus Schaller" <hns@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_141407_898003_DF60A85C 
X-CRM114-Status: GOOD (  22.55  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Sep 11, 2019 at 12:47 PM H. Nikolaus Schaller <hns@goldelico.com> wrote:
>
> See DM3730,DM275 data sheet (SPRS685B) footnote (6) in Table 4-19
> which says that ABB must be switched to FBB mode when using the
> OPP1G.
>
> The LOD definition abb_mpu_iva already exists so that we need
> to add plumbing for vbb-supply = <&abb_mpu_iva>
> and define two voltage vectors for each OPP so that the abb LDO
> is also updated by the ti-cpufreq driver.
>
> We also must switch the ti_cpufreq_soc_data to multi_regulator.
>
> Note: reading out the abb reglator voltage to verify that
> it does do transitions can be done by
>
> cat /sys/devices/platform/68000000.ocp/483072f0.regulator-abb-mpu/regulator/regulator.*/microvolts
>
> Likewise, read the twl4030 provided VDD voltage by
>
> cat /sys/devices/platform/68000000.ocp/48070000.i2c/i2c-0/0-0048/48070000.i2c:twl@48:regulator-vdd1/regulator/regulator.*/microvolts
>
> Note: to check if the ABB FBB is enabled/disabled, check
> registers
>
> PRM_LDO_ABB_CTRL 0x483072F4 bit 3:0 1=bypass 5=FBB
> PRM_LDO_ABB_SETUP 0x483072F0 0x00=bypass 0x11=FBB
>
> e.g.
>
> /dev/mem opened.
> Memory mapped at address 0xb6fe4000.
> Value at address 0x483072F4 (0xb6fe42f4): 0x3205
> /dev/mem opened.
> Memory mapped at address 0xb6f89000.
> Value at address 0x483072F4 (0xb6f892f4): 0x3201
>
> Note: omap34xx and am3517 have/need no comparable LDO
> or mechanism.
>
> Suggested-by: Adam Ford <aford173@gmail.com>
> Signed-off-by: H. Nikolaus Schaller <hns@goldelico.com>
> ---
>  arch/arm/boot/dts/omap36xx.dtsi | 21 ++++++++++++++++-----
>  drivers/cpufreq/ti-cpufreq.c    |  2 +-
>  2 files changed, 17 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm/boot/dts/omap36xx.dtsi b/arch/arm/boot/dts/omap36xx.dtsi
> index cb5bd0969124..4bb4f534afe2 100644
> --- a/arch/arm/boot/dts/omap36xx.dtsi
> +++ b/arch/arm/boot/dts/omap36xx.dtsi
> @@ -23,6 +23,7 @@
>                 cpu: cpu@0 {
>                         operating-points-v2 = <&cpu0_opp_table>;
>
> +                       vbb-supply = <&abb_mpu_iva>;
>                         clock-latency = <300000>; /* From omap-cpufreq driver */
>                 };
>         };
> @@ -37,9 +38,11 @@
>                         /*
>                          * we currently only select the max voltage from table
>                          * Table 4-19 of the DM3730 Data sheet (SPRS685B)
> -                        * Format is: <target min max>
> +                        * Format is:   cpu0-supply:    <target min max>
> +                        *              vbb-supply:     <target min max>
>                          */
> -                       opp-microvolt = <1012500 1012500 1012500>;
> +                       opp-microvolt = <1012500 1012500 1012500>,
> +                                        <1012500 1012500 1012500>;
>                         /*
>                          * first value is silicon revision bit mask
>                          * second one is "speed binned" bit mask
> @@ -50,25 +53,33 @@
>
>                 opp100-600000000 {
>                         opp-hz = /bits/ 64 <600000000>;
> -                       opp-microvolt = <1200000 1200000 1200000>;
> +                       opp-microvolt = <1200000 1200000 1200000>,
> +                                        <1200000 1200000 1200000>;
>                         opp-supported-hw = <0xffffffff 3>;
>                 };
>
>                 opp130-800000000 {
>                         opp-hz = /bits/ 64 <800000000>;
> -                       opp-microvolt = <1325000 1325000 1325000>;
> +                       opp-microvolt = <1325000 1325000 1325000>,
> +                                        <1325000 1325000 1325000>;
>                         opp-supported-hw = <0xffffffff 3>;
>                 };
>
>                 opp1g-1000000000 {
>                         opp-hz = /bits/ 64 <1000000000>;
> -                       opp-microvolt = <1375000 1375000 1375000>;
> +                       opp-microvolt = <1375000 1375000 1375000>,
> +                                        <1375000 1375000 1375000>;
>                         /* only on am/dm37x with speed-binned bit set */
>                         opp-supported-hw = <0xffffffff 2>;
>                         turbo-mode;

If / when the thermal changes I submitted get approved, would you
entertain dropping this turbo-mode flag so it's enabled by default?

adam
>                 };
>         };
>
> +       opp_supply_mpu_iva: opp_supply {
> +               compatible = "ti,omap-opp-supply";
> +               ti,absolute-max-voltage-uv = <1375000>;
> +       };
> +
>         ocp@68000000 {
>                 uart4: serial@49042000 {
>                         compatible = "ti,omap3-uart";
> diff --git a/drivers/cpufreq/ti-cpufreq.c b/drivers/cpufreq/ti-cpufreq.c
> index 1a3073a3093e..f4704f9033e0 100644
> --- a/drivers/cpufreq/ti-cpufreq.c
> +++ b/drivers/cpufreq/ti-cpufreq.c
> @@ -174,7 +174,7 @@ static struct ti_cpufreq_soc_data omap36xx_soc_data = {
>         .efuse_shift = 9,
>         .efuse_mask = BIT(9),
>         .rev_offset = OMAP3_CONTROL_IDCODE - OMAP3_SYSCON_BASE,
> -       .multi_regulator = false,
> +       .multi_regulator = true,
>  };
>
>  /**
> --
> 2.19.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
