Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB261EFF78
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 19:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3LjTB/IrhFas1Q5C/Q1kRAOq9CkzVLHZyr4btXiiU0Q=; b=tUx3Gh244g0uvw
	D1mwjh1JFWhTsyY49f0VQpWSL69Y9K/7Jadb3kdZq5bHcy354Ne7paVoKsd8yDNM20L0tReLfludU
	Th6vLopkwj0dF35e/Z+pQqV+RV7Mhh87FuyNjZ1uT8eAveCbchMLJ84RXfaxR+Tr608WBWJclVC3G
	+ZpYQMx5GE+nq5a89OHsswrLNksIf7/ANIKNaG2dXUK0CQhHGNRloXnWirmfyXZhwQTlEOr3mhWmD
	lk7JeeH4qN3j680Q5TN2gWLJQsPT2Bxl3MKbUgjaEfodtaqScMTvBmyOTxv2qmEQy2ZdBIu7Y52wD
	RR9KmxuK6z7zoyUfqOdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhGak-00047e-OV; Fri, 05 Jun 2020 17:57:18 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhGad-00046L-Lg
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 17:57:13 +0000
Received: by mail-lj1-x244.google.com with SMTP id y11so11153888ljm.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 10:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=anholt-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YYnGgbB/yUYHLwRnIgeOB2yfvVDg5PB29KwRpcC2gN4=;
 b=HWlIvo8Gx/GfSgNGX7LbvmwrB8R2/UprUCF6ZpGdTm5eFaUvsIhs/YyhRxIi6C0Bgu
 eKvjCs9vk7Z007hp+pg8+29RTakK0BG4LfZ6KfTBUENIJULV/m/bqBnWIrwsUs1JUM8/
 1/NGt2NwWfaMLuXqDXVe3Io4BwZBxhMbAeR1RevZ7FRe6WgNb1P0/6bzp39+eac5SSI0
 IJ2t/onuc/NeLjFksiSRP+9/3pOoJpsXpFqF1xvY2lFz/Ngtj3zgOT8AEn6f/pRSyZwx
 xSg9J8jx/18GSu+o8jK2uEzV4XTjjcqiZW53KhDmRBA/9Xatc7A9DzNlyF1ysAUOFHM0
 xEvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YYnGgbB/yUYHLwRnIgeOB2yfvVDg5PB29KwRpcC2gN4=;
 b=We0S6KuHx4lw2K1iDL/5TZcfQVM9jC6R0T/rzUjljdxkSEGKDeS0pLJ0KpsC+C2Q5p
 q4LHjAOa6MF+TQ3eoCNc2EYOzYe/duMOB17EqQAARyY7ffe0EwDb6hxAt0CfinjwUPnf
 Zau8JAkixgNW3CeegfrxIlMDmCl4kc4VeFsLvjaeASAJuF08k5w/xMWSlPuU3NE3K6Lh
 gZofvrl+lkOFtvzurTlUuibHvtx0yx7YUOm7LPswAPmPHtrQ8m/QHmB5Jm694hZcOukK
 inTxebL7OfWQ7IPWtcf+X7uAiR7l+sy6JahdUkYQD6it2s27THZfFhl4vYa9AAluteTB
 3wZg==
X-Gm-Message-State: AOAM533CS8U45VL/CYgK9bXQUFUKMqvqhNhIu4DK+NBzyUbxwjaNSoMb
 GiTPFX2uy0CDfB/ZMybpoK5KqOUP9OUShoGqIhSZSA==
X-Google-Smtp-Source: ABdhPJz1QchXGicuq/e4UbyBXjj2+Lh2IaK3OLii9lagU/34toEvTJek1PSUAitdFBhMHfD0XxPR6jfp824v8PIIWqE=
X-Received: by 2002:a2e:8705:: with SMTP id m5mr5176522lji.269.1591379829143; 
 Fri, 05 Jun 2020 10:57:09 -0700 (PDT)
MIME-Version: 1.0
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <6615a61b8af240e3d10f8890e4b2462ccdaac9b9.1590594512.git-series.maxime@cerno.tech>
In-Reply-To: <6615a61b8af240e3d10f8890e4b2462ccdaac9b9.1590594512.git-series.maxime@cerno.tech>
From: Eric Anholt <eric@anholt.net>
Date: Fri, 5 Jun 2020 10:56:58 -0700
Message-ID: <CADaigPUOJMwR0y6CjVpu5+nPAvejbCvEQNLEC+EKq9haBaQynw@mail.gmail.com>
Subject: Re: [PATCH v3 004/105] clk: bcm: Add BCM2711 DVP driver
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_105711_774482_0DAEFCFA 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-clk@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 8:49 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
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
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/Kconfig           |  11 +++-
>  drivers/clk/bcm/Makefile          |   1 +-
>  drivers/clk/bcm/clk-bcm2711-dvp.c | 127 +++++++++++++++++++++++++++++++-
>  3 files changed, 139 insertions(+)
>  create mode 100644 drivers/clk/bcm/clk-bcm2711-dvp.c
>
> diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
> index 8c83977a7dc4..784f12c72365 100644
> --- a/drivers/clk/bcm/Kconfig
> +++ b/drivers/clk/bcm/Kconfig
> @@ -1,4 +1,15 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +
> +config CLK_BCM2711_DVP
> +       tristate "Broadcom BCM2711 DVP support"
> +       depends on ARCH_BCM2835 ||COMPILE_TEST
> +       depends on COMMON_CLK
> +       default ARCH_BCM2835
> +       select RESET_SIMPLE
> +       help
> +         Enable common clock framework support for the Broadcom BCM2711
> +         DVP Controller.
> +
>  config CLK_BCM2835
>         bool "Broadcom BCM2835 clock support"
>         depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
> diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
> index 0070ddf6cdd2..2c1349062147 100644
> --- a/drivers/clk/bcm/Makefile
> +++ b/drivers/clk/bcm/Makefile
> @@ -6,6 +6,7 @@ obj-$(CONFIG_CLK_BCM_KONA)      += clk-kona-setup.o
>  obj-$(CONFIG_CLK_BCM_KONA)     += clk-bcm281xx.o
>  obj-$(CONFIG_CLK_BCM_KONA)     += clk-bcm21664.o
>  obj-$(CONFIG_COMMON_CLK_IPROC) += clk-iproc-armpll.o clk-iproc-pll.o clk-iproc-asiu.o
> +obj-$(CONFIG_CLK_BCM2835)      += clk-bcm2711-dvp.o
>  obj-$(CONFIG_CLK_BCM2835)      += clk-bcm2835.o
>  obj-$(CONFIG_CLK_BCM2835)      += clk-bcm2835-aux.o
>  obj-$(CONFIG_CLK_RASPBERRYPI)  += clk-raspberrypi.o

I do think that single driver is the right model here, but I noticed
that you're not using your new CONFIG_ symbol.  With that fixed, r-b
from me.

(though I'd also recommend devm_platform_get_and_ioremap_resource and
devm_reset_controller_register())

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
