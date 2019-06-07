Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80FA13886A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:03:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RSjUpYadbd8gJf2MZkmM6ReZshsks86gZ4deBtkyl4=; b=ftA+MuMFxF9egk
	EJKf9kqlW7kyFh6ETLxvcd7l3cd3JKqEaCO8SSq0S9l32b4fHFe2nort7PkmOI9NuG+VagxhEfQ61
	dfUuyBxO7bRBdWkErAvD/eLtxhApCkR2hfmqpuV6eljDYot/2DdnUKeirmzs8VJvKwlksgYZSJnwd
	i1EIzqi3nCgAi9TRpaq3GGKcm8CLimqtRUc6rORQlVdF4wLycz1OWVdM5xDFWm6VtGz7bQNT0Ntut
	3Gh2eAnoFBzNMbU1eZfJn/3+X1SVb1n0soroSrSjcDLJnRADW1osWTKTslRz7fBDf3lMqXjbJPT9+
	dO+kBC4H2Jo3TBdXyPSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCeL-0006Ef-KK; Fri, 07 Jun 2019 11:03:09 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCeC-0006E9-NJ
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:03:02 +0000
Received: by mail-vs1-xe43.google.com with SMTP id m8so911549vsj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 04:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WUmbq4ZzrfgjJ6I/bdvOaFhtKBJjK9tscZns2i4i8ls=;
 b=rbswCChLasSiMv/BxkP+oqC6iQQ5YnOz2jHk8PMbC0zI9S1v/bznWuilMUyjrXLufI
 tBofULNs3jx0Ow9VaFVaYGxRQvzU82XBOlfJq5ISmCxvw20vVp1FfCTxng7lgcVr/fDO
 9wrhKxb2wX1Yw4awvXoH22X4YIcDGC6/cJSCWFxWFhrLqcAiXL7rOZA4rvSseDG3GeJK
 31m3sVPpE6DB+jvHavpdf3g+3NF6N3xKjgE5q+umHY3ZNSGHOuODtFu5/PLVhF8yEkSj
 HarLC+t7Wt+PP1PnEAgWPPTvHxQkqLFcoM4i2QNtsCkOcRNrm5xargwrFL5jAii+1OSc
 4kmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WUmbq4ZzrfgjJ6I/bdvOaFhtKBJjK9tscZns2i4i8ls=;
 b=YzApngRxA/byH+kEAvzFSyjpu2CWD39azWWZ/vj8vZ4QEVidBd0DowMXMeRp6fd2++
 oov1yyT9mP4+KMUP7C5kr4AXqy4/d9sq1qiCgU+GtrIA9J0mOejxSbL6z0rq8QI5W86z
 6Ff8HVejMo4JvyORUED0n8dF0ukQzrf6PgVOQUjm3F65VZ4G6KWV2yDej2eJk0r7q5aB
 upsQD2Wghz2KAXHOfuZ4rKrYLlULGGRYTWAuSyeqsKOrXgn7joh04yaeOc4V3ywC1/uM
 1NTQXZjk91/SvkAQGqf1YG2p3lbcWzQ++zknObKg3ejUqKzWeI7CCn26UJfC++4MImVT
 oyvg==
X-Gm-Message-State: APjAAAXvslJS0dgiN9Mb9IyPDSvtiGppLnu/QYLgMgP/y0CHHo5jUgTC
 c8fVyjnhcv47WXhW3WuM3BkpxsMnRSIRnjEYvcGhiw==
X-Google-Smtp-Source: APXvYqzDuz5mV6Jsi2xrh1eBdn+z7KJtHM7z3KIMpeuQwSP0He+fkG995ke/oRmFwgQo/qgul6kuZ3xCxNzlcCOd13U=
X-Received: by 2002:a67:706:: with SMTP id 6mr11457746vsh.200.1559905378848;
 Fri, 07 Jun 2019 04:02:58 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 7 Jun 2019 13:02:22 +0200
Message-ID: <CAPDyKFp+UXDrrferK0zP7nPFtvkq6UU29vhJu3HCEUiKcAOsJQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] Add SD host controller support for SC9860 platform
To: Baolin Wang <baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_040300_772720_6DC41CA2 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 arm-soc <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Chunyan Zhang <zhang.lyra@gmail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Olof Johansson <olof@lixom.net>,
 Orson Zhai <orsonzhai@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Jun 2019 at 10:14, Baolin Wang <baolin.wang@linaro.org> wrote:
>
> This patch set adds optional clock support, HS400 enhanced strobe mode support,
> PHY DLL configuration and other optimization to make the SD host controller
> can work well on the Spreadtrum SC9860 platform.
>
> Changes from v1:
>  - Add acked-tags from Adrian.
>  - Fix one mistake by changing MMC_TIMING_MMC_HS to MMC_TIMING_SD_HS in patch 8.
>
> Baolin Wang (9):
>   mmc: sdhci-sprd: Check the enable clock's return value correctly
>   dt-bindings: mmc: sprd: Add another optional clock documentation
>   mmc: sdhci-sprd: Add optional gate clock support
>   mmc: sdhci-sprd: Implement the get_max_timeout_count() interface
>   mmc: sdhci-sprd: Add HS400 enhanced strobe mode
>   mmc: sdhci-sprd: Enable PHY DLL to make clock stable
>   dt-bindings: mmc: sprd: Add PHY DLL delay documentation
>   mmc: sdhci-sprd: Add PHY DLL delay configuration
>   arm64: dts: sprd: Add Spreadtrum SD host controller support
>
>  .../devicetree/bindings/mmc/sdhci-sprd.txt         |   19 +++
>  arch/arm64/boot/dts/sprd/whale2.dtsi               |   35 ++++
>  drivers/mmc/host/sdhci-sprd.c                      |  171 +++++++++++++++++++-
>  3 files changed, 217 insertions(+), 8 deletions(-)
>
> --
> 1.7.9.5
>

Patch 1 -> patch 8, applied for next, thanks!

Patch 9 is for arm-soc.

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
