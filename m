Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0065790C99
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 05:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9T+VMQAR+c2yC6DrfQSkmGlkmv4f5TuwlBaW1wSnHAc=; b=aFPqkoQJA4y4/E
	5GmY0BG3G8otRlk+eIDRdzm+pxmi0w9L3ZM4Lb9cw/TDlZwIFtYeVQpiiZwSxvUkZ+NjkwTqgzAWX
	sqfxSh1s/D7KmRAljUOSJX6Yu9rrEGtbquJM14lW8FOXhbgNtxGDkz5270WyAHemqB8i2r9LpWDlP
	ZTOQX17hOWHLs4yXEbMsH5DZ/F68WIVtyMP7pYaC4yC1c0xV0eRNB3IPoF8as09tgkOH3PSwdP8w+
	KwZcQBn6mIXahR1HiOuD7GZYLw3C27YpNkoR6gIMoNfWnloBHsbWOneH2MIAwNzbU7ud3dk2uB0gf
	9oIyxfnvT4Qzt6dN0gQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyppF-0002SS-Et; Sat, 17 Aug 2019 03:56:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hypp1-0002RQ-QH
 for linux-arm-kernel@lists.infradead.org; Sat, 17 Aug 2019 03:56:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id 196so4099324pfz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 16 Aug 2019 20:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=E8hxqEHC7keznNnMfnfeHEEWEJm4I53Kw99c16op82k=;
 b=I8SsT6UywEbiMrh6YKl5x3kEXj15J6TBPARBpJUU2TV39kk6HkD5mJcGk55kq9vbiU
 SZsliKHlltydngql6UnMSoT34hge0/h5AfP4KLUvW1J5eXspVit5LfGAG92u8vUlYlD6
 jZzdHOvbMp8wzaaSCd6CvEuQXjNvRbuDIqq9HTVi/1zzm8tM/jRY+mjKs6B6AWoruUNO
 KVt7RxqqPCI0RLzAvc/UDWd3vwbhtoen5/Rinao+E//oWwGVVc1G4qs/toxzkOllHKog
 VxqVdUoqNYlmKlBhBckSNv/zxy2C4MNLj2EaOqT3rs/4TfQula+t2FTvCaJioiEfWk2J
 cPjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=E8hxqEHC7keznNnMfnfeHEEWEJm4I53Kw99c16op82k=;
 b=qIsT0NqSsWVRPbSbIWRHVVGHioRHM2mPXroDKokPYz/eXujVJJbfpwkn525vCwXytu
 qKz9GGV5paPwkljxMg1FfFWA65wHP/2Ny/GSg9s4CwDFi3Negb2U0+0BC7S/MVSyn2dh
 DgPoTj4MHGAX5tocfJ0rX1gu2QdYB8hfkeZVg+HyfevShGd+mCux1OYCwEyf4DEcMBBd
 swOJdMV405ND0jik1xiuZmI4vYBsXYFS3bh9theXC6QFl9PrT2q9SkxrYPGsWofDMXLu
 QKd6j7Cs1cPBctU4Kndy0VYpxB1xLFoaatBpZUTLDsdhLu+0eOCG3eX/GZgEy4tA1uRz
 8jxA==
X-Gm-Message-State: APjAAAWEVJ9n/lNBGqcbWrir1P4tkSzSo4fjCC45sll6Ik+gt6HSfra2
 JmOaJBhzjT84VhJYp/DlTAwu
X-Google-Smtp-Source: APXvYqx7lO69yDPYL0Cb5xe2rfOxlYjtOIDUNyVWREbO7Erwx+bYdzilKFzQ18e1ahgva2ucacwPgg==
X-Received: by 2002:a63:e213:: with SMTP id q19mr10332860pgh.180.1566014166528; 
 Fri, 16 Aug 2019 20:56:06 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:70a:af69:9185:a772:a21d:70ac])
 by smtp.gmail.com with ESMTPSA id k5sm9123140pfg.167.2019.08.16.20.56.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 16 Aug 2019 20:56:05 -0700 (PDT)
Date: Sat, 17 Aug 2019 09:25:57 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 4/5] clk: Add driver for Bitmain BM1880 SoC clock
 controller
Message-ID: <20190817035557.GC14652@Mani-XPS-13-9360>
References: <20190705151440.20844-1-manivannan.sadhasivam@linaro.org>
 <20190705151440.20844-5-manivannan.sadhasivam@linaro.org>
 <20190808051600.4EF7D2186A@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808051600.4EF7D2186A@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_205607_877270_A99F15DC 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, darren.tsao@bitmain.com, robh+dt@kernel.org,
 haitao.suo@bitmain.com, fisher.cheng@bitmain.com, alec.lin@bitmain.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On Wed, Aug 07, 2019 at 10:15:59PM -0700, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-07-05 08:14:39)
> > diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
> > index fc1e0cf44995..ffc61ed85ade 100644
> > --- a/drivers/clk/Kconfig
> > +++ b/drivers/clk/Kconfig
> > @@ -304,6 +304,12 @@ config COMMON_CLK_FIXED_MMIO
> >         help
> >           Support for Memory Mapped IO Fixed clocks
> >  
> > +config COMMON_CLK_BM1880
> > +       bool "Clock driver for Bitmain BM1880 SoC"
> > +       depends on ARCH_BITMAIN || COMPILE_TEST
> > +       help
> > +         This driver supports the clocks on Bitmain BM1880 SoC.
> 
> Can you add this config somewhere else besides the end? Preferably
> close to alphabetically in this file.
> 

Okay. I got confused by the fact that Makefile is sorted but not the
Kconfig.

> > +
> >  source "drivers/clk/actions/Kconfig"
> >  source "drivers/clk/analogbits/Kconfig"
> >  source "drivers/clk/bcm/Kconfig"
> > diff --git a/drivers/clk/clk-bm1880.c b/drivers/clk/clk-bm1880.c
> > new file mode 100644
> > index 000000000000..26cdb75bb936
> > --- /dev/null
> > +++ b/drivers/clk/clk-bm1880.c
> > @@ -0,0 +1,947 @@
> > +// SPDX-License-Identifier: GPL-2.0+
> > +/*
> > + * Bitmain BM1880 SoC clock driver
> > + *
> > + * Copyright (c) 2019 Linaro Ltd.
> > + * Author: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > + */
> > +
> > +#include <linux/clk-provider.h>
> > +#include <linux/of_address.h>
> > +#include <linux/slab.h>
> 
> Should probably add kernel.h for at least container_of()
> 

okay.

