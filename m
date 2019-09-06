Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F1DABE62
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:13:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6ebkvVHZjuaKTvKxyFGwpl5djyIGcXD7g8DHCvkESo=; b=ZJkRIGDA7dU70O
	22G5bc+X8R8Gl+pwYfSllVLPjbOzFPFpOOhoMQWld3oEptuFoYvq5N09FeIAgNEBu5bg2ova99WpL
	kneSGRWltYqJDRbFGdUW/cjEf/heFDly8zcsSzsxcWpxfN5j9sOxc3325FPJ+q2tzxem7c5slrxw0
	ekMDNDJrclCBLub5gE+KgIZZTRIZaggPkAxB48LWnlmoT50qMHnu8rEC5V8OfSQR4aOET8ujwb/Qf
	BMSwymZcwcV8WvDudzO8FrWlsokbhjhPBVAmBL2v8+DaQMBZzImjNiinJiP9AelZkdY4UheCIl2t7
	YkjwAX4QT5S7nZvgXr8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Hnh-0004Zm-OD; Fri, 06 Sep 2019 17:13:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6HnX-0004ZS-WE
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:13:25 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8847820640;
 Fri,  6 Sep 2019 17:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567790003;
 bh=HJFZvCXScmLP/VynpJCvTMJhcWV1p90pwZuT//GAUtM=;
 h=In-Reply-To:References:To:From:Cc:Subject:Date:From;
 b=ZJoEQi0jpT9Ve/DcxKpgVJ3jVt9wJPl8Pwidllew/7ZRF22Xo0/L4DZh+wMyX7H6/
 mlzn2YxtPBzSEvM4EdXemELSuC1xUoaij7h/msGl+cT97DhvS+PkgFRF0M020jn1f/
 8V/uM9zRguSP3YrNSMNga9fy4fyhVmXK3FcfHtDY=
MIME-Version: 1.0
In-Reply-To: <1566299605-15641-9-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
 <1566299605-15641-9-git-send-email-aisheng.dong@nxp.com>
To: Dong Aisheng <aisheng.dong@nxp.com>, linux-clk@vger.kernel.org
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH V4 08/11] clk: imx: imx8qxp-lpcg: add parsing clocks from
 device tree
User-Agent: alot/0.8.1
Date: Fri, 06 Sep 2019 10:13:22 -0700
Message-Id: <20190906171323.8847820640@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_101324_081615_259DE5B6 
X-CRM114-Status: GOOD (  13.13  )
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

Quoting Dong Aisheng (2019-08-20 04:13:22)
> Add parsing clocks from device tree.

Please describe some more here.

> diff --git a/drivers/clk/imx/clk-imx8qxp-lpcg.c b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> index c0aff7c..90326e5 100644
> --- a/drivers/clk/imx/clk-imx8qxp-lpcg.c
> +++ b/drivers/clk/imx/clk-imx8qxp-lpcg.c
> @@ -157,6 +158,101 @@ static const struct imx8qxp_ss_lpcg imx8qxp_ss_lsio = {
>         .num_max = IMX_LSIO_LPCG_CLK_END,
>  };
>  
> +#define IMX_LPCG_MAX_CLKS      8
> +
> +static struct clk_hw *imx_lpcg_of_clk_src_get(struct of_phandle_args *clkspec,
> +                                             void *data)
> +{
> +       struct clk_hw_onecell_data *hw_data = data;
> +       unsigned int idx = clkspec->args[0] / 4;
> +
> +       if (idx >= hw_data->num) {
> +               pr_err("%s: invalid index %u\n", __func__, idx);
> +               return ERR_PTR(-EINVAL);
> +       }
> +
> +       return hw_data->hws[idx];
> +}
> +
> +static int imx_lpcg_parse_clks_from_dt(struct platform_device *pdev,
> +                                      struct device_node *np)
> +{
> +       const char *output_names[IMX_LPCG_MAX_CLKS];
> +       const char *parent_names[IMX_LPCG_MAX_CLKS];
> +       unsigned int bit_offset[IMX_LPCG_MAX_CLKS];
> +       struct clk_hw_onecell_data *clk_data;
> +       struct clk_hw **clk_hws;
> +       struct resource *res;
> +       void __iomem *base;
> +       int count;
> +       int idx;
> +       int ret;
> +       int i;
> +
> +       if (!of_device_is_compatible(np, "fsl,imx8qxp-lpcg"))
> +               return -EINVAL;
> +
> +       res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +       base = devm_ioremap_resource(&pdev->dev, res);
> +       if (IS_ERR(base))
> +               return PTR_ERR(base);
> +
> +       count = of_property_count_u32_elems(np, "clock-indices");
> +       if (count < 0) {
> +               dev_err(&pdev->dev, "failed to count clocks\n");
> +               return -EINVAL;
> +       }

Is 'count' expected to be equal to IMX_LPCG_MAX_CLKS? Because later on
in this function we set the num of clks to the MAX instead of the count
from clock-indices.

> +
> +       clk_data = devm_kzalloc(&pdev->dev, struct_size(clk_data, hws, IMX_LPCG_MAX_CLKS),

This line is too long.

> +                               GFP_KERNEL);
> +       if (!clk_data)
> +               return -ENOMEM;
> +
> +       clk_data->num = IMX_LPCG_MAX_CLKS;
> +       clk_hws = clk_data->hws;
> +
> +       ret = of_property_read_u32_array(np, "clock-indices", bit_offset,
> +                                        count);
> +       if (ret < 0) {
> +               dev_err(&pdev->dev, "failed to read clocks bit-offset\n");

This isn't called bit-offset anymore.

> +               return -EINVAL;
> +       }
> +
> +       ret = of_clk_parent_fill(np, parent_names, count);
> +       if (ret != count) {
> +               dev_err(&pdev->dev, "failed to get clock parent names\n");
> +               return -EINVAL;

return count?

> +       }
> +
> +       ret = of_property_read_string_array(np, "clock-output-names",
> +                                           output_names, count);
> +       if (ret != count) {
> +               dev_err(&pdev->dev, "failed to read clock-output-names\n");
> +               return -EINVAL;
> +       }
> +
> +       for (i = 0; i < count; i++) {
> +               idx = bit_offset[i] / 4;
> +               if (idx > IMX_LPCG_MAX_CLKS) {
> +                       dev_warn(&pdev->dev, "invalid bit offset of clock %d\n",
> +                                i);
> +                       return -EINVAL;
> +               }
> +
> +               clk_hws[idx] = imx_clk_lpcg_scu(output_names[i],
> +                                               parent_names[i], 0, base,
> +                                               bit_offset[i], false);
> +               if (IS_ERR(clk_hws[idx])) {
> +                       dev_warn(&pdev->dev, "failed to register clock %d\n",
> +                                idx);
> +                       return -EINVAL;
> +               }
> +       }
> +
> +       return devm_of_clk_add_hw_provider(&pdev->dev, imx_lpcg_of_clk_src_get,
> +                                          clk_data);

If this fails does imx_clk_lpcg_scu() need to be unwound and unregister
clks?

> +}
> +

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
