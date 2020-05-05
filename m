Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5071C63B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 00:12:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RCBX2sXKBTOAkIGERJMFZZWg7KhlaCMH3+7/jqg2Kvk=; b=A7fhboinkE/ODO
	594m3HV8eRqHUmmT8lUo8ITfh+Z/0g8z7v6lzCu5H6xbvkx3tPwyX9RnoW1oVDdmthQVcfBsRkm+y
	gBiOUruNtLL73dLdl7kBZRk6oPkH/c4Kuw5RDeFdOC723wAxGT/vxi7WOAZsHg20ZNfUKSgQXmH7n
	DSfT+Q2Sm8h+7gM1FnzSuvuDSPIRdGBQ1764HC9jVjr7TFwUUw3qfjzbk+ug7U4sIeWoqNrO89MCe
	i+PAiJY0qxovVGcHLtLYM+LHHeD5aw4EqBuR8rgnERINfWmZCcp967XevGaGfTh9yefJ5O06YNokF
	dN9a93BxUXDmlDpq/VZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW5nz-0002dM-Ab; Tue, 05 May 2020 22:12:47 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW5np-0002b5-2z; Tue, 05 May 2020 22:12:39 +0000
Received: by mail-qv1-xf41.google.com with SMTP id p13so1871731qvt.12;
 Tue, 05 May 2020 15:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UgMAc+7mHuAqkOoMT7YPxMDf9AuGOeqbk8zSPju/Elk=;
 b=jFBbrWQ1cIa4SS9fn3zz9hL9Y2EqWsW/WpB3mwrepxSbQhAW/lZVjjSW0xL4c14NdJ
 D0iEO5IFTOpIAE/QSghJTFpHwfUgwYOAkS7ip8uTCX/rkQDTxZIjg2Vl8qfhGZKH5qQc
 fKlK1ILMS6cIsgntp2D4pyUTsiE9gSZP+84h0O4HvzFASgLqnYdyEq255g9FFh/ixhUe
 SGO0e7ZRuo57283VyyF74bWByoQcAOo9CsclLFwxj6xiKgZCDq+744pnArT/8SSj6fN5
 lpR7jBeJcnHqzDIXEMYal2jV27TIKJRkU7zv5zdoODEpX9b4EhoXii2VVtVitNSragy6
 sQtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UgMAc+7mHuAqkOoMT7YPxMDf9AuGOeqbk8zSPju/Elk=;
 b=Fl9QmXkRkXn9fRbHgls5fSGmhlsP6epGkU4Sq809aCpsguaWhereCdaCCRzsAQrOqx
 dL7YuWJdVympROKKiU3g7F4Ulc87jhtIOMTYwt7AJ/sqFYW6W4pTcWRSkkCKEyw9gmd6
 DB55PTntRJ3O4IOqyoqeL6cbVJR58CbH1ljURA9EDGW+B1G1xXt3t+BQWpXXVw14eQc8
 Px3I7ZT4v6/Y+PoLAFMJQlKlB4t/UcwbRIfzxkn8XO8otHwaF0bs7dwtarKMoDskrJVE
 m/9syGgfcvHaNddnClxLyDLtWtFNjiLLB9oMBMPboi0CWBIGUU7jManVBG2IbRJKAUKC
 GEsQ==
X-Gm-Message-State: AGi0PuYRso/f6vZkyrw0pp+34DN90TwiKJP3Qk78vI133VH4mfR3rAWB
 EaY2YpfGmERHQvwHHCzQAvZNg2hrDrmitP9uCbA=
X-Google-Smtp-Source: APiQypJlHg3HmvOxreRudbXLTaVWb1cjVfErhRJ9SwGoJ79/2F2j7YUETTam2IKUaIozUbCBAbAnixGT6mMOIjVu+HM=
X-Received: by 2002:a0c:eb11:: with SMTP id j17mr5025168qvp.197.1588716752707; 
 Tue, 05 May 2020 15:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200505074431.242840-1-eizan@google.com>
 <20200505174351.v1.1.I8d2f6e20b8719483cbda30f17548af528527d900@changeid>
