Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FBF12B1C8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 07:34:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVQekwc3rW5/FKzlf7+4lZUcELWtko0/yRV8oGLrW/8=; b=WtGBAhw98+o6j2
	xqjXzTgrdPY+ej5UHhKLIhCok8FDRXhyWQJQU+HgxapARWpmuhk2qAE+LlIiTVPlUB6QJkGkTo2b0
	1bZxt+YN16dnUdojzzQ9DgLXrwn8x7JVIW5AGvMzzmH8//dujm606UWYaOKkTW/Y9BcfuPjJX4YDa
	bPkUzTYKzELEv+ZlkW0k3Uqusrwb15wry49eX+bmGzmjAdp82uHMurIXq6gNswR55+LfDe8HfNHDd
	nLIrDmH2YgXXbpnhHILEBWmPpUkHE8FJ8XZVw8nAi+ZcUw0eXlpk+KHZeAbAKrGQDEedLPvmomY37
	3IXb7bhYCrjQyeKwDM6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikjCh-00064f-6t; Fri, 27 Dec 2019 06:34:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikjCW-00063z-4G
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 06:34:21 +0000
Received: from localhost (unknown [106.201.34.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7251220828;
 Fri, 27 Dec 2019 06:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577428457;
 bh=QmhOaQhmStFpEX9h7iiPOQiA3ViF2ugMgnDWtCU9Ek8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j71b1ORR5isd/iuQCkuKk+CZkf8gXZyRZKiNR9MZgAtgIb1azhbGHN4o6PHKvEBvO
 10xvGkDVQM+Bk8xfelvhFK+bnnZKiBgkzhXwAPSNKQxR/FvxCtP3ZqX3MW4AuQTi95
 ceEaiwYCt+BlTKfgKiJO5RABJlP+bu1JKrCSxUOg=
Date: Fri, 27 Dec 2019 12:04:11 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 2/2] dmaengine: uniphier-xdmac: Add UniPhier external DMA
 controller driver
Message-ID: <20191227063411.GG3006@vkoul-mobl>
References: <1576630620-1977-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1576630620-1977-3-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576630620-1977-3-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_223420_218030_C03AC4F9 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 18-12-19, 09:57, Kunihiko Hayashi wrote:
> This adds external DMA controller driver implemented in Socionext
> UniPhier SoCs. This driver supports DMA_MEMCPY and DMA_SLAVE modes.
> 
> Since this driver does not support the the way to transfer size
> unaligned to burst width, 'src_maxburst' or 'dst_maxburst' of

You mean driver does not support any unaligned bursts?

> +static int uniphier_xdmac_probe(struct platform_device *pdev)
> +{
> +	struct uniphier_xdmac_device *xdev;
> +	struct device *dev = &pdev->dev;
> +	struct dma_device *ddev;
> +	int irq;
> +	int nr_chans;
> +	int i, ret;
> +
> +	if (of_property_read_u32(dev->of_node, "dma-channels", &nr_chans))
> +		return -EINVAL;
> +	if (nr_chans > XDMAC_MAX_CHANS)
> +		nr_chans = XDMAC_MAX_CHANS;
> +
> +	xdev = devm_kzalloc(dev, struct_size(xdev, channels, nr_chans),
> +			    GFP_KERNEL);
> +	if (!xdev)
> +		return -ENOMEM;
> +
> +	xdev->nr_chans = nr_chans;
> +	xdev->reg_base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(xdev->reg_base))
> +		return PTR_ERR(xdev->reg_base);
> +
> +	ddev = &xdev->ddev;
> +	ddev->dev = dev;
> +	dma_cap_zero(ddev->cap_mask);
> +	dma_cap_set(DMA_MEMCPY, ddev->cap_mask);
> +	dma_cap_set(DMA_SLAVE, ddev->cap_mask);
> +	ddev->src_addr_widths = UNIPHIER_XDMAC_BUSWIDTHS;
> +	ddev->dst_addr_widths = UNIPHIER_XDMAC_BUSWIDTHS;
> +	ddev->directions = BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV) |
> +			   BIT(DMA_MEM_TO_MEM);
> +	ddev->residue_granularity = DMA_RESIDUE_GRANULARITY_BURST;
> +	ddev->max_burst = XDMAC_MAX_WORDS;
> +	ddev->device_free_chan_resources = uniphier_xdmac_free_chan_resources;
> +	ddev->device_prep_dma_memcpy = uniphier_xdmac_prep_dma_memcpy;
> +	ddev->device_prep_slave_sg = uniphier_xdmac_prep_slave_sg;
> +	ddev->device_config = uniphier_xdmac_slave_config;
> +	ddev->device_terminate_all = uniphier_xdmac_terminate_all;
> +	ddev->device_synchronize = uniphier_xdmac_synchronize;
> +	ddev->device_tx_status = dma_cookie_status;
> +	ddev->device_issue_pending = uniphier_xdmac_issue_pending;
> +	INIT_LIST_HEAD(&ddev->channels);
> +
> +	for (i = 0; i < nr_chans; i++) {
> +		ret = uniphier_xdmac_chan_init(xdev, i);
> +		if (ret) {
> +			dev_err(dev,
> +				"Failed to initialize XDMAC channel %d\n", i);
> +			return ret;

so on error for channel N we leave N-1 channels initialized?

> +static int uniphier_xdmac_remove(struct platform_device *pdev)
> +{
> +	struct uniphier_xdmac_device *xdev = platform_get_drvdata(pdev);
> +	struct dma_device *ddev = &xdev->ddev;
> +	struct dma_chan *chan;
> +	int ret;
> +
> +	/*
> +	 * Before reaching here, almost all descriptors have been freed by the
> +	 * ->device_free_chan_resources() hook. However, each channel might
> +	 * be still holding one descriptor that was on-flight at that moment.
> +	 * Terminate it to make sure this hardware is no longer running. Then,
> +	 * free the channel resources once again to avoid memory leak.
> +	 */
> +	list_for_each_entry(chan, &ddev->channels, device_node) {
> +		ret = dmaengine_terminate_sync(chan);
> +		if (ret)
> +			return ret;
> +		uniphier_xdmac_free_chan_resources(chan);

terminating sounds okayish but not freeing here. .ree_chan_resources()
should have been called already and that should ensure that termination
is already done...

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
