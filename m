Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DB06B872
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 10:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnBccbgBIs2V8VJ/aSm1fKV5gkIIlB76SvWO+gZJLNU=; b=O+tfcOmf5OXQJU
	ZWpDbzCfK9W1HfN/iWfN6NRZizSTiGEI2HnuPFtTXkEJQCoBVo2dJErVYBXV8LkVrL1+Cq2TXUYNE
	QofmpYRgqszeLvAkweOFF66yK9TZ7QO0cI07DMtd81v7zSTd4X28fBoIxpflnNzTw2hYeSf1LMbfJ
	VskheTqAPBDwrrg/HN1XvW/8nHG3iXY2lEdacBQk7GVomxR6XOfgDlr8/DabGgLMAx+CB3B6syqwL
	uG6sn1SvDx9yCX1Ryegt+k3UV5K9IlYVstBVcdm5CA9SNZG9kggLbsUQ7ee9G7j/Rr6wBzbEDP54/
	N15iLtSw1jg4p6AbRa9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfUF-0001xV-Ny; Wed, 17 Jul 2019 08:40:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfTZ-0000Ue-Ms
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 08:39:51 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EA1DE2182B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 08:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563352789;
 bh=3AsfA0apHgKPHqSErY1FFUic2G0ulq9KKXmKDllcBcQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=SgAXPRs6GJZnZ4dXfaI5y+fqWmAL7vSP8DcilTZOMiaFiRuMkriRkV2D7uDUMRsHD
 LuOrCUBJADNdyG96KBNIcHBVXxPWwdvnZB7W23YzPXUGsU2DRyL7pCEuvDEI7FPSaG
 8V0w+33PvRBAUq9VEUGaunN4tWBv4nQIt0r5tjnM=
Received: by mail-lj1-f180.google.com with SMTP id v24so22787103ljg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 01:39:48 -0700 (PDT)
X-Gm-Message-State: APjAAAWR9dpWcJpTRUs4X1Agl3uB6Id2qveJVWTPGaXQMazTAb9aK1vX
 myqvj+2kei+iCrld29I0JuCk4598r1kuqkJIuZU=
X-Google-Smtp-Source: APXvYqyRN0A/GOrnI+2UBk5Z9rTURP+hHTiKsonTWMcGbY1Ffif3bsCYCsun+URUyB4xBf4ku2h81Gn6CSsFtvv1zzo=
X-Received: by 2002:a2e:124b:: with SMTP id t72mr20492141lje.143.1563352787197; 
 Wed, 17 Jul 2019 01:39:47 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124450eucas1p189043d196375aa6adacf898de81bfa9b@eucas1p1.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-21-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-21-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 10:39:36 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfHgmBo9NX6jO8qSqXjN1pFmnKkQEWbou+q7-BDq2XKQg@mail.gmail.com>
Message-ID: <CAJKOXPfHgmBo9NX6jO8qSqXjN1pFmnKkQEWbou+q7-BDq2XKQg@mail.gmail.com>
Subject: Re: [PATCH v1 20/50] ARM: dts: exynos: change and rename FSYS OPP
 table in Exynos5420
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_013949_848421_A24540B3 
X-CRM114-Status: GOOD (  19.96  )
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
> The FSYS and FSYS2 buses have similar characteristics and both have max
> frequency 240MHz. The old OPP table bus_fsys_apb_opp_table should be used
> only to FSYS APB bus because APB max frequency is 200MHz.
> The new OPPs for FSYS should increase its performance and related devices.

I do not understand the explanation. You say that there are two buses
- FSYS and FSYS2 - and old OPP table should be used for FSYS APB but
you remove the old one (by renaming). Or which one is the 'old one'
here? The reason is speed... wait, what? Usually DTS should describe
the HW so I imagine that proper opp table should be used for proper
bus. It surprised me that we switch a bus to different OPP table just
because of speed concerns. It should be correctness concern.

Please clarify and reword all this.

I am also not sure how this relates with previous patch - whether you
are fixing independent issues. Maybe because I do not see the issue
fixed... change the commit title and adjust the messages to focus WHY
you are doing it. For small fixes WHAT you are doing is rather obvious
so commit msg (and title) should not focus on it.

Best regards,
Krzysztof

>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5420.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
> index 941c58bdd809..c7fc4b829b2a 100644
> --- a/arch/arm/boot/dts/exynos5420.dtsi
> +++ b/arch/arm/boot/dts/exynos5420.dtsi
> @@ -995,7 +995,7 @@
>                         compatible = "samsung,exynos-bus";
>                         clocks = <&clock CLK_DOUT_ACLK200_FSYS>;
>                         clock-names = "bus";
> -                       operating-points-v2 = <&bus_fsys_apb_opp_table>;
> +                       operating-points-v2 = <&bus_fsys_opp_table>;
>                         status = "disabled";
>                 };
>
> @@ -1003,7 +1003,7 @@
>                         compatible = "samsung,exynos-bus";
>                         clocks = <&clock CLK_DOUT_ACLK200_FSYS2>;
>                         clock-names = "bus";
> -                       operating-points-v2 = <&bus_fsys2_opp_table>;
> +                       operating-points-v2 = <&bus_fsys_opp_table>;
>                         status = "disabled";
>                 };
>
> @@ -1157,7 +1157,7 @@
>                         };
>                 };
>
> -               bus_fsys2_opp_table: opp_table5 {
> +               bus_fsys_opp_table: opp_table5 {
>                         compatible = "operating-points-v2";
>
>                         opp00 {
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