In-Reply-To: <20200505174351.v1.1.I8d2f6e20b8719483cbda30f17548af528527d900@changeid>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Wed, 6 May 2020 00:12:21 +0200
Message-ID: <CAFqH_53OsLZ04dbB_8KH4U5aFN1F2_Q2xR9MJ+tmE1FShqfm5g@mail.gmail.com>
Subject: Re: [PATCH v1 1/2] [media] mtk-mdp: add driver to probe mdp components
To: Eizan Miyamoto <eizan@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_151237_164206_312E0B5F 
X-CRM114-Status: GOOD (  33.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 LKML <linux-kernel@vger.kernel.org>, Houlong Wei <houlong.wei@mediatek.com>,
 Eizan Miyamoto <eizan@google.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eizan,

Thank you for your patch.

Missatge de Eizan Miyamoto <eizan@chromium.org> del dia dt., 5 de maig
2020 a les 9:45:
>
> Broadly, this patch (1) adds a driver for various MTK MDP components to
> go alongside the main MTK MDP driver, and (2) hooks them all together
> using the component framework.
>
> (1) Up until now, the MTK MDP driver controls 8 devices in the device
> tree on its own. When running tests for the hardware video decoder, we
> found that the iommus and LARBs were not being properly configured. To
> configure them, a driver for each be added to mtk_mdp_comp so that
> mtk_iommu_add_device() can (eventually) be called from dma_configure()
> inside really_probe().
>
> (2) The integration into the component framework allows us to defer the
> registration with the v4l2 subsystem until all the MDP-related devices
> have been probed, so that the relevant device node does not become
> available until initialization of all the components is complete.
>
> Some notes about how the component framework has been integrated:
>
> - The driver for the rdma0 component serves double duty as the "master"
>   (aggregate) driver as well as a component driver. This is a non-ideal
>   compromise until a better solution is developed. This device is
>   differentiated from the rest by checking for a "mediatek,vpu" property
>   in the device node.
>
> - The list of mdp components remains hard-coded as mtk_mdp_comp_dt_ids[]
>   in mtk_mdp_core.c, and as mtk_mdp_comp_driver_dt_match[] in
>   mtk_mdp_comp.c. This unfortunate duplication of information is
>   addressed in a following patch in this series.
>
> - The component driver calls component_add() for each device that is
>   probed.
>
> - In mtk_mdp_probe (the "master" device), we scan the device tree for
>   any matching nodes against mtk_mdp_comp_dt_ids, and add component
>   matches for them. The match criteria is a matching device node
>   pointer.
>
> - When the set of components devices that have been probed corresponds
>   with the list that is generated by the "master", the callback to
>   mtk_mdp_master_bind() is made, which then calls the component bind
>   functions.
>
> - Inside mtk_mdp_master_bind(), once all the component bind functions
>   have been called, we can then register our device to the v4l2
>   subsystem.
>
> - The call to pm_runtime_enable() in the master device is called after
>   all the components have been registered by their bind() functions
>   called by mtk_mtp_master_bind(). As a result, the list of components
>   will not change while power management callbacks mtk_mdp_suspend()/
>   resume() are accessing the list of components.
>
> Signed-off-by: eizan@chromium.org
> Signed-off-by: Eizan Miyamoto <eizan@google.com>
> ---
>
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c | 164 +++++++++++++++--
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.h |  27 +--
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 171 +++++++++++++-----
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.h |   1 +
>  4 files changed, 274 insertions(+), 89 deletions(-)
>
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> index 362fff924aef..4c77a582c79a 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.c
> @@ -5,14 +5,52 @@
>   */
>
>  #include <linux/clk.h>
> +#include <linux/component.h>
>  #include <linux/device.h>
> -#include <linux/of.h>
> +#include <linux/module.h>
>  #include <linux/of_address.h>
> +#include <linux/of_device.h>
> +#include <linux/of.h>
> +#include <linux/of_irq.h>
>  #include <linux/of_platform.h>
>  #include <soc/mediatek/smi.h>
> +#include <linux/platform_device.h>
>
>  #include "mtk_mdp_comp.h"
> -
> +#include "mtk_mdp_core.h"
> +
> +/**
> + * enum mtk_mdp_comp_type - the MDP component
> + * @MTK_MDP_RDMA:      Read DMA
> + * @MTK_MDP_RSZ:       Riszer

Typo?

> + * @MTK_MDP_WDMA:      Write DMA
> + * @MTK_MDP_WROT:      Write DMA with rotation

You should also describe the enum value 'MTK_MDP_COMP_TYPE_MAX',
otherwise, you will get a kernel-doc warning

> + */
> +enum mtk_mdp_comp_type {
> +       MTK_MDP_RDMA,
> +       MTK_MDP_RSZ,
> +       MTK_MDP_WDMA,
> +       MTK_MDP_WROT,
> +       MTK_MDP_COMP_TYPE_MAX,
> +};
> +
> +static const struct of_device_id mtk_mdp_comp_driver_dt_match[] = {
> +       {
> +               .compatible = "mediatek,mt8173-mdp-rdma",
> +               .data = (void *)MTK_MDP_RDMA
> +       }, {
> +               .compatible = "mediatek,mt8173-mdp-rsz",
> +               .data = (void *)MTK_MDP_RSZ
> +       }, {
> +               .compatible = "mediatek,mt8173-mdp-wdma",
> +               .data = (void *)MTK_MDP_WDMA
> +       }, {
> +               .compatible = "mediatek,mt8173-mdp-wrot",
> +               .data = (void *)MTK_MDP_WROT
> +       },
> +       { },

nit: No more fields after the sentinel so you can drop the colon at the end.

> +};
> +MODULE_DEVICE_TABLE(of, mtk_mdp_comp_driver_dt_match);
>
>  void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
>  {
> @@ -20,10 +58,14 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
>
>         if (comp->larb_dev) {
>                 err = mtk_smi_larb_get(comp->larb_dev);
> -               if (err)
> +               if (err) {
> +                       enum mtk_mdp_comp_type comp_type =
> +                               (enum mtk_mdp_comp_type)
> +                               of_device_get_match_data(dev);
>                         dev_err(dev,
>                                 "failed to get larb, err %d. type:%d\n",
> -                               err, comp->type);
> +                               err, comp_type);
> +               }
>         }
>
>         for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
> @@ -32,8 +74,8 @@ void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp)
>                 err = clk_prepare_enable(comp->clk[i]);
>                 if (err)
>                         dev_err(dev,
> -                       "failed to enable clock, err %d. type:%d i:%d\n",
> -                               err, comp->type, i);
> +                               "failed to enable clock, err %d. i:%d\n",
> +                               err, i);
>         }
>  }
>
> @@ -51,16 +93,41 @@ void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp)
>                 mtk_smi_larb_put(comp->larb_dev);
>  }
>
> -int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
> -                     struct mtk_mdp_comp *comp,
> -                     enum mtk_mdp_comp_type comp_type)
> +static int mtk_mdp_comp_bind(struct device *dev, struct device *master,
> +                       void *data)
> +{
> +       struct mtk_mdp_comp *comp = dev_get_drvdata(dev);
> +       struct mtk_mdp_dev *mdp = data;
> +
> +       mtk_mdp_register_component(mdp, comp);
> +
> +       return 0;
> +}
> +
> +static void mtk_mdp_comp_unbind(struct device *dev, struct device *master,
> +                          void *data)
> +{
> +       struct mtk_mdp_dev *mdp = data;
> +       struct mtk_mdp_comp *comp = dev_get_drvdata(dev);
> +
> +       mtk_mdp_unregister_component(mdp, comp);
> +}
> +
> +static const struct component_ops mtk_mdp_component_ops = {
> +       .bind   = mtk_mdp_comp_bind,
> +       .unbind = mtk_mdp_comp_unbind,
> +};
> +
> +int mtk_mdp_comp_init(struct mtk_mdp_comp *comp, struct device *dev)
>  {
>         struct device_node *larb_node;
>         struct platform_device *larb_pdev;
>         int i;
> +       struct device_node *node = dev->of_node;
> +       enum mtk_mdp_comp_type comp_type =
> +                (enum mtk_mdp_comp_type)of_device_get_match_data(dev);
>
> -       comp->dev_node = of_node_get(node);
> -       comp->type = comp_type;
> +       INIT_LIST_HEAD(&comp->node);
>
>         for (i = 0; i < ARRAY_SIZE(comp->clk); i++) {
>                 comp->clk[i] = of_clk_get(node, i);
> @@ -72,15 +139,15 @@ int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
>                 }
>
>                 /* Only RDMA needs two clocks */
> -               if (comp->type != MTK_MDP_RDMA)
> +               if (comp_type != MTK_MDP_RDMA)
>                         break;
>         }
>
>         /* Only DMA capable components need the LARB property */
>         comp->larb_dev = NULL;
> -       if (comp->type != MTK_MDP_RDMA &&
> -           comp->type != MTK_MDP_WDMA &&
> -           comp->type != MTK_MDP_WROT)
> +       if (comp_type != MTK_MDP_RDMA &&
> +           comp_type != MTK_MDP_WDMA &&
> +           comp_type != MTK_MDP_WROT)
>                 return 0;
>
>         larb_node = of_parse_phandle(node, "mediatek,larb", 0);
> @@ -103,7 +170,70 @@ int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
>         return 0;
>  }
>
> -void mtk_mdp_comp_deinit(struct device *dev, struct mtk_mdp_comp *comp)
> +void mtk_mdp_comp_deinit(struct mtk_mdp_comp *comp)
>  {
> -       of_node_put(comp->dev_node);

If this ends with an empty function why not remove this function and
remove the calls to this function.

>  }
> +
> +static int mtk_mdp_comp_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct device_node *vpu_node;
> +       int status;
> +       struct mtk_mdp_comp *comp;
> +
> +       vpu_node = of_parse_phandle(dev->of_node, "mediatek,vpu", 0);
> +       if (vpu_node) {
> +               of_node_put(vpu_node);
> +               /*
> +                * The device tree node with a mediatek,vpu property is deemed
> +                * the MDP "master" device, we don't want to add a component
> +                * for it in this function because the initialization for the
> +                * master is done elsewhere.
> +                */
> +               dev_info(dev, "vpu node found, not probing\n");
> +               return -ENODEV;
> +       }
> +
> +       comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
> +       if (!comp)
> +               return -ENOMEM;
> +
> +       status = mtk_mdp_comp_init(comp, dev);
> +       if (status) {
> +               dev_err(dev, "Failed to initialize component: %d\n", status);
> +               return status;
> +       }
> +
> +       dev_set_drvdata(dev, comp);
> +
> +       status = component_add(dev, &mtk_mdp_component_ops);
> +       if (status) {
> +               dev_err(dev, "Failed to add component: %d\n", status);
> +               goto err_component_add;
> +       }
> +
> +       return 0;

