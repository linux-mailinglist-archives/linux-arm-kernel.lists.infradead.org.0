Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83429FC058
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 07:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=evgi8woyDTdRFJL9b6xRu1xyWBK2AqwcuP6kYVi1zFg=; b=qFXqFMuct5APNF
	IokrUCG2U+CTFyB5bF4CN8uHHhSPZSWfXpcFHuRAsUEI3tT69DonTgAd9CF7h3pQ3LIDw8KOtqICD
	Ee0N7EekTxQHE0D/r/FBTUYJn1gq98fJCskeGzp/ijgm+XZoZvYW7DWAT3dhCrqj88nEmXvhwCvaE
	KJpvYM/1MtaaFNzMRnA7w5uSjuOhrf7fzTuutF1VldgQhRcRv3PKGM0CiPibPCmWk1yPqIPRjCyWF
	hxRTJE7NZypdpsQR8rWYeuJAjqJMLm4psoXdA4wVADCu9fpXBTR4qEDqwodJ3WMXQGdWkPcEBOtm+
	H4dPsa+dV+1HLtaZvWwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV8sy-0001An-Lu; Thu, 14 Nov 2019 06:45:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV8sp-0001AF-Ht
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 06:45:36 +0000
Received: from localhost (unknown [223.226.110.181])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F6E120715;
 Thu, 14 Nov 2019 06:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573713935;
 bh=NI0BNW4CQQr9LgH0Ss7MkLNdKC1BPofEObcRVGKZmt4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bqXeNC0DK2IP2Jbg/fJB5IV14pqzVRXIiibVY2ax6OzPt/nNx3u8jEjUnYXiHyFRi
 LJJoi5dih3QXTuvxshKCSXPDKgGTMDaq0RJ/wINppuudc93MHdLusa1tISYkw5YiCM
 tUAOCCa9eTvSR9vyXZRtMWEZV95l6c9DidPLzLWA=
Date: Thu, 14 Nov 2019 12:15:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Pan Bian <bianpan2016@163.com>
Subject: Re: [PATCH] dmaengine: sun6i: Fix use after free
Message-ID: <20191114064514.GO952516@vkoul-mobl>
References: <1573126013-17609-1-git-send-email-bianpan2016@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573126013-17609-1-git-send-email-bianpan2016@163.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_224535_611200_51498BD5 
X-CRM114-Status: GOOD (  15.40  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07-11-19, 19:26, Pan Bian wrote:
> The members in the LLI list is released in an incorrect way. Read and
> store the next member before releasing it to avoid accessing the freed
> memory.
> 
> Fixes: a90e173f3faf ("dmaengine: sun6i: Add cyclic capability")
> 
> Signed-off-by: Pan Bian <bianpan2016@163.com>
> ---
>  drivers/dma/sun6i-dma.c | 20 ++++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/dma/sun6i-dma.c b/drivers/dma/sun6i-dma.c
> index 06cd7f867f7c..096aad7e75bb 100644
> --- a/drivers/dma/sun6i-dma.c
> +++ b/drivers/dma/sun6i-dma.c
> @@ -687,7 +687,7 @@ static struct dma_async_tx_descriptor *sun6i_dma_prep_slave_sg(
>  	struct sun6i_dma_dev *sdev = to_sun6i_dma_dev(chan->device);
>  	struct sun6i_vchan *vchan = to_sun6i_vchan(chan);
>  	struct dma_slave_config *sconfig = &vchan->cfg;
> -	struct sun6i_dma_lli *v_lli, *prev = NULL;
> +	struct sun6i_dma_lli *v_lli, *next, *prev = NULL;
>  	struct sun6i_desc *txd;
>  	struct scatterlist *sg;
>  	dma_addr_t p_lli;
> @@ -752,8 +752,12 @@ static struct dma_async_tx_descriptor *sun6i_dma_prep_slave_sg(
>  	return vchan_tx_prep(&vchan->vc, &txd->vd, flags);
>  
>  err_lli_free:
> -	for (prev = txd->v_lli; prev; prev = prev->v_lli_next)
> -		dma_pool_free(sdev->pool, prev, virt_to_phys(prev));
> +	v_lli = txd->v_lli;
> +	while (v_lli) {
> +		next = v_lli->v_lli_next;
> +		dma_pool_free(sdev->pool, v_lli, virt_to_phys(v_lli));
> +		v_lli = next;

Have you seen this issue, a panic trace? Has some static checker flagged
this?

I see the code *seems* equivalent. The prev is assigned to txd->v_lli,
checked and then code block will be executed and updated. When do you
see the case when we access freed memory?

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
