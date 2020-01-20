Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 024B214293F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 12:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gUMaimRGFNyLp5wTjBkFGgvmUkzqlBRbM7FtnUP1Us=; b=HtTzq9kaSGf1fj
	Fftc7evyFqHHFHGFpL2pv2FCzZyF+N99u0wRzpeCJIM/i2iSBvkkStx1I5s54bHlGOOnkqF3oTQUo
	fLoCAbtmSy2UsAyWlOZwzuYJSoBDBGpgDInZ1vzlgUPdF/kcSaxw+5b95Ks5KoLW3unsK0m8Wg/Ad
	LXOmwygpupp2wAD8AYvgIovDmOablSHSbBb4yv1JtGz39Y0pFP+D9yqTNHxaiez//PAqa/6K8wSFY
	XbFBLMsXKopfHfoNzW5MeU0WXm+q09q4jpOJjHrCpM4KMidubkEdimTI+dByHKg9moEyvKF8ugN0V
	ZimJrqkO7DDPvX7tUGGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVCj-0003bX-LW; Mon, 20 Jan 2020 11:26:49 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVCI-0003Kc-PV
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 11:26:28 +0000
Received: by mail-ua1-x944.google.com with SMTP id l6so11338300uap.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Jan 2020 03:26:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iMltZyjqEXLKv+701Vx+gjP4V99Edn3VdTw2YKakZQU=;
 b=x9SLfMjB7Joymxy2DJJcHt4fk9IEyF7qN97bzNCYwmpcDBqmg1SdTYWO+kyjnMwaO5
 vlvUyp6xCkzLYG9znKaAlebIE6y7kK9X7Q68jdurP3WSoOblaPzDt5rgUmu/T7GzU//4
 8FYdO/Lp7bFdhVWgWiCt3KdYFvC1hS2HDZQua1Ou3cx8/TA3PD+Pnezep0ywRPTZU5hs
 8dzSXMy9v8ZNvyqKx0oB2Ll+5BGcLziuba5+Fb2Fhvp7gG6F7hP/g4O/lk4gQcQmiuPF
 QIMd9M8CdpLh+4bjIqsnfgmhiGxHi/pBs7PV+EX3YYEbKz8KS4kwmKpoIh7nQqvfEwYr
 IW2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iMltZyjqEXLKv+701Vx+gjP4V99Edn3VdTw2YKakZQU=;
 b=ZJjbIGjUG8PkcomWd61IW/O8Ndas12OO2GbI49H0J7KzSaatAm5z3QBiNGukyX7LYs
 xq821uRHgpd8gE/cWaA/Hnly9ZLYjeP14aF7xyh+2ebxipjZTZljH3WzsBZELW5U0oH+
 ruQAgNEwcqLBz67RyHeUIHRhSXyfb7oAdYnoEwroFuWjxAiwWj1NRsSAdb9b34g/72Vy
 PbMmbLwn1JwaV9VN2Sg9F9WcjhwEIn6ncKL0sSmfN3hRG+dAW0yC6fU7p9XJwsgrf8oA
 TYVtKUTzU6Oi1iuX7XcmgDF/J2zTGUQl+9NXOu8kPiE4ZbP9Hl66w0DxUl8Iid8ayM6H
 6Ojg==
X-Gm-Message-State: APjAAAWnDeT25uXUiZbfOc53fPjxp7ilkGAvpmS6ttIMxr4FHxSn+kVo
 /QoQfDyEfwy6IJ8jHBwv3BDmIoQCl6ND+H6vZlnGBw==
X-Google-Smtp-Source: APXvYqxKOg9xB8XfL4rfLGRcMxbyRFwMSCwEYJNga3Tv3rpmXA1r3UXHbtiJXS2hERZ8PkUrI2DpkswuNuzWn5p+4j4=
X-Received: by 2002:ab0:6894:: with SMTP id t20mr28696691uar.100.1579519581204; 
 Mon, 20 Jan 2020 03:26:21 -0800 (PST)
MIME-Version: 1.0
References: <20200113210706.11972-1-alcooperx@gmail.com>
In-Reply-To: <20200113210706.11972-1-alcooperx@gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 20 Jan 2020 12:25:45 +0100
Message-ID: <CAPDyKFr3mrkY5KNO8tnjD1Fuqbbbb_4s6vuJ4cyOrOHM1E5vQg@mail.gmail.com>
Subject: Re: [PATCH 0/6] mmc: sdhci-brcmstb: Driver updates
To: Al Cooper <alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_032622_848143_67E32A96 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Florian Fainelli <f.fainelli@gmail.com>, Andrew Jeffery <andrew@aj.id.au>,
 YueHaibing <yuehaibing@huawei.com>, Takao Orito <orito.takao@socionext.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Faiz Abbas <faiz_abbas@ti.com>,
 BCM Kernel Feedback <bcm-kernel-feedback-list@broadcom.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sowjanya Komatineni <skomatineni@nvidia.com>, "Enrico Weigelt,
 metux IT consult" <info@metux.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 at 22:07, Al Cooper <alcooperx@gmail.com> wrote:
>
> The latest BRCMSTB SoC's now use a new Arasan controller along
> with a custom Broadcom PHY that supports HS200, HS400, SDR104,
> HS400E-ES and CQE. This series of commits adds support for these
> new features along with a few bug fixes. The 7216 is the first
> SoC to have this new hardware.
>
> Al Cooper (6):
>   dt-bindings: mmc: brcm,sdhci-brcmstb: Add support for 7216b0
>   mmc: sdhci-brcmstb: Add ability to use HS400ES transfer mode
>   mmc: sdhci-brcmstb: Fix driver to defer on clk_get defer
>   mmc: sdhci-brcmstb: Add shutdown callback
>   mmc: sdhci-brcmstb: Add support for Command Queuing (CQE)
>   mmc: sdhci-brcmstb: Fix incorrect switch to HS mode
>
>  .../bindings/mmc/brcm,sdhci-brcmstb.txt       |  41 ++-
>  drivers/mmc/host/Kconfig                      |   1 +
>  drivers/mmc/host/sdhci-brcmstb.c              | 270 +++++++++++++++++-
>  3 files changed, 284 insertions(+), 28 deletions(-)
>
> --
> 2.17.1
>

Applied for next, thanks!

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
