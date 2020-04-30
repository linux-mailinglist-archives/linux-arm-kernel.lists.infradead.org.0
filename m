Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBBB1BF7D1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 14:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2bg2D4HZpGFe2lGYG+OsAAubKZYAAB/Su5/A0EbOCRc=; b=Gcmv4aLBRYX6eaPDXcN3Lh4K21
	UmfMSW/UXgPNL41W6eth0DqfV6lZeAx+5l+lJrns7Su2T6LOc2X/bHEapb/hwIeIXBtl+nWerojU7
	yuKu0X5fmGnosAsSOnAoAd9ooZro2YpAiStLoygAVT5wH5Eo068bdjDszLQbUbz1RwjH74zn8GNiT
	TOgl7hC564DCfzurYnH2p4EnMkBYSFOUmXERfzBtgLdKkoBBSkV53GKgyKfFWoyN4n6IzJTBgHkmm
	U5phgOaK41hW2bC+eDgnvjlQ665uCVHbh03v2QZKRTAbfdnODIPVRQKa463RqvvTmz0wZB642SO0M
	IHl9RXKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7w2-0002wj-2r; Thu, 30 Apr 2020 12:04:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7vr-0002ur-B5
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 12:04:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id k1so6579530wrx.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 05:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=XtVtaHcUbf3+lIqcXENAN/tNjTakFyYRW672c6fuMhg=;
 b=AzP5FELfnhwweEY2MS33HS7R3JKMY46vuAkHBl3hmdA09aaM0nxMPXWwF9YoS0+8P7
 v+4D7HIGDrtakWRu77Q+xLZzEX9CpDPmmaAr6oOk70SY8ET6M/WXoRqpE8QmRFXrnfFT
 VIYRHfDx7av8GH2gBuLU/cKjChL/kejdVk1a1rJ7EutE3tFwuWUCQyr2Pbg/H/M7KGIf
 Eucypfja7KLrDkTVq0T6LJNf+gzDkrj4rtMx2stsyl2Z678JhksJiCG32usg973hfCHP
 PAYyU/fwoG5eO8h8Euz3zcH/Amy2IfsotrkVVqb7ExmGAeQJiHDznDcK/poj+1NHN0+6
 Vy8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=XtVtaHcUbf3+lIqcXENAN/tNjTakFyYRW672c6fuMhg=;
 b=keXhr/x83lVJtFlaWA/A0HAFVH1YjGrW6NIU9RWxfhqwN8OkHH/JHE1ledGO1ky9NG
 oDn5n0dkgs+4oBAxqYXqN84/sJFA5Md2c3kMmP85Gq9Rm0nZAQoijf+oXB1k8xL3yjN4
 4EvyvVTWHhxcpJpWPiTwEJzVJIz/sOlNC7DIzPtnMNCiTDmOyBynWy4E7q6SvqXLuRCM
 jSDBrTBppTVErS5SyBeyyvzYsHZEFCJLar4fR7Qy5DrPfi34JXPi8SqJplJCiFus1rh6
 YrjE3qk8n+B/9te1iNbjt/z59nrvZ51FLqmrHFVcbFKXdh05/AK8P6aH7GcpZgE6vgsE
 ocwg==
X-Gm-Message-State: AGi0PuYO0Byif6ZIZCvOjx5oT8WD6hfDd9FwB/o7WMbDf7wUco2rDENU
 fpyLleJt/NMxw2etcyCjj5dZ8A==
X-Google-Smtp-Source: APiQypLk3/R9WBe5dCBrX21eKg0heSb/6iuy4Awy6jtM4l3RdwCWVW9/4Aj6CC8BZxkRtCDdFpIC6g==
X-Received: by 2002:a5d:5082:: with SMTP id a2mr3518238wrt.224.1588248283067; 
 Thu, 30 Apr 2020 05:04:43 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id i25sm11772873wml.43.2020.04.30.05.04.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 05:04:41 -0700 (PDT)
