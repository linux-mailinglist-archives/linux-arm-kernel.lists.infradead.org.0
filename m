Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA6B19AE5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 16:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=acgN6tV5/m0dM09g2tueYV6zU83VkNyqcUuRODl2x/s=; b=c3nqj9S2sczJt2
	Mv+vvk7Mp94C49rnuKzcj6BPpLRbSubHXCs2QCnBMW+j0OZP6gcZlTt0PXKtkixLM0G1eNkwClXzR
	zNlCrXY7q/Ql9YsgQ7KGxGru8esdxMwN+rhfgGKmuM0NTJywQHyH27I0cvjzjxLFToszo66uw3Uh7
	EXKV1X5+3RIM8vEj9kMmBHaECzS4BYKXgTG1KnJyE6K/UpljXu3my1/FF+225rjMhh218ULLE+SFB
	e5sAYxv02Suq8woFIObkQc/bw4dWQeh3U+5UAPkGQEp8bWcDBDibnHQGKfz9Dk7BU+Y5u/yGYnuyv
	d9dr+6KHfres2lNqrUoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJem5-0003Pv-BQ; Wed, 01 Apr 2020 14:55:25 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJelv-0003OI-3Z
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 14:55:16 +0000
Received: by mail-wr1-x441.google.com with SMTP id u10so389917wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Apr 2020 07:55:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=t4+1X7zuTabkl4VU/FiL5rsh3iqB89LLWvHabfZ8bN4=;
 b=nm9AbqnGhdLB24KuhbCa3xT4Qd2F2BKFbEc2rAhXAyvnKZRcP6CNCCvemmASJTvga8
 jWfrh6ki3K4U3X2F2p5XTsTYEhh/z8SGd5BJupxTvM33CmYl9J+UJ3hKZUxr6OoPpU4o
 1x2fTfAh8yEwb4EfkHCR693C1opsXmOGd89BoRnfw3Ed7zdbeQQCuSeHfupQx2VK0GmN
 QEyZlGrygtXV8pginl/epf9ebJGoQNl/8gSMOYKrs/Vxt0Z/qVTTAW84rGVjiR2epIvk
 tBdo3inugCLpjI2CaYfnY5QUvLmjDvkQHi2PkN9o4u4hGEEnlUqr06chWFMjwQIbUafQ
 zzHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=t4+1X7zuTabkl4VU/FiL5rsh3iqB89LLWvHabfZ8bN4=;
 b=Z5sDtqyDM9NdZJ8rzpwv84FAqKRqtzU+ZXmQagD+z/j3GaANoG/9pEZouumgd81n2A
 6ecnohJHkRKpZij3q/oig8YjbC2s9mKxojW32ROyaULfnZEA7ewYAT8OJ4Cdkf9nE8Yx
 ElMi5m8ZRr8u7Tvw7kesIlGDWN4ksh02d+XWFiJA/g4asmEDDp5XXxg2N/x/s/npXC9Z
 OHA4u9VAV1nyi2dVNF+zNLv6D5a57ZoG3dlJjUDF3KAdh1BVmk5m4YC7F+Eqf5wgvVgN
 RT97DzH4zAwylniLaWeLpevYlskc9iknaVvK9uaouXDh09xMtV/7eKB438d1qrmLzOaA
 2P0g==
X-Gm-Message-State: ANhLgQ2r+RncjYvXz2yLU0u+Yjv77rXymkQONqedu8zP7j2qGG2mmvWv
 l1qcLfCh6Wq5OEP+JrtCcAGcjg==
X-Google-Smtp-Source: ADFU+vvaKT/UJl+09yLoveYYpX/EUL3cp5RDYbE7QifDqpxHUr3G6jt7MxfWgi7B9yow6rdZArNNag==
X-Received: by 2002:a5d:498b:: with SMTP id r11mr26388151wrq.368.1585752912225; 
 Wed, 01 Apr 2020 07:55:12 -0700 (PDT)
Received: from [192.168.0.136] ([87.120.218.65])
 by smtp.googlemail.com with ESMTPSA id x16sm3327577wrn.71.2020.04.01.07.55.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 01 Apr 2020 07:55:11 -0700 (PDT)
Subject: Re: [PATCH V4 09/13] interconnect: mediatek: Add mt8183 interconnect
 provider driver
To: Henry Chen <henryc.chen@mediatek.com>
References: <1584092066-24425-1-git-send-email-henryc.chen@mediatek.com>
 <1584092066-24425-10-git-send-email-henryc.chen@mediatek.com>
