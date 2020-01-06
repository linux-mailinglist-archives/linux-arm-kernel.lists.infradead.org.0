Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF31130C41
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 03:59:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:From:Subject:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtdi0QztILLqb+Uxm/+pU93Vwea+nRpAliMfyveq8t4=; b=GyoBp3LrOk/S0q
	TMegmk4d0xCxcvulKbUx2eBLOLQDgkXVTpDSg6l/2+APJqkHd/EF9bVHiROLFjJcmH0I7JeuY8OCJ
	quF3jAbrZbHYUaEfwfTJB/gtzy9quKv3lKjY0upenDH7K/zYSbmUp+RnuF58V1Olx8s2egz2Rl0sh
	JuxuslwTX3KgncEygsR/dH5zcIvu6QmPbKQZw5doD+aBGtqIV+byzelcpCbzcEgjif4vS+g7s/ypQ
	XOUKA1AxXKrG06JcCVXVFRCR63i4Vx9a1E9yaBQoPCtWO63177upwCwlr/6iqmnyU5I9vzm592dqK
	yklIIKnRCaXT6WL9xIvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIc4-0003PA-QR; Mon, 06 Jan 2020 02:59:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIbw-0003OW-O0
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 02:59:22 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A180E206F0;
 Mon,  6 Jan 2020 02:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578279554;
 bh=Fevvnl4RnqYZ7TIx/wmZITfpCbFbNblxka/5cM3df40=;
 h=In-Reply-To:References:Cc:To:Subject:From:Date:From;
 b=TLie7Vn3TeYHwtqiDX04AsTUgrJsDbSxZcL8qqY4YIHCRaQvLsic9ntW0eYTN1X0a
 waKC7lNKOmCt8Z05eE62Wy+5oYIq8WyKAI7rlSbLGeSFEAKArimYyVf6JeJ9Jm8Zg1
 8f4VHnYCQHtbgSMuwPBZ9S3A2435ZlYW/uzvF8F8=
MIME-Version: 1.0
In-Reply-To: <1577412748-28213-2-git-send-email-Anson.Huang@nxp.com>
References: <1577412748-28213-1-git-send-email-Anson.Huang@nxp.com>
 <1577412748-28213-2-git-send-email-Anson.Huang@nxp.com>
To: Anson Huang <Anson.Huang@nxp.com>, abel.vesa@nxp.com,
 bjorn.andersson@linaro.org, catalin.marinas@arm.com,
 devicetree@vger.kernel.org, dinguyen@kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, leonard.crestez@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org, marcin.juszkiewicz@linaro.org,
 mark.rutland@arm.com, maxime@cerno.tech, mturquette@baylibre.com,
 olof@lixom.net, ping.bai@nxp.com, robh+dt@kernel.org, s.hauer@pengutronix.de,
 shawnguo@kernel.org, will@kernel.org
Subject: Re: [PATCH 2/3] clk: imx: Add support for i.MX8MP clock driver
From: Stephen Boyd <sboyd@kernel.org>
User-Agent: alot/0.8.1
Date: Sun, 05 Jan 2020 18:59:13 -0800
Message-Id: <20200106025914.A180E206F0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_185920_826248_CB1AB49B 
X-CRM114-Status: GOOD (  14.11  )
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Anson Huang (2019-12-26 18:12:27)
> diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
> new file mode 100644
> index 0000000..7f0d482
> --- /dev/null
> +++ b/drivers/clk/imx/clk-imx8mp.c
> @@ -0,0 +1,767 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2019 NXP.
> + */
> +
> +#include <dt-bindings/clock/imx8mp-clock.h>
> +#include <linux/clk.h>

Please include clk-provider.h as this is a clk provider. If possible,
don't include clk.h as this shouldn't be a consumer.

> +#include <linux/err.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>

Is this include used?

> +#include <linux/of_address.h>

Is this include used?

> +#include <linux/platform_device.h>
> +#include <linux/types.h>
> +
> +#include "clk.h"
> +
> +static u32 share_count_nand;
> +static u32 share_count_media;
> +
> +static const char *pll_ref_sels[] = { "osc_24m", "dummy", "dummy", "dummy", };

Is it possible to make these const char * const foo[] arrays?

