Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A8BE183E4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 02:08:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfTJDQIc4fVr0/v/g1LYIbgWW8PBagaz51XHkDP5weg=; b=ayEEKObfqJcokA
	edgLyLBewsJq2TAyxix0mj9O83jvwSthJLDI+TWiN2r4d9fglykGBdyF97VvzUOXk1vcn1RdQEFix
	QWhoX3jZ2+VCX1g8MoZ5+M5uzY7cIat56rOZFtmMCi/lDbRL94842IP1Z/m8XyWz+4FUjC4tByIHI
	GBbbWsSGsfbDUckbPj80XH5Wb7nor4kS6KY21fIF4RI6XUZV2ypehVEB+YtMTdcscFhr5YQXdY7GD
	v2eMJv0wRRsovS2k6t9vjikVBWHMT0TZkcanHZoC6QV87syMl8gTq08hNT22ZWHcTj1eYFqTw8hR8
	cEUBFGEtgf/0+NUeQ1Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCYoB-0003RB-14; Fri, 13 Mar 2020 01:08:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCYo2-0003Qo-RY; Fri, 13 Mar 2020 01:08:08 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 68DC020637;
 Fri, 13 Mar 2020 01:08:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584061686;
 bh=huEXu4fEaR36Ih1ki6oSbyO2Ljqw/b2nps3dQae6quM=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=tcCm+pFo0bI3PzNwHW1FNS0Y4pKCzoj7LBVNj6HrlHelXTg7D6IZqc8jxUhJmwh2Z
 cFo+kCWxnMVnulnTe8GdD1iMtzYLCkSq/hpA+Dwj5UvPHQRbU1NM1RyOgKdu9xH/3H
 ntfuyLUKfrnARLfjankKgWRjOnCfUozAQ5zUaToI=
MIME-Version: 1.0
In-Reply-To: <d197ab836d84b89b94ff1927872126767d921e94.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <d197ab836d84b89b94ff1927872126767d921e94.1582533919.git-series.maxime@cerno.tech>
Subject: Re: [PATCH 22/89] clk: bcm: rpi: Discover the firmware clocks
From: Stephen Boyd <sboyd@kernel.org>
To: Eric Anholt <eric@anholt.net>, Maxime Ripard <maxime@cerno.tech>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Date: Thu, 12 Mar 2020 18:08:05 -0700
Message-ID: <158406168552.149997.10601766692457449295@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_180806_938648_A30807E2 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Maxime Ripard (2020-02-24 01:06:24)
> The firmware has an interface to discover the clocks it exposes.
> 
> Let's use it to discover, register the clocks in the clocks framework and
> then expose them through the device tree for consumers to use them.

Everyone's doing it! :)

> diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
> index 3f21888a3e3e..bf6a1e2dc099 100644
> --- a/drivers/clk/bcm/clk-raspberrypi.c
> +++ b/drivers/clk/bcm/clk-raspberrypi.c
> @@ -285,6 +285,95 @@ static struct clk_hw *raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
>         return &raspberrypi_clk_pllb_arm.hw;
>  }
>  
> +static long raspberrypi_fw_dumb_round_rate(struct clk_hw *hw,
> +                                          unsigned long rate,
> +                                          unsigned long *parent_rate)
> +{
> +       return rate;

Can we get a comment here like "The firmware does the rounding but
doesn't tell us so we have to assume anything goes!"

> +}
> +
> +static const struct clk_ops raspberrypi_firmware_clk_ops = {
> +       .is_prepared    = raspberrypi_fw_is_prepared,
> +       .recalc_rate    = raspberrypi_fw_get_rate,
> +       .round_rate     = raspberrypi_fw_dumb_round_rate,
> +       .set_rate       = raspberrypi_fw_set_rate,
> +};
> +
> +static struct clk_hw *raspberrypi_clk_register(struct raspberrypi_clk *rpi,
> +                                              unsigned int parent,
> +                                              unsigned int id)
> +{
> +       struct raspberrypi_clk_data *data;
> +       struct clk_init_data init = {};
> +       int ret;
> +
> +       if (id == RPI_FIRMWARE_ARM_CLK_ID) {
> +               struct clk_hw *hw;
> +
> +               hw = raspberrypi_register_pllb(rpi);
> +               if (IS_ERR(hw)) {
> +                       dev_err(rpi->dev, "Failed to initialize pllb, %ld\n",
> +                               PTR_ERR(hw));
> +                       return hw;
> +               }
> +
> +               hw = raspberrypi_register_pllb_arm(rpi);
> +               if (IS_ERR(hw))
> +                       return hw;
> +
> +               return hw;

Why the double return? Not just

	return raspberrypi_register_pllb_arm(rpi);

> +       }
> +
> +       data = devm_kzalloc(rpi->dev, sizeof(data), GFP_KERNEL);
> +       if (!data)
> +               return ERR_PTR(-ENOMEM);
> +       data->rpi = rpi;
> +       data->id = id;
> +
> +       init.name = devm_kasprintf(rpi->dev, GFP_KERNEL, "fw-clk-%u", id);
> +       init.ops = &raspberrypi_firmware_clk_ops;
> +       init.flags = CLK_GET_RATE_NOCACHE | CLK_IGNORE_UNUSED;

Why ignore unused? Doesn't seem to support enable/disable anyway so not
sure this flag adds any value.

> +
> +       data->hw.init = &init;
> +
> +       ret = devm_clk_hw_register(rpi->dev, &data->hw);
> +       if (ret)
> +               return ERR_PTR(ret);
> +
> +       return &data->hw;
> +}
> +
> +static int raspberrypi_discover_clocks(struct raspberrypi_clk *rpi,
> +                                      struct clk_hw_onecell_data *data)
> +{
> +       struct rpi_firmware_get_clocks_response *clks;
> +       size_t clks_size = NUM_FW_CLKS * sizeof(*clks);
> +       int ret;
> +
> +       clks = devm_kzalloc(rpi->dev, clks_size, GFP_KERNEL);

Use devm_kcalloc to avoid overflow and indicate it's an array.

> +       if (!clks)
> +               return -ENOMEM;
> +
> +       ret = rpi_firmware_property(rpi->firmware, RPI_FIRMWARE_GET_CLOCKS,
> +                                   clks, clks_size);
> +       if (ret)
> +               return ret;
> +
> +       while (clks->id) {
> +               struct clk_hw *hw;
> +
> +               hw = raspberrypi_clk_register(rpi, clks->parent, clks->id);
> +               if (IS_ERR(hw))
> +                       return PTR_ERR(hw);
> +
> +               data->hws[clks->id] = hw;
> +               data->num = clks->id + 1;
> +               clks++;
> +       }
> +
> +       return 0;
> +}
> +
>  static int raspberrypi_clk_probe(struct platform_device *pdev)
>  {
>         struct clk_hw_onecell_data *clk_data;
> diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/bcm2835/raspberrypi-firmware.h
> index 7800e12ee042..e5b7a41bba6b 100644
> --- a/include/soc/bcm2835/raspberrypi-firmware.h
> +++ b/include/soc/bcm2835/raspberrypi-firmware.h
> @@ -135,6 +135,11 @@ enum rpi_firmware_property_tag {
>         RPI_FIRMWARE_GET_DMA_CHANNELS =                       0x00060001,
>  };
>  
> +struct rpi_firmware_get_clocks_response {
> +       __le32  parent;
> +       __le32  id;

Why double spaced or tabbed out?

> +};
> +
>  #if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
>  int rpi_firmware_property(struct rpi_firmware *fw,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