What about simply

    return component_add(dev, &mtk_mdp_component_ops);

> +
> +err_component_add:
> +       mtk_mdp_comp_deinit(comp);

mtk_mdp_comp_deinit is empty, so you can drop this call, the label and
the following return.

> +
> +       return status;
> +}
> +
> +static int mtk_mdp_comp_remove(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +
> +       component_del(dev, &mtk_mdp_component_ops);
> +       return 0;
> +}
> +
> +struct platform_driver mtk_mdp_component_driver = {
> +       .probe          = mtk_mdp_comp_probe,
> +       .remove         = mtk_mdp_comp_remove,
> +       .driver         = {
> +               .name   = "mediatek-mdp-comp",
> +               .owner  = THIS_MODULE,
> +               .of_match_table = mtk_mdp_comp_driver_dt_match,
> +       },
> +};
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> index 1bf0242cce46..edc2ece717b5 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_comp.h
> @@ -7,43 +7,24 @@
>  #ifndef __MTK_MDP_COMP_H__
>  #define __MTK_MDP_COMP_H__
>
> -/**
> - * enum mtk_mdp_comp_type - the MDP component
> - * @MTK_MDP_RDMA:      Read DMA
> - * @MTK_MDP_RSZ:       Riszer
> - * @MTK_MDP_WDMA:      Write DMA
> - * @MTK_MDP_WROT:      Write DMA with rotation
> - */
> -enum mtk_mdp_comp_type {
> -       MTK_MDP_RDMA,
> -       MTK_MDP_RSZ,
> -       MTK_MDP_WDMA,
> -       MTK_MDP_WROT,
> -       MTK_MDP_COMP_TYPE_MAX,
> -};
> -
>  /**
>   * struct mtk_mdp_comp - the MDP's function component data
>   * @node:      list node to track sibing MDP components
> - * @dev_node:  component device node
>   * @clk:       clocks required for component
>   * @larb_dev:  SMI device required for component
> - * @type:      component type
>   */
>  struct mtk_mdp_comp {
>         struct list_head        node;
> -       struct device_node      *dev_node;
>         struct clk              *clk[2];
>         struct device           *larb_dev;
> -       enum mtk_mdp_comp_type  type;
>  };
>
> -int mtk_mdp_comp_init(struct device *dev, struct device_node *node,
> -                     struct mtk_mdp_comp *comp,
> -                     enum mtk_mdp_comp_type comp_type);
> -void mtk_mdp_comp_deinit(struct device *dev, struct mtk_mdp_comp *comp);
> +int mtk_mdp_comp_init(struct mtk_mdp_comp *comp, struct device *dev);
> +void mtk_mdp_comp_deinit(struct mtk_mdp_comp *comp);