From: Georgi Djakov <georgi.djakov@linaro.org>
Openpgp: preference=signencrypt
Autocrypt: addr=georgi.djakov@linaro.org; prefer-encrypt=mutual; keydata=
 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
 KEmKjLDvB0pePJkdTw==
Message-ID: <2007da85-6ab8-225b-0ac7-b38bc9a590d2@linaro.org>
Date: Wed, 1 Apr 2020 17:55:09 +0300
MIME-Version: 1.0
In-Reply-To: <1584092066-24425-10-git-send-email-henryc.chen@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_075515_160573_3447EC04 
X-CRM114-Status: GOOD (  25.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@google.com>,
 Mike Turquette <mturquette@linaro.org>, srv_heupstream@mediatek.com,
 James Liao <jamesjj.liao@mediatek.com>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Ryan Case <ryandcase@chromium.org>,
 Arvin Wang <arvin.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Henry,

Thanks for the patch!

On 3/13/20 11:34, Henry Chen wrote:
> Introduce Mediatek MT8183 specific provider driver using the
> interconnect framework.
> 
> Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
> ---
>  drivers/interconnect/Kconfig            |   1 +
>  drivers/interconnect/Makefile           |   1 +
>  drivers/interconnect/mediatek/Kconfig   |  13 ++
>  drivers/interconnect/mediatek/Makefile  |   3 +
>  drivers/interconnect/mediatek/mtk-emi.c | 242 ++++++++++++++++++++++++++++++++
>  5 files changed, 260 insertions(+)
>  create mode 100644 drivers/interconnect/mediatek/Kconfig
>  create mode 100644 drivers/interconnect/mediatek/Makefile
>  create mode 100644 drivers/interconnect/mediatek/mtk-emi.c
> 
> diff --git a/drivers/interconnect/Kconfig b/drivers/interconnect/Kconfig
> index bfa4ca3..dd9ecb6 100644
> --- a/drivers/interconnect/Kconfig
> +++ b/drivers/interconnect/Kconfig
> @@ -12,5 +12,6 @@ menuconfig INTERCONNECT
>  if INTERCONNECT
>  
>  source "drivers/interconnect/qcom/Kconfig"
> +source "drivers/interconnect/mediatek/Kconfig"
>  
>  endif
> diff --git a/drivers/interconnect/Makefile b/drivers/interconnect/Makefile
> index 725029a..330a108 100644
> --- a/drivers/interconnect/Makefile
> +++ b/drivers/interconnect/Makefile
> @@ -5,3 +5,4 @@ icc-core-objs				:= core.o
>  
>  obj-$(CONFIG_INTERCONNECT)		+= icc-core.o
>  obj-$(CONFIG_INTERCONNECT_QCOM)		+= qcom/
> +obj-$(CONFIG_INTERCONNECT_MTK)		+= mediatek/
> diff --git a/drivers/interconnect/mediatek/Kconfig b/drivers/interconnect/mediatek/Kconfig
> new file mode 100644
> index 0000000..972d3bb
> --- /dev/null
> +++ b/drivers/interconnect/mediatek/Kconfig
> @@ -0,0 +1,13 @@
> +config INTERCONNECT_MTK
> +	bool "Mediatek Network-on-Chip interconnect drivers"
> +	depends on ARCH_MEDIATEK
> +	help
> +	  Support for Mediatek's Network-on-Chip interconnect hardware.
> +
> +config INTERCONNECT_MTK_EMI
> +	tristate "Mediatek EMI interconnect driver"
> +	depends on INTERCONNECT_MTK
> +	depends on (MTK_DVFSRC && OF)
> +	help
> +	  This is a driver for the Mediatek Network-on-Chip on DVFSRC-based
> +	  platforms.
> diff --git a/drivers/interconnect/mediatek/Makefile b/drivers/interconnect/mediatek/Makefile
> new file mode 100644
> index 0000000..353842b
> --- /dev/null
> +++ b/drivers/interconnect/mediatek/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_INTERCONNECT_MTK_EMI) += mtk-emi.o
> \ No newline at end of file
> diff --git a/drivers/interconnect/mediatek/mtk-emi.c b/drivers/interconnect/mediatek/mtk-emi.c
> new file mode 100644
> index 0000000..0a16992
> --- /dev/null
> +++ b/drivers/interconnect/mediatek/mtk-emi.c
> @@ -0,0 +1,242 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019, The Linux Foundation. All rights reserved.

Nit: Maybe 2020?

> + *
> + */
> +
> +#include <dt-bindings/interconnect/mtk,mt8183-emi.h>

