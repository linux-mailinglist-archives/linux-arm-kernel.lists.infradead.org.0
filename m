Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C0F130C5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 04:09:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EUcgm51w03pCJlRAxvVTzHZJOqNKxGfYgSrwzW/ubP8=; b=HmlkAEYo7j3khj
	deTuPySPXxShab2pHYIg2oRjE0HvphhW9pS67p2gFUvcg9TyRZT16fOGLr2pwV5c6M2d6RILUV7+c
	4n11sfsGT37LcP6HmwnO4eU+lRs/NfpXfhklcUiw7Ky2D+nFT2dPTAzgTMkR1HCiRJqLLJMcZtYyA
	SCwvk9NOA6V1PfU2yazNar8tW7YmQyHm4g4YXVP9PvfnjV9PVp7Sqwb45deInD1OtkkeAdNlkHa/6
	85SmdiTTMpI1tKsdGPa0IkCrwIkL5XjpNc7ColrPPoisjwbQtyYNu6IDoZavanQ21hx43LtPi1Lim
	IBdbPwyE0xdKw7cgrFig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIlU-00089l-PY; Mon, 06 Jan 2020 03:09:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIlN-00089K-Vy
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 03:09:07 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8643221582;
 Mon,  6 Jan 2020 03:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578280145;
 bh=vxNW2GyhdGoGRiMtNDnrgoP06OCkjtgTm1EGwq+PnAg=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=dS7d1yUleZjq1UFYvj0xQTgJV2/bxxSAHOKWKxc+tpZYzZvWxPSMQ/pqqE/VJy6LL
 VOhb+ayiihHrhvbTa/rfVVdk9x4E4FL9F7gQANJ1hKVtgUCYro5gWVxBY8/Dmrp40n
 8FEP3QhRMLZ981sJy4Cde6/Fp1U4nP3qVvCKA+ak=
