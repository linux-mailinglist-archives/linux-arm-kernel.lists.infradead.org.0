Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB70B0661
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 03:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DAtHsiaMEk3blesq2JDsp8iUw8k7fLLouLS6X1BLc/A=; b=ktNkw5L85a1byc
	HPg9TwkqnPY8HTTy1BqL9udsb9TuLS7Pveza+Xjq9L1cBp12tdGZeDeoqBKjO3V/3GUVmy4+fuQEy
	jKfKcr+d+OObsTmTfEB0RraJc30agDZeiFl3iBDPVhON9hMdeGgj9/jSQz5V5LwHj8EyStgQ2QZl4
	ci2NvaeE02kzSbXb8ftBnNy3PGt4ej3jjDHKg1SUKRwR/FyRKJtB6gohGNQCOSeMatkDZ9vzPwTrP
	vcy0r4woOri/unolfUY89sPLIKNg/lIxRVAFJGEVBq4hscCFtzNlrBLbbZBs2/7SEniGPSbF2gK5f
	GIF+6MAd5x6zdnwxFaoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8DWP-0001Eh-4H; Thu, 12 Sep 2019 01:03:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8DWA-0001DD-9e
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 01:03:27 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0DE5220863;
 Thu, 12 Sep 2019 01:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568250205;
 bh=DNaLcHjtAram+fHXt9n0Qh+Msw5zL/BxK7rfBfFbCdY=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=WHfcMcEd5siGpnVlhfOi3HeoUu2n1CVCwXugiYRcQOgA5PLidzNvtx5w+bfY/+1wI
 C/mBQrEqNueP5fBZhnFV1nRdITVQHNm//bZ3IJS0geeKnpEGeMT/ZSf1speT+vj9QB
 GHbvtbzI6vqWlY6Lm0WmSoelZBYf8laWgucQJCJ8=
MIME-Version: 1.0
In-Reply-To: <f6cefef2bf6b34ec6eb82d3614054734fa5e8dd1.1568239378.git.amit.kucheria@linaro.org>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
 <f6cefef2bf6b34ec6eb82d3614054734fa5e8dd1.1568239378.git.amit.kucheria@linaro.org>
To: Amit Kucheria <amit.kucheria@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Sebastian Reichel <sre@kernel.org>, Will Deacon <will@kernel.org>,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/4] arm64: Kconfig: Fix XGENE driver dependencies
User-Agent: alot/0.8.1
Date: Wed, 11 Sep 2019 18:03:24 -0700
Message-Id: <20190912010325.0DE5220863@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_180326_362985_CE8D1F67 
X-CRM114-Status: GOOD (  10.41  )
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
Cc: linux-gpio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Amit Kucheria (2019-09-11 15:18:45)
> diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> index 801fa1cd0321..9b2790d3f18a 100644
> --- a/drivers/clk/Kconfig
> +++ b/drivers/clk/Kconfig
> @@ -225,7 +225,7 @@ config CLK_QORIQ
>  
>  config COMMON_CLK_XGENE
>         bool "Clock driver for APM XGene SoC"
> -       default ARCH_XGENE
> +       depends on ARCH_XGENE
>         depends on ARM64 || COMPILE_TEST

Is ARCH_XGENE supported outside of ARM64? I'd expect to see something
more like depends on ARCH_XGENE || COMPILE_TEST and default ARCH_XGENE
so that if the config is supported it becomes the default. Or at least
depends on ARCH_XGENE && ARM64 || COMPILE_TEST

>         ---help---
>           Sypport for the APM X-Gene SoC reference, PLL, and device clocks.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
