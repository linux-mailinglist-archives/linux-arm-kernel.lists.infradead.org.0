Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 343EF124884
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 14:35:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EFiQ8yqjW2iWxdBNhzMWFdiXvuIXikKp+a5nFzDdCo=; b=APsRRjRThKANI4
	zoSc60CgzLUgisfy+oQIZ7P3rF2hubEuw1w2bha463NYEU4XJwg4anywrS3yrHrVKSYtOy5L1EhyD
	jbG8VP4Zk2f+X67QDqB0hvhlvBUDiBL3a+1OcwRe1mEDpdeYEfOA6cr53/SblPP0Z33xaKp27GqeX
	43SOrERy6A7tfmnchJWr5P2vCCRyxGvMZEY2AL9+ermUUm94MHnvxEmHAjwsckppA5dWjGZLSiQrY
	J3GkpkHASCw5kweTG6vtlcshvIr/QmBogk+Nwce7YuCEj46XISLToc+nhFFGVAOUa0FX3pxpuH6sf
	Rc3+5VmACR2ZKfRJck8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihZUH-00061t-KP; Wed, 18 Dec 2019 13:35:37 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihZU5-00061B-D7
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 13:35:27 +0000
Received: by mail-il1-x141.google.com with SMTP id f10so1689023ils.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Dec 2019 05:35:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gkEKgt/GZK2xmOcGzjWTpOOcB/kiPGj9OjuqfsdNIfE=;
 b=sssgw8nWNunrDFpKcaAgWjMyHej/RR2H11AeBSC/xDwY5ZQyBYSBn7hi5kkzz+yFeV
 Orw4J1cfsiRpDTz+nz5Yd4p+y9tN5Us8s7/YgtEqzXqLyg9IY1+hOVGQsWW3b9z5m6NS
 oCYbOVpV/WBdLxBl9O3Q5fnjj+YHPt6YdVVH743B9pKQiW5D1CJHwAcPvgNwk8JkVvdX
 n5Kh71LHQkGED5QDvSluKxYpxxAzI91qBTS2BqphYFDS3WP11Uxw/IY6tlzxUBE3+DJs
 r+FQf7OkHhU8X8qcWBNZfzBmBkv2lI25T6rtlMxc0Y86ICf4ml1CARcOu2HAs783IYI4
 mXYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gkEKgt/GZK2xmOcGzjWTpOOcB/kiPGj9OjuqfsdNIfE=;
 b=ns2G2rID59KjK4jYprPZz8lYLxcU2QP/+q3Y2eg9Dkp3aPLPY1uUZELW/GdWosUWMy
 QTBs8jOho5ikqgntWd2bmkH0tfD4Gkj/ceh9o2BHwf+j7vNMj38Kgncu2HRJpiVXU2YD
 eyTj8tQ7o1xW4IVC4GaEKAuRTRv3mass3USUYr5hmrpk5jHXjoIYRM1lr187gx8PTeCt
 61h+KlPr6x/rInU/27H6iLbvdafyl9RlnoZjW7vCnBBJRbGl05bDPEZ0N/jUuZymqecz
 l27RNDRLEQvYS3uwLge3U3RzwjK47sD0m4a5T0pX1cV/Xjh5LE9TLce+LJP1xR6BN6qz
 qVlA==
X-Gm-Message-State: APjAAAUq8UzM9e3TR7QMMWz8bpXGXIWmred8bAjpGDGtg5aPaZCYWzTj
 cBW82WUtzaqGISdQxFM6QJMk9zCDzlmzmAuYPjQ=
X-Google-Smtp-Source: APXvYqwJAf46d/C9VjYfkHpeuMrtLbleQhk2rMy5HqEUAoJqtaKfqLVyH8Z8d5F1MGmKJXZT8+I9ntTVoI/PjfKQtVI=
X-Received: by 2002:a92:4095:: with SMTP id d21mr1831507ill.158.1576676123483; 
 Wed, 18 Dec 2019 05:35:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.1574458460.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1574458460.git.leonard.crestez@nxp.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 18 Dec 2019 07:35:12 -0600
