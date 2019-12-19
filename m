Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2973A125EE2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 11:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zdJuWFb4Hu4BwfjPiIyDOba+In0lCDv1ysnuJJbWBD4=; b=mk5kHrX5RTdt1Fn7Zs7jpDzpTx
	AVHZb/UvqrQ0mYfgKmR/XEUGjh5ApQDIwitmESt199FbXp9OvLOuvCQhlgn7PqU4lVVIIp6ns1fKm
	aEGgGKxGqtKTcbnKZj8i13KiPpDGrQHmsYkhVRrX7fg37GRUnNiEM/YFV6053Dm939Sj/UUtMXYfn
	M7Y4y6axVHhMopslj5NVg0Gcy/qof8q+ksOEEDacM/9dXDa9lKE9jjpimy9nveySvXJrqSSRzdOmF
	PkGLbPiC+JBdEPiX6LoeA3NPRCSisnFWV/Ku2tpWUmvhDrxSdhR+zGUg9/OmdtxPIWxyGI7ChNPZ4
	1mvhpC4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iht0y-0001uP-EE; Thu, 19 Dec 2019 10:26:40 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iht0m-0001tq-AN
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 10:26:30 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1576751187; h=Content-Transfer-Encoding: Content-Type:
 In-Reply-To: MIME-Version: Date: Message-ID: From: References: To:
 Subject: Sender; bh=coZa58DCykuzeXGhJVtD0sLP5wucNCnUk5TI8rakwPM=;
 b=suPsvgZv/PqLwOTzNs8FQ+dRD2O+417WdLZOQmy6xf6GC2+/casDWMeJsZ18ivO52QN29VQF
 SEti2vdnDbkIqDF1CPGamFWQ2ElveBWEnQ/ftDQgnKvKryhjz5dpmkNyPR2Nx93T6ZutiBK2
 bAwpC4jK0CPdP9AfwSe39X2NTv0=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5dfb5052.7f32794710d8-smtp-out-n03;
 Thu, 19 Dec 2019 10:26:26 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id CE788C348D0; Thu, 19 Dec 2019 10:26:25 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from [10.201.2.161]
 (blr-c-bdr-fw-01_globalnat_allzones-outside.qualcomm.com [103.229.19.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: sricharan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 69F35C348CC;
 Thu, 19 Dec 2019 10:26:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 69F35C348CC
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=sricharan@codeaurora.org
Subject: Re: [PATCH 4/6] clk: qcom: Add ipq6018 Global Clock Controller support
To: Stephen Boyd <sboyd@kernel.org>, agross@kernel.org,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-soc@vger.kernel.org, robh+dt@kernel.org
References: <1559755738-28643-1-git-send-email-sricharan@codeaurora.org>
 <1559755738-28643-5-git-send-email-sricharan@codeaurora.org>
 <20190610152205.1EC24207E0@mail.kernel.org>
From: Sricharan R <sricharan@codeaurora.org>
Message-ID: <a0212a93-c790-1535-4531-3112e2fa27fb@codeaurora.org>
Date: Thu, 19 Dec 2019 15:56:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20190610152205.1EC24207E0@mail.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_022628_481775_10BB9F99 
X-CRM114-Status: GOOD (  20.93  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [104.130.122.25 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,
  Sorry for the late response, started looking in to this again.

On 6/10/2019 8:52 PM, Stephen Boyd wrote:
> Quoting Sricharan R (2019-06-05 10:28:56)
>> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
>> index e1ff83c..e5fb091 100644
>> --- a/drivers/clk/qcom/Kconfig
>> +++ b/drivers/clk/qcom/Kconfig
>> @@ -120,6 +120,15 @@ config IPQ_GCC_8074
>>           i2c, USB, SD/eMMC, etc. Select this for the root clock
>>           of ipq8074.
>>  
>> +config IPQ_GCC_6018
>> +       tristate "IPQ6018 Global Clock Controller"
>> +       depends on COMMON_CLK_QCOM
> 
> Not sure I commented on this, but this should be removed. The whole
> thing is inside an if now.
> 

 ok, will change.

>> +       help
>> +         Support for global clock controller on ipq6018 devices.
>> +         Say Y if you want to use peripheral devices such as UART, SPI,
>> +         i2c, USB, SD/eMMC, etc. Select this for the root clock
>> +         of ipq6018.
>> +
>>  config MSM_GCC_8660
>>         tristate "MSM8660 Global Clock Controller"
>>         help
>> diff --git a/drivers/clk/qcom/gcc-ipq6018.c b/drivers/clk/qcom/gcc-ipq6018.c
>> new file mode 100644
>> index 0000000..9f4552b
>> --- /dev/null
>> +++ b/drivers/clk/qcom/gcc-ipq6018.c
>> @@ -0,0 +1,5267 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (c) 2018, The Linux Foundation. All rights reserved.
>> + */
>> +
>> +#include <linux/kernel.h>
>> +#include <linux/err.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/module.h>
>> +#include <linux/of.h>
>> +#include <linux/of_device.h>
>> +#include <linux/clk-provider.h>
>> +#include <linux/regmap.h>
>> +
>> +#include <linux/reset-controller.h>
>> +#include <dt-bindings/clock/qcom,gcc-ipq6018.h>
>> +
>> +#include "common.h"
>> +#include "clk-regmap.h"
>> +#include "clk-pll.h"
>> +#include "clk-rcg.h"
>> +#include "clk-branch.h"
>> +#include "clk-alpha-pll.h"
>> +#include "clk-regmap-divider.h"
>> +#include "clk-regmap-mux.h"
>> +#include "reset.h"
>> +
>> +#define F(f, s, h, m, n) { (f), (s), (2 * (h) - 1), (m), (n) }
> [...]
>> +
>> +static struct clk_alpha_pll gpll0_main = {
>> +       .offset = 0x21000,
>> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
>> +       .clkr = {
>> +               .enable_reg = 0x0b000,
>> +               .enable_mask = BIT(0),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "gpll0_main",
>> +                       .parent_names = (const char *[]){
>> +                               "xo"
>> +                       },
>> +                       .num_parents = 1,
>> +                       .ops = &clk_alpha_pll_ops,
>> +                       .flags = CLK_IS_CRITICAL,
> 
> Can you add a comment on why this is critical?
> 

 Need not be critical, will remove it here and in
 rest of the places as well.

>> +               },
>> +       },
>> +};
>> +
>> +static struct clk_fixed_factor gpll0_out_main_div2 = {
>> +       .mult = 1,
>> +       .div = 2,
>> +       .hw.init = &(struct clk_init_data){
>> +               .name = "gpll0_out_main_div2",
>> +               .parent_names = (const char *[]){
>> +                       "gpll0_main"
>> +               },
>> +               .num_parents = 1,
>> +               .ops = &clk_fixed_factor_ops,
>> +               .flags = CLK_SET_RATE_PARENT,
>> +       },
>> +};
>> +
>> +static struct clk_alpha_pll_postdiv gpll0 = {
>> +       .offset = 0x21000,
>> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
>> +       .width = 4,
>> +       .clkr.hw.init = &(struct clk_init_data){
>> +               .name = "gpll0",
>> +               .parent_names = (const char *[]){
>> +                       "gpll0_main"
>> +               },
>> +               .num_parents = 1,
>> +               .ops = &clk_alpha_pll_postdiv_ro_ops,
>> +               .flags = CLK_SET_RATE_PARENT,
>> +       },
>> +};
>> +
>> +static struct clk_alpha_pll ubi32_pll_main = {
>> +       .offset = 0x25000,
>> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_HUAYRA],
>> +       .flags = SUPPORTS_DYNAMIC_UPDATE,
>> +       .clkr = {
>> +               .enable_reg = 0x0b000,
>> +               .enable_mask = BIT(6),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "ubi32_pll_main",
>> +                       .parent_names = (const char *[]){
>> +                               "xo"
>> +                       },
>> +                       .num_parents = 1,
>> +                       .ops = &clk_alpha_pll_huayra_ops,
>> +               },
>> +       },
>> +};
>> +
>> +static struct clk_alpha_pll_postdiv ubi32_pll = {
>> +       .offset = 0x25000,
>> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_HUAYRA],
>> +       .width = 2,
>> +       .clkr.hw.init = &(struct clk_init_data){
>> +               .name = "ubi32_pll",
>> +               .parent_names = (const char *[]){
>> +                       "ubi32_pll_main"
>> +               },
>> +               .num_parents = 1,
>> +               .ops = &clk_alpha_pll_postdiv_ro_ops,
>> +               .flags = CLK_SET_RATE_PARENT,
>> +       },
>> +};
>> +
>> +static struct clk_alpha_pll gpll6_main = {
>> +       .offset = 0x37000,
>> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_BRAMMO],
>> +       .clkr = {
>> +               .enable_reg = 0x0b000,
>> +               .enable_mask = BIT(7),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "gpll6_main",
>> +                       .parent_names = (const char *[]){
>> +                               "xo"
>> +                       },
>> +                       .num_parents = 1,
>> +                       .ops = &clk_alpha_pll_ops,
>> +                       .flags = CLK_IS_CRITICAL,
> 
> Can you add a comment on why this is critical?
> 
>> +               },
>> +       },
>> +};
>> +
>> +static struct clk_alpha_pll_postdiv gpll6 = {
>> +       .offset = 0x37000,
>> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_BRAMMO],
>> +       .width = 2,
>> +       .clkr.hw.init = &(struct clk_init_data){
>> +               .name = "gpll6",
>> +               .parent_names = (const char *[]){
>> +                       "gpll6_main"
>> +               },
>> +               .num_parents = 1,
>> +               .ops = &clk_alpha_pll_postdiv_ro_ops,
>> +               .flags = CLK_SET_RATE_PARENT,
>> +       },
>> +};
>> +
>> +static struct clk_alpha_pll gpll4_main = {
>> +       .offset = 0x24000,
>> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
>> +       .clkr = {
>> +               .enable_reg = 0x0b000,
>> +               .enable_mask = BIT(5),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "gpll4_main",
>> +                       .parent_names = (const char *[]){
>> +                               "xo"
>> +                       },
>> +                       .num_parents = 1,
>> +                       .ops = &clk_alpha_pll_ops,
>> +                       .flags = CLK_IS_CRITICAL,
> 
> Can you add a comment on why this is critical?
> 
>> +               },
>> +       },
>> +};
>> +
>> +static struct clk_alpha_pll_postdiv gpll4 = {
>> +       .offset = 0x24000,
>> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
>> +       .width = 4,
>> +       .clkr.hw.init = &(struct clk_init_data){
>> +               .name = "gpll4",
>> +               .parent_names = (const char *[]){
>> +                       "gpll4_main"
>> +               },
>> +               .num_parents = 1,
>> +               .ops = &clk_alpha_pll_postdiv_ro_ops,
>> +               .flags = CLK_SET_RATE_PARENT,
>> +       },
>> +};
>> +
>> +static const struct freq_tbl ftbl_pcnoc_bfdcd_clk_src[] = {
>> +       F(24000000, P_XO, 1, 0, 0),
>> +       F(50000000, P_GPLL0, 16, 0, 0),
>> +       F(100000000, P_GPLL0, 8, 0, 0),
>> +       { }
>> +};
>> +
>> +static struct clk_rcg2 pcnoc_bfdcd_clk_src = {
>> +       .cmd_rcgr = 0x27000,
>> +       .freq_tbl = ftbl_pcnoc_bfdcd_clk_src,
>> +       .hid_width = 5,
>> +       .parent_map = gcc_xo_gpll0_gpll0_out_main_div2_map,
>> +       .clkr.hw.init = &(struct clk_init_data){
>> +               .name = "pcnoc_bfdcd_clk_src",
>> +               .parent_names = gcc_xo_gpll0_gpll0_out_main_div2,
>> +               .num_parents = 3,
>> +               .ops = &clk_rcg2_ops,
>> +               .flags = CLK_IS_CRITICAL,
> 
> Can you add a comment on why this is critical?
> 
>> +       },
>> +};
>> +
>> +static struct clk_fixed_factor pcnoc_clk_src = {
>> +       .mult = 1,
>> +       .div = 1,
>> +       .hw.init = &(struct clk_init_data){
>> +               .name = "pcnoc_clk_src",
>> +               .parent_names = (const char *[]){
>> +                       "pcnoc_bfdcd_clk_src"
>> +               },
>> +               .num_parents = 1,
>> +               .ops = &clk_fixed_factor_ops,
>> +               .flags = CLK_SET_RATE_PARENT,
>> +       },
>> +};
>> +
>> +static struct clk_alpha_pll gpll2_main = {
>> +       .offset = 0x4a000,
>> +       .regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT],
>> +       .clkr = {
>> +               .enable_reg = 0x0b000,
>> +               .enable_mask = BIT(2),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "gpll2_main",
>> +                       .parent_names = (const char *[]){
>> +                               "xo"
>> +                       },
>> +                       .num_parents = 1,
>> +                       .ops = &clk_alpha_pll_ops,
>> +                       .flags = CLK_IS_CRITICAL,
> 
> Can you add a comment on why this is critical?
> 
>> +               },
>> +       },
>> +};
>> +
> [...]
>> +
>> +static struct clk_fixed_factor system_noc_clk_src = {
>> +       .mult = 1,
>> +       .div = 1,
>> +       .hw.init = &(struct clk_init_data){
>> +               .name = "system_noc_clk_src",
>> +               .parent_names = (const char *[]){
>> +                       "system_noc_bfdcd_clk_src"
>> +               },
>> +               .num_parents = 1,
>> +               .ops = &clk_fixed_factor_ops,
>> +               .flags = CLK_SET_RATE_PARENT,
>> +       },
>> +};
> 
> What is the point of these fixed factor 1/1 clks? Just to rename things?
> Does it matter, or can we just specify system_noc_bfdcd_clk_src as the
> parent and drop this intermediate clk?
> 

  ok, will remove it.

