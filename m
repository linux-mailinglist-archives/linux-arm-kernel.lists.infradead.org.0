Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C8106BA4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxSHOQ13xdqTxcbAPZxuFe2c77V8nfdYtUhJzV/B44A=; b=KqgtKXeOm0hu00
	TSKdeMv9oYxDhW17cRlK5IvrrcWlek/gSIux8XloPCRlFnWVHJRbcz0fLG0MqpkIfMQoCa61eXP1e
	NStuY2NOuHFhMeZmNrYHBKhQDsOmI2mEyrwlZOs4t/IRH5/dPmJEczqDr1xHEf8m+dqR0DjRXakfZ
	vnjIcWiCIp8IbhGWFkoO4NlkNy1kv8ESyzK8nguKnC1MCXgUdYNDGtHBvOaWvLiyUKWhBGtVXUEQA
	Xb/20nA2Q2C4Bhc87O2O+jTvtxUV6IIqcL10oS8nv05tbCK6aZeAnGZVKmnercFnbUGdwtK2IbKGy
	R4K3MG+u2ISXt/sZQuvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhGQ-00041M-41; Wed, 17 Jul 2019 10:34:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhFl-0003q8-G9
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:33:42 +0000
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB5B62184B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 10:33:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563359621;
 bh=jSaDID9hgYfnliGptlwXumcvM/zIQPwcjviS3KOK0iM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=EeA60zFQcj611TQd7C6MujlhxW6JLU1lGaIiFIcdmkRVWf+gZjyhg2nDEGKnNXenN
 ym2YnxH4ohgCWo5ZO52McWzudtbRePzKY6mDN30ZEvgHneZ+VCs0p26Cu7I7Js2OyA
 Nr24bdmBAm6J8u+tsgoe2kWlvRuvFSmKhGry5fH8=
Received: by mail-lf1-f47.google.com with SMTP id x3so16124871lfc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:33:40 -0700 (PDT)
X-Gm-Message-State: APjAAAXJZ8jblcqH4VkhYoI1TTBd6097GSVeZzc9eQhegIfqBkf6iaoH
 QA86csGnuPveMjNlGjH91H6f3WFuYiU6DrcGQ5M=
X-Google-Smtp-Source: APXvYqzfd8qQfJ47ARKH7ZjU+7AbaDNvBG2A0KFFMMr0HRO82EOOxLdt1QfT4GOhtDlngwx+wXKbAfJRQeeskhxBGWA=
X-Received: by 2002:ac2:514b:: with SMTP id q11mr17797614lfd.33.1563359619184; 
 Wed, 17 Jul 2019 03:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190715124458eucas1p2df56f2e0c7a1a0a9144a4d5fbdb471a9@eucas1p2.samsung.com>
 <20190715124417.4787-1-l.luba@partner.samsung.com>
 <20190715124417.4787-31-l.luba@partner.samsung.com>
In-Reply-To: <20190715124417.4787-31-l.luba@partner.samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 17 Jul 2019 12:33:27 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdD-g1A+LKp1Nmmho2MVRxERfXb+Q3WsBrN=7YbnVufMQ@mail.gmail.com>
Message-ID: <CAJKOXPdD-g1A+LKp1Nmmho2MVRxERfXb+Q3WsBrN=7YbnVufMQ@mail.gmail.com>
Subject: Re: [PATCH v1 30/50] ARM: dts: exynos: add bus_isp266 into Exynos5800
To: Lukasz Luba <l.luba@partner.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_033341_730122_0A25C791 
X-CRM114-Status: GOOD (  16.31  )
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
> The Exynos5420 SoC had one clock for two lines while Exynos5422/5800 have
> dedicated clock tree for the ACLK266_ISP. The max frequency is 300MHz so
> it shares the OPP table with bus_gen. The bus is added here and is enabled
> in .dts file for proper board.

Squash it with 48 please.

BR,
Krzysztof

>
> Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
> ---
>  arch/arm/boot/dts/exynos5800.dtsi | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm/boot/dts/exynos5800.dtsi b/arch/arm/boot/dts/exynos5800.dtsi
> index 57d3b319fd65..3b9200db43b6 100644
> --- a/arch/arm/boot/dts/exynos5800.dtsi
> +++ b/arch/arm/boot/dts/exynos5800.dtsi
> @@ -131,3 +131,13 @@
>  &mfc {
>         compatible = "samsung,mfc-v8";
>  };
> +
> +&soc {
> +               bus_isp266: bus_isp266 {
> +                       compatible = "samsung,exynos-bus";
> +                       clocks = <&clock CLK_DOUT_ACLK266_ISP>;
> +                       clock-names = "bus";
> +                       operating-points-v2 = <&bus_gen_opp_table>;
> +                       status = "disabled";
> +               };
> +};
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
