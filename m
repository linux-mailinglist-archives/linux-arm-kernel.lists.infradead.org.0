Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4045ABE45
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ni56PkfpepHKV4Sb8RyA2m3LVTt4zSkyP5G3fl2gLgs=; b=JuF0xykqjdEmVr
	NMeoa9zHdXH4DlO2Y6Z4Jd7h0V7y2F2Iof+t2VVIk1QzLeuHG9uUhsNP6zkwYcXwZHBJS04XajydN
	Z2MdBINXasUILjxmsw1H9UWFUAAvOwwkz7xctgmQh4p7VbmROMPipIJOTv1P27QW8hikokbE4QhSA
	wi0uREunYIMhIHLPh2WEQChbZc2Zg0f8KA/d/dbvHxdSi3a8duQR1V6b0dRj8cZpq0gyNcPK/mLWx
	e6+WNHTzT8VOazvhT/0YB2ZquBVLVsQQKbIHZ/JJpi8W1vDFI33zKVCjfkhGeLdjdI8MsELX0gXTr
	l6QLoP8q5laGjBTp+EQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6HhG-0002Cj-OS; Fri, 06 Sep 2019 17:06:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Hh6-0002CM-4X
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:06:45 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B310F20578;
 Fri,  6 Sep 2019 17:06:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567789603;
 bh=1MVy/9wvLo71rdz2H0vA5KvrduoOOIPfzIlegAyfSlU=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=Ikzc05jKmYatV4yREUdEP/9Pmh/p5WzKCjxeOD86TDmbuOFq8LJPPi8cBJmSP6x3y
 glblaj5rJaR0HrHySzXehUMAvZK7V4mLVjYrmoP68kc2UkRZMuPAzJYUz2OSvEURIP
 4wgQ8lQUx1t2rX2FLzYXynEk8zqHNZ4z1KYNJwdk=
MIME-Version: 1.0
In-Reply-To: <1566299605-15641-4-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-4-git-send-email-aisheng.dong@nxp.com>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V4 03/11] clk: imx: scu: add two cells binding support
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:06:42 -0700
Message-Id: <20190906170643.B310F20578@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_100644_218636_B9325452 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, mturquette@baylibre.com,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Dong Aisheng (2019-08-20 04:13:17)
> diff --git a/drivers/clk/imx/clk-imx8qxp.c b/drivers/clk/imx/clk-imx8qxp.c
> index 5e2903e..1ad3f2a 100644
> --- a/drivers/clk/imx/clk-imx8qxp.c
> +++ b/drivers/clk/imx/clk-imx8qxp.c
> @@ -134,7 +134,12 @@ static int imx8qxp_clk_probe(struct platform_device *pdev)
>                                 i, PTR_ERR(clks[i]));
>         }
>  
> -       return of_clk_add_hw_provider(ccm_node, of_clk_hw_onecell_get, clk_data);
> +       if (clock_cells == 2)

Can you just read this from the DT node again instead of having a global
variable called "clock_cells" for this?

> +               ret = of_clk_add_hw_provider(ccm_node, imx_scu_of_clk_src_get, imx_scu_clks);
> +       else
> +               ret = of_clk_add_hw_provider(ccm_node, of_clk_hw_onecell_get, clk_data);
> +
> +       return ret;
>  }
>  
>  static const struct of_device_id imx8qxp_match[] = {
> diff --git a/drivers/clk/imx/clk-scu.c b/drivers/clk/imx/clk-scu.c
> index fbef740..48bfb08 100644
> --- a/drivers/clk/imx/clk-scu.c
> +++ b/drivers/clk/imx/clk-scu.c
> @@ -16,6 +19,21 @@
>  #define IMX_SIP_SET_CPUFREQ            0x00
>  
>  static struct imx_sc_ipc *ccm_ipc_handle;
> +struct device_node *pd_np;
> +u32 clock_cells;
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
> @@ -128,9 +146,29 @@ static inline struct clk_scu *to_clk_scu(struct clk_hw *hw)
>         return container_of(hw, struct clk_scu, hw);
>  }
>  
> -int imx_clk_scu_init(void)
> +int imx_clk_scu_init(struct device_node *np)
>  {
> -       return imx_scu_get_handle(&ccm_ipc_handle);
> +       struct platform_device *pd_dev;
> +       int ret, i;
> +
> +       ret = imx_scu_get_handle(&ccm_ipc_handle);
> +       if (ret)
> +               return ret;
> +
> +       if (of_property_read_u32(np, "#clock-cells", &clock_cells))
> +               return -EINVAL;
> +
> +       if (clock_cells == 2) {
> +               for (i = 0; i < IMX_SC_R_LAST; i++)
> +                       INIT_LIST_HEAD(&imx_scu_clks[i]);
> +
> +               pd_np = of_find_compatible_node(NULL, NULL, "fsl,scu-pd");
> +               pd_dev = of_find_device_by_node(pd_np);
> +               if (!pd_dev || !device_is_bound(&pd_dev->dev))
> +                       return -EPROBE_DEFER;

Do you need to put some nodes here with of_node_put() one failure or
when they're done being used?

> +       }
> +
> +       return 0;
>  }
>  
>  /*
> @@ -387,3 +425,99 @@ struct clk_hw *__imx_clk_scu(const char *name, const char * const *parents,
[...]
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
> +               return ERR_PTR(-ENOMEM);

Why not ERR_PTR(ret)?

> +       }
> +
> +       pdev->driver_override = "imx-scu-clk";
> +
> +       ret = imx_clk_scu_attach_pd(&pdev->dev, rsrc_id);
> +       if (ret)
> +               pr_warn("%s: failed to attached the power domain %d\n",
> +                       name, ret);
> +
> +       platform_device_add(pdev);
> +
> +       /* For API backwards compatiblilty, simply return NULL for success */
> +       return NULL;
> +}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
