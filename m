Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 523B56B9E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LIDyuzQ4N9bNH3lImxUTUIgw3gSknCCPGySWXS4ELy8=; b=uSNcN8j6k60eMS
	a5KJEh//iBIRquxKnoQgvrBB5TY6GQt6si2RdF21YvDEklPH1Zq3uls+yWEflXzJa/BDKUizZ6ZvV
	+jjMK32Gu+hY9qMqWi2/KcfsyuLUdWgaXIN88kn0M4wL2+khlKKEc5YI7e/sckfh3DEMBiRQWLntw
	scl5KMg/RGpBcFKuw7NMsAy5+PouzcQRbQsJF+n+9zmcZi+9/crSUk1ZakUmrOnjIeNP4xylp9H1P
	Ncc3MNKrwM8jEiJePAUMf1J7pUPU9A0F1Zp9JhEBbdP+ygXRSPyDu5stZdDdpASsF+fzYeKRsFsVI
	N2GSfYCNTgElw0ZSqP6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngyk-0002pQ-SP; Wed, 17 Jul 2019 10:16:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngyV-0002nJ-FD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:15:53 +0000
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
 [209.85.167.52])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC44B21841
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563358551;
 bh=cgTcOvfKUWnyc6EhodXbcn/gUVIS698J1CpP1nKMC00=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n/KnnkpPOoDuockCCqvNzFXBhnfMYPkeMF9lPDJWPXMA/6e0LhdOtABgbBmeTBKnj
 6gGW1i/yM9LoqlWU/G6exRQf6dpSJg17b8VF/uH9VIRYXuWQwztjLfetFhpRhLzJ0B
 qUlE9CJjq7yXJDIIwBYW9UaUM5NrPnQ87gI40Dqo=
Received: by mail-lf1-f52.google.com with SMTP id u10so15999558lfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:15:50 -0700 (PDT)
X-Gm-Message-State: APjAAAUoWWrcWbReA8Vg3qrd8uW8KvSfWMnhCXKFbdITE74sqaeo+Me4
 5zgVZo5+AmiT4YDfqQYuiMcAXubG4uLc5eIA9FE=
X-Google-Smtp-Source: APXvYqy/paW0xRlOmAzye/v3rIrHH6BF3MFPQ6tlnzcgE7BNiAXPMQ+T+LFCXyQ9N8833KJQn9EroblWQafzagXZMKQ=
X-Received: by 2002:a19:f007:: with SMTP id p7mr17384347lfc.24.1563358548916; 
 Wed, 17 Jul 2019 03:15:48 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f@eucas1p2.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-28-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-28-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 12:15:37 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfFZL8q9hM1vPsLq+Qxe-gMz4c8j0jgFKfdf5qs68MTmA@mail.gmail.com>
Message-ID: <CAJKOXPfFZL8q9hM1vPsLq+Qxe-gMz4c8j0jgFKfdf5qs68MTmA@mail.gmail.com>
Subject: Re: [PATCH v1 27/50] ARM: dts: exynos: align bus_wcore OPPs in
 Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_031551_555669_D70122FB 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 15 Jul 2019 at 14:44, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> This is the most important bus in the Exynos5x SoC. The whole communication
> inside SoC does through that bus (apart from direct requests from CCI to
> DRAM controller). It is also modeled as a master bus in devfreq framework.
> It is also the only one OPP table throughout other buses which has voltage
> values. The devfreq software controls the speed of that bus and other
> buses. The other buses follows the rate of the master. There is only one
> regulator. The old lowest OPP had pair 925mV, 84MHz which is enough for

s/lowest/slowest/

> this frequency. However, due to the fact that the other buses follows the
> WCORE bus by taking the OPP from their table with the same id, e.g. opp02,
> the children frequency should be stable with the set voltage.
> It could cause random faults very hard to debug.
> Thus, the patch removes the lowest OPP to make other buses' lowest OPPs

s/lowest/slowest/

> working. The new lowest OPP has voltage high enough for buses working up
> to 333MHz. It also changes the frequencies of the OPPs to align them to
> PLL value such that it is possible to set them using only a divider without
> reprogramming OPP.

Reprogramming OPP? What is it?

> Reprogramming the PLL was not set, so the real frequency

I understood from the previous that reprogramming the OPP (PLL?) was
happening... Please rephrase entire sentence.

BR,
Krzysztof

> values were not the one from the OPP table, which could confuse the
> governor algorithms which relay on OPP speed values making the system to
> behave weird.
>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5420.dtsi | 12 ++++--------
>  1 file changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
> index f8c36ff0d4c3..a355c76af5a5 100644
> --- a/arch/arm/boot/dts/exynos5420.dtsi
> +++ b/arch/arm/boot/dts/exynos5420.dtsi
> @@ -1107,22 +1107,18 @@
>                         compatible = "operating-points-v2";
>
>                         opp00 {
> -                               opp-hz = /bits/ 64 <84000000>;
> -                               opp-microvolt = <925000>;
> +                               opp-hz = /bits/ 64 <150000000>;
> +                               opp-microvolt = <950000>;
>                         };
>                         opp01 {
> -                               opp-hz = /bits/ 64 <111000000>;
> +                               opp-hz = /bits/ 64 <200000000>;
>                                 opp-microvolt = <950000>;
>                         };
>                         opp02 {
> -                               opp-hz = /bits/ 64 <222000000>;
> +                               opp-hz = /bits/ 64 <300000000>;
>                                 opp-microvolt = <950000>;
>                         };
>                         opp03 {
> -                               opp-hz = /bits/ 64 <333000000>;
> -                               opp-microvolt = <950000>;
> -                       };
> -                       opp04 {
>                                 opp-hz = /bits/ 64 <400000000>;
>                                 opp-microvolt = <987500>;
>                         };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