Message-ID: <CAHCN7xKNwit8ueUO0OkebfYh=4hsL7_+DRWEbn2dEt0H322W4w@mail.gmail.com>
Subject: Re: [PATCH v7 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
To: Leonard Crestez <leonard.crestez@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_053525_472278_16287933 
X-CRM114-Status: GOOD (  29.74  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk <linux-clk@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree <devicetree@vger.kernel.org>, linux-pm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Matthias Kaehlcke <mka@chromium.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 22, 2019 at 3:45 PM Leonard Crestez <leonard.crestez@nxp.com> wrote:
>
> This adds support for dynamic scaling of the DDR Controller (ddrc)
> present on i.MX8M series chips. Actual frequency switching is
> implemented inside TF-A, this driver wraps the SMC calls and
> synchronizes the clk tree.
>
> DRAM frequency switching requires clock manipulation but during this operation
> DRAM itself is briefly inaccessible so this operation is performed a SMC call
> to by TF-A which runs from a SRAM area. Upon returning to linux the clock tree
> is updated to correspond to hardware configuration.
>
> This is handled via CLK_GET_RATE_NO_CACHE for dividers but muxes are handled
> manually: the driver will prepare/enable the new parents ahead of switching (so
> that the expected roots are enabled) and afterwards it will call clk_set_parent
> to ensure the parents in clock framework are up-to-date.
>
> This series is useful standalone and roughly similar to devfreq drivers for
> tegra and rockchip.
>
> Running at lower dram rates saves power but can affect the functionality of
> other blocks in the chip (display, vpu etc). Support for in-kernel constraints
> will some separately.
>
> This series has no dependencies outside linux-next. The driver depends
> on features from the NXP branch of TF-A and will cleanly fail to probe
> on mainline. There are also plans to upstream dram dvfs in TF-A.
>
> Changes since v6:
> * Replace ARCH_MXC || COMPILE_TEST with ARCH_MXC && HAVE_ARM_SMCCC
> * Collect reviews
> Link to v6: https://patchwork.kernel.org/cover/11244283/
>
> I'd rather not fix COMPILE_TEST with ifdefs for this driver, if anything
> that should be fixed in smccc header. ARCH_MXC doesn't imply SMCCC, it
> also covers some very old chips which don't have it.
>
> Resending full series because that's the standard method.
>
> Changes since v5:
> * Fix a dram_apb/dram_alt mixup in imx8m_ddrc_set_freq
> * Make clk_get_parent_by_index static (kbuild robot)
> * Adjust messages in imx8m_ddrc_set_freq
> * Use a for loop inside imx8m_ddrc_check_opps instead of while
> * More elaborate description in dt-bindings file.
> Link to v5: https://patchwork.kernel.org/cover/11240289/
>
> Changes since v4:
> * Restore empty _get_dev_status: testing shows this is *NOT* optional. If
> absent then switching to simple_ondemand governor will trigger an Oops.
> * Keep clk registration on single-line in clk-imx8m* for consistency with rest
> of the file.
> * Drop explicit "select PM_OPP"
> * Check for NULL new_dram_core_parent
> * Rename "out_dis_" labels to out_disable_*
> * Use dev_warn on imx8m_ddrc_set_freq error paths after SMC call (where
> operation is not abandoned).
> * More elaborate error messages in imx8m_ddrc_target
> * More elaborate checks when fetching clks in imx8m_ddrc_set_freq
> * Rename ddrc nodes to memory-controller@* as per devicetree.org "Generic Names
> Recommendation"
> * Defer perf support, it requires perf changes to fetch PMU by DT
> Link to v4: https://patchwork.kernel.org/cover/11235685/
>
> Changes since v3:
> * Rename to imx8m-ddrc. Similar blocks are present on imx7d and imx8qxp/imx8qm
> but soc integration is different.
> * Move dt bindings to /memory-controllers/fsl/
> * Fix dt validation issues
> * Fix imx8mm.dtsi ddrc referencing ddrc_opp_table which is only defined in evk
> * Move opps to child of ddrc device node
> * Only add imx_ddrc_get_dev_status in perf patch.
> * Adjust print messages
> Link to v3: https://patchwork.kernel.org/cover/11221935/
>
> Changes since v2:
> * Add support for entire imx8m family including imx8mq B0.
> * Also mark dram PLLs as CLK_GET_RATE_NO_CACHE (required for imx8mq b0 low OPP)
> * Explicitly update dram pll rate at the end of imx_ddrc_set_freq.
> * Use do_div in imx-ddrc (kbuild robot)
> * Improve explanations around adding CLK_GET_RATE_NO_CACHE to dram clks.
> (Stephen Boyd)
> * Handle ddrc devfreq-events earlier for fewer probe defers.
> * Validate DDRC opp tables versus firmware: supported OPPs depend on board and
> SOC revision.
> * Move DDRC opp tables to board dts because they can vary based on ram type on
> board.
> * Verify DDRC rate is changed in clk tree and otherwise report an error.
> * Change imx_ddrc_freq.rate to be measure in MT/s and round down from HZ in
> imx_ddrc_find_freq instead.
> * Split away from NOC scaling and interconnect support.
> Link to v2: https://patchwork.kernel.org/cover/11104113/
>
> Changes since v1:
> * bindings: Stop using "contains" for "compatible"
> * bindings: Set "additionalProperties: false" and document missing stuff.
> * Remove (c) from NXP copyright notice
> * Fix various checkpatch issues
> * Remove unused dram_alt_root clk from imx-ddrc
> Link to v1: https://patchwork.kernel.org/cover/11090649/
>
> Leonard Crestez (5):
>   clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
>   clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
>   dt-bindings: memory: Add bindings for imx8m ddr controller
>   PM / devfreq: Add dynamic scaling for imx8m ddr controller
>   arm64: dts: imx8m: Add ddr controller nodes
>
>  .../memory-controllers/fsl/imx8m-ddrc.yaml    |  72 +++
>  arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |  18 +
>  arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  10 +
>  .../boot/dts/freescale/imx8mn-ddr4-evk.dts    |  18 +
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  10 +
>  arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  24 +
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  10 +
>  drivers/clk/imx/clk-imx8mm.c                  |  11 +-
>  drivers/clk/imx/clk-imx8mn.c                  |  12 +-
>  drivers/clk/imx/clk-imx8mq.c                  |  12 +-
>  drivers/clk/imx/clk-pll14xx.c                 |   7 +
>  drivers/clk/imx/clk.h                         |   1 +
>  drivers/devfreq/Kconfig                       |   9 +

Since there is a Kconfig change, should there me a defconfig change?

>  drivers/devfreq/Makefile                      |   1 +
>  drivers/devfreq/imx8m-ddrc.c                  | 465 ++++++++++++++++++
>  15 files changed, 670 insertions(+), 10 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
>  create mode 100644 drivers/devfreq/imx8m-ddrc.c

I applied the whole series against 5.5-rc1 and I am trying to test it.
I know the 4.14 kernel NXP posted on Code Aurora is capable to
lowering the DDRC controller to 25MHz on the 8MM when the video is
off.  Since there is no video support yet for the 8MM, I was expecting
to see the DDRC clock to be at or around 25MHz.

Using debug FS, I can see the dram core clock is still running at
750MHz, and measuring power, it shows something consistent with what I
see on the Code Aurora kernel with video turned on and the clock at
750MHz.

Is there some way to get the dram_core_clk to drop to 25MHz to see
some power reduction?  The same commands used in the Yocto build don't
apply here since we don't have video.

thanks,

adam
>
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
