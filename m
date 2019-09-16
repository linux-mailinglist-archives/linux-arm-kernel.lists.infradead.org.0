Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AC3B41E8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 22:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nquuM2UUJ9jp25Bs7icjNnDIiChwmKm+TCDBlro7b50=; b=QJGcj9rO+4vA18
	y6GkoevjD6V8lm3QIu5crvSZgBijPGqp98Y+dKn6Sgdwam6h75pbJZSTXn6Nvio7NOOZzKnTrKi+9
	wnO8hDsNf/hBQHuAauALAtdEOAzwzLLDASjJQ0dlGBR6WsMn11MbdHvvRyoUFhn6V1xIi73itUAKg
	7WbU6vJ7HJgg8VOlFjEJ4fCF857Qp69T3BOSBOpF79o/dipyid+hl7SpM0JoU6dax1UvzRJNnj5Ji
	Vw03kEIhNYtxbcN9CqAUp8WTkfaMIcdTVKamnwbazSeccyit8K2KMTqwHxyUbOhwgVtZ+lNCSmQ7C
	60RbrpHcs7KKbiADM1yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9xgb-0001FL-DZ; Mon, 16 Sep 2019 20:33:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9xgP-0001Eu-Cv
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 20:33:14 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CF8D02067B;
 Mon, 16 Sep 2019 20:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568665992;
 bh=5ABuGdUhs+o8tZ/X88LoseZLrUIYSkth8Nhksj+fnQ4=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=kFGMMDYk69OQHvRCT1uY4hMs5iQMyPK7K4eL05k1BWy4FrGJZlqxzhnk+i9yPWayW
 PNkWuQRa8+AG2lU2n19U8qGtE5DEP+x94UvRH5WEPFlZbKQaqtwP1CN8z7m6Loy4nB
 eI3AstpVG3sqY09A78iN67RoFeHPIbyP/Ny8XE+c=
MIME-Version: 1.0
In-Reply-To: <90bfeebcb76e76d286ed7f022ea9e0d9a569ebe2.1566315740.git.leonard.crestez@nxp.com>
References: <cover.1566315740.git.leonard.crestez@nxp.com>
 <90bfeebcb76e76d286ed7f022ea9e0d9a569ebe2.1566315740.git.leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH v2 1/7] clk: imx8m: Set CLK_GET_RATE_NOCACHE on
 dram_alt/apb
User-Agent: alot/0.8.1
Date: Mon, 16 Sep 2019 13:33:11 -0700
Message-Id: <20190916203312.CF8D02067B@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_133313_478137_EED2D75D 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Artur Świgoń <a.swigon@partner.samsung.com>, Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>, Anson Huang <Anson.Huang@nxp.com>, linux-arm-kernel@lists.infradead.org, Viresh Kumar <viresh.kumar@linaro.org>, Michael Turquette <mturquette@baylibre.com>, linux-pm@vger.kernel.org, linux-imx@nxp.com, Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>, Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de, Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>, Georgi Djakov <georgi.djakov@linaro.org>, devicetree@vger.kernel.org, Jacky Bai <ping.bai@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Leonard Crestez (2019-08-20 08:45:06)
> Dram frequency changes required modifying these clocks outside the
> control of clk framework. Mark them as CLK_GET_RATE_NOCACHE so that
> rates are always read back from registers.

Why can't we control the clks from the clk framework? Please add that
information in the commit text here.

> 
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> ---
>  drivers/clk/imx/clk-imx8mm.c | 6 ++++--
>  drivers/clk/imx/clk-imx8mn.c | 6 ++++--
>  drivers/clk/imx/clk-imx8mq.c | 7 ++++---
>  3 files changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 4ead3ea2713c..6cac80550f43 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -526,12 +526,14 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
>         /* IPG */
>         clks[IMX8MM_CLK_IPG_ROOT] = imx_clk_divider2("ipg_root", "ahb", base + 0x9080, 0, 1);
>         clks[IMX8MM_CLK_IPG_AUDIO_ROOT] = imx_clk_divider2("ipg_audio_root", "audio_ahb", base + 0x9180, 0, 1);
>  
>         /* IP */
> -       clks[IMX8MM_CLK_DRAM_ALT] = imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000);
> -       clks[IMX8MM_CLK_DRAM_APB] = imx8m_clk_composite_critical("dram_apb", imx8mm_dram_apb_sels, base + 0xa080);
> +       clks[IMX8MM_CLK_DRAM_ALT] = __imx8m_clk_composite("dram_alt", imx8mm_dram_alt_sels, base + 0xa000,
> +                       CLK_GET_RATE_NOCACHE);
> +       clks[IMX8MM_CLK_DRAM_APB] = __imx8m_clk_composite("dram_apb", imx8mm_dram_apb_sels, base + 0xa080,
> +                       CLK_IS_CRITICAL | CLK_GET_RATE_NOCACHE);

Also, add a comment to this effect about why it can't be done from the
clk framework wherever the CLK_GET_RATE_NOCACHE flag is set. Basically
this flag is a hack and is an example of something that we need to fix.

>         clks[IMX8MM_CLK_VPU_G1] = imx8m_clk_composite("vpu_g1", imx8mm_vpu_g1_sels, base + 0xa100);
>         clks[IMX8MM_CLK_VPU_G2] = imx8m_clk_composite("vpu_g2", imx8mm_vpu_g2_sels, base + 0xa180);
>         clks[IMX8MM_CLK_DISP_DTRC] = imx8m_clk_composite("disp_dtrc", imx8mm_disp_dtrc_sels, base + 0xa200);
>         clks[IMX8MM_CLK_DISP_DC8000] = imx8m_clk_composite("disp_dc8000", imx8mm_disp_dc8000_sels, base + 0xa280);
>         clks[IMX8MM_CLK_PCIE1_CTRL] = imx8m_clk_composite("pcie1_ctrl", imx8mm_pcie1_ctrl_sels, base + 0xa300);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