> +static const char *audio_pll1_bypass_sels[] = {"audio_pll1", "audio_pll1_ref_sel", };
> +static const char *audio_pll2_bypass_sels[] = {"audio_pll2", "audio_pll2_ref_sel", };
> +static const char *video_pll1_bypass_sels[] = {"video_pll1", "video_pll1_ref_sel", };
[...]
> +       clk_set_parent(clks[IMX8MP_AUDIO_PLL1_BYPASS], clks[IMX8MP_AUDIO_PLL1]);
> +       clk_set_parent(clks[IMX8MP_AUDIO_PLL2_BYPASS], clks[IMX8MP_AUDIO_PLL2]);
> +       clk_set_parent(clks[IMX8MP_VIDEO_PLL1_BYPASS], clks[IMX8MP_VIDEO_PLL1]);
> +       clk_set_parent(clks[IMX8MP_DRAM_PLL_BYPASS], clks[IMX8MP_DRAM_PLL]);
> +       clk_set_parent(clks[IMX8MP_GPU_PLL_BYPASS], clks[IMX8MP_GPU_PLL]);
> +       clk_set_parent(clks[IMX8MP_VPU_PLL_BYPASS], clks[IMX8MP_VPU_PLL]);
> +       clk_set_parent(clks[IMX8MP_ARM_PLL_BYPASS], clks[IMX8MP_ARM_PLL]);
> +       clk_set_parent(clks[IMX8MP_SYS_PLL1_BYPASS], clks[IMX8MP_SYS_PLL1]);
> +       clk_set_parent(clks[IMX8MP_SYS_PLL2_BYPASS], clks[IMX8MP_SYS_PLL2]);
> +       clk_set_parent(clks[IMX8MP_SYS_PLL3_BYPASS], clks[IMX8MP_SYS_PLL3]);

These can't be done with assigned-clock-parents properties in DT?

> +
> +       clks[IMX8MP_AUDIO_PLL1_OUT] = imx_clk_gate("audio_pll1_out", "audio_pll1_bypass", base, 13);
> +       clks[IMX8MP_AUDIO_PLL2_OUT] = imx_clk_gate("audio_pll2_out", "audio_pll2_bypass", base + 0x14, 13);
> +       clks[IMX8MP_VIDEO_PLL1_OUT] = imx_clk_gate("video_pll1_out", "video_pll1_bypass", base + 0x28, 13);
> +       clks[IMX8MP_DRAM_PLL_OUT] = imx_clk_gate("dram_pll_out", "dram_pll_bypass", base + 0x50, 13);
> +       clks[IMX8MP_GPU_PLL_OUT] = imx_clk_gate("gpu_pll_out", "gpu_pll_bypass", base + 0x64, 11);
> +       clks[IMX8MP_VPU_PLL_OUT] = imx_clk_gate("vpu_pll_out", "vpu_pll_bypass", base + 0x74, 11);
> +       clks[IMX8MP_ARM_PLL_OUT] = imx_clk_gate("arm_pll_out", "arm_pll_bypass", base + 0x84, 11);
> +       clks[IMX8MP_SYS_PLL1_OUT] = imx_clk_gate("sys_pll1_out", "sys_pll1_bypass", base + 0x94, 11);
> +       clks[IMX8MP_SYS_PLL2_OUT] = imx_clk_gate("sys_pll2_out", "sys_pll2_bypass", base + 0x104, 11);
> +       clks[IMX8MP_SYS_PLL3_OUT] = imx_clk_gate("sys_pll3_out", "sys_pll3_bypass", base + 0x114, 11);

Any reason why we can't get back clk_hw pointers instead and register a
hw based provider?

