Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69AD12C2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E63W0k7TNMiEftolt2h20tIIF3RaRwZkTtkikPVew2Q=; b=UrR7VLy6HXXxpo
	t7NB+0fZZ9w34Nzp1Eu96MjGMWgGFTaAnFQejtrXj54w3wXFH5N5bkElwvWpdEM2i7NewyB5wVEge
	V3cWuqWbSLEEI5ahHIhB1vDtZYYIdbdt2DHvIbwR6uZVXvnIACibRXGbkPbkrdnQZKuORfHCB5D6D
	OJpt4rseixFEXxhmcI7ttJ2vI/paDCpbzEmc2VIc/1LTwlKXWIObaCQTN5olD4O2rtZhsb+0iHkZC
	FyrbNFepsHLGWT13X1ZmnYMjC5U7hxnOcoM7NyNC1zEPd0UKl0IcwkHHzC4wuJyaEx8mHTpJ6DBDk
	Wp4koSlo/MLc0E65RH9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWDz-00059R-QP; Fri, 03 May 2019 11:19:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWDs-00058Q-2w
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:19:25 +0000
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com
 [209.85.167.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91E12208C3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 May 2019 11:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556882361;
 bh=UYFh2fznuaQspBCzomd2OghwGe6Z9MYbCrTWM3XoNG0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HG+Oy2VpgrIi1Cch6D4HchqpzLMZ46CRPTgAIZvUE1G6AQZFfMITgO02NydGVgooA
 CWnK+/SQ2OfdlS0TKVCLaFSSRwd/cR/y8LnOWA9aPJhO/KZyL0R5Z9/72GjL0p9bir
 RRERQz44i313wNP6/8Ze7BH7//smOtdYqEovLNB0=
Received: by mail-lf1-f51.google.com with SMTP id o16so4140456lfl.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 04:19:21 -0700 (PDT)
X-Gm-Message-State: APjAAAWogP9Mq+bQWiUCmIn7NfXF4jlG0uOQPkpiO4f+nHrfeh6IQooy
 1aPwd1s/h3eI7eJD5Iv0BK/CH0g79Sy2v1AhC2U=
X-Google-Smtp-Source: APXvYqxjSiIsSkOWkFFKQc0VvX9PMx8wSsDNflixMMiDXvGvhtL+PIknt+H/jFFWa/8RyhTFVN8QLdwyEWRmisP8Bto=
X-Received: by 2002:a19:189:: with SMTP id 131mr3170741lfb.74.1556882359840;
 Fri, 03 May 2019 04:19:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190313193408.23740-1-abailon@baylibre.com>
In-Reply-To: <20190313193408.23740-1-abailon@baylibre.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Fri, 3 May 2019 13:19:08 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeOnrgnX=onMeX1izS2kYKAkD8TvFVykYTyW-v4NOv3vA@mail.gmail.com>
Message-ID: <CAJKOXPeOnrgnX=onMeX1izS2kYKAkD8TvFVykYTyW-v4NOv3vA@mail.gmail.com>
Subject: Re: [RFC PATCH 0/3] Add support of busfreq
To: Alexandre Bailon <abailon@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_041924_155232_1DFF59E2 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: aisheng.dong@nxp.com, linux-pm@vger.kernel.org, khilman@baylibre.com,
 mturquette@baylibre.com, ccaione@baylibre.com, linux-kernel@vger.kernel.org,
 zening.wang@nxp.com, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, ptitiano@baylibre.com,
 Viresh Kumar <viresh.kumar@linaro.org>, georgi.djakov@linaro.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 13 Mar 2019 at 20:35, Alexandre Bailon <abailon@baylibre.com> wrote:
>
> This series implements busfreq, a framework used in MXP's
> tree to scale the interconnect and dram frequencies.
> In the vendor tree, device's driver request for a
> performance level, which is used to scale the frequencies.
> This series implements it using the interconnect framework.
> Devices' driver request for bandwidth which is use by busfreq
> to determine a performance level, and then scale the frequency.
>
> Busfreq is quite generic. It could be used for any i.MX SoC.
> A busfreq platform driver just have to define a list of
> interconnect nodes, and some OPPs.
>
> This series is sent as RFC mostly because the current support
> of i.MX SoC won't benefit of busfreq framework, because the
> clocks' driver don't support interconnect / dram frequency
> scaling.
> As exemple, this series implements busfreq for i.MX8MM whose
> upstreaming is in progress. Because this relies on ATF to
> do the frequency scaling, it won't be hard make it work.
>
> As exemple, this series implements busfreq for
> Alexandre Bailon (3):
>   drivers: interconnect: Add a driver for i.MX SoC
>   drivers: interconnect: imx: Add support of i.MX8MM
>   dt-bindings: interconnect: Document fsl,busfreq-imx8mm bindings

Hi Alexandre,

I am quite late but I just found your email.

This looks very similar to existing framework - devfreq, which purpose
is to scale the system busses based on performance counters/events. It
would be nice if we could avoid duplication of existing subsystems.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
