Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EAE914ECE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 14:05:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFT+qZ+8ELfLG2Ajy7I6aHcz9ZYHfScqwgSiJ7INyQQ=; b=sV8LxoVR4Oe2Fn
	JND9LaLtNtwZcbzBaeobo4DOKalPP9MwEq6LkiPxmmKLKxMDY5Nrq8IFzLdgN1RTlG4dm8jCEBMVt
	F9bUeUbp20zvMiDtLCcjZhZ98MIrxN4RCnQFODKs07oo4W9NjR1NIy7pZXZexPMVapDynTsFX1V07
	jtqB/Q9Ovixt+yDr9JQEpv/sKH0vUwE3YoT/0U2OGHHNtAtWVpzQNzRyuyBqIaU2pPr7A85WRIcq9
	a5LBGWL5sbOxsM1zqGZkoqBumd4bCGqDA1Xq6s0M/AH2M4Mk0cTgCprzLjlCTt+ST5G1YBdsAJqL7
	iECjTa/BBgCI4mP1n98Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixVzI-0004cZ-Tc; Fri, 31 Jan 2020 13:05:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixVz9-0004ay-3K
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 13:05:25 +0000
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B454217BA
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 13:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580475922;
 bh=qFY7ucXHrN4k9SomscL/5CeYo3grnsdPM8fcyq7j1fE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=nIQEP8mzK2r0uiBLI6VqL0j5hLbabW6ZCaRIIAWoW9WJesZKa1bMszimARV8eE7VG
 yNOmps5m8YwT15KJpe4VdZaC02k9viWOpt4t/b0MjNRGQcNwLt4wlBlHmtoC8TK/nY
 BLBLJI69Ui/VvIQKVNVLv/FS/RiuF1I74J7AJygs=
Received: by mail-lj1-f178.google.com with SMTP id f25so6976593ljg.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 Jan 2020 05:05:22 -0800 (PST)
X-Gm-Message-State: APjAAAXg/P/+rkP/wXKgWrhql3cb0ZN5EV3j6+spqQo4gdfo1i8d1glW
 mKj6sCg+8hExjoThbCc9tUcBIQKeMcd+SvZlEBw=
X-Google-Smtp-Source: APXvYqzqfHmDn+QFhEv+TrLKTcwhUeNTIgNZ0cG1Ae/WPNpeaCTKvGV3l0akORodBNWjmfBEKG6afCmv5wVBB7ZI+Dg=
X-Received: by 2002:a2e:7812:: with SMTP id t18mr6099414ljc.289.1580475920245; 
 Fri, 31 Jan 2020 05:05:20 -0800 (PST)
MIME-Version: 1.0
References: <20200127215453.15144-1-lukasz.luba@arm.com>
 <20200127215453.15144-3-lukasz.luba@arm.com>
In-Reply-To: <20200127215453.15144-3-lukasz.luba@arm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 31 Jan 2020 14:05:09 +0100
X-Gmail-Original-Message-ID: <CAJKOXPcgC1xE2=-=_hqvqrBCBzQF4113+wez=3Lqp71=yv8gZw@mail.gmail.com>
Message-ID: <CAJKOXPcgC1xE2=-=_hqvqrBCBzQF4113+wez=3Lqp71=yv8gZw@mail.gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: exynos: Add Exynos5422 CPU
 dynamic-power-coefficient information
