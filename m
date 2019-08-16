Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E751290718
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 19:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc1DB3k4oKOM7KSH4OuCs+eIdDOtUFB5jm4SoTcLBBY=; b=cyQhvXHe7tbATw
	QmvA9A+wTJTMGsuPP/dAYmoYeRGabYqIgE1hKuA5BNEm+ArTW3Q4/WjS2GUalK60oEM6mB396ikNg
	LJ9DPSoUwoxv7ISD3LkaHApXF2+i51NzxAH9A3CiRxcpZfqAkxJkfRXJolJ73+kZcMKGM2qmZCrUV
	S6OWL4OkIyilDd3khAN+TUEqzA9xzVhPGgALnw+4RXcX7HhzuPl4NUAs6+eGsiySNtjCGkIBbT0HT
	yHyEXCnybh4Pl1becCY+M1XIhQkNqfz8E6EK0Jbj6dn+tU005C5KSt/5ZF+O43prrEi8kJnyRzJkw
	4HkGjQAGTCSLRUlkU/TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hygD1-0002qn-Q0; Fri, 16 Aug 2019 17:40:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hygCM-0002qK-Uc; Fri, 16 Aug 2019 17:39:36 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60509205F4;
 Fri, 16 Aug 2019 17:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565977174;
 bh=Hkql629r7jMcpDCSxxQyeYY9VUfj+ahusqlu9yDMvrc=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=VEUKX1woF1+HKNWJy9m1xpe3/2wVZkOVt6mzeKpwGagd4EEyDFFQ5aIFPPYudf/u9
 WI2YjhZvHidzvy2iHc7gwEzPwnYeshMTHPpS6vQTqDNKa9bvgvUbXaZ201A9ru/0LT
 SnNpM1nc4HKDqE1dego2rca6fTLJ1bh6niL07Rho=
MIME-Version: 1.0
In-Reply-To: <1565713248-4906-7-git-send-email-wahrenst@gmx.net>
References: <1565713248-4906-1-git-send-email-wahrenst@gmx.net>
 <1565713248-4906-7-git-send-email-wahrenst@gmx.net>
Subject: Re: [PATCH V2 06/13] clk: bcm2835: Mark PLLD_PER as CRITICAL
From: Stephen Boyd <sboyd@kernel.org>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Stefan Wahren <wahrenst@gmx.net>, Wolfram Sang <wsa@the-dreams.de>
User-Agent: alot/0.8.1
Date: Fri, 16 Aug 2019 10:39:33 -0700
Message-Id: <20190816173934.60509205F4@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_103935_008565_F935B4C0 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Stefan Wahren <wahrenst@gmx.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Stefan Wahren (2019-08-13 09:20:41)
> The VPU firmware assume that the PLLD_PER isn't modified by the ARM core.
> Otherwise this could cause firmware lookups. So mark the clock as critical
> to avoid this.
> 
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> ---
>  drivers/clk/bcm/clk-bcm2835.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
> index fdf672a..b62052e 100644
> --- a/drivers/clk/bcm/clk-bcm2835.c
> +++ b/drivers/clk/bcm/clk-bcm2835.c
> @@ -1785,7 +1785,7 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
>                 .load_mask = CM_PLLD_LOADPER,
>                 .hold_mask = CM_PLLD_HOLDPER,
>                 .fixed_divider = 1,
> -               .flags = CLK_SET_RATE_PARENT),
> +               .flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT),

Please add a comment in the code to the effect that is in the commit
text so we don't have to dig through commits to figure out why this
special CLK_IS_CRITICAL flag is here.

>         [BCM2835_PLLD_DSI0]     = REGISTER_PLL_DIV(
>                 SOC_ALL,
>                 .name = "plld_dsi0",

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
