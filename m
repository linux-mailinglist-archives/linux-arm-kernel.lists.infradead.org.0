Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 480011E39DA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 09:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYTsSe13tBSOYFcUlBo3igkeujLhI/lhymcLL0ZJRhE=; b=uIiSVDpYcGbyQx
	SdiAqWakBxy+pJEW8Yfk09E1iqs2IjWCTx+C777Bf3V5S0WbdNuBxhOjsmxpsdzSqVywuEgPqZXwA
	fTdIHzUVh1VgZzGbmzD5Q2iSib/zfDhGc41c581y3ZOM9PFU5Xpht1uNP/Xmc/nHa2auiXASRLQ9M
	4iovcKC8eYpvlGEJBxxtDSaj1e5nR6ALhhKrOyBQqAGhAG/D/OLzNeGnqLLZDtNwrEiRhBiqyP+8Y
	S4dNF6DPy7YZnXIZ0Yvpajjb/5G4UdvpZ2j77w8WHBUpPep38+ODKTxtIui8l7gFMqsTR66EAhGYS
	Qsbb4Z9zfK5V8ln38NtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdq8v-0006HC-Hy; Wed, 27 May 2020 07:06:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdq8j-0006GU-Ul; Wed, 27 May 2020 07:06:15 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 85A65206F1;
 Wed, 27 May 2020 07:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590563173;
 bh=Bnwio/T0f8/rO+4l0ETfUXCahBdmz6vzX2tvqweK3c4=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=oF/iNegV3lDmsHA8jl2XuOdgHsm3ArbmfhqDo4tj/ixgr/8+hjuVwgK2omrt1GHqK
 lftYRB6EtnDGNvsW0OlYmy8Cp4c40r1rRUvQnh70Y1+AmlskJw2okPi3Ha7N8yyMaB
 MuI4eAKk/rPw1yzcI9NKh9tcdk+KZvcMyWAF4ovE=
MIME-Version: 1.0
In-Reply-To: <a1efabae8d7df30c987bff10544c2071e906e07a.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <a1efabae8d7df30c987bff10544c2071e906e07a.1587742492.git-series.maxime@cerno.tech>
Subject: Re: [PATCH v2 25/91] clk: bcm: Add BCM2711 DVP driver
From: Stephen Boyd <sboyd@kernel.org>
To: Eric Anholt <eric@anholt.net>, Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Wed, 27 May 2020 00:06:12 -0700
Message-ID: <159056317280.88029.13256292035418533462@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_000614_011926_F9EDBC0F 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2020-04-24 08:34:06)
> The HDMI block has a block that controls clocks and reset signals to the
> HDMI0 and HDMI1 controllers.
> 
> Let's expose that through a clock driver implementing a clock and reset
> provider.
> 
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Reviewed-by: Stephen Boyd <sboyd@kernel.org>

> diff --git a/drivers/clk/bcm/clk-bcm2711-dvp.c b/drivers/clk/bcm/clk-bcm2711-dvp.c
> new file mode 100644
> index 000000000000..c1c4b5857d32
> --- /dev/null
> +++ b/drivers/clk/bcm/clk-bcm2711-dvp.c
> @@ -0,0 +1,127 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// Copyright 2020 Cerno
> +
> +#include <linux/clk-provider.h>
> +#include <linux/module.h>
[...]
> +
> +static int clk_dvp_probe(struct platform_device *pdev)
> +{
> +       struct clk_hw_onecell_data *data;
> +       struct resource *res;
> +       struct clk_dvp *dvp;
> +       void __iomem *base;
> +       int ret;
> +
> +       dvp = devm_kzalloc(&pdev->dev, sizeof(*dvp), GFP_KERNEL);
> +       if (!dvp)
> +               return -ENOMEM;
> +       platform_set_drvdata(pdev, dvp);
> +
> +       dvp->data = devm_kzalloc(&pdev->dev,
> +                                struct_size(dvp->data, hws, NR_CLOCKS),
> +                                GFP_KERNEL);
> +       if (!dvp->data)
> +               return -ENOMEM;
> +       data = dvp->data;
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       base = devm_ioremap_resource(&pdev->dev, res);

devm_platform_ioremap_resource()?

> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
