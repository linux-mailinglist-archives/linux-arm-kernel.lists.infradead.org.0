Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763841358EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 13:12:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=190FiRsv+S/gPbYNIZcwR8DSHgB266OsCnQN0ESv7kk=; b=QbyhBdq+9Q5bWA
	0HbF+aurg4bt4K1aPNGKC1zWQKy1tcHtZtz3WFJst53QZnVlPw/KUfpJ802v/iBobarWkKCfqlcZo
	s4JlU9kLBdF5ZVNMxq0/OLlZc5Fyn5Jyq6DvjI9WR9NMwef/DggKaBPwHuoliVM6JN7wJm8Gx9wKK
	XHb3voUXuyWRHqefJ1m1VMUZJcYpME0veJInx7c2xShC19jQ4V1u3b7bjiDxC+D2j/JFllx9LjwOo
	Jw3dJkwevRhdo9IDg7618MUI5W7tYcjJ3bbq/EHjTjPfF2d/xot6pj3H5mayIlA7LuO1QbEgCpcrl
	lX5ZJj13avjS5oTBau2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipWfw-0001DN-4w; Thu, 09 Jan 2020 12:12:32 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipWfo-0001CS-HI
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 12:12:26 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 09 Jan 2020 21:12:20 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id A5D3B603AB;
 Thu,  9 Jan 2020 21:12:20 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Thu, 9 Jan 2020 21:13:11 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 322C540343;
 Thu,  9 Jan 2020 21:12:20 +0900 (JST)
Received: from [10.213.132.48] (unknown [10.213.132.48])
 by yuzu.css.socionext.com (Postfix) with ESMTP id F0BFA120136;
 Thu,  9 Jan 2020 21:12:19 +0900 (JST)
Date: Thu, 09 Jan 2020 21:12:20 +0900
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH 2/2] dmaengine: uniphier-xdmac: Add UniPhier external DMA
 controller driver
In-Reply-To: <20191227063411.GG3006@vkoul-mobl>
References: <1576630620-1977-3-git-send-email-hayashi.kunihiko@socionext.com>
 <20191227063411.GG3006@vkoul-mobl>
Message-Id: <20200109211219.57FC.4A936039@socionext.com>
MIME-Version: 1.0
X-Mailer: Becky! ver. 2.70 [ja]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_041224_811715_95C7F14B 
X-CRM114-Status: GOOD (  22.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vinod,

Thank you for your comment.

On Fri, 27 Dec 2019 12:04:11 +0530 <vkoul@kernel.org> wrote:

> On 18-12-19, 09:57, Kunihiko Hayashi wrote:
> > This adds external DMA controller driver implemented in Socionext
> > UniPhier SoCs. This driver supports DMA_MEMCPY and DMA_SLAVE modes.
> > 
> > Since this driver does not support the the way to transfer size
> > unaligned to burst width, 'src_maxburst' or 'dst_maxburst' of
> 
> You mean driver does not support any unaligned bursts?

Yes. If transfer size is unaligned to burst size, the final transfer
will be overrun.

> 
> > +static int uniphier_xdmac_probe(struct platform_device *pdev)
> > +{
> > +	struct uniphier_xdmac_device *xdev;
> > +	struct device *dev = &pdev->dev;
> > +	struct dma_device *ddev;
> > +	int irq;
> > +	int nr_chans;
> > +	int i, ret;
> > +
> > +	if (of_property_read_u32(dev->of_node, "dma-channels", &nr_chans))
> > +		return -EINVAL;
> > +	if (nr_chans > XDMAC_MAX_CHANS)
> > +		nr_chans = XDMAC_MAX_CHANS;
> > +
> > +	xdev = devm_kzalloc(dev, struct_size(xdev, channels, nr_chans),
> > +			    GFP_KERNEL);
> > +	if (!xdev)
> > +		return -ENOMEM;
> > +
> > +	xdev->nr_chans = nr_chans;
> > +	xdev->reg_base = devm_platform_ioremap_resource(pdev, 0);
> > +	if (IS_ERR(xdev->reg_base))
> > +		return PTR_ERR(xdev->reg_base);
> > +
> > +	ddev = &xdev->ddev;
> > +	ddev->dev = dev;
> > +	dma_cap_zero(ddev->cap_mask);
> > +	dma_cap_set(DMA_MEMCPY, ddev->cap_mask);
> > +	dma_cap_set(DMA_SLAVE, ddev->cap_mask);
> > +	ddev->src_addr_widths = UNIPHIER_XDMAC_BUSWIDTHS;
> > +	ddev->dst_addr_widths = UNIPHIER_XDMAC_BUSWIDTHS;
> > +	ddev->directions = BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV) |
> > +			   BIT(DMA_MEM_TO_MEM);
> > +	ddev->residue_granularity = DMA_RESIDUE_GRANULARITY_BURST;
> > +	ddev->max_burst = XDMAC_MAX_WORDS;
> > +	ddev->device_free_chan_resources = uniphier_xdmac_free_chan_resources;
> > +	ddev->device_prep_dma_memcpy = uniphier_xdmac_prep_dma_memcpy;
> > +	ddev->device_prep_slave_sg = uniphier_xdmac_prep_slave_sg;
> > +	ddev->device_config = uniphier_xdmac_slave_config;
> > +	ddev->device_terminate_all = uniphier_xdmac_terminate_all;
> > +	ddev->device_synchronize = uniphier_xdmac_synchronize;
> > +	ddev->device_tx_status = dma_cookie_status;
> > +	ddev->device_issue_pending = uniphier_xdmac_issue_pending;
> > +	INIT_LIST_HEAD(&ddev->channels);
> > +
> > +	for (i = 0; i < nr_chans; i++) {
> > +		ret = uniphier_xdmac_chan_init(xdev, i);
> > +		if (ret) {
> > +			dev_err(dev,
> > +				"Failed to initialize XDMAC channel %d\n", i);
> > +			return ret;
> 
> so on error for channel N we leave N-1 channels initialized?

The uniphier_xdmac_chan_init() always returns 0, so this error decision
can be removed.

> > +static int uniphier_xdmac_remove(struct platform_device *pdev)
> > +{
> > +	struct uniphier_xdmac_device *xdev = platform_get_drvdata(pdev);
> > +	struct dma_device *ddev = &xdev->ddev;
> > +	struct dma_chan *chan;
> > +	int ret;
> > +
> > +	/*
> > +	 * Before reaching here, almost all descriptors have been freed by the
> > +	 * ->device_free_chan_resources() hook. However, each channel might
> > +	 * be still holding one descriptor that was on-flight at that moment.
> > +	 * Terminate it to make sure this hardware is no longer running. Then,
> > +	 * free the channel resources once again to avoid memory leak.
> > +	 */
> > +	list_for_each_entry(chan, &ddev->channels, device_node) {
> > +		ret = dmaengine_terminate_sync(chan);
> > +		if (ret)
> > +			return ret;
> > +		uniphier_xdmac_free_chan_resources(chan);
> 
> terminating sounds okayish but not freeing here. .ree_chan_resources()
> should have been called already and that should ensure that termination
> is already done...

If all transfers are complete, .device_free_chan_resources() should be called.
Since _remove() might be called asynchronously, this is post-processing just
before transfer completion.

Thank you,

---
Best Regards,
Kunihiko Hayashi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