Please move this below the all other linux/ headers

> +#include <linux/device.h>
> +#include <linux/interconnect-provider.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/of_platform.h>

Is this needed?

> +#include <linux/platform_device.h>
> +#include <soc/mediatek/mtk_dvfsrc.h>
> +
> +enum mtk_icc_name {
> +	SLAVE_DDR_EMI,
> +	MASTER_MCUSYS,
> +	MASTER_GPUSYS,
> +	MASTER_MMSYS,
> +	MASTER_MM_VPU,
> +	MASTER_MM_DISP,
> +	MASTER_MM_VDEC,
> +	MASTER_MM_VENC,
> +	MASTER_MM_CAM,
> +	MASTER_MM_IMG,
> +	MASTER_MM_MDP,
> +};
> +
> +#define MT8183_MAX_LINKS	1
> +
> +/**
> + * struct mtk_icc_node - Mediatek specific interconnect nodes
> + * @name: the node name used in debugfs
> + * @ep: true if the node is an end point.
> + * @id: a unique node identifier
> + * @links: an array of nodes where we can go next while traversing
> + * @num_links: the total number of @links
> + * @buswidth: width of the interconnect between a node and the bus
> + * @sum_avg: current sum aggregate value of all avg bw kBps requests
> + * @max_peak: current max aggregate value of all peak bw kBps requests
> + */
> +struct mtk_icc_node {
> +	unsigned char *name;
> +	bool ep;
> +	u16 id;
> +	u16 links[MT8183_MAX_LINKS];
> +	u16 num_links;
> +	u16 buswidth;
> +	u64 sum_avg;
> +	u64 max_peak;
> +};
> +
> +struct mtk_icc_desc {
> +	struct mtk_icc_node **nodes;
> +	size_t num_nodes;
> +};
> +
> +#define DEFINE_MNODE(_name, _id, _buswidth, _ep, ...)	\
> +		static struct mtk_icc_node _name = {			\
> +		.name = #_name,						\
> +		.id = _id,						\
> +		.buswidth = _buswidth,					\
> +		.ep = _ep,						\
> +		.num_links = ARRAY_SIZE(((int[]){ __VA_ARGS__ })),	\
> +}
> +
> +DEFINE_MNODE(ddr_emi, SLAVE_DDR_EMI, 1024, 1, 0);
> +DEFINE_MNODE(mcusys, MASTER_MCUSYS, 256, 0, SLAVE_DDR_EMI);
> +DEFINE_MNODE(gpu, MASTER_GPUSYS, 256, 0, SLAVE_DDR_EMI);
> +DEFINE_MNODE(mmsys, MASTER_MMSYS, 256, 0, SLAVE_DDR_EMI);
> +DEFINE_MNODE(mm_vpu, MASTER_MM_VPU, 128, 0, MASTER_MMSYS);
> +DEFINE_MNODE(mm_disp, MASTER_MM_DISP, 128, 0, MASTER_MMSYS);
> +DEFINE_MNODE(mm_vdec, MASTER_MM_VDEC, 128, 0, MASTER_MMSYS);
> +DEFINE_MNODE(mm_venc, MASTER_MM_VENC, 128, 0, MASTER_MMSYS);
> +DEFINE_MNODE(mm_cam, MASTER_MM_CAM, 128, 0, MASTER_MMSYS);
> +DEFINE_MNODE(mm_img, MASTER_MM_IMG, 128, 0, MASTER_MMSYS);
> +DEFINE_MNODE(mm_mdp, MASTER_MM_MDP, 128, 0, MASTER_MMSYS);
> +
> +static struct mtk_icc_node *mt8183_icc_nodes[] = {
> +	[MT8183_SLAVE_DDR_EMI] = &ddr_emi,
> +	[MT8183_MASTER_MCUSYS] = &mcusys,
> +	[MT8183_MASTER_GPU] = &gpu,
> +	[MT8183_MASTER_MMSYS] = &mmsys,
> +	[MT8183_MASTER_MM_VPU] = &mm_vpu,
> +	[MT8183_MASTER_MM_DISP] = &mm_disp,
> +	[MT8183_MASTER_MM_VDEC] = &mm_vdec,
> +	[MT8183_MASTER_MM_VENC] = &mm_venc,
> +	[MT8183_MASTER_MM_CAM] = &mm_cam,
> +	[MT8183_MASTER_MM_IMG] = &mm_img,
> +	[MT8183_MASTER_MM_MDP] = &mm_mdp,
> +};
> +
> +static struct mtk_icc_desc mt8183_icc = {

const?

> +	.nodes = mt8183_icc_nodes,
> +	.num_nodes = ARRAY_SIZE(mt8183_icc_nodes),
> +};
> +
> +static int emi_icc_aggregate(struct icc_node *node, u32 tag, u32 avg_bw,
> +			     u32 peak_bw, u32 *agg_avg, u32 *agg_peak)
> +{
> +	struct mtk_icc_node *in;
> +
> +	in = node->data;
> +
> +	*agg_avg += avg_bw;
> +	*agg_peak += peak_bw;
> +
> +	in->sum_avg = *agg_avg;
> +	in->max_peak = *agg_peak;
> +
> +	return 0;
> +}
> +
> +static int emi_icc_set(struct icc_node *src, struct icc_node *dst)
> +{
> +	int ret = 0;
> +	struct mtk_icc_node *node;
> +
> +	node = dst->data;
> +	if (node->ep) {
> +		pr_debug("sum_avg (%llu), max_peak (%llu)\n",
> +			 node->sum_avg, node->max_peak);
> +		mtk_dvfsrc_send_request(src->provider->dev->parent,
> +					MTK_DVFSRC_CMD_BW_REQUEST,
> +					node->max_peak);
> +	}
> +
> +	return ret;
> +}
> +
> +static int emi_icc_remove(struct platform_device *pdev);
> +static int emi_icc_probe(struct platform_device *pdev)
> +{
> +	int ret;
> +	const struct mtk_icc_desc *desc;
> +	struct icc_node *node;
> +	struct icc_onecell_data *data;
> +	struct icc_provider *provider;
> +	struct mtk_icc_node **mnodes;
> +	size_t num_nodes, i, j;
> +
> +	desc = of_device_get_match_data(&pdev->dev);
> +	if (!desc)
> +		return -EINVAL;
> +
> +	mnodes = desc->nodes;
> +	num_nodes = desc->num_nodes;
> +
> +	provider = devm_kzalloc(&pdev->dev, sizeof(*provider), GFP_KERNEL);
> +	if (!provider)
> +		return -ENOMEM;
> +
> +	data = devm_kcalloc(&pdev->dev, num_nodes, sizeof(*node), GFP_KERNEL);

This should be:
devm_kzalloc(&pdev->dev, struct_size(data, nodes, num_nodes), GFP_KERNEL);

> +	if (!data)
> +		return -ENOMEM;
> +
> +	provider->dev = &pdev->dev;
> +	provider->set = emi_icc_set;
> +	provider->aggregate = emi_icc_aggregate;
> +	provider->xlate = of_icc_xlate_onecell;
> +	INIT_LIST_HEAD(&provider->nodes);
> +	provider->data = data;
> +
> +	ret = icc_provider_add(provider);
> +	if (ret) {
> +		dev_err(&pdev->dev, "error adding interconnect provider\n");
> +		return ret;
> +	}
> +
> +	for (i = 0; i < num_nodes; i++) {
> +		node = icc_node_create(mnodes[i]->id);
> +		if (IS_ERR(node)) {
> +			ret = PTR_ERR(node);
> +			goto err;
> +		}
> +
> +		node->name = mnodes[i]->name;
> +		node->data = mnodes[i];
> +		icc_node_add(node, provider);
> +
> +		dev_dbg(&pdev->dev, "registered node %s, num link: %d\n",
> +			mnodes[i]->name, mnodes[i]->num_links);

Please remove this.

> +
> +		/* populate links */

Please remove the comment too.

> +		for (j = 0; j < mnodes[i]->num_links; j++)
> +			icc_link_create(node, mnodes[i]->links[j]);
> +
> +		data->nodes[i] = node;
> +	}
> +	data->num_nodes = num_nodes;
> +
> +	platform_set_drvdata(pdev, provider);
> +
> +	return 0;
> +err:
> +	emi_icc_remove(pdev);

This will not work because platform_set_drvdata() is called only when the
probe function completes successfully. So platform_get_drvdata() in
emi_icc_remove() will return NULL.

> +	return ret;
> +}
> +
> +static int emi_icc_remove(struct platform_device *pdev)
> +{
> +	struct icc_provider *provider = platform_get_drvdata(pdev);
> +	struct icc_node *n;
> +
> +	list_for_each_entry(n, &provider->nodes, node_list) {
> +		icc_node_del(n);
> +		icc_node_destroy(n->id);
> +	}

You can use icc_nodes_remove() instead of the above.

Thanks,
Georgi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
