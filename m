Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F83F6E27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 06:33:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UAVuZzHeBRAoehsThOxxxPECAh22bw/EDiW83Gm/FHo=; b=k0rQKO9c/W8fKo
	STeCD6fynA2tXv+zsFxp0i7yX9QwuR+vSbGsppK8JOjzbklIIkgcg8urAXwMEvZWQzTTNX8Ezre0L
	pFTPhRF31YhPcBWtVYKlVC3wKrlRahZDhSj3YV2avfw7IU5pPw9PA3f6GTOhjP3mNrgpiosYniW4D
	Sq/YSShnH3LbSZpfLmhDSf2eeLqPhlhIbN6yJPti2ym5jmbU1aYLlbE+j3XZETCOj0joqMdlgR6Rj
	/YtdmDiGQzjZUPVog5Ex5gXEUiBl2aI4tNpxzdk9iYAMjotNj1lSAqvchF8kGQUBt5XrkbLqICbTO
	F7LsBIsCwqIbMB9kyoYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2KF-0003li-NF; Mon, 11 Nov 2019 05:33:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2K5-0003lA-OZ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 05:33:10 +0000
Received: from localhost (unknown [106.201.42.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BEA32084F;
 Mon, 11 Nov 2019 05:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573450389;
 bh=DwdNdotJjKRBotkgqG0AIy+E8ZCiOTVy/UNvW4JpNsI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ABZSn1q21qj5r9squHwS0oGuOYuynXB490X8qzW1Pxzbm1pafmfecgT+HR33T4pA6
 jOmzmzgPP5MDBO/ttPB0N4R17asILBNmijo1DxkuuMbnHDaJ7PJEmqJFjwkGCUabxX
 Fp4C98Qcdj/94tnt+JN/0mgZux3id9o8wQryUzmI=
Date: Mon, 11 Nov 2019 11:03:01 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 10/15] dmaengine: ti: New driver for K3 UDMA -
 split#2: probe/remove, xlate and filter_fn
Message-ID: <20191111053301.GO952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-11-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101084135.14811-11-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_213309_818473_CF7647DF 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 01-11-19, 10:41, Peter Ujfalusi wrote:

> +static bool udma_dma_filter_fn(struct dma_chan *chan, void *param)
> +{
> +	struct psil_endpoint_config *ep_config;
> +	struct udma_chan *uc;
> +	struct udma_dev *ud;
> +	u32 *args;
> +
> +	if (chan->device->dev->driver != &udma_driver.driver)
> +		return false;
> +
> +	uc = to_udma_chan(chan);
> +	ud = uc->ud;
> +	args = param;
> +	uc->remote_thread_id = args[0];
> +
> +	if (uc->remote_thread_id & K3_PSIL_DST_THREAD_ID_OFFSET)
> +		uc->dir = DMA_MEM_TO_DEV;
> +	else
> +		uc->dir = DMA_DEV_TO_MEM;

Can you explain this a bit?

> +static int udma_remove(struct platform_device *pdev)
> +{
> +	struct udma_dev *ud = platform_get_drvdata(pdev);
> +
> +	of_dma_controller_free(pdev->dev.of_node);
> +	dma_async_device_unregister(&ud->ddev);
> +
> +	/* Make sure that we did proper cleanup */
> +	cancel_work_sync(&ud->purge_work);
> +	udma_purge_desc_work(&ud->purge_work);

kill the vchan tasklets at it too please
-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
