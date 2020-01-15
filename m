Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31FAB13BC8F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 10:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I1ubjCkWwmWWESsiDUoZZFGJlqfsiSsujD+I2/RpSdM=; b=n7knkKXXCckHM1
	I2fMf0hs9WDQgtd0Ixl35KoyibRHg7RfbWj9O9ocsNin3DAQRTC9WhUc/pZpqAbQprKzcqElSUD3/
	t+ZXvBTSlLSBLdcO2G5S5ZF5WY0Z6wic/drO25S/SpfFFNdDJIet1KBWDCHu3vdeDkvnbwkNO0mR9
	Sisyvpq+lbchToACzeaepfd3ZcQQUXQxDOvShIXnsrzZv1iUh7RsUsxcXEC9edeFJqgUybVUmlKhX
	Xdjg2IMh1ExfnMWbwP5iszs1cY2Kks+UlfXea8/0xpTyUYB119jpFvsdRkK6vuYuljRyGlDGrRz4j
	HASFrOvbqmejbl5PmnRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irf99-0001jf-GW; Wed, 15 Jan 2020 09:39:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irf8y-0001iI-3r
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 09:39:25 +0000
Received: from mail-yw1-f50.google.com (mail-yw1-f50.google.com
 [209.85.161.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E31124655
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 09:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579081158;
 bh=3BwWvYMuem14+n2TmV9f9i2OsgoBt6h4ggsil5vWDig=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cA5aoyXyxYGI7IPsDDoug57lJFbBGjHiBDTBlq5mADqc33fl2xeBsNh0/zVcPmcVz
 suq5supQ4caOVJbABB4nVMYD3djLwwrCIDoPbMm6L0wj0oJ0GwigBG9dYdhffUT7z0
 GL0QIQnV5eyUvi+5inGo101sNQae5tL8xqVHOWow=
Received: by mail-yw1-f50.google.com with SMTP id n184so10751776ywc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 01:39:18 -0800 (PST)
X-Gm-Message-State: APjAAAUwY+HVEy1GZLLzi4u/iyVO92SuhHgq4GqL0zVDOKBCJWJd+sBl
 ssbeZJqeIyxtvF13R7aqbEXCChG5mF3g5eG8Y7A=
X-Google-Smtp-Source: APXvYqwbbFyKZvB+uBGHFoEP+PhF2sh9i9BNmnc893jtvBts+oqSNTSCleGN5QbTWxkgAzRP3Ks1uOl0ZITmuP35jeA=
X-Received: by 2002:a81:60c2:: with SMTP id
 u185mr22270637ywb.112.1579081157390; 
 Wed, 15 Jan 2020 01:39:17 -0800 (PST)
MIME-Version: 1.0
References: <20200112122107.GD27570@T480>
In-Reply-To: <20200112122107.GD27570@T480>
From: Shawn Guo <shawnguo@kernel.org>
Date: Wed, 15 Jan 2020 17:39:06 +0800
X-Gmail-Original-Message-ID: <CAJBJ56LzrbLPEL2fCxd+d4GhEcvgk+hUW5QOh7-kjjpE3=40Qw@mail.gmail.com>
Message-ID: <CAJBJ56LzrbLPEL2fCxd+d4GhEcvgk+hUW5QOh7-kjjpE3=40Qw@mail.gmail.com>
Subject: Re: [GIT PULL] i.MX clock changes for 5.6
To: Stephen Boyd <sboyd@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_013920_204905_329A746C 
X-CRM114-Status: GOOD (  22.21  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Agner <stefan@agner.ch>, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On Sun, Jan 12, 2020 at 8:21 PM Shawn Guo <shawnguo@kernel.org> wrote:
>
> The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
>
>   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-clk-5.6

Please ignore this pull request.  IMX_COMPOSITE_CORE change breaks DT
compatibility.  I will send v2 shortly with the offending patches
taken out.

Shawn

>
> for you to fetch changes up to ec44c497dc64f1cd4cc4cde414235891344a353a:
>
>   clk: imx: imx8mn: use imx8m_clk_hw_composite_core (2020-01-12 15:24:04 +0800)
>
> ----------------------------------------------------------------
> i.MX clock changes for 5.6:
>
>  - A series from Abel Vesa to do some trivial cleanups which will be
>    helpful for i.MX clock driver switching to clk_hw based API.
>  - A series from Anson Huang to add i.MX8MP clock driver support.
>  - Disable non-functional divider between pll4_audio_div and
>    pll4_post_div on imx6q.
>  - Fix watchdog2 clock name typo in imx7ulp clock driver.
>  - A couple of patches from Leonard Crestez to set CLK_GET_RATE_NOCACHE
>    flag for DRAM related clocks on i.MX8M SoCs.
>  - Suppress bind attrs for i.MX8M clock driver to avoid the possibility
>    of reloading the driver at runtime.
>  - Add a big comment in imx8qxp-lpcg driver to tell why
>    devm_platform_ioremap_resource() shouldn't be used for the driver.
>  - A correction on i.MX8MN usb1_ctrl parent clock setting.
>  - A couple of trivial cleanup on clk-divider-gate driver.
>  - A series from Peng Fan to convert i.MX8M clock drivers to clk_hw
>    based API.
>  - Add a IMX_COMPOSITE_CORE flag for i.MX8M clock drivers to reuse
>    imx8m_clk_hw_composite for core clock slice.
>
> ----------------------------------------------------------------
> Abel Vesa (11):
>       clk: imx: Add correct failure handling for clk based helpers
>       clk: imx: Rename the SCCG to SSCG
>       clk: imx: Replace all the clk based helpers with macros
>       clk: imx: pllv1: Switch to clk_hw based API
>       clk: imx: pllv2: Switch to clk_hw based API
>       clk: imx: imx7ulp composite: Rename to show is clk_hw based
>       clk: imx: Rename sccg and frac pll register to suggest clk_hw
>       clk: imx: Rename the imx_clk_pllv4 to imply it's clk_hw based
>       clk: imx: Rename the imx_clk_pfdv2 to imply it's clk_hw based
>       clk: imx: Rename the imx_clk_divider_gate to imply it's clk_hw based
>       clk: imx7up: Rename the clks to hws
>
> Anson Huang (3):
>       clk: imx: gate4: Switch imx_clk_gate4_flags() to clk_hw based API
>       dt-bindings: imx: Add clock binding doc for i.MX8MP
>       clk: imx: Add support for i.MX8MP clock driver
>
> Fabio Estevam (1):
>       clk: imx7ulp: Fix watchdog2 clock name typo
>
> Jan Remmet (1):
>       clk: imx6q: disable non functional divider
>
> Leonard Crestez (4):
>       clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
>       clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
>       clk: imx8m: Suppress bind attrs
>       clk: imx8qxp-lpcg: Warn against devm_platform_ioremap_resource
>
> Li Jun (1):
>       clk: imx8mn: correct the usb1_ctrl parent to be usb_bus
>
> Peng Fan (15):
>       clk: imx: clk-divider-gate: fix a typo in comment
>       clk: imx: clk-divider-gate: drop redundant initialization
>       clk: imx: clk-pll14xx: Switch to clk_hw based API
>       clk: imx: clk-composite-8m: Switch to clk_hw based API
>       clk: imx: add imx_unregister_hw_clocks
>       clk: imx: add hw API imx_clk_hw_mux2_flags
>       clk: imx: gate3: Switch to clk_hw based API
>       clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
>       clk: imx: imx8mn: Switch to clk_hw based API
>       clk: imx: imx8mm: Switch to clk_hw based API
>       clk: imx: imx8mq: Switch to clk_hw based API
>       clk: imx: composite-8m: add imx8m_clk_hw_composite_core
>       clk: imx: imx8mq: use imx8m_clk_hw_composite_core
>       clk: imx: imx8mm: use imx8m_clk_hw_composite_core
>       clk: imx: imx8mn: use imx8m_clk_hw_composite_core
>
>  .../devicetree/bindings/clock/imx8mp-clock.yaml    |  68 ++
>  drivers/clk/imx/Kconfig                            |   6 +
>  drivers/clk/imx/Makefile                           |   3 +-
>  drivers/clk/imx/clk-composite-7ulp.c               |   2 +-
>  drivers/clk/imx/clk-composite-8m.c                 |  22 +-
>  drivers/clk/imx/clk-divider-gate.c                 |  12 +-
>  drivers/clk/imx/clk-frac-pll.c                     |   7 +-
>  drivers/clk/imx/clk-imx6q.c                        |   5 +-
>  drivers/clk/imx/clk-imx7ulp.c                      | 182 ++---
>  drivers/clk/imx/clk-imx8mm.c                       | 558 +++++++--------
>  drivers/clk/imx/clk-imx8mn.c                       | 494 ++++++-------
>  drivers/clk/imx/clk-imx8mp.c                       | 764 +++++++++++++++++++++
>  drivers/clk/imx/clk-imx8mq.c                       | 575 ++++++++--------
>  drivers/clk/imx/clk-imx8qxp-lpcg.c                 |  11 +
>  drivers/clk/imx/clk-pfdv2.c                        |   2 +-
>  drivers/clk/imx/clk-pll14xx.c                      |  29 +-
>  drivers/clk/imx/clk-pllv1.c                        |  14 +-
>  drivers/clk/imx/clk-pllv2.c                        |  14 +-
>  drivers/clk/imx/clk-pllv4.c                        |   2 +-
>  drivers/clk/imx/{clk-sccg-pll.c => clk-sscg-pll.c} | 152 ++--
>  drivers/clk/imx/clk.c                              |  12 +-
>  drivers/clk/imx/clk.h                              | 172 +++--
>  include/dt-bindings/clock/imx8mp-clock.h           | 300 ++++++++
>  23 files changed, 2349 insertions(+), 1057 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/imx8mp-clock.yaml
>  create mode 100644 drivers/clk/imx/clk-imx8mp.c
>  rename drivers/clk/imx/{clk-sccg-pll.c => clk-sscg-pll.c} (70%)
>  create mode 100644 include/dt-bindings/clock/imx8mp-clock.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