References: <20200428210229.703309-1-martin.blumenstingl@googlemail.com>
 <20200428210229.703309-3-martin.blumenstingl@googlemail.com>
 <1jlfmdi9uw.fsf@starbuckisacylon.baylibre.com>
 <CAPDyKFoEh8qKYFONo1SHnvwhDwjUa5bMnnT1Kbu8=4rd=T-8Kg@mail.gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v6 2/2] mmc: host: meson-mx-sdhc: new driver for the
 Amlogic Meson SDHC host
In-reply-to: <CAPDyKFoEh8qKYFONo1SHnvwhDwjUa5bMnnT1Kbu8=4rd=T-8Kg@mail.gmail.com>
Date: Thu, 30 Apr 2020 14:04:40 +0200
Message-ID: <1jh7x1i3hj.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_050447_438317_08022C75 
X-CRM114-Status: GOOD (  24.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: DTML <devicetree@vger.kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 yinxin_1989@aliyun.com, Anand Moon <linux.amoon@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, lnykww@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Thu 30 Apr 2020 at 13:10, Ulf Hansson <ulf.hansson@linaro.org> wrote:

> + Stephen
>
> On Thu, 30 Apr 2020 at 11:47, Jerome Brunet <jbrunet@baylibre.com> wrote:
>>
>>
>> On Tue 28 Apr 2020 at 23:02, Martin Blumenstingl <martin.blumenstingl@googlemail.com> wrote:
>>
>> > The SDHC MMC host controller on Amlogic SoCs provides an eMMC and MMC
>> > card interface with 1/4/8-bit bus width.
>> > It supports eMMC spec 4.4x/4.5x including HS200 (up to 100MHz clock).
>> >
>> > The public S805 datasheet [0] contains a short documentation about the
>> > registers. Unfortunately it does not describe how to use the registers
>> > to make the hardware work. Thus this driver is based on reading (and
>> > understanding) the Amlogic 3.10 GPL kernel code.
>> >
>> > Some hardware details are not easy to see. Jianxin Pan was kind enough
>> > to answer my questions:
>> > The hardware has built-in busy timeout support. The maximum timeout is
>> > 30 seconds. This is only documented in Amlogic's internal
>> > documentation.
>> >
>> > The controller only works with very specific clock configurations. The
>> > details are not part of the public datasheet. In my own words the
>> > supported configurations are:
>> > - 399.812kHz: clkin =  850MHz div = 2126 sd_rx_phase = 63
>> > - 1MHz:               clkin =  850MHz div = 850  sd_rx_phase = 55
>> > - 5.986MHz:   clkin =  850MHz div = 142  sd_rx_phase = 24
>> > - 25MHz:      clkin =  850MHz div = 34   sd_rx_phase = 15
>> > - 47.222MHz:  clkin =  850MHz div = 18   sd_rx_phase = 11/15 (SDR50/HS)
>> > - 53.125MHz:  clkin =  850MHz div = 16   sd_rx_phase = (tuning)
>> > - 70.833MHz:  clkin =  850MHz div = 12   sd_rx_phase = (tuning)
>> > - 85MHz:      clkin =  850MHz div = 10   sd_rx_phase = (tuning)
>> > - 94.44MHz:   clkin =  850MHz div = 9    sd_rx_phase = (tuning)
>> > - 106.25MHz:  clkin =  850MHz div = 8    sd_rx_phase = (tuning)
>> > - 127.5MHz:     clkin = 1275MHz div = 10   sd_rx_phase = (tuning)
>> > - 141.667MHz:   clkin =  850MHz div = 6    sd_rx_phase = (tuning)
>> > - 159.375MHz: clkin = 1275MHz div = 8    sd_rx_phase = (tuning)
>> > - 212.5MHz:   clkin = 1275MHz div = 6    sd_rx_phase = (tuning)
>> > - (sd_tx_phase is always 1, 94.44MHz is not listed in the datasheet
>> >    but this is what the 3.10 BSP kernel on Odroid-C1 actually uses)
>> >
>> > NOTE: CMD23 support is disabled for now because it results in command
>> > timeouts and thus decreases read performance.
>> >
>> > Tested-by: Wei Wang <lnykww@gmail.com>
>> > Tested-by: Xin Yin <yinxin_1989@aliyun.com>
>> > Reviewed-by: Xin Yin <yinxin_1989@aliyun.com>
>> > Tested-by: Anand Moon <linux.amoon@gmail.com>
>> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>> > ---
>> >  drivers/mmc/host/Kconfig              |  14 +
>> >  drivers/mmc/host/Makefile             |   1 +
>> >  drivers/mmc/host/meson-mx-sdhc-clkc.c | 188 ++++++
>> >  drivers/mmc/host/meson-mx-sdhc.c      | 916 ++++++++++++++++++++++++++
>> >  drivers/mmc/host/meson-mx-sdhc.h      | 138 ++++
>> >  5 files changed, 1257 insertions(+)
>> >  create mode 100644 drivers/mmc/host/meson-mx-sdhc-clkc.c
>> >  create mode 100644 drivers/mmc/host/meson-mx-sdhc.c
>> >  create mode 100644 drivers/mmc/host/meson-mx-sdhc.h
>> >
>> > diff --git a/drivers/mmc/host/Kconfig b/drivers/mmc/host/Kconfig
>> > index 462b5352fea7..df3fc572f842 100644
>> > --- a/drivers/mmc/host/Kconfig
>> > +++ b/drivers/mmc/host/Kconfig
>> > @@ -405,6 +405,20 @@ config MMC_MESON_GX
>> >
>> >         If you have a controller with this interface, say Y here.
>> >
>> > +config MMC_MESON_MX_SDHC
>> > +     tristate "Amlogic Meson SDHC Host Controller support"
>> > +     depends on (ARM && ARCH_MESON) || COMPILE_TEST
>> > +     depends on COMMON_CLK
>> > +     depends on OF
>> > +     help
>> > +       This selects support for the SDHC Host Controller on
>> > +       Amlogic Meson6, Meson8, Meson8b and Meson8m2 SoCs.
>> > +       The controller supports the SD/SDIO Spec 3.x and eMMC Spec 4.5x
>> > +       with 1, 4, and 8 bit bus widths.
>> > +
>> > +       If you have a controller with this interface, say Y or M here.
>> > +       If unsure, say N.
>> > +
>> >  config MMC_MESON_MX_SDIO
>> >       tristate "Amlogic Meson6/Meson8/Meson8b SD/MMC Host Controller support"
>> >       depends on ARCH_MESON || COMPILE_TEST
>> > diff --git a/drivers/mmc/host/Makefile b/drivers/mmc/host/Makefile
>> > index b929ef941208..8bcb420e071c 100644
>> > --- a/drivers/mmc/host/Makefile
>> > +++ b/drivers/mmc/host/Makefile
>> > @@ -68,6 +68,7 @@ obj-$(CONFIG_MMC_VUB300)    += vub300.o
>> >  obj-$(CONFIG_MMC_USHC)               += ushc.o
>> >  obj-$(CONFIG_MMC_WMT)                += wmt-sdmmc.o
>> >  obj-$(CONFIG_MMC_MESON_GX)   += meson-gx-mmc.o
>> > +obj-$(CONFIG_MMC_MESON_MX_SDHC)      += meson-mx-sdhc-clkc.o meson-mx-sdhc.o
>> >  obj-$(CONFIG_MMC_MESON_MX_SDIO)      += meson-mx-sdio.o
>> >  obj-$(CONFIG_MMC_MOXART)     += moxart-mmc.o
>> >  obj-$(CONFIG_MMC_SUNXI)              += sunxi-mmc.o
>> > diff --git a/drivers/mmc/host/meson-mx-sdhc-clkc.c b/drivers/mmc/host/meson-mx-sdhc-clkc.c
>> > new file mode 100644
>> > index 000000000000..1e9dea94f9dc
>> > --- /dev/null
>> > +++ b/drivers/mmc/host/meson-mx-sdhc-clkc.c
>> > @@ -0,0 +1,188 @@
>> > +// SPDX-License-Identifier: GPL-2.0+
>> > +/*
>> > + * Amlogic Meson SDHC clock controller
>> > + *
>> > + * Copyright (C) 2020 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>> > + */
>> > +
>> > +#include <dt-bindings/clock/meson-mx-sdhc-clkc.h>
>> > +
>> > +#include <linux/clk-provider.h>
>> > +#include <linux/device.h>
>> > +#include <linux/platform_device.h>
>> > +
>> > +#include "meson-mx-sdhc.h"
>> > +
>> > +#define MESON_SDHC_NUM_BUILTIN_CLKS  6
>> > +
>> > +struct meson_mx_sdhc_clkc {
>> > +     struct clk_mux                  src_sel;
>> > +     struct clk_divider              div;
>> > +     struct clk_gate                 mod_clk_en;
>> > +     struct clk_gate                 tx_clk_en;
>> > +     struct clk_gate                 rx_clk_en;
>> > +     struct clk_gate                 sd_clk_en;
>> > +     struct clk_hw_onecell_data      hw_onecell_data;
>> > +};
>> > +
>> > +static const struct clk_div_table meson_mx_sdhc_div_table[] = {
>> > +     { .div = 6, .val = 5, },
>> > +     { .div = 8, .val = 7, },
>> > +     { .div = 9, .val = 8, },
>> > +     { .div = 10, .val = 9, },
>> > +     { .div = 12, .val = 11, },
>> > +     { .div = 16, .val = 15, },
>> > +     { .div = 18, .val = 17, },
>> > +     { .div = 34, .val = 33, },
>> > +     { .div = 142, .val = 141, },
>> > +     { .div = 850, .val = 849, },
>> > +     { .div = 2126, .val = 2125, },
>> > +     { .div = 4096, .val = 4095, },
>> > +     { /* sentinel */ }
>> > +};
>> > +
>> > +static const struct meson_mx_sdhc_clkc meson_mx_sdhc_clkc_data = {
>> > +     .src_sel = {
>> > +             .mask = 0x3,
>> > +             .shift = 16,
>> > +     },
>> > +     .div = {
>> > +             .shift = 0,
>> > +             .width = 12,
>> > +             .table = meson_mx_sdhc_div_table,
>> > +     },
>> > +     .mod_clk_en = {
>> > +             .bit_idx = 15,
>> > +     },
>> > +     .tx_clk_en = {
>> > +             .bit_idx = 14,
>> > +     },
>> > +     .rx_clk_en = {
>> > +             .bit_idx = 13,
>> > +     },
>> > +     .sd_clk_en = {
>> > +             .bit_idx = 12,
>> > +     },
>> > +};
>> > +
>> > +static const struct clk_init_data meson_mx_sdhc_clkc_init_data[] = {
>> > +     [SDHC_CLKID_SRC_SEL] = {
>> > +             .name = "sdhc_src_sel",
>> > +             .ops = &clk_mux_ops,
>> > +             .parent_data = (const struct clk_parent_data[]) {
>> > +                     { .fw_name = "clkin0" },
>> > +                     { .fw_name = "clkin1" },
>> > +                     { .fw_name = "clkin2" },
>> > +                     { .fw_name = "clkin3" },
>> > +             },
>> > +             .num_parents = 4,
>> > +     },
>> > +     [SDHC_CLKID_DIV] = {
>> > +             .name = "sdhc_div",
>> > +             .ops = &clk_divider_ops,
>> > +             .parent_hws = (const struct clk_hw *[]) {
>> > +                     &meson_mx_sdhc_clkc_data.src_sel.hw,
>> > +             },
>> > +             .num_parents = 1,
>> > +             .flags = CLK_SET_RATE_PARENT,
>> > +     },
>> > +     [SDHC_CLKID_MOD_CLK] = {
>> > +             .name = "sdhc_mod_clk_on",
>> > +             .ops = &clk_gate_ops,
>> > +             .parent_hws = (const struct clk_hw *[]) {
>> > +                     &meson_mx_sdhc_clkc_data.div.hw,
>> > +             },
>> > +             .num_parents = 1,
>> > +             .flags = CLK_SET_RATE_PARENT,
>> > +     },
>> > +     [SDHC_CLKID_SD_CLK] = {
>> > +             .name = "sdhc_tx_clk_on",
>> > +             .ops = &clk_gate_ops,
>> > +             .parent_hws = (const struct clk_hw *[]) {
>> > +                     &meson_mx_sdhc_clkc_data.div.hw,
>> > +             },
>> > +             .num_parents = 1,
>> > +             .flags = CLK_SET_RATE_PARENT,
>> > +     },
>> > +     [SDHC_CLKID_TX_CLK] = {
>> > +             .name = "sdhc_rx_clk_on",
>> > +             .ops = &clk_gate_ops,
>> > +             .parent_hws = (const struct clk_hw *[]) {
>> > +                     &meson_mx_sdhc_clkc_data.div.hw,
>> > +             },
>> > +             .num_parents = 1,
>> > +             .flags = CLK_SET_RATE_PARENT,
>> > +     },
>> > +     [SDHC_CLKID_RX_CLK] = {
>> > +             .name = "sdhc_sd_clk_on",
>> > +             .ops = &clk_gate_ops,
>> > +             .parent_hws = (const struct clk_hw *[]) {
>> > +                     &meson_mx_sdhc_clkc_data.div.hw,
>> > +             },
>> > +             .num_parents = 1,
>> > +             .flags = CLK_SET_RATE_PARENT,
>> > +     },
>> > +};
>>
>> That quite lot of structures.
>> The interesting information is the parent and divider table mostly, and
>> a few defines for the bit_idx.
>>
>> I feel this could be simplified so it is easier to follow.
>> Maybe something in the same fashion as meson8b-dwmac driver ?
>>
>> > +
>> > +int meson_mx_sdhc_register_clkc(struct device *dev, void __iomem *base)
>> > +{
>> > +     const struct clk_hw *div_parents[1], *gate_parents[1];
>> > +     struct clk_hw_onecell_data *onecell_data;
>> > +     struct meson_mx_sdhc_clkc *clkc_data;
>> > +     struct clk_init_data init_data;
>> > +     int i, ret;
>> > +
>> > +     clkc_data = devm_kzalloc(dev, struct_size(clkc_data,
>> > +                                               hw_onecell_data.hws,
>> > +                                               MESON_SDHC_NUM_BUILTIN_CLKS),
>> > +                              GFP_KERNEL);
>> > +     if (!clkc_data)
>> > +             return -ENOMEM;
>> > +
>> > +     memcpy(clkc_data, &meson_mx_sdhc_clkc_data,
>> > +            sizeof(meson_mx_sdhc_clkc_data));
>> > +
>> > +     div_parents[0] = &clkc_data->src_sel.hw;
>> > +     gate_parents[0] = &clkc_data->div.hw;
>> > +
>> > +     clkc_data->src_sel.reg = base + MESON_SDHC_CLKC;
>> > +     clkc_data->div.reg = base + MESON_SDHC_CLKC;
>> > +     clkc_data->mod_clk_en.reg = base + MESON_SDHC_CLKC;
>> > +     clkc_data->sd_clk_en.reg = base + MESON_SDHC_CLKC;
>> > +     clkc_data->tx_clk_en.reg = base + MESON_SDHC_CLKC;
>> > +     clkc_data->rx_clk_en.reg = base + MESON_SDHC_CLKC;
>> > +
>> > +     onecell_data = &clkc_data->hw_onecell_data;
>> > +     onecell_data->hws[SDHC_CLKID_SRC_SEL] = &clkc_data->src_sel.hw;
>> > +     onecell_data->hws[SDHC_CLKID_DIV] = &clkc_data->div.hw;
>> > +     onecell_data->hws[SDHC_CLKID_MOD_CLK] = &clkc_data->mod_clk_en.hw;
>> > +     onecell_data->hws[SDHC_CLKID_SD_CLK] = &clkc_data->sd_clk_en.hw;
>> > +     onecell_data->hws[SDHC_CLKID_TX_CLK] = &clkc_data->tx_clk_en.hw;
>> > +     onecell_data->hws[SDHC_CLKID_RX_CLK] = &clkc_data->rx_clk_en.hw;
>> > +
>> > +     for (i = 0; i < MESON_SDHC_NUM_BUILTIN_CLKS; i++) {
>> > +             init_data = meson_mx_sdhc_clkc_init_data[i];
>> > +
>> > +             if (i == SDHC_CLKID_SRC_SEL)
>> > +                     /* uses clk_parent_data instead */
>> > +                     init_data.parent_hws = NULL;
>> > +             else if (i == SDHC_CLKID_DIV)
>> > +                     init_data.parent_hws = div_parents;
>> > +             else
>> > +                     init_data.parent_hws = gate_parents;
>> > +
>> > +             onecell_data->hws[i]->init = &init_data;
>> > +
>> > +             ret = devm_clk_hw_register(dev, onecell_data->hws[i]);
>> > +             if (ret) {
>> > +                     dev_err(dev, "Registration of SDHC clock %d failed\n",
>> > +                             i);
>> > +                     return ret;
>> > +             }
>> > +     }
>> > +
>> > +     onecell_data->num = MESON_SDHC_NUM_BUILTIN_CLKS;
>> > +
>> > +     return devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
>> > +                                        onecell_data);
>>
>> I think registering a provider for a module that does not provide clocks
>> to any other device is a bit overkill.
>>
>> I understand the matter is getting the per-user clk* pointer.
>> Since this is the module registering the clock, you can use clk_hw->clk
>> to get it.
>>
>> Once you have the clk* of the leaf clocks, you don't even need to keep
>> track of the clk_hw* since you are using devm_
>>
>> Afterward, we should propably discuss with Stephen if something should
>> be added in CCF to get a struct clk* from struct clk_hw*.
>>
>
> [...]
>
> Hmm.
>
> I am not sure the above is a good idea, at all. Unless, I am
> misunderstanding your point, which may be the case.
>
> I think above "shortcuts" could lead to abuse of the clock framework
> and its internal data structures. When going forward, this could make
> it unnecessary harder to maintain the clock framework.
>
> I know, it's not my responsibility, but from my experience with MMC
> and SDIO interfaces, is that those have been too easy abuse - since
> most of the data structures and interfaces have been exported. Now,
> it's hard to roll back that, if you see what I mean.

Indeed, it worth clarifying this first.

With clk_register deprecated in favor of clk_hw_register, we are likely
to see that case rise elsewhere.

>
>> > +}
>> > diff --git a/drivers/mmc/host/meson-mx-sdhc.c b/drivers/mmc/host/meson-mx-sdhc.c
>> > new file mode 100644
>> > index 000000000000..3c54d5f91fbc
>> > --- /dev/null
>> > +++ b/drivers/mmc/host/meson-mx-sdhc.c
>> > @@ -0,0 +1,916 @@
>> > +// SPDX-License-Identifier: GPL-2.0+
>> > +/*
>> > + * Amlogic Meson6/Meson8/Meson8b/Meson8m2 SDHC MMC host controller driver.
>> > + *
>> > + * Copyright (C) 2020 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>> > + */
>
> [...]
>
> Kind regards
> Uffe


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
