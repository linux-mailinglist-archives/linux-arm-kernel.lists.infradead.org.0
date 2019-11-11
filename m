Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A45F6E6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 07:10:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37SNRJR1GIFzMqXWoAeJYTFDjufzSCwjrvdBujg0GBg=; b=hv3OEupk1d2vVx
	N05klhks/0oLiAwBWy1lkwTPqVUI7MH4DyDcldfq3PT4yv9BYBk6b8NzOxPwIfvTsEjJlaJLmK4+9
	nmce/AdKiVqzDgeESVd1tnazNMS9txme6CkNutYQ/yPbsdxqfPM4lLTFXMyUJR0jk6xFYfccL8How
	wm2kBMW7wVBVl87QyfOrVrI/dkY6NNbiQIvqdo+UR9ZsCETfnkCoYMmllFyS505CStqwa3U1OF6Dn
	JaFixdTIwy8LdmB1Pd+7tUueWniPWRibVfBwD8AnifqMmpFAFWxOsxZUgPmgZ2/TupCfPqbdhGLYs
	LkvYrAiJ5Ts+RW6XXAiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU2tm-0000ID-1e; Mon, 11 Nov 2019 06:10:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU2tb-0000Hi-4d
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 06:09:52 +0000
Received: from localhost (unknown [106.201.42.77])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1DDDF20679;
 Mon, 11 Nov 2019 06:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573452590;
 bh=qgj3ToNBsbbCIzf/cArvU0XfhuPYM0eDrqW+5UsfeMs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ehTDjrENf8AQoSP7oLkpm+Br34A+/wWRwJ0GSd5MLZResRbCwvtv13ZUU2Fpb9EIC
 dkBGrJfaWXZdAitp6fLDHCnn12aTSRm+xIO6qYmXArcEk7ckD1DWZIGthGufIDyVCF
 cpl28NaY67WaBvQ97FkwOSQuxzm/KId345SahEAI=
Date: Mon, 11 Nov 2019 11:39:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 12/15] dmaengine: ti: New driver for K3 UDMA -
 split#4: dma_device callbacks 1
Message-ID: <20191111060943.GQ952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-13-peter.ujfalusi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101084135.14811-13-peter.ujfalusi@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_220951_202870_BEA499DB 
X-CRM114-Status: UNSURE (   7.20  )
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

> +/* Not much yet */

?

> +static enum dma_status udma_tx_status(struct dma_chan *chan,
> +				      dma_cookie_t cookie,
> +				      struct dma_tx_state *txstate)
> +{
> +	struct udma_chan *uc = to_udma_chan(chan);
> +	enum dma_status ret;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&uc->vc.lock, flags);
> +
> +	ret = dma_cookie_status(chan, cookie, txstate);
> +
> +	if (!udma_is_chan_running(uc))
> +		ret = DMA_COMPLETE;

so a paused channel will result in dma complete status?

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