>> +
>> +static struct clk_branch gcc_sleep_clk_src = {
>> +       .halt_reg = 0x30000,
>> +       .clkr = {
>> +               .enable_reg = 0x30000,
>> +               .enable_mask = BIT(1),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "gcc_sleep_clk_src",
>> +                       .parent_names = (const char *[]){
>> +                               "sleep_clk"
>> +                       },
>> +                       .num_parents = 1,
>> +                       .ops = &clk_branch2_ops,
>> +                       .flags = CLK_IS_CRITICAL,
>> +               },
>> +       },
>> +};
>> +
> [...]
>> +
>> +static struct clk_branch gcc_qdss_at_clk = {
>> +       .halt_reg = 0x29024,
>> +       .clkr = {
>> +               .enable_reg = 0x29024,
>> +               .enable_mask = BIT(0),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "gcc_qdss_at_clk",
>> +                       .parent_names = (const char *[]){
>> +                               "qdss_at_clk_src"
>> +                       },
>> +                       .num_parents = 1,
>> +                       .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> 
> Can you add a comment on why this is critical?
> 
>> +                       .ops = &clk_branch2_ops,
>> +               },
>> +       },
>> +};
>> +
>> +static struct clk_branch gcc_qdss_dap_clk = {
>> +       .halt_reg = 0x29084,
>> +       .clkr = {
>> +               .enable_reg = 0x29084,
>> +               .enable_mask = BIT(0),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "gcc_qdss_dap_clk",
>> +                       .parent_names = (const char *[]){
>> +                               "qdss_dap_sync_clk_src"
>> +                       },
>> +                       .num_parents = 1,
>> +                       .flags = CLK_SET_RATE_PARENT | CLK_IS_CRITICAL,
> 
> Can you add a comment on why this is critical?
> 
>> +                       .ops = &clk_branch2_ops,
>> +               },
>> +       },
>> +};
>> +
>> +static struct clk_branch gcc_qpic_ahb_clk = {
>> +       .halt_reg = 0x57024,
>> +       .clkr = {
>> +               .enable_reg = 0x57024,
>> +               .enable_mask = BIT(0),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "gcc_qpic_ahb_clk",
>> +                       .parent_names = (const char *[]){
>> +                               "pcnoc_clk_src"
>> +                       },
>> +                       .num_parents = 1,
>> +                       .flags = CLK_SET_RATE_PARENT,
>> +                       .ops = &clk_branch2_ops,
>> +               },
>> +       },
>> +};
>> +
> [...]
>> +static struct clk_branch gcc_dcc_clk = {
>> +       .halt_reg = 0x77004,
>> +       .clkr = {
>> +               .enable_reg = 0x77004,
>> +               .enable_mask = BIT(0),
>> +               .hw.init = &(struct clk_init_data){
>> +                       .name = "gcc_dcc_clk",
>> +                       .parent_names = (const char *[]){
>> +                               "pcnoc_clk_src"
>> +                       },
> 
> Can you use the new method of specifying clk parents here? That will
> make this simpler.
> 

 ok, will use it.

>> +                       .num_parents = 1,
>> +                       .flags = CLK_SET_RATE_PARENT,
>> +                       .ops = &clk_branch2_ops,
>> +               },
>> +       },
>> +};
>> +
>> +static const struct alpha_pll_config ubi32_pll_config = {
>> +       .l = 0x3e,
>> +       .alpha = 0x57,
>> +       .config_ctl_val = 0x200d6aa8,
>> +       .config_ctl_hi_val = 0x3c2,
>> +       .main_output_mask = BIT(0),
>> +       .aux_output_mask = BIT(1),
>> +       .pre_div_val = 0x0,
>> +       .pre_div_mask = BIT(12),
>> +       .post_div_val = 0x0,
>> +       .post_div_mask = GENMASK(9, 8),
>> +};
>> +
>> +static const struct alpha_pll_config nss_crypto_pll_config = {
>> +       .l = 0x32,
>> +       .alpha = 0x0,
>> +       .alpha_hi = 0x0,
>> +       .config_ctl_val = 0x4001055b,
>> +       .main_output_mask = BIT(0),
>> +       .pre_div_val = 0x0,
>> +       .pre_div_mask = GENMASK(14, 12),
>> +       .post_div_val = 0x1 << 8,
>> +       .post_div_mask = GENMASK(11, 8),
>> +       .vco_mask = GENMASK(21, 20),
>> +       .vco_val = 0x0,
>> +       .alpha_en_mask = BIT(24),
>> +};
>> +
>> +static struct clk_hw *gcc_ipq6018_hws[] = {
> 
> It would be nice to trim this down to a list of 0.
> 
>> +       &gpll0_out_main_div2.hw,
>> +       &pcnoc_clk_src.hw,
>> +       &snoc_nssnoc_clk_src.hw,
>> +       &system_noc_clk_src.hw,
>> +       &gcc_xo_div4_clk_src.hw,
>> +       &ubi32_mem_noc_clk_src.hw,
>> +       &nss_ppe_cdiv_clk_src.hw,
>> +       &gpll6_out_main_div2.hw,
> 
> Why do we need this? Does anyone use it?
> 

   Yes, will remove the fixed factor 1/1 parents from this list.
   But other div clks are still required.

Regards,
 Sricharan
    

-- 
"QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