> +
> +       clks[IMX8MP_SYS_PLL1_40M] = imx_clk_fixed_factor("sys_pll1_40m", "sys_pll1_out", 1, 20);
> +       clks[IMX8MP_SYS_PLL1_80M] = imx_clk_fixed_factor("sys_pll1_80m", "sys_pll1_out", 1, 10);
> +       clks[IMX8MP_SYS_PLL1_100M] = imx_clk_fixed_factor("sys_pll1_100m", "sys_pll1_out", 1, 8);
> +       clks[IMX8MP_SYS_PLL1_133M] = imx_clk_fixed_factor("sys_pll1_133m", "sys_pll1_out", 1, 6);
> +       clks[IMX8MP_SYS_PLL1_160M] = imx_clk_fixed_factor("sys_pll1_160m", "sys_pll1_out", 1, 5);
> +       clks[IMX8MP_SYS_PLL1_200M] = imx_clk_fixed_factor("sys_pll1_200m", "sys_pll1_out", 1, 4);
> +       clks[IMX8MP_SYS_PLL1_266M] = imx_clk_fixed_factor("sys_pll1_266m", "sys_pll1_out", 1, 3);
> +       clks[IMX8MP_SYS_PLL1_400M] = imx_clk_fixed_factor("sys_pll1_400m", "sys_pll1_out", 1, 2);
> +       clks[IMX8MP_SYS_PLL1_800M] = imx_clk_fixed_factor("sys_pll1_800m", "sys_pll1_out", 1, 1);
> +
> +       clks[IMX8MP_SYS_PLL2_50M] = imx_clk_fixed_factor("sys_pll2_50m", "sys_pll2_out", 1, 20);
> +       clks[IMX8MP_SYS_PLL2_100M] = imx_clk_fixed_factor("sys_pll2_100m", "sys_pll2_out", 1, 10);
> +       clks[IMX8MP_SYS_PLL2_125M] = imx_clk_fixed_factor("sys_pll2_125m", "sys_pll2_out", 1, 8);
> +       clks[IMX8MP_SYS_PLL2_166M] = imx_clk_fixed_factor("sys_pll2_166m", "sys_pll2_out", 1, 6);
> +       clks[IMX8MP_SYS_PLL2_200M] = imx_clk_fixed_factor("sys_pll2_200m", "sys_pll2_out", 1, 5);
> +       clks[IMX8MP_SYS_PLL2_250M] = imx_clk_fixed_factor("sys_pll2_250m", "sys_pll2_out", 1, 4);
> +       clks[IMX8MP_SYS_PLL2_333M] = imx_clk_fixed_factor("sys_pll2_333m", "sys_pll2_out", 1, 3);
> +       clks[IMX8MP_SYS_PLL2_500M] = imx_clk_fixed_factor("sys_pll2_500m", "sys_pll2_out", 1, 2);
> +       clks[IMX8MP_SYS_PLL2_1000M] = imx_clk_fixed_factor("sys_pll2_1000m", "sys_pll2_out", 1, 1);
> +
> +       np = dev->of_node;
> +       base = devm_platform_ioremap_resource(pdev, 0);
> +       if (WARN_ON(IS_ERR(base))) {
> +               ret = PTR_ERR(base);
> +               goto unregister_clks;

Why not ioremap first so we don't have to unwind clk registration on
failure?

> +       }
> +
> +       clks[IMX8MP_CLK_A53_SRC] = imx_clk_mux2("arm_a53_src", base + 0x8000, 24, 3, imx8mp_a53_sels, ARRAY_SIZE(imx8mp_a53_sels));
> +       clks[IMX8MP_CLK_M7_SRC] = imx_clk_mux2("arm_m7_src", base + 0x8080, 24, 3, imx8mp_m7_sels, ARRAY_SIZE(imx8mp_m7_sels));
> +       clks[IMX8MP_CLK_ML_SRC] = imx_clk_mux2("ml_src", base + 0x8100, 24, 3, imx8mp_ml_sels, ARRAY_SIZE(imx8mp_ml_sels));
> +       clks[IMX8MP_CLK_GPU3D_CORE_SRC] = imx_clk_mux2("gpu3d_core_src", base + 0x8180, 24, 3,  imx8mp_gpu3d_core_sels, ARRAY_SIZE(imx8mp_gpu3d_core_sels));
> +       clks[IMX8MP_CLK_GPU3D_SHADER_SRC] = imx_clk_mux2("gpu3d_shader_src", base + 0x8200, 24, 3, imx8mp_gpu3d_shader_sels, ARRAY_SIZE(imx8mp_gpu3d_shader_sels));
> +       clks[IMX8MP_CLK_GPU2D_SRC] = imx_clk_mux2("gpu2d_src", base + 0x8280, 24, 3, imx8mp_gpu2d_sels, ARRAY_SIZE(imx8mp_gpu2d_sels));
> +       clks[IMX8MP_CLK_AUDIO_AXI_SRC] = imx_clk_mux2("audio_axi_src", base + 0x8300, 24, 3, imx8mp_audio_axi_sels, ARRAY_SIZE(imx8mp_audio_axi_sels));
[...]
> +
> +       imx_register_uart_clocks(uart_clks);
> +
> +       return 0;
> +
> +unregister_clks:
> +       imx_unregister_clocks(clks, ARRAY_SIZE(clks));
> +
> +       return ret;
> +}
> +
> +static const struct of_device_id imx8mp_clk_of_match[] = {
> +       { .compatible = "fsl,imx8mp-ccm" },
> +       { /* Sentinel */ },

Please drop the comma after sentinel so that nothing can go after it.

> +};
> +MODULE_DEVICE_TABLE(of, imx8mp_clk_of_match);
> +
> +static struct platform_driver imx8mp_clk_driver = {
> +       .probe = imx8mp_clocks_probe,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
