Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB1B1F7194
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 03:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KAF7UePdsMASqWOLrPYMSq7Ip/GehADnrbdgJHnZzHQ=; b=N59qAnQp2H4p27
	wm3QD918D8sGncIfDftbuPxNvMBLBfh6WP0f+Uv74D0/8T6Kdx5nKJy75RltGTVkdKP9sVD0iJfyT
	Jhe/QjSOfi59i7vGYq0fV7Nt2YQz8qw7xf3SBKhO8dXgWgqwsdN2iWWoEsc1Zz0lT/KXO9eamqDoi
	j1ylD/HAeHG9zV4Q4Cx3NSxSUy2CQlvSuZI8XLAwNqpkZMXjNuXhRjrTVT1GwAH/IH/mL5nMAJcS2
	twZ+oaJ7sRmgIUsNRcpKyrn5uls4JJ9R0cvfljQFMu7KPAWjpK+EJw0pjedEbkAYUxCZFOa4QBmCI
	8bZgL2uXN7jUBY+y87wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjY9S-0005VT-9e; Fri, 12 Jun 2020 01:06:34 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjY9H-0005UN-Tt; Fri, 12 Jun 2020 01:06:25 +0000
Received: by mail-ej1-x642.google.com with SMTP id w16so7846954ejj.5;
 Thu, 11 Jun 2020 18:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xWMqM4EWUTN/tZ1PSJ29RPSc7m9eyjQgLenvkceVjOU=;
 b=mNx6536r715NBnskOPn1bdL5xCLTV9aec/WpZqRnZrhvWlD+kxiMUC9R+o/sQtOPK1
 m2ldqoyMAEgUFiwM2DFUto+MuvVzSYlnys5Gwx99yKzZhRVmtm6FI19U8PDeV+0oKHIf
 4qtt5+hz0BWxGpHxFEakWLwDW+m/zs76ThXZ1XMjIyEk5CRBaHHDtzj11Eo3Q3AFYzAl
 Y/SD6ODdt/SSDEo+kliR/bCL7fe9qra4GEEHjAaxEVAiiqWgp+XJyXHBjWRhUkO2MkzE
 JyLgiLlc82/T3yfRmqXBMnPXlTzqI0OaJ0WbFqHQMkBBw73fJCszzV0zQsePLAMWCgpS
 XF0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xWMqM4EWUTN/tZ1PSJ29RPSc7m9eyjQgLenvkceVjOU=;
 b=Jz63sq/++7KxrQCKOVGmLROoBjqR7mgjY/zzXVHjKyw7MAlPVwA+UgpDB4RhfXe2mD
 fLvQLugYPMbgwr6v5BDjJ0spqOsvHvLlkfp2w7uU4Tm4iTIG4FyBk3s2sC5i5sZUkJUV
 R6PxyUHSF8k8hITr7qlJos1ga9CUyPFCsZbzknMfqKQBIZtZe8riTNO1KhjH7J2NeMHe
 3/nBJ1ST+GbjLUoWvr+cVdwLzIoWrKup8o5vYoKcVxtqe7yPhsDhLAXt+pxPMpdADvOA
 YGqRstHpMnt/mRKMuVy63FRwAvKnownoT7z/vbhk+MUu59LWpZru8+zvlVOql1Xc6FHy
 s/yQ==
X-Gm-Message-State: AOAM531psRH3pK574kDQVM8fAX/ARLR2sDGXSv4oi3fqvSeov0zA0n9r
 11VMCbUbUEULO9cuqLqj+QHyYa5mFqbZiNHblrM=
X-Google-Smtp-Source: ABdhPJyZ5DVMliAOduWmg47LdIrQ4yp92mfh3e85UoCZsPM9fdn/2djYt+DceiV9URZ9A6OY+OcY2ks7Bhv9wyUHhhI=
X-Received: by 2002:a17:906:5595:: with SMTP id
 y21mr11305629ejp.61.1591923979560; 
 Thu, 11 Jun 2020 18:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
In-Reply-To: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 11 Jun 2020 21:06:07 -0400
Message-ID: <CAMdYzYr+NF7L3KKzcGano=j9V844Gy8gH03hD++CoPe8Ao1QxQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/13] Patches to improve transfer efficiency for
 Rockchip SoCs.
To: Sugar Zhang <sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_180623_981650_175D2C05 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [pgwipeout[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Carlos de Paula <me@carlosedp.com>,
 Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, dmaengine@vger.kernel.org,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Robin Murphy <robin.murphy@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Good Evening,

I am currently testing this on the rk3399-rockpro64, and it appears to
fully fix the gmac problem without using txpbl.
PCIe also seems to be more stable at high load.
I need to conduct long term testing, but it seems to be doing very well.

Unfortunately it doesn't fix the rk3328 gmac controller.

Tested-by: Peter Geis <pgwipeout@gmail.com>

On Mon, Jun 8, 2020 at 9:15 PM Sugar Zhang <sugar.zhang@rock-chips.com> wrote:
>
>
>
> Changes in v2:
> - fix FATAL ERROR: Unable to parse input tree
>
> Sugar Zhang (13):
>   dmaengine: pl330: Remove the burst limit for quirk 'NO-FLUSHP'
>   dmaengine: pl330: Add quirk 'arm,pl330-periph-burst'
>   dt-bindings: dma: pl330: Document the quirk 'arm,pl330-periph-burst'
>   ARM: dts: rk3036: Add 'arm,pl330-periph-burst' for dmac
>   ARM: dts: rk322x: Add 'arm,pl330-periph-burst' for dmac
>   ARM: dts: rk3288: Add 'arm,pl330-periph-burst' for dmac
>   ARM: dts: rk3xxx: Add 'arm,pl330-periph-burst' for dmac
>   ARM: dts: rv1108: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: px30: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: rk3308: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: rk3328: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: rk3368: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: rk3399: Add 'arm,pl330-periph-burst' for dmac
>
>  .../devicetree/bindings/dma/arm-pl330.txt          |  1 +
>  arch/arm/boot/dts/rk3036.dtsi                      |  1 +
>  arch/arm/boot/dts/rk322x.dtsi                      |  1 +
>  arch/arm/boot/dts/rk3288.dtsi                      |  3 ++
>  arch/arm/boot/dts/rk3xxx.dtsi                      |  3 ++
>  arch/arm/boot/dts/rv1108.dtsi                      |  1 +
>  arch/arm64/boot/dts/rockchip/px30.dtsi             |  1 +
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  2 +
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  1 +
>  arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  2 +
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  2 +
>  drivers/dma/pl330.c                                | 44 +++++++++++++++-------
>  12 files changed, 49 insertions(+), 13 deletions(-)
>
> --
> 2.7.4
>
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
