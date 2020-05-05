Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A64C1C4D8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 07:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6WrPiZpG47j5QqMOlsrh2ACnJMRoUpxAK4spTJHri30=; b=Y8I4Rgjvun+G6V
	SavZaSx57JKZKpSZRQvFSu0ot0x6DBvME4TErfauOzZeot8F8ys/MOEeiyN1nztXAAH1LUmHFLxhe
	sKlhoAWBR2u+wX1chKwhOsMuppIxkw10Zv55UT+FJuKnfDaTr3gdzlA/9VQUVoBq+efb3kaA4K8un
	NO3AfKjcb08AV/1pZQvmicEGZvCccYAgrWOuSKXtKFtUT6a6xkZ2F/Xxl4USrQUqRarsLsp4pOesj
	RG49vTM1bNj3tlJ8koTrG7splwHsgtG4/cKujwifOIKLhGd9Z4lZ0xPYd5Q9JjK8fhVGqnGcjXeMj
	D/IqTG6hBHsYa64xW4DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVpon-0001h5-0P; Tue, 05 May 2020 05:08:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVpoe-0001gH-6q
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 05:08:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80C6B206E6;
 Tue,  5 May 2020 05:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588655303;
 bh=f8FwnuRG71mwbXsGe3SK1uq3zY2HM1/R/WO3ZMRfL3Q=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=ygmVEkoO5Uf1aXU6BW2HOZkG7Ay+63zm0J0pF2LROU2lHWw5UfK+lHtUe3xT6UEO9
 N7sJbUGwUBF+DBUeoLhVhmg9L0u1Xp/fohu+XcmdoAo9iUhy/xg60Zwba5h54KVDeU
 0UTXME3x+9Z4zVAR4YE9UMFrV5x9j754Bg6ErZuA=
MIME-Version: 1.0
In-Reply-To: <1584279836-29825-4-git-send-email-aisheng.dong@nxp.com>
References: <1584279836-29825-1-git-send-email-aisheng.dong@nxp.com>
 <1584279836-29825-4-git-send-email-aisheng.dong@nxp.com>
Subject: Re: [PATCH V6 03/12] clk: imx: scu: add two cells binding support
From: Stephen Boyd <sboyd@kernel.org>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
Date: Mon, 04 May 2020 22:08:22 -0700
Message-ID: <158865530267.11125.15146015607102638423@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_220824_292192_61D842FA 
X-CRM114-Status: GOOD (  23.69  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, mturquette@baylibre.com,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2020-03-15 06:43:47)
> This patch implements the new two cells binding for SCU clocks.
> The usage is as follows:
> clocks = <&uart0_clk IMX_SC_R_UART_0 IMX_SC_PM_CLK_PER>
> 
> Due to each SCU clock is associated with a power domain, without power
> on the domain, the SCU clock can't work. So we create platform devices
> for each domain clock respectively and manually attach the required domain
> before register the clock devices, then we can register clocks in the
> clock platform driver accordingly.

That's odd. See below.

