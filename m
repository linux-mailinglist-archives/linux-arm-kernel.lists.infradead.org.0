Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414FBF039A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 17:59:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A/NUhZweXn7UEYh+BVPNxiVwEHyHa5xEP0DheUVshpw=; b=Q6Ug21U8ZeoYLP
	V4VNIxZbLkKsfgBChglgGCSwEQFzNEdsLbD7uX3ZIEWjk1Qs7zTcsB4CNyEKhyzJoFUka0Jj4LpOU
	iQe+XGYWeP+WaBOR2h+VTFuArpKDf9B9IzNNCN8y0hFzvTZ5wDl6VacnmsE7DUuqH//jlfdVRdkMg
	ZD1lotpT6UkjrVz864H8o4EJdtKeFrQbOLGwnGjzUHqrGPsZUYel50wXwfi82hjJ4c5q0jTkLBlN+
	JF6WgWdYcR1eqEDNPZRJN65M9uk5p7DWwPLzABZDzRTQMK6GpNns1hXjjG5gH9iWWzAoDTBy8w9ML
	Bgy6RTp7w23FVGnylt7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2Aw-0005eK-MM; Tue, 05 Nov 2019 16:59:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2Ao-0005dd-Lb; Tue, 05 Nov 2019 16:59:19 +0000
Received: from localhost (unknown [106.51.111.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D34021A4A;
 Tue,  5 Nov 2019 16:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572973158;
 bh=itwzwaA2ErwVFDiuv4xl5wSZcNBirWKCcH6Avyv9N4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YDUDBCjsItEUpV5Gqb29mUUO5bG1m8ZfXTJp3VzatnORLr8ABr+EiIKbBSckn5Cxn
 5rgrW0vvyGqbV92OeJVZ05R70IMP46UAC5KV2Cm6goJyMcIO9ZZNYoNkxsnvjPWa8f
 ew+q4NkTJylfxWZ5JOcDcM+0py0xE3dqA3YBTueE=
Date: Tue, 5 Nov 2019 22:29:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Satendra Singh Thakur <sst2005@gmail.com>
Subject: Re: [PATCH] dma/mediatek-hs/probe: Fixed a memory leak when
 devm_request_irq fails
Message-ID: <20191105165914.GD952516@vkoul-mobl>
References: <20191024044320.1097-1-sst2005@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024044320.1097-1-sst2005@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_085918_725320_82333A73 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-10-19, 10:13, Satendra Singh Thakur wrote:
> When devm_request_irq fails, currently, the function
> dma_async_device_unregister gets called. This doesn't free
> the resources allocated by of_dma_controller_register.
> Therefore, we have called of_dma_controller_free for this purpose.

Please revise this one as well!

> 
> Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
> ---
>  drivers/dma/mediatek/mtk-hsdma.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/mediatek/mtk-hsdma.c b/drivers/dma/mediatek/mtk-hsdma.c
> index 1a2028e1c29e..4c58da742143 100644
> --- a/drivers/dma/mediatek/mtk-hsdma.c
> +++ b/drivers/dma/mediatek/mtk-hsdma.c
> @@ -997,7 +997,7 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
>  	if (err) {
>  		dev_err(&pdev->dev,
>  			"request_irq failed with err %d\n", err);
> -		goto err_unregister;
> +		goto err_free;
>  	}
>  
>  	platform_set_drvdata(pdev, hsdma);
> @@ -1006,6 +1006,8 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
>  
>  	return 0;
>  
> +err_free:
> +	of_dma_controller_free(pdev->dev.of_node);
>  err_unregister:
>  	dma_async_device_unregister(dd);
>  
> -- 
> 2.17.1

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
