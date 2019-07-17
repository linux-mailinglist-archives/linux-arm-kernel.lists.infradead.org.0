Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1256B9A8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyF4cebQGaVGCqnEveNwQSZs6uEovYvMK007bCtSfL0=; b=oCMSq/+tF2Lc6m
	6l1JQPgCOGZLXdNQnE7cJ/RHuxIQIivY3SZkcnABjoMfb0I8cb8Gq5UoqXAUiJPXo4zL4QxdjN2IJ
	ydxBa8Q/yuoWYggQ4He7OWcH8Z3liK8kTO182jf9SrkNp4G8C9LHBYeV8yfF8qLwj3ME1MSD4X4E7
	r/RlXERKwZTg3nmlCOEDJ6eZ91PQUIkIQPma+68075lx23govtMMJnlT3RFa4GGapqwvWjA8Bw5Sd
	VlylRwwvlKhmJKNnncH8ktsdp9uRyqLfzB3GrxbptZKfSI661c7LZDuAeFzZS4pGbazbOgwFgzMXN
	b7pmJJnly62P2bL37VwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngmG-0004jP-L9; Wed, 17 Jul 2019 10:03:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hngm5-0004j2-Vw
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:03:03 +0000
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F235E21848
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563357781;
 bh=NCz+/qyUYefzxnwUGAYv3ttjqTH35P9ZY0JImQSzg+k=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sOofdmjAyc3VxH7un9C/GsVWaOAuRKhoZen/6U8N0nnxZcKOoQa7R8eX0+vRiTxTB
 tXXHlEd9es9CZNRR7G3eSkRRnXbiOSWpNQJ49Sftyyh9PdcN9ivmwWP+lJTNJy7mtg
 Qe40JNLJi0cJ4RvUdWSdBUkm82nwZxugeHZLcwOo=
Received: by mail-lf1-f41.google.com with SMTP id b29so8742527lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:03:00 -0700 (PDT)
X-Gm-Message-State: APjAAAUC9BHqvz9MZrOWdcGTk5OLG4t75qUj/ttAWJTIs6wBouL05gYo
 GWhOHWkIFPqEDYrijMG0PBTIlS8Jdor+GumSczA=
X-Google-Smtp-Source: APXvYqyfLXa1g6BfJ5mBA85Kb0T2X5T4F2Y48Ege4Izqj7dAHq+EW8Ogwx/5Kmpks+6IYktMG7J9ZoO5iZ63myk+05Q=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr17980541lfc.60.1563357779221; 
 Wed, 17 Jul 2019 03:02:59 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124509eucas1p1f2e44af951158fbef1a245467956ef93@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-44-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-44-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 12:02:47 +0200
X-Gmail-Original-Message-ID: <CAJKOXPcsH9YRzLOA1P5xc0Y3Zqh9+5o0RSxP-JcYOVEm7eO0Sw@mail.gmail.com>
Message-ID: <CAJKOXPcsH9YRzLOA1P5xc0Y3Zqh9+5o0RSxP-JcYOVEm7eO0Sw@mail.gmail.com>
Subject: Re: [PATCH v1 43/50] ARM: dts: exynos: add bus_isp in Exynos5422
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_030302_060630_7101C729 
X-CRM114-Status: GOOD (  16.39  )
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
> Add bus_isp which changes ACLK400_ISP clock speed according to the bus
> documentation in the documentation. The bus_isp OPP table has been
> aligned to the new parent rate.

Title and msg needs fixing.

Please squash it with patch 18.

Best regards,
Krzysztof

> This patch sets the proper parent and
> picks the init frequency before the devfreq governor starts working.
> It sets also parent rate (DPLL to 1200MHz).
>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> index 990fe03fce75..852cb3dd495d 100644
> --- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> +++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
> @@ -166,6 +166,18 @@
>         status = "okay";
>  };
>
> +&bus_isp {
> +       devfreq = <&bus_wcore>;
> +       assigned-clocks = <&clock CLK_MOUT_ACLK400_ISP>,
> +                         <&clock CLK_MOUT_SW_ACLK400_ISP>,
> +                         <&clock CLK_DOUT_ACLK400_ISP>,
> +                         <&clock CLK_FOUT_DPLL>;
> +       assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>,
> +                                <&clock CLK_DOUT_ACLK400_ISP>;
> +       assigned-clock-rates = <0>, <0>, <400000000>, <1200000000>;
> +       status = "okay";
> +};
> +
>  &cpu0 {
>         cpu-supply = <&buck6_reg>;
>  };
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