> 
> Note because we do not have power domain info in device tree and the SCU
> resource ID is the same for power domain and clock, so we use resource ID
> to find power domains.
> 
> Later, we will also use this clock platform driver to support suspend/resume
> and runtime pm.
> 
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Sascha Hauer <kernel@pengutronix.de>
> Cc: Michael Turquette <mturquette@baylibre.com>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
[...]
> diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> index b8b2072742a5..4fadff14d8b2 100644
> --- a/drivers/clk/imx/clk-scu.c
> +++ b/drivers/clk/imx/clk-scu.c
> @@ -8,6 +8,9 @@
>  #include <linux/arm-smccc.h>
>  #include <linux/clk-provider.h>
>  #include <linux/err.h>
> +#include <linux/of_platform.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_domain.h>
>  #include <linux/slab.h>
>  
>  #include "clk-scu.h"
> @@ -16,6 +19,20 @@
>  #define IMX_SIP_SET_CPUFREQ            0x00
>  
>  static struct imx_sc_ipc *ccm_ipc_handle;
> +struct device_node *pd_np;
> +
> +struct imx_scu_clk_node {
> +       const char *name;
> +       u32 rsrc;
> +       u8 clk_type;
> +       const char * const *parents;
> +       int num_parents;
> +
> +       struct clk_hw *hw;
> +       struct list_head node;
> +};
> +
> +struct list_head imx_scu_clks[IMX_SC_R_LAST];
>  
>  /*
>   * struct clk_scu - Description of one SCU clock
> @@ -128,9 +145,32 @@ static inline struct clk_scu *to_clk_scu(struct clk_hw *hw)
>         return container_of(hw, struct clk_scu, hw);
>  }
>  
> -int imx_clk_scu_init(void)
> +int imx_clk_scu_init(struct device_node *np)
>  {
> -       return imx_scu_get_handle(&ccm_ipc_handle);
> +       struct platform_device *pd_dev;
> +       u32 clk_cells;
> +       int ret, i;
> +
> +       ret = imx_scu_get_handle(&ccm_ipc_handle);
> +       if (ret)
> +               return ret;
> +
> +       if (of_property_read_u32(np, "#clock-cells", &clk_cells))

Why wouldn't there be #clock-cells in the node?

> +               return -EINVAL;
> +
> +       if (clk_cells == 2) {
> +               for (i = 0; i < IMX_SC_R_LAST; i++)
> +                       INIT_LIST_HEAD(&imx_scu_clks[i]);
> +
> +               pd_np = of_find_compatible_node(NULL, NULL, "fsl,scu-pd");
> +               pd_dev = of_find_device_by_node(pd_np);
> +               if (!pd_dev || !device_is_bound(&pd_dev->dev)) {

What is device_is_bound() check for? Add a comment?

> +                       of_node_put(pd_np);
> +                       return -EPROBE_DEFER;
> +               }
> +       }
> +
> +       return 0;
>  }
>  
>  /*
> @@ -387,3 +427,99 @@ struct clk_hw *__imx_clk_scu(const char *name, const char * const *parents,
>  
>         return hw;
>  }
> +
> +struct clk_hw *imx_scu_of_clk_src_get(struct of_phandle_args *clkspec,
> +                                     void *data)
> +{
> +       unsigned int rsrc = clkspec->args[0];
> +       unsigned int idx = clkspec->args[1];
> +       struct list_head *scu_clks = data;
> +       struct imx_scu_clk_node *clk;
> +
> +       list_for_each_entry(clk, &scu_clks[rsrc], node) {
> +               if (clk->clk_type == idx)
> +                       return clk->hw;
> +       }
> +
> +       return ERR_PTR(-ENODEV);
> +}
> +
> +static int imx_clk_scu_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct imx_scu_clk_node *clk = dev_get_platdata(dev);
> +       struct clk_hw *hw;
> +
> +       hw = __imx_clk_scu(clk->name, clk->parents, clk->num_parents,
> +                          clk->rsrc, clk->clk_type);
> +       if (IS_ERR(hw))
> +               return PTR_ERR(hw);
> +
> +       clk->hw = hw;
> +       list_add_tail(&clk->node, &imx_scu_clks[clk->rsrc]);
> +
> +       dev_dbg(dev, "register SCU clock rsrc:%d type:%d\n", clk->rsrc,
> +               clk->clk_type);
> +
> +       return 0;
> +}
> +
> +static struct platform_driver imx_clk_scu_driver = {
> +       .driver = {
> +               .name = "imx-scu-clk",
> +               .suppress_bind_attrs = true,
> +       },
> +       .probe = imx_clk_scu_probe,
> +};
> +builtin_platform_driver(imx_clk_scu_driver);
> +
> +static int imx_clk_scu_attach_pd(struct device *dev, u32 rsrc_id)
> +{
> +       struct of_phandle_args genpdspec = {
> +               .np = pd_np,
> +               .args_count = 1,
> +               .args[0] = rsrc_id,
> +       };
> +
> +       return of_genpd_add_device(&genpdspec, dev);
> +}
> +
> +struct clk_hw *imx_clk_scu_alloc_dev(const char *name,
> +                                    const char * const *parents,
> +                                    int num_parents, u32 rsrc_id, u8 clk_type)
> +{
> +       struct imx_scu_clk_node clk = {
> +               .name = name,
> +               .rsrc = rsrc_id,
> +               .clk_type = clk_type,
> +               .parents = parents,
> +               .num_parents = num_parents,
> +       };
> +       struct platform_device *pdev;
> +       int ret;
> +
> +       pdev = platform_device_alloc(name, PLATFORM_DEVID_NONE);
> +       if (!pdev) {
> +               pr_err("%s: failed to allocate scu clk dev rsrc %d type %d\n",
> +                      name, rsrc_id, clk_type);
> +               return ERR_PTR(-ENOMEM);
> +       }
> +
> +       ret = platform_device_add_data(pdev, &clk, sizeof(clk));
> +       if (ret) {
> +               platform_device_put(pdev);
> +               return ERR_PTR(ret);
> +       }
> +
> +       pdev->driver_override = "imx-scu-clk";
> +
> +       ret = imx_clk_scu_attach_pd(&pdev->dev, rsrc_id);

Why do we have to allocate a device for each power domain? Is this
because we don't have support for one device being in multiple power
domains? That is supported now as far as I recall, by basically making
dummy platform devices like this. So maybe this code isn't necessary and
we can have one platform device for the clk controller and then have it
control certain power domains manually from runtime PM callbacks? It's
possible the runtime PM callbacks are too simple for this case and we
need to tell clk providers what clk is having runtime PM enabled for it.
Maybe we can adjust the core clk framework to introduce a callback for
the clk that is runtime PM enabling and put the logic there about what
to do?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