MIME-Version: 1.0
In-Reply-To: <20191229202907.335931-1-alexandre.belloni@bootlin.com>
References: <20191229202907.335931-1-alexandre.belloni@bootlin.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: Re: [PATCH] clk: at91: add sama5d3 pmc driver
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 19:09:04 -0800
Message-Id: <20200106030905.8643221582@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_190906_072174_55C6F83A 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandre Belloni (2019-12-29 12:29:07)
> diff --git a/drivers/clk/at91/sama5d3.c b/drivers/clk/at91/sama5d3.c
> new file mode 100644
> index 000000000000..0b73c174ab56
> --- /dev/null
> +++ b/drivers/clk/at91/sama5d3.c
> @@ -0,0 +1,236 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <linux/clk-provider.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/slab.h>
> +
> +#include <dt-bindings/clock/at91.h>
> +
> +#include "pmc.h"
> +
> +static const struct clk_master_characteristics mck_characteristics = {
> +       .output = { .min = 0, .max = 166000000 },
> +       .divisors = { 1, 2, 4, 3 },
> +};
> +
> +static u8 plla_out[] = { 0 };
> +
> +static u16 plla_icpll[] = { 0 };
> +
> +static const struct clk_range plla_outputs[] = {
> +       { .min = 400000000, .max = 1000000000 },
> +};
> +
> +static const struct clk_pll_characteristics plla_characteristics = {
> +       .input = { .min = 8000000, .max = 50000000 },
> +       .num_output = ARRAY_SIZE(plla_outputs),
> +       .output = plla_outputs,
> +       .icpll = plla_icpll,
> +       .out = plla_out,
> +};
> +
> +static const struct clk_pcr_layout sama5d3_pcr_layout = {
> +       .offset = 0x10c,
> +       .cmd = BIT(12),
> +       .pid_mask = GENMASK(6, 0),
> +       .div_mask = GENMASK(17, 16),
> +};
> +
> +static const struct {
> +       char *n;
> +       char *p;
> +       u8 id;
> +} sama5d3_systemck[] = {
> +       { .n = "ddrck", .p = "masterck", .id = 2 },
> +       { .n = "lcdck", .p = "masterck", .id = 3 },
> +       { .n = "smdck", .p = "smdclk",   .id = 4 },
> +       { .n = "uhpck", .p = "usbck",    .id = 6 },
> +       { .n = "udpck", .p = "usbck",    .id = 7 },
> +       { .n = "pck0",  .p = "prog0",    .id = 8 },
> +       { .n = "pck1",  .p = "prog1",    .id = 9 },
> +       { .n = "pck2",  .p = "prog2",    .id = 10 },
> +};
> +
> +static const struct {
> +       char *n;
> +       u8 id;
> +       struct clk_range r;
> +} sama5d3_periphck[] = {

If it can't be a platform device can this be __initconst?

> +       { .n = "dbgu_clk", .id = 2, },
> +       { .n = "hsmc_clk", .id = 5, },
> +       { .n = "pioA_clk", .id = 6, },
> +       { .n = "pioB_clk", .id = 7, },
> +       { .n = "pioC_clk", .id = 8, },
> +       { .n = "pioD_clk", .id = 9, },
> +       { .n = "pioE_clk", .id = 10, },
> +       { .n = "usart0_clk", .id = 12, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "usart1_clk", .id = 13, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "usart2_clk", .id = 14, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "usart3_clk", .id = 15, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "uart0_clk", .id = 16, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "uart1_clk", .id = 17, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "twi0_clk", .id = 18, .r = { .min = 0, .max = 16625000 }, },
> +       { .n = "twi1_clk", .id = 19, .r = { .min = 0, .max = 16625000 }, },
> +       { .n = "twi2_clk", .id = 20, .r = { .min = 0, .max = 16625000 }, },
> +       { .n = "mci0_clk", .id = 21, },
> +       { .n = "mci1_clk", .id = 22, },
> +       { .n = "mci2_clk", .id = 23, },
> +       { .n = "spi0_clk", .id = 24, .r = { .min = 0, .max = 133000000 }, },
> +       { .n = "spi1_clk", .id = 25, .r = { .min = 0, .max = 133000000 }, },
> +       { .n = "tcb0_clk", .id = 26, .r = { .min = 0, .max = 133000000 }, },
> +       { .n = "tcb1_clk", .id = 27, },
> +       { .n = "pwm_clk", .id = 28, },
> +       { .n = "adc_clk", .id = 29, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "dma0_clk", .id = 30, },
> +       { .n = "dma1_clk", .id = 31, },
> +       { .n = "uhphs_clk", .id = 32, },
> +       { .n = "udphs_clk", .id = 33, },
> +       { .n = "macb0_clk", .id = 34, },
> +       { .n = "macb1_clk", .id = 35, },
> +       { .n = "lcdc_clk", .id = 36, },
> +       { .n = "isi_clk", .id = 37, },
> +       { .n = "ssc0_clk", .id = 38, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "ssc1_clk", .id = 39, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "can0_clk", .id = 40, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "can1_clk", .id = 41, .r = { .min = 0, .max = 66000000 }, },
> +       { .n = "sha_clk", .id = 42, },
> +       { .n = "aes_clk", .id = 43, },
> +       { .n = "tdes_clk", .id = 44, },
> +       { .n = "trng_clk", .id = 45, },
> +       { .n = "fuse_clk", .id = 48, },
> +       { .n = "mpddr_clk", .id = 49, },
> +};
> +
> +static void __init sama5d3_pmc_setup(struct device_node *np)
> +{
> +       const char *slck_name, *mainxtal_name;
> +       struct pmc_data *sama5d3_pmc;
> +       const char *parent_names[5];
> +       struct regmap *regmap;
> +       struct clk_hw *hw;
> +       int i;
> +       bool bypass;
> +
> +       i = of_property_match_string(np, "clock-names", "slow_clk");
> +       if (i < 0)
> +               return;
> +
> +       slck_name = of_clk_get_parent_name(np, i);
> +
> +       i = of_property_match_string(np, "clock-names", "main_xtal");
> +       if (i < 0)
> +               return;
> +       mainxtal_name = of_clk_get_parent_name(np, i);
> +
> +       regmap = syscon_node_to_regmap(np);
> +       if (IS_ERR(regmap))
> +               return;
> +
> +       sama5d3_pmc = pmc_data_allocate(PMC_MAIN + 1,
> +                                       nck(sama5d3_systemck),
> +                                       nck(sama5d3_periphck), 0);
> +       if (!sama5d3_pmc)
> +               return;
> +
> +       hw = at91_clk_register_main_rc_osc(regmap, "main_rc_osc", 12000000,
> +                                          50000000);
> +       if (IS_ERR(hw))
> +               goto err_free;
> +
> +       bypass = of_property_read_bool(np, "atmel,osc-bypass");
> +
> +       hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name,
> +                                       bypass);
> +       if (IS_ERR(hw))
> +               goto err_free;
> +
> +       parent_names[0] = "main_rc_osc";
> +       parent_names[1] = "main_osc";
> +       hw = at91_clk_register_sam9x5_main(regmap, "mainck", parent_names, 2);
> +       if (IS_ERR(hw))
> +               goto err_free;
> +
> +       hw = at91_clk_register_pll(regmap, "pllack", "mainck", 0,
> +                                  &sama5d3_pll_layout, &plla_characteristics);
> +       if (IS_ERR(hw))
> +               goto err_free;
> +
> +       hw = at91_clk_register_plldiv(regmap, "plladivck", "pllack");
> +       if (IS_ERR(hw))
> +               goto err_free;
> +
> +       hw = at91_clk_register_utmi(regmap, NULL, "utmick", "mainck");
> +       if (IS_ERR(hw))
> +               goto err_free;
> +
> +       sama5d3_pmc->chws[PMC_UTMI] = hw;
> +
> +       parent_names[0] = slck_name;
> +       parent_names[1] = "mainck";
> +       parent_names[2] = "plladivck";
> +       parent_names[3] = "utmick";
> +       hw = at91_clk_register_master(regmap, "masterck", 4, parent_names,
> +                                     &at91sam9x5_master_layout,
> +                                     &mck_characteristics);
> +       if (IS_ERR(hw))
> +               goto err_free;
> +
> +       sama5d3_pmc->chws[PMC_MCK] = hw;
> +
> +       parent_names[0] = "plladivck";
> +       parent_names[1] = "utmick";
> +       hw = at91sam9x5_clk_register_usb(regmap, "usbck", parent_names, 2);
> +       if (IS_ERR(hw))
> +               goto err_free;
> +
> +       hw = at91sam9x5_clk_register_smd(regmap, "smdclk", parent_names, 2);
> +       if (IS_ERR(hw))
> +               goto err_free;
> +
> +       parent_names[0] = slck_name;
> +       parent_names[1] = "mainck";
> +       parent_names[2] = "plladivck";
> +       parent_names[3] = "utmick";
> +       parent_names[4] = "masterck";
> +       for (i = 0; i < 3; i++) {
> +               char name[6];
> +
> +               snprintf(name, sizeof(name), "prog%d", i);
> +
> +               hw = at91_clk_register_programmable(regmap, name,
> +                                                   parent_names, 5, i,
> +                                                   &at91sam9x5_programmable_layout);
> +               if (IS_ERR(hw))
> +                       goto err_free;
> +       }
> +
> +       for (i = 0; i < ARRAY_SIZE(sama5d3_systemck); i++) {
> +               hw = at91_clk_register_system(regmap, sama5d3_systemck[i].n,
> +                                             sama5d3_systemck[i].p,
> +                                             sama5d3_systemck[i].id);
> +               if (IS_ERR(hw))
> +                       goto err_free;
> +
> +               sama5d3_pmc->shws[sama5d3_systemck[i].id] = hw;
> +       }
> +
> +       for (i = 0; i < ARRAY_SIZE(sama5d3_periphck); i++) {
> +               hw = at91_clk_register_sam9x5_peripheral(regmap, &pmc_pcr_lock,
> +                                                        &sama5d3_pcr_layout,
> +                                                        sama5d3_periphck[i].n,
> +                                                        "masterck",
> +                                                        sama5d3_periphck[i].id,
> +                                                        &sama5d3_periphck[i].r);
> +               if (IS_ERR(hw))
> +                       goto err_free;
> +
> +               sama5d3_pmc->phws[sama5d3_periphck[i].id] = hw;
> +       }
> +
> +       of_clk_add_hw_provider(np, of_clk_hw_pmc_get, sama5d3_pmc);
> +
> +       return;
> +
> +err_free:
> +       pmc_data_free(sama5d3_pmc);
> +}
> +CLK_OF_DECLARE_DRIVER(sama5d3_pmc, "atmel,sama5d3-pmc", sama5d3_pmc_setup);

Any reason this can't be a platform driver?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
