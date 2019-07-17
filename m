Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6466BA15
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5C08A8wG4kbsuuzDafs0AeGjr1WpRjmPwXzNu9Zh6e0=; b=rjnL9BTglzDymL
	RjqCxVRUklzE/8MpKqOhLBKXNPWqjgqQ0V+yUQkEAPwbuidMu6j+oL0ehzGhYFz3TUnRIP1Vjh+Nb
	f89wWpd0ZEvAOrYWohlKec41z7x3lqfrJB5fIceRA2uZsWv/xosrTBsITFG34vXdiKo+ky6UWM1Oi
	d/mRVAkSyEFo7M4Ui/HU+VyBC6WEBsjjSVJk+Ih4pGbAbbr+XrZMKQHPWBuh4yWOSiQYRKaoRb9dL
	dqzL740xwI4l4ki3rkegOaoKI+QSeNHUm2Rw9UElLk2nigbshBD4iByj0g25A4b/Y2eOykIrrSNvZ
	vYuvYPBZd4/CfEmunstQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnh8a-0007ll-AA; Wed, 17 Jul 2019 10:26:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnh8M-0007lM-Oj
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:26:04 +0000
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E2BF21841
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563359162;
 bh=6ZNHeUjYuFQvwhrizsFFiOMOLAXaj7gSQIwq8zSpTAg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Pngu4lq7W1y/+7EN4IucarRpmRnEYrCvK0QN/7WhL7xpSdddYI2M7CzpAcibsyN0C
 /Va+7loYPp+zR1or36eLxfLO0BFJZVX9un2oUHcv7X6/e7p5SAGTvZ8a15LR7imL4V
 Qr80/bW9NTISoEq1ORMwAWLkH09fRSWMPSL0aHRM=
Received: by mail-lj1-f174.google.com with SMTP id h10so23092154ljg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:26:01 -0700 (PDT)
X-Gm-Message-State: APjAAAWhk1OUdEqaC5WatKoiHbt+QXHDIeiJKcpH9MB1gldb/KwkV1FO
 2HA8toAGeJxT+8f0YpRS4JHVP+1zJ/moTLmGF5c=
X-Google-Smtp-Source: APXvYqyvg4XjQv6SY7ijdQp1cHJGuHEqi7FxlzWlNF0TzqNk1YWygMDN7/OybFeXVFj7TbU7p4IRgf/XVeDzaeXH91Q=
X-Received: by 2002:a2e:3008:: with SMTP id w8mr20847944ljw.13.1563359160319; 
 Wed, 17 Jul 2019 03:26:00 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124504eucas1p1afe0da2c6ac3a8b45d85017a77ba9edf@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-38-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-38-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 12:25:48 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfrGgAczQ-=1aE453RpJ9BN10ZDmFcrEMPkNyF6GcGtNA@mail.gmail.com>
Message-ID: <CAJKOXPfrGgAczQ-=1aE453RpJ9BN10ZDmFcrEMPkNyF6GcGtNA@mail.gmail.com>
Subject: Re: [PATCH v1 37/50] ARM: dts: exynos: change parent and rate of
 bus_fsys in Exynos5422
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032602_834568_3A6902EA 
X-CRM114-Status: GOOD (  18.04  )
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

On Mon, 15 Jul 2019 at 14:45, Lukasz Luba <l.luba@partner.samsung.com> wrote:
>
> The FSYS bus OPP table has been aligned to the new parent rate. This patch
> sets the proper parent and picks the init frequency before the devfreq
> governor starts working. It sets also parent rate (DPLL to 1200MHz).

1. I see what the patch is doing, but please write why you are doing
this. What problem are you solving here?
2. Commit title is wrong - it is not Exynos 5422 but Odroid XU3/XU4
family of boards.

>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> index d460041f716c..6a82dd175b8a 100644
> --- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> +++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> @@ -72,6 +72,11 @@
>
>  &bus_fsys {
>         devfreq = <&bus_wcore>;
> +       assigned-clocks = <&clock CLK_MOUT_ACLK200_FSYS>,
> +                         <&clock CLK_DOUT_ACLK200_FSYS>,
> +                         <&clock CLK_FOUT_DPLL>;
> +       assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>;
> +       assigned-clock-rates = <0>, <240000000>,<1200000000>;

Here and in all other patches:
I am not entirely sure that this should be here. It looks like
property of the SoC. Do we expect that buses will be configured to
different clock rates between different boards? Since the OPP tables
are shared (they are property of the SoC, not board) then I would
assume that default frequency is shared as well.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
