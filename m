Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAF1153937
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 20:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=HdFczLR4/84YqRASH7wUHqO9KCUfyST9t+m150jVPhk=; b=o9d0bOq7UFHJ5OIh3nDtJZ3i4b
	S/+cUQT82fF33LevPC3pUeSCnNgA5xOctljpW/x0/xrxnTChuVUnZLxmZIUHdZCoigH9sMSoqeRsr
	9TCWW4snPioOreRX9nRddAGELUYnolgPOoBBsY/M/hCjw8YrMTaVTdshjPoKy4NZ16m1FwgJRSVVL
	Ly93t3xRgbOHrD7r8L1hLsXMIseIgtpTZUwNpAPJ6jQOijYRmrNcIvyE0vswlxnpyGhXQh4lIA3OV
	ExaVzIEHE7jZqhRnM4Uq16YsntcAA9oyYX7OC9mVkfzEJBOdC7Z5XdPeZkw1wq9L/ojheSVFelDp4
	IxdI1GeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izQXG-0005gL-IC; Wed, 05 Feb 2020 19:40:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izQX9-0005fT-B4
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 19:40:24 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5E8C20730;
 Wed,  5 Feb 2020 19:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580931622;
 bh=zl2SX9JfsFFdzL3bneKhbUUQTtvwFKOgYGRjoAZSOiI=;
 h=In-Reply-To:References:From:Subject:To:Date:From;
 b=ZWfQjPxHdJNmOJnoCInZQCzgfU75XT7u8TgGiNZI7si5dphN64Zv6Lz5Kccr1uAm/
 LhG1ld3db3jET6iHgBqms5oceR9/DOuiq0sukSSY+s6P+ezAgtVsEeLcmrpKOf3VHw
 4WlXOS55Rsxzb3f3EftJLOh1MDZnj7rV8SXtb9us=
MIME-Version: 1.0
In-Reply-To: <1579905147-12142-7-git-send-email-vnkgutta@codeaurora.org>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
 <1579905147-12142-7-git-send-email-vnkgutta@codeaurora.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 6/7] clk: qcom: gcc: Add global clock controller driver
 for SM8250
To: agross@kernel.org, bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
 jshriram@codeaurora.org, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com, mturquette@baylibre.com,
 psodagud@codeaurora.org, robh+dt@kernel.org, tdas@codeaurora.org,
 tsoni@codeaurora.org, vinod.koul@linaro.org, vnkgutta@codeaurora.org