Drop, is empty.


> +
>  void mtk_mdp_comp_clock_on(struct device *dev, struct mtk_mdp_comp *comp);
>  void mtk_mdp_comp_clock_off(struct device *dev, struct mtk_mdp_comp *comp);
>
> +extern struct platform_driver mtk_mdp_component_driver;
>
>  #endif /* __MTK_MDP_COMP_H__ */
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> index b1227c99569a..fe8ae4ad0d3e 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
> @@ -6,6 +6,7 @@
>   */
>
>  #include <linux/clk.h>
> +#include <linux/component.h>
>  #include <linux/device.h>
>  #include <linux/errno.h>
>  #include <linux/interrupt.h>
> @@ -19,6 +20,7 @@
>  #include <linux/workqueue.h>
>  #include <soc/mediatek/smi.h>
>
> +#include "mtk_mdp_comp.h"
>  #include "mtk_mdp_core.h"
>  #include "mtk_mdp_m2m.h"
>  #include "mtk_vpu.h"
> @@ -32,16 +34,12 @@ module_param(mtk_mdp_dbg_level, int, 0644);
>  static const struct of_device_id mtk_mdp_comp_dt_ids[] = {
>         {
>                 .compatible = "mediatek,mt8173-mdp-rdma",
> -               .data = (void *)MTK_MDP_RDMA
>         }, {
>                 .compatible = "mediatek,mt8173-mdp-rsz",
> -               .data = (void *)MTK_MDP_RSZ
>         }, {
>                 .compatible = "mediatek,mt8173-mdp-wdma",
> -               .data = (void *)MTK_MDP_WDMA
>         }, {
>                 .compatible = "mediatek,mt8173-mdp-wrot",
> -               .data = (void *)MTK_MDP_WROT
>         },
>         { },
>  };
> @@ -91,6 +89,65 @@ static void mtk_mdp_reset_handler(void *priv)
>         queue_work(mdp->wdt_wq, &mdp->wdt_work);
>  }
>
> +static int compare_of(struct device *dev, void *data)
> +{
> +       return dev->of_node == data;
> +}
> +
> +static void release_of(struct device *dev, void *data)
> +{
> +       of_node_put(data);
> +}
> +
> +static int mtk_mdp_master_bind(struct device *dev)
> +{
> +       int status;
> +       struct mtk_mdp_dev *mdp = dev_get_drvdata(dev);
> +
> +       mtk_mdp_register_component(mdp, &mdp->comp_self);
> +
> +       status = component_bind_all(dev, mdp);
> +       if (status) {
> +               dev_err(dev, "Failed to bind all components: %d\n", status);
> +               goto err_component_bind_all;
> +       }
> +
> +       status = mtk_mdp_register_m2m_device(mdp);
> +       if (status) {
> +               dev_err(dev, "Failed to register m2m device: %d\n", status);
> +               v4l2_err(&mdp->v4l2_dev, "Failed to init mem2mem device\n");
> +               goto err_mtk_mdp_register_m2m_device;
> +       }
> +
> +       pm_runtime_enable(dev);
> +
> +       return 0;
> +
> +err_mtk_mdp_register_m2m_device:
> +       component_unbind_all(dev, mdp);
> +
> +err_component_bind_all:
> +       mtk_mdp_unregister_component(mdp, &mdp->comp_self);
> +       mtk_mdp_comp_deinit(&mdp->comp_self);
> +
> +       return status;
> +}
> +
> +static void mtk_mdp_master_unbind(struct device *dev)
> +{
> +       struct mtk_mdp_dev *mdp = dev_get_drvdata(dev);
> +
> +       pm_runtime_disable(dev);
> +       mtk_mdp_unregister_m2m_device(mdp);
> +       component_unbind_all(dev, mdp);
> +       mtk_mdp_unregister_component(mdp, &mdp->comp_self);
> +}
> +
> +static const struct component_master_ops mtk_mdp_com_ops = {
> +       .bind           = mtk_mdp_master_bind,
> +       .unbind         = mtk_mdp_master_unbind,
> +};
> +
>  void mtk_mdp_register_component(struct mtk_mdp_dev *mdp,
>                                 struct mtk_mdp_comp *comp)
>  {
> @@ -108,8 +165,8 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>         struct mtk_mdp_dev *mdp;
>         struct device *dev = &pdev->dev;
>         struct device_node *node, *parent;
> -       struct mtk_mdp_comp *comp, *comp_temp;
> -       int ret = 0;
> +       int i, ret = 0;
> +       struct component_match *match = NULL;
>
>         mdp = devm_kzalloc(dev, sizeof(*mdp), GFP_KERNEL);
>         if (!mdp)
> @@ -134,37 +191,43 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>         }
>
>         /* Iterate over sibling MDP function blocks */
> +       i = 0;
>         for_each_child_of_node(parent, node) {
> -               const struct of_device_id *of_id;
> -               enum mtk_mdp_comp_type comp_type;
> +               struct platform_device *pdev;
>
> -               of_id = of_match_node(mtk_mdp_comp_dt_ids, node);
> -               if (!of_id)
> +               if (!of_match_node(mtk_mdp_comp_dt_ids, node))
>                         continue;
>
> -               if (!of_device_is_available(node)) {
> -                       dev_err(dev, "Skipping disabled component %pOF\n",
> -                               node);
> +               if (!of_device_is_available(node))
>                         continue;
> -               }
> -
> -               comp_type = (enum mtk_mdp_comp_type)of_id->data;
>
> -
> -               comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
> -               if (!comp) {
> -                       ret = -ENOMEM;
> -                       of_node_put(node);
> -                       goto err_comp;
> +               pdev = of_find_device_by_node(node);
> +               if (!pdev) {
> +                       dev_warn(dev, "Unable to find comp device %s\n",
> +                                node->full_name);
> +                       continue;
>                 }
>
> -               ret = mtk_mdp_comp_init(dev, node, comp, comp_type);
> -               if (ret) {
> -                       of_node_put(node);
> -                       goto err_comp;
> +               /*
> +                * Do not add add a match for my own (rdma0) device node.
> +                * I will be managing it directly instead using comp_self.
> +                */
> +               if (&pdev->dev != dev) {
> +                       dev_dbg(dev, "adding match %d for: %pOF\n", i++, node);
> +                       component_match_add_release(dev, &match, release_of,
> +                                                   compare_of,
> +                                                   of_node_get(node));
>                 }
> +       }
>
> -               mtk_mdp_register_component(mdp, comp);
> +       /*
> +        * Create a component for myself so that clocks can be toggled in
> +        * clock_on().
> +        */
> +       ret = mtk_mdp_comp_init(&mdp->comp_self, dev);
> +       if (ret) {
> +               dev_err(dev, "Failed to initialize component\n");
> +               goto err_comp;
>         }
>
>         mdp->job_wq = create_singlethread_workqueue(MTK_MDP_MODULE_NAME);
> @@ -189,12 +252,6 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>                 goto err_dev_register;
>         }
>
> -       ret = mtk_mdp_register_m2m_device(mdp);
> -       if (ret) {
> -               v4l2_err(&mdp->v4l2_dev, "Failed to init mem2mem device\n");
> -               goto err_m2m_register;
> -       }
> -
>         mdp->vpu_dev = vpu_get_plat_device(pdev);
>         ret = vpu_wdt_reg_handler(mdp->vpu_dev, mtk_mdp_reset_handler, mdp,
>                                   VPU_RST_MDP);
> @@ -211,16 +268,22 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>                 goto err_set_max_seg_size;
>         }
>
> -       pm_runtime_enable(dev);
> +       ret = component_master_add_with_match(dev, &mtk_mdp_com_ops, match);
> +       if (ret) {
> +               dev_err(dev, "Component master add failed\n");
> +               goto err_component_master_add;
> +       }
> +
>         dev_dbg(dev, "mdp-%d registered successfully\n", mdp->id);
>
>         return 0;
>
> +err_component_master_add:
> +       vb2_dma_contig_clear_max_seg_size(&pdev->dev);
> +
>  err_set_max_seg_size:
>
>  err_wdt_reg:
> -
> -err_m2m_register:
>         v4l2_device_unregister(&mdp->v4l2_dev);
>
>  err_dev_register:
> @@ -232,11 +295,6 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>  err_alloc_job_wq:
>
>  err_comp:
> -       list_for_each_entry_safe(comp, comp_temp, &mdp->comp_list, node) {
> -               mtk_mdp_unregister_component(mdp, comp);
> -               mtk_mdp_comp_deinit(dev, comp);
> -       }
> -
>         dev_dbg(dev, "err %d\n", ret);
>         return ret;
>  }
> @@ -244,11 +302,10 @@ static int mtk_mdp_probe(struct platform_device *pdev)
>  static int mtk_mdp_remove(struct platform_device *pdev)
>  {
>         struct mtk_mdp_dev *mdp = platform_get_drvdata(pdev);
> -       struct mtk_mdp_comp *comp, *comp_temp;
>
> -       pm_runtime_disable(&pdev->dev);
> +       component_master_del(&pdev->dev, &mtk_mdp_com_ops);
> +
>         vb2_dma_contig_clear_max_seg_size(&pdev->dev);
> -       mtk_mdp_unregister_m2m_device(mdp);
>         v4l2_device_unregister(&mdp->v4l2_dev);
>
>         flush_workqueue(mdp->wdt_wq);
> @@ -257,10 +314,8 @@ static int mtk_mdp_remove(struct platform_device *pdev)
>         flush_workqueue(mdp->job_wq);
>         destroy_workqueue(mdp->job_wq);
>
> -       list_for_each_entry_safe(comp, comp_temp, &mdp->comp_list, node) {
> -               mtk_mdp_unregister_component(mdp, comp);
> -               mtk_mdp_comp_deinit(&pdev->dev, comp);
> -       }
> +       if (!list_empty(&mdp->comp_list))
> +               dev_err(&pdev->dev, "not all components removed\n");
>
>         dev_dbg(&pdev->dev, "%s driver unloaded\n", pdev->name);
>         return 0;
> @@ -315,7 +370,25 @@ static struct platform_driver mtk_mdp_driver = {
>         }
>  };
>
> -module_platform_driver(mtk_mdp_driver);
> +static struct platform_driver * const mtk_mdp_drivers[] = {
> +       &mtk_mdp_driver,
> +       &mtk_mdp_component_driver,
> +};
> +
> +static int __init mtk_mdp_init(void)
> +{
> +       return platform_register_drivers(mtk_mdp_drivers,
> +                                        ARRAY_SIZE(mtk_mdp_drivers));
> +}
> +
> +static void __exit mtk_mdp_exit(void)
> +{
> +       platform_unregister_drivers(mtk_mdp_drivers,
> +                                   ARRAY_SIZE(mtk_mdp_drivers));
> +}
> +
> +module_init(mtk_mdp_init);
> +module_exit(mtk_mdp_exit);
>
>  MODULE_AUTHOR("Houlong Wei <houlong.wei@mediatek.com>");
>  MODULE_DESCRIPTION("Mediatek image processor driver");
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.h b/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
> index a7da14b97077..230f531400ca 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
> @@ -155,6 +155,7 @@ struct mtk_mdp_dev {
>         struct mtk_mdp_variant          *variant;
>         u16                             id;
>         struct list_head                comp_list;
> +       struct mtk_mdp_comp             comp_self;
>         struct v4l2_m2m_dev             *m2m_dev;
>         struct list_head                ctx_list;
>         struct video_device             *vdev;
> --
> 2.26.2.526.g744177e7f7-goog
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