To: lukasz.luba@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_050523_187243_5B55B5A8 
X-CRM114-Status: GOOD (  24.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 27 Jan 2020 at 22:55, <lukasz.luba@arm.com> wrote:
>
> From: Lukasz Luba <lukasz.luba@arm.com>
>
> Add dynamic power coefficient into CPU nodes which let CPUFreq subsystem
> register the Energy Model (EM) for the CPUs.
>
> The 'dynamic-power-coefficient' is used for calculating the dynamic power
> according to the equation in documentation [1].  The Energy Model (EM)
> framework relies on calculated power and cost for each OPP. The OPP power
> values come from CPUFreq driver, which registered required callback
> function. The simple implementation of a CPUFREQ driver, like cpufreq-dt,
> uses 'dev_pm_opp_of_register_em()' which relay on
> 'dynamic-power-coefficient' to calculate the power of requested OPP for the
> EM [2].
>
> The calculated values might be checked in
> /sys/kernel/debug/energy_model/pd*/
>
> $ grep . /sys/kernel/debug/energy_model/pd1/cs*/*
> /sys/kernel/debug/energy_model/pd1/cs:1000000/cost:558
> /sys/kernel/debug/energy_model/pd1/cs:1000000/frequency:1000000
> /sys/kernel/debug/energy_model/pd1/cs:1000000/power:310
> /sys/kernel/debug/energy_model/pd1/cs:1100000/cost:558
> /sys/kernel/debug/energy_model/pd1/cs:1100000/frequency:1100000
> /sys/kernel/debug/energy_model/pd1/cs:1100000/power:341
> /sys/kernel/debug/energy_model/pd1/cs:1200000/cost:558
> /sys/kernel/debug/energy_model/pd1/cs:1200000/frequency:1200000
> /sys/kernel/debug/energy_model/pd1/cs:1200000/power:372
> /sys/kernel/debug/energy_model/pd1/cs:1300000/cost:674
> /sys/kernel/debug/energy_model/pd1/cs:1300000/frequency:1300000
> /sys/kernel/debug/energy_model/pd1/cs:1300000/power:487
> /sys/kernel/debug/energy_model/pd1/cs:1400000/cost:675 ...
>
> $ grep . /sys/kernel/debug/energy_model/pd0/cs*/*
> /sys/kernel/debug/energy_model/pd0/cs:1000000/cost:200
> /sys/kernel/debug/energy_model/pd0/cs:1000000/frequency:1000000
> /sys/kernel/debug/energy_model/pd0/cs:1000000/power:154
> /sys/kernel/debug/energy_model/pd0/cs:1100000/cost:260
> /sys/kernel/debug/energy_model/pd0/cs:1100000/frequency:1100000
> /sys/kernel/debug/energy_model/pd0/cs:1100000/power:220
> /sys/kernel/debug/energy_model/pd0/cs:1200000/cost:260
> /sys/kernel/debug/energy_model/pd0/cs:1200000/frequency:1200000
> /sys/kernel/debug/energy_model/pd0/cs:1200000/power:240
> /sys/kernel/debug/energy_model/pd0/cs:1300000/cost:260
> /sys/kernel/debug/energy_model/pd0/cs:1300000/frequency:1300000
> /sys/kernel/debug/energy_model/pd0/cs:1300000/power:260
> /sys/kernel/debug/energy_model/pd0/cs:200000/cost:130 ...

Please, do not describe entire Energy Model in commit message touching
DTS. It brings too much information which look unrelated and therefore
it makes difficult to spot real rationale behind the change. Just
mention:
1. Why you are doing it?
2. What are you doing?
3. How did you figure out magic constants here (details of "what")?

> To provide a proper value of the 'dynamic-power-coefficient' the real power
> can be measured using a dedicated hardware, i.e. INA2xx. The Odroid-XU3
> hwmon sensors have been used to capture the power value during a sysbench
> test running on single core and at each possible OPP.

Since you mention the values, post them. That's the only thing which
reader cannot get on his own. All other values posted in commit
message will be seen after running tests...

> The measured values
> were divided by 2, since the dynamic power is typically half of the
> consumed power (the second half is static power). Next, the approximation
> was made and the power model derived, showing the 'C' value of routhly X.

s/routhly/roughly/

What is X?

> Check the example equations in drivers/opp/of.c [2].
> Thus, i.e. the power = 1.0Watt at 1GHz => 0.5W dynamic power =>
> dynamic-power-coefficient = 400
>
> Using this simple technique we can provide and needed coefficient.  The

s/and/the/ ?

> approximation does not have to be super precised. The proportion is
> important and the difference between power consumed by different CPUs
> running at the same frequency, which is then used in Energy Aware Scheduler
> algorithms. An example power values on Odroid-XU3:
>
> (LITTLE CPU)
> /sys/kernel/debug/energy_model/pd0/cs:1000000/frequency:1000000
> /sys/kernel/debug/energy_model/pd0/cs:1000000/power:154

For A7, 1V and 1 GHz this gives 142, not 154. Is it correct? What ASV
are you using?

> (big CPU)
> /sys/kernel/debug/energy_model/pd1/cs:1000000/frequency:1000000
> /sys/kernel/debug/energy_model/pd1/cs:1000000/power:310
>
> In Odroid-XU3 case the derived coefficient value for 'big' CPU has:
> dynamic-power-coefficient = <310>;
> while the 'LITTLE':
> dynamic-power-coefficient = <128>;

Make it all compact. First, you mention power values which are the
same as in the beginning of this commit message. Why repeating? Then
you mention the power coefficient in 4 lines instead of simple:
For Odroid XU3, the derived power coefficient is then 128 for an A7
CPU and 310 for an A15 CPU. Or something similar.

>
> [1] Documentation/devicetree/bindings/arm/cpus.yaml
> [2] https://elixir.bootlin.com/linux/v5.4/source/drivers/opp/of.c#L1044

Refer to path inside, no external sources unless needed.

Best regards,
Krzysztof

>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  arch/arm/boot/dts/exynos5422-cpus.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos5422-cpus.dtsi b/arch/arm/boot/dts/exynos5422-cpus.dtsi
> index 1b8605cf2407..c9a0dc99d2fb 100644
> --- a/arch/arm/boot/dts/exynos5422-cpus.dtsi
> +++ b/arch/arm/boot/dts/exynos5422-cpus.dtsi
> @@ -31,6 +31,7 @@
>                         operating-points-v2 = <&cluster_a7_opp_table>;
>                         #cooling-cells = <2>; /* min followed by max */
>                         capacity-dmips-mhz = <539>;
> +                       dynamic-power-coefficient = <128>;
>                 };
>
>                 cpu1: cpu@101 {
> @@ -43,6 +44,7 @@
>                         operating-points-v2 = <&cluster_a7_opp_table>;
>                         #cooling-cells = <2>; /* min followed by max */
>                         capacity-dmips-mhz = <539>;
> +                       dynamic-power-coefficient = <128>;
>                 };
>
>                 cpu2: cpu@102 {
> @@ -55,6 +57,7 @@
>                         operating-points-v2 = <&cluster_a7_opp_table>;
>                         #cooling-cells = <2>; /* min followed by max */
>                         capacity-dmips-mhz = <539>;
> +                       dynamic-power-coefficient = <128>;
>                 };
>
>                 cpu3: cpu@103 {
> @@ -67,6 +70,7 @@
>                         operating-points-v2 = <&cluster_a7_opp_table>;
>                         #cooling-cells = <2>; /* min followed by max */
>                         capacity-dmips-mhz = <539>;
> +                       dynamic-power-coefficient = <128>;
>                 };
>
>                 cpu4: cpu@0 {
> @@ -79,6 +83,7 @@
>                         operating-points-v2 = <&cluster_a15_opp_table>;
>                         #cooling-cells = <2>; /* min followed by max */
>                         capacity-dmips-mhz = <1024>;
> +                       dynamic-power-coefficient = <310>;
>                 };
>
>                 cpu5: cpu@1 {
> @@ -91,6 +96,7 @@
>                         operating-points-v2 = <&cluster_a15_opp_table>;
>                         #cooling-cells = <2>; /* min followed by max */
>                         capacity-dmips-mhz = <1024>;
> +                       dynamic-power-coefficient = <310>;
>                 };
>
>                 cpu6: cpu@2 {
> @@ -103,6 +109,7 @@
>                         operating-points-v2 = <&cluster_a15_opp_table>;
>                         #cooling-cells = <2>; /* min followed by max */
>                         capacity-dmips-mhz = <1024>;
> +                       dynamic-power-coefficient = <310>;
>                 };
>
>                 cpu7: cpu@3 {
> @@ -115,6 +122,7 @@
>                         operating-points-v2 = <&cluster_a15_opp_table>;
>                         #cooling-cells = <2>; /* min followed by max */
>                         capacity-dmips-mhz = <1024>;
> +                       dynamic-power-coefficient = <310>;
>                 };
>         };
>  };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