User-Agent: alot/0.8.1
Date: Wed, 05 Feb 2020 11:40:21 -0800
Message-Id: <20200205194022.C5E8C20730@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_114023_429136_67BB6E0A 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Venkata Narendra Kumar Gutta (2020-01-24 14:32:26)
> diff --git a/drivers/clk/qcom/gcc-sm8250.c b/drivers/clk/qcom/gcc-sm8250.c
> new file mode 100644
> index 0000000..300187e
> --- /dev/null
> +++ b/drivers/clk/qcom/gcc-sm8250.c
> @@ -0,0 +1,3720 @@
[...]
> +
> +static const struct parent_map gcc_parent_map_0[] = {
> +       { P_BI_TCXO, 0 },
> +       { P_GPLL0_OUT_MAIN, 1 },
> +       { P_GPLL0_OUT_EVEN, 6 },
> +       { P_CORE_BI_PLL_TEST_SE, 7 },
> +};
> +
> +static const struct clk_parent_data gcc_parent_data_0[] = {
> +       { .fw_name = "bi_tcxo" },
> +       { .hw = &gpll0.clkr.hw },
> +       { .hw = &gpll0_out_even.clkr.hw },
> +       { .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
> +};
> +
> +static const struct clk_parent_data gcc_parent_data_0_ao[] = {
> +       { .fw_name = "bi_tcxo_ao" },
> +       { .hw = &gpll0.clkr.hw },
> +       { .hw = &gpll0_out_even.clkr.hw },
> +       { .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
> +};
> +
> +static const struct parent_map gcc_parent_map_1[] = {
> +       { P_BI_TCXO, 0 },
> +       { P_GPLL0_OUT_MAIN, 1 },
> +       { P_SLEEP_CLK, 5 },
> +       { P_GPLL0_OUT_EVEN, 6 },
> +       { P_CORE_BI_PLL_TEST_SE, 7 },
> +};
> +
> +static const struct clk_parent_data gcc_parent_data_1[] = {
> +       { .fw_name = "bi_tcxo" },
> +       { .hw = &gpll0.clkr.hw },
> +       { .fw_name = "sleep_clk", .name = "sleep_clk" },

Please drop .name

> +       { .hw = &gpll0_out_even.clkr.hw },
> +       { .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
> +};
> +
> +static const struct parent_map gcc_parent_map_2[] = {
> +       { P_BI_TCXO, 0 },
> +       { P_SLEEP_CLK, 5 },
> +       { P_CORE_BI_PLL_TEST_SE, 7 },
> +};
> +
> +static const struct clk_parent_data gcc_parent_data_2[] = {
> +       { .fw_name = "bi_tcxo" },
> +       { .fw_name = "sleep_clk", .name = "sleep_clk" },

Please drop .name

> +       { .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
> +};
> +
[...]
> +static const struct clk_parent_data gcc_parent_data_5[] = {
> +       { .fw_name = "bi_tcxo" },
> +       { .hw = &gpll0.clkr.hw },
> +       { .fw_name = "aud_ref_clk", .name = "aud_ref_clk" },

Why have .name? Pleas remove it.

> +       { .hw = &gpll0_out_even.clkr.hw },
> +       { .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },

Please drop these test inputs. I don't see any reason why they're listed.

> +};
> +
> +static const struct freq_tbl ftbl_gcc_cpuss_ahb_clk_src[] = {
> +       F(19200000, P_BI_TCXO, 1, 0, 0),
> +       { }
> +};
> +
> +static struct clk_branch gcc_sys_noc_cpuss_ahb_clk = {
> +       .halt_reg = 0x48198,
> +       .halt_check = BRANCH_HALT_VOTED,
> +       .clkr = {
> +               .enable_reg = 0x52000,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gcc_sys_noc_cpuss_ahb_clk",
> +                       .parent_data = &(const struct clk_parent_data){
> +                               .hw = &gcc_cpuss_ahb_postdiv_clk_src.clkr.hw,
> +                       },
> +                       .num_parents = 1,
> +                       .flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT,
> +                       .ops = &clk_branch2_ops,
> +               },
> +       },
> +};

Is there a need for this clk to be exposed? Why can't we just turn the
bit on in probe and ignore it after that? I'd prefer to not have
CLK_IS_CRITICAL in this driver unless necessary.

> +
> +static struct clk_branch gcc_tsif_ahb_clk = {
> +       .halt_reg = 0x36004,
> +       .halt_check = BRANCH_HALT_VOTED,
> +       .clkr = {
> +               .enable_reg = 0x36004,
> +               .enable_mask = BIT(0),
> +               .hw.init = &(struct clk_init_data){
> +                       .name = "gcc_tsif_ahb_clk",
> +                       .ops = &clk_branch2_ops,
> +               },
> +       },
> +};
> +
[...]
> +
> +
> +static int gcc_sm8250_probe(struct platform_device *pdev)
> +{
> +       struct regmap *regmap;
> +       int ret;
> +
> +       regmap = qcom_cc_map(pdev, &gcc_sm8250_desc);
> +       if (IS_ERR(regmap))
> +               return PTR_ERR(regmap);
> +
> +       /*
> +        * Disable the GPLL0 active input to NPU and GPU
> +        * via MISC registers.
> +        */
> +       regmap_update_bits(regmap, 0x4d110, 0x3, 0x3);
> +       regmap_update_bits(regmap, 0x71028, 0x3, 0x3);
> +
> +       /*
> +        * Keep the clocks always-ON
> +        * GCC_VIDEO_AHB_CLK, GCC_CAMERA_AHB_CLK, GCC_DISP_AHB_CLK,
> +        * GCC_CPUSS_DVM_BUS_CLK, GCC_GPU_CFG_AHB_CLK
> +        */
> +       regmap_update_bits(regmap, 0x0b004, BIT(0), BIT(0));
> +       regmap_update_bits(regmap, 0x0b008, BIT(0), BIT(0));
> +       regmap_update_bits(regmap, 0x0b00c, BIT(0), BIT(0));
> +       regmap_update_bits(regmap, 0x4818c, BIT(0), BIT(0));
> +       regmap_update_bits(regmap, 0x71004, BIT(0), BIT(0));

These look like the AHB clks above that we just enabled and then ignore.

> +
> +       ret = qcom_cc_register_rcg_dfs(regmap, gcc_dfs_clocks,
> +                                      ARRAY_SIZE(gcc_dfs_clocks));
> +       if (ret)
> +               return ret;
> +
> +       return qcom_cc_really_probe(pdev, &gcc_sm8250_desc, regmap);
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
