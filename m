Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7472F15D7F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 14:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvgQcc7w41K+3Hl0/iLYFf3xfdmZWoQhf08FgzdXPv8=; b=rcyvMLDdGC1gtC
	OJVY+E6uu4/uE3kUOL4FdwZvtnJRqIFz3ULAkSRONMbdvGysjM+uTRA7FQESXS6dOlQ9I+N007cMD
	X5Yyf9VyzwZ+6CHOhL5LDUurlGYEIJbfVXuEThdz3l6qX8Egc8GlHw/mwy6oRjHJtupP6ErGVR4h5
	QdO2cDt40pb+iLEFNgv5m+GjZoJjbdSKj7XcCRHngbpJGX7PJtzslbZ6Jfc9waipoxDl85GS+S/SI
	YBkJ2M3hskyRl+lqIccRHAvVZJGUqgiXmRxaKArZRdRn8XPOVCV/skA2KiQvn+vV3GJ8kOFRzKDtc
	qltWU8uov4V7XuQ1wPEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2aiy-0004BN-3w; Fri, 14 Feb 2020 13:09:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ain-0004B3-Nd
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 13:09:31 +0000
Received: from localhost (unknown [106.201.58.38])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D02F02086A;
 Fri, 14 Feb 2020 13:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581685769;
 bh=S1KcqlRgaFv8iW8vw5VXuHf37fRz7NJhUiPg/24MFmM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Ew9lNr986QqTsMdVyURhpqV13JrXJfHXSDcBF5HSqYvPETinKZMV+FMEHTwrmmt3U
 EIcpnBgGSAfUYY4ClcqTE+zYekP6sLxR/JYKRQEhz3TmEIqTSzBlWZuK7Ypjmj4uXs
 ukwSWiU+C5n8Je0aDM44pz4T1WHEwJoU6Ig29yDk=
Date: Fri, 14 Feb 2020 18:39:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 6/7] clk: qcom: gcc: Add global clock controller
 driver for SM8250
Message-ID: <20200214130923.GV2618@vkoul-mobl>
References: <1579905147-12142-1-git-send-email-vnkgutta@codeaurora.org>
 <1579905147-12142-7-git-send-email-vnkgutta@codeaurora.org>
 <20200205194022.C5E8C20730@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200205194022.C5E8C20730@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_050929_812222_E688DA0F 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, tdas@codeaurora.org,
 jshriram@codeaurora.org, linux-arm-msm@vger.kernel.org,
 mturquette@baylibre.com, tsoni@codeaurora.org, vnkgutta@codeaurora.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, bjorn.andersson@linaro.org,
 agross@kernel.org, psodagud@codeaurora.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05-02-20, 11:40, Stephen Boyd wrote:

> > +static const struct clk_parent_data gcc_parent_data_2[] = {
> > +       { .fw_name = "bi_tcxo" },
> > +       { .fw_name = "sleep_clk", .name = "sleep_clk" },
> 
> Please drop .name

Yup, will do

> > +static const struct clk_parent_data gcc_parent_data_5[] = {
> > +       { .fw_name = "bi_tcxo" },
> > +       { .hw = &gpll0.clkr.hw },
> > +       { .fw_name = "aud_ref_clk", .name = "aud_ref_clk" },
> 
> Why have .name? Pleas remove it.

Dropped...

> > +       { .hw = &gpll0_out_even.clkr.hw },
> > +       { .fw_name = "core_bi_pll_test_se", .name = "core_bi_pll_test_se" },
> 
> Please drop these test inputs. I don't see any reason why they're listed.

Dropped this and rest.

> > +static struct clk_branch gcc_sys_noc_cpuss_ahb_clk = {
> > +       .halt_reg = 0x48198,
> > +       .halt_check = BRANCH_HALT_VOTED,
> > +       .clkr = {
> > +               .enable_reg = 0x52000,
> > +               .enable_mask = BIT(0),
> > +               .hw.init = &(struct clk_init_data){
> > +                       .name = "gcc_sys_noc_cpuss_ahb_clk",
> > +                       .parent_data = &(const struct clk_parent_data){
> > +                               .hw = &gcc_cpuss_ahb_postdiv_clk_src.clkr.hw,
> > +                       },
> > +                       .num_parents = 1,
> > +                       .flags = CLK_IS_CRITICAL | CLK_SET_RATE_PARENT,
> > +                       .ops = &clk_branch2_ops,
> > +               },
> > +       },
> > +};
> 
> Is there a need for this clk to be exposed? Why can't we just turn the
> bit on in probe and ignore it after that? I'd prefer to not have
> CLK_IS_CRITICAL in this driver unless necessary.

yeah moved it as setting a bit in probe..

> > +       /*
> > +        * Keep the clocks always-ON
> > +        * GCC_VIDEO_AHB_CLK, GCC_CAMERA_AHB_CLK, GCC_DISP_AHB_CLK,
> > +        * GCC_CPUSS_DVM_BUS_CLK, GCC_GPU_CFG_AHB_CLK
> > +        */
> > +       regmap_update_bits(regmap, 0x0b004, BIT(0), BIT(0));
> > +       regmap_update_bits(regmap, 0x0b008, BIT(0), BIT(0));
> > +       regmap_update_bits(regmap, 0x0b00c, BIT(0), BIT(0));
> > +       regmap_update_bits(regmap, 0x4818c, BIT(0), BIT(0));
> > +       regmap_update_bits(regmap, 0x71004, BIT(0), BIT(0));
> 
> These look like the AHB clks above that we just enabled and then ignore.

right, I think these are rest of the always-on clocks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