> > +
> > +#include <dt-bindings/clock/bm1880-clock.h>
> > +
> > +#define BM1880_CLK_MPLL_CTL    0x00
> > +#define BM1880_CLK_SPLL_CTL    0x04
> > +#define BM1880_CLK_FPLL_CTL    0x08
> > +#define BM1880_CLK_DDRPLL_CTL  0x0c
> > +
> > +#define BM1880_CLK_ENABLE0     0x00
> > +#define BM1880_CLK_ENABLE1     0x04
> > +#define BM1880_CLK_SELECT      0x20
> > +#define BM1880_CLK_DIV0                0x40
> > +#define BM1880_CLK_DIV1                0x44
> > +#define BM1880_CLK_DIV2                0x48
> > +#define BM1880_CLK_DIV3                0x4c
> > +#define BM1880_CLK_DIV4                0x50
> > +#define BM1880_CLK_DIV5                0x54
> > +#define BM1880_CLK_DIV6                0x58
> > +#define BM1880_CLK_DIV7                0x5c
> > +#define BM1880_CLK_DIV8                0x60
> > +#define BM1880_CLK_DIV9                0x64
> > +#define BM1880_CLK_DIV10       0x68
> > +#define BM1880_CLK_DIV11       0x6c
> > +#define BM1880_CLK_DIV12       0x70
> > +#define BM1880_CLK_DIV13       0x74
> > +#define BM1880_CLK_DIV14       0x78
> > +#define BM1880_CLK_DIV15       0x7c
> > +#define BM1880_CLK_DIV16       0x80
> > +#define BM1880_CLK_DIV17       0x84
> > +#define BM1880_CLK_DIV18       0x88
> > +#define BM1880_CLK_DIV19       0x8c
> > +#define BM1880_CLK_DIV20       0x90
> > +#define BM1880_CLK_DIV21       0x94
> > +#define BM1880_CLK_DIV22       0x98
> > +#define BM1880_CLK_DIV23       0x9c
> > +#define BM1880_CLK_DIV24       0xa0
> > +#define BM1880_CLK_DIV25       0xa4
> > +#define BM1880_CLK_DIV26       0xa8
> > +#define BM1880_CLK_DIV27       0xac
> > +#define BM1880_CLK_DIV28       0xb0
> > +
> > +#define to_bm1880_pll_clk(_hw) container_of(_hw, struct bm1880_pll_hw_clock, hw)
> > +#define to_bm1880_div_clk(_hw) container_of(_hw, struct bm1880_div_hw_clock, hw)
> > +
> > +static DEFINE_SPINLOCK(bm1880_clk_lock);
> > +
> > +struct bm1880_clock_data {
> > +       void __iomem *pll_base;
> > +       void __iomem *sys_base;
> > +       struct clk_onecell_data clk_data;
> > +};
> > +
> > +struct bm1880_gate_clock {
> > +       unsigned int    id;
> > +       const char      *name;
> > +       const char      *parent;
> > +       u32             gate_reg;
> > +       s8              gate_shift;
> > +       unsigned long   flags;
> > +};
> > +
> > +struct bm1880_mux_clock {
> > +       unsigned int    id;
> > +       const char      *name;
> > +       const char      * const * parents;
> > +       s8              num_parents;
> > +       u32             reg;
> > +       s8              shift;
> > +       unsigned long   flags;
> > +};
> > +
> > +struct bm1880_div_clock {
> > +       unsigned int    id;
> > +       const char      *name;
> > +       const char      *parent;
> > +       u32             reg;
> > +       u8              shift;
> > +       u8              width;
> > +       u32             initval;
> > +       struct clk_div_table *table;
> > +       unsigned long   flags;
> > +};
> > +
> > +struct bm1880_div_hw_clock {
> > +       struct bm1880_div_clock div;
> > +       void __iomem *base;
> > +       spinlock_t *lock;
> > +       struct clk_hw hw;
> > +};
> > +
> > +struct bm1880_composite_clock {
> > +       unsigned int    id;
> > +       const char      *name;
> > +       const char      *parent;
> > +       const char      * const * parents;
> > +       unsigned int    num_parents;
> > +       unsigned long   flags;
> > +
> > +       u32             gate_reg;
> > +       u32             mux_reg;
> > +       u32             div_reg;
> > +
> > +       s8              gate_shift;
> > +       s8              mux_shift;
> > +       s8              div_shift;
> > +       s8              div_width;
> > +       s16             div_initval;
> > +       struct clk_div_table *table;
> > +};
> > +
> > +struct bm1880_pll_clock {
> > +       unsigned int    id;
> > +       const char      *name;
> > +       const char      *parent;
> > +       u32             reg;
> > +       unsigned long   flags;
> > +};
> > +
> > +struct bm1880_pll_hw_clock {
> > +       struct bm1880_pll_clock pll;
> > +       void __iomem *base;
> > +       struct clk_hw hw;
> > +};
> > +
> > +#define GATE_DIV(_id, _name, _parent, _gate_reg, _gate_shift, _div_reg,        \
> > +                       _div_shift, _div_width, _div_initval, _table,   \
> > +                       _flags) {                                       \
> > +               .id = _id,                                              \
> > +               .parent = _parent,                                      \
> > +               .name = _name,                                          \
> > +               .gate_reg = _gate_reg,                                  \
> > +               .gate_shift = _gate_shift,                              \
> > +               .div_reg = _div_reg,                                    \
> > +               .div_shift = _div_shift,                                \
> > +               .div_width = _div_width,                                \
> > +               .div_initval = _div_initval,                            \
> > +               .table = _table,                                        \
> > +               .mux_shift = -1,                                        \
> > +               .flags = _flags,                                        \
> > +       }
> > +
> > +#define GATE_MUX(_id, _name, _parents, _gate_reg, _gate_shift,         \
> > +                       _mux_reg, _mux_shift, _flags) {                 \
> > +               .id = _id,                                              \
> > +               .parents = _parents,                                    \
> > +               .num_parents = ARRAY_SIZE(_parents),                    \
> > +               .name = _name,                                          \
> > +               .gate_reg = _gate_reg,                                  \
> > +               .gate_shift = _gate_shift,                              \
> > +               .div_shift = -1,                                        \
> > +               .mux_reg = _mux_reg,                                    \
> > +               .mux_shift = _mux_shift,                                \
> > +               .flags = _flags,                                        \
> > +       }
> > +
> > +static const struct bm1880_pll_clock bm1880_pll_clks[] = {
> > +       { BM1880_CLK_MPLL, "clk_mpll", "osc", BM1880_CLK_MPLL_CTL,
> > +         CLK_IS_CRITICAL },
> > +       { BM1880_CLK_SPLL, "clk_spll", "osc", BM1880_CLK_SPLL_CTL,
> > +         CLK_IS_CRITICAL },
> > +       { BM1880_CLK_FPLL, "clk_fpll", "osc", BM1880_CLK_FPLL_CTL,
> > +         CLK_IS_CRITICAL },
> > +       { BM1880_CLK_DDRPLL, "clk_ddrpll", "osc", BM1880_CLK_DDRPLL_CTL,
> > +         CLK_IS_CRITICAL },
> > +};
> > +
> > +static const struct bm1880_gate_clock bm1880_gate_clks[] = {
> > +       { BM1880_CLK_AHB_ROM, "clk_ahb_rom", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE0, 2, CLK_IS_CRITICAL },
> > +       { BM1880_CLK_AXI_SRAM, "clk_axi_sram", "clk_axi1",
> > +         BM1880_CLK_ENABLE0, 3, CLK_IS_CRITICAL },
> > +       { BM1880_CLK_DDR_AXI, "clk_ddr_axi", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE0, 4, CLK_IS_CRITICAL },
> > +       { BM1880_CLK_APB_EFUSE, "clk_apb_efuse", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE0, 6, CLK_IS_CRITICAL },
> > +       { BM1880_CLK_AXI5_EMMC, "clk_axi5_emmc", "clk_axi5",
> > +         BM1880_CLK_ENABLE0, 7, 0 },
> > +       { BM1880_CLK_AXI5_SD, "clk_axi5_sd", "clk_axi5",
> > +         BM1880_CLK_ENABLE0, 10, 0 },
> > +       { BM1880_CLK_AXI4_ETH0, "clk_axi4_eth0", "clk_axi4",
> > +         BM1880_CLK_ENABLE0, 14, 0 },
> > +       { BM1880_CLK_AXI4_ETH1, "clk_axi4_eth1", "clk_axi4",
> > +         BM1880_CLK_ENABLE0, 16, 0 },
> > +       { BM1880_CLK_AXI1_GDMA, "clk_axi1_gdma", "clk_axi1",
> > +         BM1880_CLK_ENABLE0, 17, 0 },
> > +       /* Don't gate GPIO clocks as it is not owned by the GPIO driver */
> > +       { BM1880_CLK_APB_GPIO, "clk_apb_gpio", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE0, 18, CLK_IGNORE_UNUSED },
> > +       { BM1880_CLK_APB_GPIO_INTR, "clk_apb_gpio_intr", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE0, 19, CLK_IGNORE_UNUSED },
> > +       { BM1880_CLK_AXI1_MINER, "clk_axi1_miner", "clk_axi1",
> > +         BM1880_CLK_ENABLE0, 21, 0 },
> > +       { BM1880_CLK_AHB_SF, "clk_ahb_sf", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE0, 22, 0 },
> > +       { BM1880_CLK_SDMA_AXI, "clk_sdma_axi", "clk_axi5",
> > +         BM1880_CLK_ENABLE0, 23, 0 },
> > +       { BM1880_CLK_APB_I2C, "clk_apb_i2c", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE0, 25, 0 },
> > +       { BM1880_CLK_APB_WDT, "clk_apb_wdt", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE0, 26, 0 },
> > +       { BM1880_CLK_APB_JPEG, "clk_apb_jpeg", "clk_axi6",
> > +         BM1880_CLK_ENABLE0, 27, 0 },
> > +       { BM1880_CLK_AXI5_NF, "clk_axi5_nf", "clk_axi5",
> > +         BM1880_CLK_ENABLE0, 29, 0 },
> > +       { BM1880_CLK_APB_NF, "clk_apb_nf", "clk_axi6",
> > +         BM1880_CLK_ENABLE0, 30, 0 },
> > +       { BM1880_CLK_APB_PWM, "clk_apb_pwm", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE1, 0, 0 },
> > +       { BM1880_CLK_RV, "clk_rv", "clk_mux_rv",
> > +         BM1880_CLK_ENABLE1, 1, 0 },
> > +       { BM1880_CLK_APB_SPI, "clk_apb_spi", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE1, 2, 0 },
> > +       { BM1880_CLK_UART_500M, "clk_uart_500m", "clk_div_uart_500m",
> > +         BM1880_CLK_ENABLE1, 4, 0 },
> > +       { BM1880_CLK_APB_UART, "clk_apb_uart", "clk_axi6",
> > +         BM1880_CLK_ENABLE1, 5, 0 },
> > +       { BM1880_CLK_APB_I2S, "clk_apb_i2s", "clk_axi6",
> > +         BM1880_CLK_ENABLE1, 6, 0 },
> > +       { BM1880_CLK_AXI4_USB, "clk_axi4_usb", "clk_axi4",
> > +         BM1880_CLK_ENABLE1, 7, 0 },
> > +       { BM1880_CLK_APB_USB, "clk_apb_usb", "clk_axi6",
> > +         BM1880_CLK_ENABLE1, 8, 0 },
> > +       { BM1880_CLK_12M_USB, "clk_12m_usb", "clk_div_12m_usb",
> > +         BM1880_CLK_ENABLE1, 11, 0 },
> > +       { BM1880_CLK_APB_VIDEO, "clk_apb_video", "clk_axi6",
> > +         BM1880_CLK_ENABLE1, 12, 0 },
> > +       { BM1880_CLK_APB_VPP, "clk_apb_vpp", "clk_axi6",
> > +         BM1880_CLK_ENABLE1, 15, 0 },
> > +       { BM1880_CLK_AXI6, "clk_axi6", "clk_mux_axi6",
> > +         BM1880_CLK_ENABLE1, 21, CLK_IS_CRITICAL },
> > +};
> > +
> > +static const char * const clk_a53_parents[] = { "clk_spll", "clk_mpll" };
> > +static const char * const clk_rv_parents[] = { "clk_div_1_rv", "clk_div_0_rv" };
> > +static const char * const clk_axi1_parents[] = { "clk_div_1_axi1", "clk_div_0_axi1" };
> > +static const char * const clk_axi6_parents[] = { "clk_div_1_axi6", "clk_div_0_axi6" };
> > +
> > +static const struct bm1880_mux_clock bm1880_mux_clks[] = {
> > +       { BM1880_CLK_MUX_RV, "clk_mux_rv", clk_rv_parents, 2,
> > +         BM1880_CLK_SELECT, 1, 0 },
> > +       { BM1880_CLK_MUX_AXI6, "clk_mux_axi6", clk_axi6_parents, 2,
> > +         BM1880_CLK_SELECT, 3, 0 },
> > +};
> > +
> > +static struct clk_div_table bm1880_div_table_0[] = {
> 
> Can these tables be const?
> 

Ack.

> > +       { 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
> > +       { 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
> > +       { 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
> > +       { 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
> > +       { 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
> > +       { 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
> > +       { 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
> > +       { 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
> > +       { 0, 0 }
> > +};
> > +
> > +static struct clk_div_table bm1880_div_table_1[] = {
> > +       { 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
> > +       { 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
> > +       { 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
> > +       { 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
> > +       { 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
> > +       { 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
> > +       { 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
> > +       { 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
> > +       { 127, 128 }, { 0, 0 }
> > +};
> > +
> > +static struct clk_div_table bm1880_div_table_2[] = {
> > +       { 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
> > +       { 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
> > +       { 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
> > +       { 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
> > +       { 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
> > +       { 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
> > +       { 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
> > +       { 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
> > +       { 127, 128 }, { 255, 256 }, { 0, 0 }
> > +};
> > +
> > +static struct clk_div_table bm1880_div_table_3[] = {
> > +       { 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
> > +       { 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
> > +       { 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
> > +       { 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
> > +       { 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
> > +       { 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
> > +       { 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
> > +       { 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
> > +       { 127, 128 }, { 255, 256 }, { 511, 512 }, { 0, 0 }
> > +};
> > +
> > +static struct clk_div_table bm1880_div_table_4[] = {
> > +       { 0, 1 }, { 1, 2 }, { 2, 3 }, { 3, 4 },
> > +       { 4, 5 }, { 5, 6 }, { 6, 7 }, { 7, 8 },
> > +       { 8, 9 }, { 9, 10 }, { 10, 11 }, { 11, 12 },
> > +       { 12, 13 }, { 13, 14 }, { 14, 15 }, { 15, 16 },
> > +       { 16, 17 }, { 17, 18 }, { 18, 19 }, { 19, 20 },
> > +       { 20, 21 }, { 21, 22 }, { 22, 23 }, { 23, 24 },
> > +       { 24, 25 }, { 25, 26 }, { 26, 27 }, { 27, 28 },
> > +       { 28, 29 }, { 29, 30 }, { 30, 31 }, { 31, 32 },
> > +       { 127, 128 }, { 255, 256 }, { 511, 512 }, { 65535, 65536 },
> > +       { 0, 0 }
> > +};
> > +
> > +static const struct bm1880_div_clock bm1880_div_clks[] = {
> > +       { BM1880_CLK_DIV_0_RV, "clk_div_0_rv", "clk_spll",
> > +         BM1880_CLK_DIV12, 16, 5, 1, bm1880_div_table_0, CLK_IGNORE_UNUSED },
> > +       { BM1880_CLK_DIV_1_RV, "clk_div_1_rv", "clk_fpll",
> > +         BM1880_CLK_DIV13, 16, 5, 1, bm1880_div_table_0, CLK_IGNORE_UNUSED },
> > +       { BM1880_CLK_DIV_UART_500M, "clk_div_uart_500m", "clk_fpll",
> > +         BM1880_CLK_DIV15, 16, 7, 3, bm1880_div_table_1, 0 },
> > +       { BM1880_CLK_DIV_0_AXI1, "clk_div_0_axi1", "clk_mpll",
> > +         BM1880_CLK_DIV21, 16, 5, 2, bm1880_div_table_0, CLK_IS_CRITICAL },
> > +       { BM1880_CLK_DIV_1_AXI1, "clk_div_1_axi1", "clk_fpll",
> > +         BM1880_CLK_DIV22, 16, 5, 3, bm1880_div_table_0, CLK_IS_CRITICAL },
> > +       { BM1880_CLK_DIV_0_AXI6, "clk_div_0_axi6", "clk_fpll",
> > +         BM1880_CLK_DIV27, 16, 5, 15, bm1880_div_table_0, CLK_IS_CRITICAL },
> > +       { BM1880_CLK_DIV_1_AXI6, "clk_div_1_axi6", "clk_mpll",
> > +         BM1880_CLK_DIV28, 16, 5, 11, bm1880_div_table_0, CLK_IS_CRITICAL },
> > +       { BM1880_CLK_DIV_12M_USB, "clk_div_12m_usb", "clk_fpll",
> > +         BM1880_CLK_DIV18, 16, 7, 125, bm1880_div_table_1, 0 },
> > +};
> > +
> > +static struct bm1880_composite_clock bm1880_composite_clks[] = {
> > +       GATE_MUX(BM1880_CLK_A53, "clk_a53", clk_a53_parents,
> > +                BM1880_CLK_ENABLE0, 0, BM1880_CLK_SELECT, 0,
> > +                CLK_IS_CRITICAL),
> 
> Please document why CLK_IS_CRITICAL. Maybe CPU clk so must be kept on?
> 

Yeah, will add comments for all critical clocks.

> > +       GATE_DIV(BM1880_CLK_50M_A53, "clk_50m_a53", "clk_fpll",
> > +                BM1880_CLK_ENABLE0, 1, BM1880_CLK_DIV0, 16, 5, 30,
> > +                bm1880_div_table_0, CLK_IS_CRITICAL),
> > +       GATE_DIV(BM1880_CLK_EFUSE, "clk_efuse", "clk_fpll",
> > +                BM1880_CLK_ENABLE0, 5, BM1880_CLK_DIV1, 16, 7, 60,
> > +                bm1880_div_table_1, 0),
> > +       GATE_DIV(BM1880_CLK_EMMC, "clk_emmc", "clk_fpll",
> > +                BM1880_CLK_ENABLE0, 8, BM1880_CLK_DIV2, 16, 5, 15,
> > +                bm1880_div_table_0, 0),
> > +       GATE_DIV(BM1880_CLK_100K_EMMC, "clk_100k_emmc", "clk_div_12m_usb",
> > +                BM1880_CLK_ENABLE0, 9, BM1880_CLK_DIV3, 16, 8, 120,
> > +                bm1880_div_table_2, 0),
> > +       GATE_DIV(BM1880_CLK_SD, "clk_sd", "clk_fpll",
> > +                BM1880_CLK_ENABLE0, 11, BM1880_CLK_DIV4, 16, 5, 15,
> > +                bm1880_div_table_0, 0),
> > +       GATE_DIV(BM1880_CLK_100K_SD, "clk_100k_sd", "clk_div_12m_usb",
> > +                BM1880_CLK_ENABLE0, 12, BM1880_CLK_DIV5, 16, 8, 120,
> > +                bm1880_div_table_2, 0),
> > +       GATE_DIV(BM1880_CLK_500M_ETH0, "clk_500m_eth0", "clk_fpll",
> > +                BM1880_CLK_ENABLE0, 13, BM1880_CLK_DIV6, 16, 5, 3,
> > +                bm1880_div_table_0, 0),
> > +       GATE_DIV(BM1880_CLK_500M_ETH1, "clk_500m_eth1", "clk_fpll",
> > +                BM1880_CLK_ENABLE0, 15, BM1880_CLK_DIV7, 16, 5, 3,
> > +                bm1880_div_table_0, 0),
> > +       /* Don't gate GPIO clocks as it is not owned by the GPIO driver */
> > +       GATE_DIV(BM1880_CLK_GPIO_DB, "clk_gpio_db", "clk_div_12m_usb",
> > +                BM1880_CLK_ENABLE0, 20, BM1880_CLK_DIV8, 16, 16, 120,
> > +                bm1880_div_table_4, CLK_IGNORE_UNUSED),
> > +       GATE_DIV(BM1880_CLK_SDMA_AUD, "clk_sdma_aud", "clk_fpll",
> > +                BM1880_CLK_ENABLE0, 24, BM1880_CLK_DIV9, 16, 7, 61,
> > +                bm1880_div_table_1, 0),
> > +       GATE_DIV(BM1880_CLK_JPEG_AXI, "clk_jpeg_axi", "clk_fpll",
> > +                BM1880_CLK_ENABLE0, 28, BM1880_CLK_DIV10, 16, 5, 4,
> > +                bm1880_div_table_0, 0),
> > +       GATE_DIV(BM1880_CLK_NF, "clk_nf", "clk_fpll",
> > +                BM1880_CLK_ENABLE0, 31, BM1880_CLK_DIV11, 16, 5, 30,
> > +                bm1880_div_table_0, 0),
> > +       GATE_DIV(BM1880_CLK_TPU_AXI, "clk_tpu_axi", "clk_spll",
> > +                BM1880_CLK_ENABLE1, 3, BM1880_CLK_DIV14, 16, 5, 1,
> > +                bm1880_div_table_0, 0),
> > +       GATE_DIV(BM1880_CLK_125M_USB, "clk_125m_usb", "clk_fpll",
> > +                BM1880_CLK_ENABLE1, 9, BM1880_CLK_DIV16, 16, 5, 12,
> > +                bm1880_div_table_0, 0),
> > +       GATE_DIV(BM1880_CLK_33K_USB, "clk_33k_usb", "clk_div_12m_usb",
> > +                BM1880_CLK_ENABLE1, 10, BM1880_CLK_DIV17, 16, 9, 363,
> > +                bm1880_div_table_3, 0),
> > +       GATE_DIV(BM1880_CLK_VIDEO_AXI, "clk_video_axi", "clk_fpll",
> > +                BM1880_CLK_ENABLE1, 13, BM1880_CLK_DIV19, 16, 5, 4,
> > +                bm1880_div_table_0, 0),
> > +       GATE_DIV(BM1880_CLK_VPP_AXI, "clk_vpp_axi", "clk_fpll",
> > +                BM1880_CLK_ENABLE1, 14, BM1880_CLK_DIV20, 16, 5, 4,
> > +                bm1880_div_table_0, 0),
> > +       GATE_MUX(BM1880_CLK_AXI1, "clk_axi1", clk_axi1_parents,
> > +                BM1880_CLK_ENABLE1, 15, BM1880_CLK_SELECT, 2,
> > +                CLK_IS_CRITICAL),
> > +       GATE_DIV(BM1880_CLK_AXI2, "clk_axi2", "clk_fpll",
> > +                BM1880_CLK_ENABLE1, 17, BM1880_CLK_DIV23, 16, 5, 3,
> > +                bm1880_div_table_0, CLK_IS_CRITICAL),
> > +       GATE_DIV(BM1880_CLK_AXI3, "clk_axi3", "clk_mux_rv",
> > +                BM1880_CLK_ENABLE1, 18, BM1880_CLK_DIV24, 16, 5, 2,
> > +                bm1880_div_table_0, CLK_IS_CRITICAL),
> > +       GATE_DIV(BM1880_CLK_AXI4, "clk_axi4", "clk_fpll",
> > +                BM1880_CLK_ENABLE1, 19, BM1880_CLK_DIV25, 16, 5, 6,
> > +                bm1880_div_table_0, CLK_IS_CRITICAL),
> > +       GATE_DIV(BM1880_CLK_AXI5, "clk_axi5", "clk_fpll",
> > +                BM1880_CLK_ENABLE1, 20, BM1880_CLK_DIV26, 16, 5, 15,
> > +                bm1880_div_table_0, CLK_IS_CRITICAL),
> > +};
> > +
> > +static unsigned long bm1880_pll_rate_calc(u32 regval, unsigned long parent_rate)
> > +{
> > +       u32 fbdiv, fref, refdiv;
> > +       u32 postdiv1, postdiv2;
> > +       unsigned long rate, numerator, denominator;
> > +
> > +       fbdiv = (regval >> 16) & 0xfff;
> > +       fref = parent_rate;
> > +       refdiv = regval & 0x1f;
> > +       postdiv1 = (regval >> 8) & 0x7;
> > +       postdiv2 = (regval >> 12) & 0x7;
> > +
> > +       numerator = parent_rate * fbdiv;
> > +       denominator = refdiv * postdiv1 * postdiv2;
> > +       do_div(numerator, denominator);
> > +       rate = numerator;
> > +
> > +       return rate;
> > +}
> > +
> > +static unsigned long bm1880_pll_recalc_rate(struct clk_hw *hw,
> > +                                           unsigned long parent_rate)
> > +{
> > +       struct bm1880_pll_hw_clock *pll_hw = to_bm1880_pll_clk(hw);
> > +       unsigned long rate;
> > +       u32 regval;
> > +
> > +       regval = readl(pll_hw->base + pll_hw->pll.reg);
> > +       rate = bm1880_pll_rate_calc(regval, parent_rate);
> > +
> > +       return rate;
> > +}
> > +
> > +static const struct clk_ops bm1880_pll_ops = {
> > +       .recalc_rate    = bm1880_pll_recalc_rate,
> > +};
> > +
> > +struct clk *bm1880_clk_register_pll(const struct bm1880_pll_clock *pll_clk,
> > +                                   void __iomem *sys_base)
> > +{
> > +       struct bm1880_pll_hw_clock *pll_hw;
> > +       struct clk_init_data init;
> > +       struct clk_hw *hw;
> > +       int err;
> > +
> > +       pll_hw = kzalloc(sizeof(*pll_hw), GFP_KERNEL);
> > +       if (!pll_hw)
> > +               return ERR_PTR(-ENOMEM);
> > +
> > +       init.name = pll_clk->name;
> > +       init.ops = &bm1880_pll_ops;
> > +       init.flags = pll_clk->flags;
> > +       init.parent_names = &pll_clk->parent;
> 
> Can you use the new way of specifying parents instead of using strings
> for everything?
> 

Sure, will do it for clocks which doesn't use helper APIs.

> > +       init.num_parents = 1;
> > +
> > +       pll_hw->hw.init = &init;
> > +       pll_hw->pll.reg = pll_clk->reg;
> > +       pll_hw->base = sys_base;
> > +
> > +       hw = &pll_hw->hw;
> > +       err = clk_hw_register(NULL, hw);
> > +
> > +       if (err) {
> > +               kfree(pll_hw);
> > +               return ERR_PTR(err);
> > +       }
> > +
> > +       return hw->clk;
> 
> Can this return the clk_hw pointer instead?
> 

What is the benefit? I see that only hw:init is going to be NULL in future.
So, I'll keep it as it is.

> > +}
> > +
> > +void bm1880_clk_unregister_pll(struct clk *clk)
> 
> Should this be static?
> 

Ack.

> > +{
> > +       struct bm1880_pll_hw_clock *pll_hw;
> > +       struct clk_hw *hw;
> > +
> > +       hw = __clk_get_hw(clk);
> > +       if (!hw)
> > +               return;
> > +
> > +       pll_hw = to_bm1880_pll_clk(hw);
> > +
> > +       clk_unregister(clk);
> > +       kfree(pll_hw);
> > +}
> > +
> > +int bm1880_clk_register_plls(const struct bm1880_pll_clock *clks,
> > +                            int num_clks, struct bm1880_clock_data *data)
> > +{
> > +       struct clk *clk;
> > +       void __iomem *pll_base = data->pll_base;
> > +       int i;
> > +
> > +       for (i = 0; i < num_clks; i++) {
> > +               const struct bm1880_pll_clock *bm1880_clk = &clks[i];
> > +
> > +               clk = bm1880_clk_register_pll(bm1880_clk, pll_base);
> > +               if (IS_ERR(clk)) {
> > +                       pr_err("%s: failed to register clock %s\n",
> > +                              __func__, bm1880_clk->name);
> > +                       goto err_clk;
> > +               }
> > +
> > +               data->clk_data.clks[clks[i].id] = clk;
> > +       }
> > +
> > +       return 0;
> > +
> > +err_clk:
> > +       while (i--)
> 
> I guess while (--i) is more idiomatic but this works too.
> 
> > +               bm1880_clk_unregister_pll(data->clk_data.clks[clks[i].id]);
> > +
> > +       return PTR_ERR(clk);
> > +}
> > +
> > +int bm1880_clk_register_mux(const struct bm1880_mux_clock *clks,
> > +                           int num_clks, struct bm1880_clock_data *data)
> > +{
> > +       struct clk *clk;
> > +       void __iomem *sys_base = data->sys_base;
> > +       int i;
> > +
> > +       for (i = 0; i < num_clks; i++) {
> > +               clk = clk_register_mux(NULL, clks[i].name,
> 
> Can you use the clk_hw based APIs for generic type clks?
> 

IMO using helper APIs greatly reduce code size and makes the driver
look more clean. So I prefer to use the helpers wherever applicable.
When you plan to deprecate those, I'll switch over to plain clk_hw APIs.

> > +                                      clks[i].parents,
> > +                                      clks[i].num_parents,
> > +                                      clks[i].flags,
> > +                                      sys_base + clks[i].reg,
> > +                                      clks[i].shift, 1, 0,
> > +                                      &bm1880_clk_lock);
> > +               if (IS_ERR(clk)) {
> > +                       pr_err("%s: failed to register clock %s\n",
> > +                              __func__, clks[i].name);
> > +                       goto err_clk;
> > +               }
> > +
> > +               data->clk_data.clks[clks[i].id] = clk;
> > +       }
> > +
> > +       return 0;
> > +
> > +err_clk:
> > +       while (i--)
> > +               clk_unregister_gate(data->clk_data.clks[clks[i].id]);
> > +
> > +       return PTR_ERR(clk);
> > +}
> > +
> > +static unsigned long bm1880_clk_div_recalc_rate(struct clk_hw *hw,
> > +                                               unsigned long parent_rate)
> > +{
> > +       struct bm1880_div_hw_clock *div_hw = to_bm1880_div_clk(hw);
> > +       struct bm1880_div_clock *div = &div_hw->div;
> > +       void __iomem *reg_addr = div_hw->base + div->reg;
> > +       unsigned int val;
> > +       unsigned long rate;
> > +
> > +       if (!(readl(reg_addr) & BIT(3))) {
> > +               val = div->initval;
> > +       } else {
> > +               val = readl(reg_addr) >> div->shift;
> > +               val &= clk_div_mask(div->width);
> > +       }
> > +
> > +       rate = divider_recalc_rate(hw, parent_rate, val, div->table,
> > +                                  div->flags, div->width);
> > +
> > +       return rate;
> > +}
> > +
> > +static long bm1880_clk_div_round_rate(struct clk_hw *hw, unsigned long rate,
> > +                                     unsigned long *prate)
> > +{
> > +       struct bm1880_div_hw_clock *div_hw = to_bm1880_div_clk(hw);
> > +       struct bm1880_div_clock *div = &div_hw->div;
> > +       void __iomem *reg_addr = div_hw->base + div->reg;
> > +
> > +       if (div->flags & CLK_DIVIDER_READ_ONLY) {
> > +               u32 val;
> > +
> > +               val = readl(reg_addr) >> div->shift;
> > +               val &= clk_div_mask(div->width);
> > +
> > +               return divider_ro_round_rate(hw, rate, prate, div->table,
> > +                                            div->width, div->flags,
> > +                                            val);
> > +       }
> > +
> > +       return divider_round_rate(hw, rate, prate, div->table,
> > +                                 div->width, div->flags);
> > +}
> > +
> > +static int bm1880_clk_div_set_rate(struct clk_hw *hw, unsigned long rate,
> > +                                  unsigned long parent_rate)
> > +{
> > +       struct bm1880_div_hw_clock *div_hw = to_bm1880_div_clk(hw);
> > +       struct bm1880_div_clock *div = &div_hw->div;
> > +       void __iomem *reg_addr = div_hw->base + div->reg;
> > +       unsigned long flags = 0;
> > +       int value;
> > +       u32 val;
> > +
> > +       value = divider_get_val(rate, parent_rate, div->table,
> > +                               div->width, div_hw->div.flags);
> > +       if (value < 0)
> > +               return value;
> > +
> > +       if (div_hw->lock)
> > +               spin_lock_irqsave(div_hw->lock, flags);
> > +       else
> > +               __acquire(div_hw->lock);
> > +
> > +       if (div->flags & CLK_DIVIDER_HIWORD_MASK) {
> > +               val = clk_div_mask(div->width) << (div_hw->div.shift + 16);
> > +       } else {
> > +               val = readl(reg_addr);
> > +               val &= ~(clk_div_mask(div->width) << div_hw->div.shift);
> > +       }
> > +       val |= (u32)value << div->shift;
> > +       writel(val, reg_addr);
> > +
> > +       if (div_hw->lock)
> > +               spin_unlock_irqrestore(div_hw->lock, flags);
> > +       else
> > +               __release(div_hw->lock);
> > +
> > +       return 0;
> > +}
> > +
> > +const struct clk_ops bm1880_clk_div_ops = {
> 
> static?
> 

Ack.

> > +       .recalc_rate = bm1880_clk_div_recalc_rate,
> > +       .round_rate = bm1880_clk_div_round_rate,
> > +       .set_rate = bm1880_clk_div_set_rate,
> > +};
> > +
> > +struct clk *bm1880_clk_register_div(const struct bm1880_div_clock *div_clk,
> > +                                   void __iomem *sys_base)
> > +{
> > +       struct bm1880_div_hw_clock *div_hw;
> > +       struct clk_init_data init;
> > +       struct clk_hw *hw;
> > +       int err;
> > +
> > +       div_hw = kzalloc(sizeof(*div_hw), GFP_KERNEL);
> > +       if (!div_hw)
> > +               return ERR_PTR(-ENOMEM);
> > +
> > +       init.name = div_clk->name;
> > +       init.ops = &bm1880_clk_div_ops;
> > +       init.flags = div_clk->flags;
> > +       init.parent_names = &div_clk->parent;
> > +       init.num_parents = 1;
> > +
> > +       div_hw->hw.init = &init;
> > +       div_hw->div.reg = div_clk->reg;
> > +       div_hw->div.shift = div_clk->shift;
> > +       div_hw->div.width = div_clk->width;
> > +       div_hw->div.initval = div_clk->initval;
> > +       div_hw->div.table = div_clk->table;
> > +       div_hw->div.flags = CLK_DIVIDER_ONE_BASED | CLK_DIVIDER_ALLOW_ZERO;
> > +       div_hw->base = sys_base;
> > +       div_hw->lock = &bm1880_clk_lock;
> > +
> > +       hw = &div_hw->hw;
> > +       err = clk_hw_register(NULL, hw);
> > +
> > +       if (err) {
> > +               kfree(div_hw);
> > +               return ERR_PTR(err);
> > +       }
> > +
> > +       return hw->clk;
> > +}
> > +
> > +void bm1880_clk_unregister_div(struct clk *clk)
> > +{
> > +       struct bm1880_div_hw_clock *div_hw;
> > +       struct clk_hw *hw;
> > +
> > +       hw = __clk_get_hw(clk);
> > +       if (!hw)
> > +               return;
> > +
> > +       div_hw = to_bm1880_div_clk(hw);
> > +
> > +       clk_unregister(clk);
> > +       kfree(div_hw);
> > +}
> > +
> > +int bm1880_clk_register_divs(const struct bm1880_div_clock *clks,
> > +                            int num_clks, struct bm1880_clock_data *data)
> > +{
> > +       struct clk *clk;
> > +       void __iomem *sys_base = data->sys_base;
> > +       int i;
> > +
> > +       for (i = 0; i < num_clks; i++) {
> > +               const struct bm1880_div_clock *bm1880_clk = &clks[i];
> > +
> > +               clk = bm1880_clk_register_div(bm1880_clk, sys_base);
> > +               if (IS_ERR(clk)) {
> > +                       pr_err("%s: failed to register clock %s\n",
> > +                              __func__, bm1880_clk->name);
> > +                       goto err_clk;
> > +               }
> > +
> > +               data->clk_data.clks[clks[i].id] = clk;
> > +       }
> > +
> > +       return 0;
> > +
> > +err_clk:
> > +       while (i--)
> > +               bm1880_clk_unregister_div(data->clk_data.clks[clks[i].id]);
> > +
> > +       return PTR_ERR(clk);
> > +}
> > +
> > +int bm1880_clk_register_gate(const struct bm1880_gate_clock *clks,
> > +                            int num_clks, struct bm1880_clock_data *data)
> > +{
> > +       struct clk *clk;
> > +       void __iomem *sys_base = data->sys_base;
> > +       int i;
> > +
> > +       for (i = 0; i < num_clks; i++) {
> > +               clk = clk_register_gate(NULL, clks[i].name,
> > +                                       clks[i].parent,
> > +                                       clks[i].flags,
> > +                                       sys_base + clks[i].gate_reg,
> > +                                       clks[i].gate_shift,
> > +                                       0,
> > +                                       &bm1880_clk_lock);
> > +               if (IS_ERR(clk)) {
> > +                       pr_err("%s: failed to register clock %s\n",
> > +                              __func__, clks[i].name);
> > +                       goto err_clk;
> > +               }
> > +
> > +               data->clk_data.clks[clks[i].id] = clk;
> > +       }
> > +
> > +       return 0;
> > +
> > +err_clk:
> > +       while (i--)
> > +               clk_unregister_gate(data->clk_data.clks[clks[i].id]);
> > +
> > +       return PTR_ERR(clk);
> > +}
> > +
> > +struct clk *bm1880_clk_register_composite(struct bm1880_composite_clock *clks,
> > +                                         void __iomem *sys_base)
> > +{
> > +       struct clk *clk;
> > +       struct clk_mux *mux = NULL;
> > +       struct clk_gate *gate = NULL;
> > +       struct bm1880_div_hw_clock *div_hws = NULL;
> > +       struct clk_hw *mux_hw = NULL, *gate_hw = NULL, *div_hw = NULL;
> > +       const struct clk_ops *mux_ops = NULL, *gate_ops = NULL, *div_ops = NULL;
> > +       const char * const *parent_names;
> > +       const char *parent;
> > +       int num_parents;
> > +       int ret;
> > +
> > +       if (clks->mux_shift >= 0) {
> > +               mux = kzalloc(sizeof(*mux), GFP_KERNEL);
> > +               if (!mux)
> > +                       return ERR_PTR(-ENOMEM);
> > +
> > +               mux->reg = sys_base + clks->mux_reg;
> > +               mux->mask = 1;
> > +               mux->shift = clks->mux_shift;
> > +               mux_hw = &mux->hw;
> > +               mux_ops = &clk_mux_ops;
> > +               mux->lock = &bm1880_clk_lock;
> > +
> > +               parent_names = clks->parents;
> > +               num_parents = clks->num_parents;
> > +       } else {
> > +               parent = clks->parent;
> > +               parent_names = &parent;
> > +               num_parents = 1;
> > +       }
> > +
> > +       if (clks->gate_shift >= 0) {
> > +               gate = kzalloc(sizeof(*gate), GFP_KERNEL);
> > +               if (!gate) {
> > +                       ret = -ENOMEM;
> > +                       goto err_out;
> > +               }
> > +
> > +               gate->reg = sys_base + clks->gate_reg;
> > +               gate->bit_idx = clks->gate_shift;
> > +               gate->lock = &bm1880_clk_lock;
> > +
> > +               gate_hw = &gate->hw;
> > +               gate_ops = &clk_gate_ops;
> > +       }
> > +
> > +       if (clks->div_shift >= 0) {
> > +               div_hws = kzalloc(sizeof(*div_hws), GFP_KERNEL);
> > +               if (!div_hws) {
> > +                       ret = -ENOMEM;
> > +                       goto err_out;
> > +               }
> > +
> > +               div_hws->base = sys_base;
> > +               div_hws->div.reg = clks->div_reg;
> > +               div_hws->div.shift = clks->div_shift;
> > +               div_hws->div.width = clks->div_width;
> > +               div_hws->div.table = clks->table;
> > +               div_hws->div.initval = clks->div_initval;
> > +               div_hws->lock = &bm1880_clk_lock;
> > +               div_hws->div.flags = CLK_DIVIDER_ONE_BASED |
> > +                                    CLK_DIVIDER_ALLOW_ZERO;
> > +
> > +               div_hw = &div_hws->hw;
> > +               div_ops = &bm1880_clk_div_ops;
> > +       }
> > +
> > +       clk = clk_register_composite(NULL, clks->name, parent_names,
> > +                                    num_parents, mux_hw, mux_ops, div_hw,
> > +                                    div_ops, gate_hw, gate_ops, (clks->flags));
> > +
> > +       if (IS_ERR(clk)) {
> > +               ret = PTR_ERR(clk);
> > +               goto err_out;
> > +       }
> > +
> > +       return clk;
> > +
> > +err_out:
> > +       kfree(div_hws);
> > +       kfree(gate);
> > +       kfree(mux);
> > +
> > +       return ERR_PTR(ret);
> > +}
> > +
> > +int bm1880_clk_register_composites(struct bm1880_composite_clock *clks,
> > +                                  int num_clks, struct bm1880_clock_data *data)
> > +{
> > +       struct clk *clk;
> > +       void __iomem *sys_base = data->sys_base;
> > +       int i;
> > +
> > +       for (i = 0; i < num_clks; i++) {
> > +               struct bm1880_composite_clock *bm1880_clk = &clks[i];
> > +
> > +               clk = bm1880_clk_register_composite(bm1880_clk, sys_base);
> > +               if (IS_ERR(clk)) {
> > +                       pr_err("%s: failed to register clock %s\n",
> > +                              __func__, bm1880_clk->name);
> > +                       goto err_clk;
> > +               }
> > +
> > +               data->clk_data.clks[clks[i].id] = clk;
> > +       }
> > +
> > +       return 0;
> > +
> > +err_clk:
> > +       while (i--)
> > +               clk_unregister_composite(data->clk_data.clks[clks[i].id]);
> > +
> > +       return PTR_ERR(clk);
> > +}
> > +
> > +static void bm1880_clk_init(struct device_node *np)
> > +{
> > +       struct bm1880_clock_data *clk_data;
> > +       struct clk **clk_table;
> > +       void __iomem *pll_base, *sys_base;
> > +       int num_clks;
> > +
> > +       pll_base = of_iomap(np, 0);
> > +       if (!pll_base) {
> > +               pr_err("%pOFn: unable to map pll resource", np);
> > +               of_node_put(np);
> > +               return;
> > +       }
> > +
> > +       sys_base = of_iomap(np, 1);
> > +       if (!sys_base) {
> > +               pr_err("%pOFn: unable to map sys resource", np);
> > +               of_node_put(np);
> > +               return;
> > +       }
> > +
> > +       clk_data = kzalloc(sizeof(*clk_data), GFP_KERNEL);
> > +       if (!clk_data)
> > +               return;
> > +
> > +       clk_data->pll_base = pll_base;
> > +       clk_data->sys_base = sys_base;
> > +       num_clks = ARRAY_SIZE(bm1880_gate_clks) +
> > +                  ARRAY_SIZE(bm1880_composite_clks);
> > +
> > +       clk_table = kcalloc(num_clks, sizeof(*clk_table), GFP_KERNEL);
> > +       if (!clk_table)
> > +               goto err_out;
> > +
> > +       clk_data->clk_data.clks = clk_table;
> > +       clk_data->clk_data.clk_num = num_clks;
> > +
> > +       /* Register PLL clocks */
> > +       bm1880_clk_register_plls(bm1880_pll_clks,
> > +                                ARRAY_SIZE(bm1880_pll_clks),
> > +                                clk_data);
> > +
> > +       /* Register Divider clocks */
> 
> Please remove these comments, they provide no useful information.
> 

Ack.

> > +       bm1880_clk_register_divs(bm1880_div_clks,
> > +                                ARRAY_SIZE(bm1880_div_clks),
> > +                                clk_data);
> > +
> > +       /* Register Mux clocks */
> > +       bm1880_clk_register_mux(bm1880_mux_clks,
> > +                               ARRAY_SIZE(bm1880_mux_clks),
> > +                               clk_data);
> > +
> > +       /* Register Composite clocks */
> > +       bm1880_clk_register_composites(bm1880_composite_clks,
> > +                                      ARRAY_SIZE(bm1880_composite_clks),
> > +                                      clk_data);
> > +
> > +       /* Register Gate clocks */
> > +       bm1880_clk_register_gate(bm1880_gate_clks,
> > +                                ARRAY_SIZE(bm1880_gate_clks),
> > +                                clk_data);
> > +
> > +       of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data->clk_data);
> > +
> > +       return;
> > +
> > +err_out:
> > +       kfree(clk_data);
> > +}
> > +
> > +CLK_OF_DECLARE_DRIVER(bm1880_clk, "bitmain,bm1880-clk", bm1880_clk_init);
> 
> Is there a reason why it can't be a platform driver?
> 

Hmm, I looked into the majority of drivers which live under `driver/clk/`.
Most of them are using CLK_OF_DECLARE_DRIVER, so I thought that only drivers
which have a separate directory are preferred by the maintainers to use
platform driver way.

Anyway, I can switch over to platform driver and that's what I prefer.

Thanks,
Mani


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
