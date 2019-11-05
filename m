Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B558AF0397
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 17:59:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xj1Vgxee1NzPpouPeimThTo9LX+/1VLWJBKYH5mVVqo=; b=BGfcabXo/m0ZRG
	kCDN5A7ILkXvg8xwMCFD8dbdXiyVaoXVlr0oQ5h0raVM/T3uT6rx/lrXCxMowQou4S+dgelq/Zeec
	1LCXP5bPEpK+L6uPxE1zPyqZPyKKxoaeGUGUpUkbHZ/Z7G2PYDQnthZaJgFTKfYJPNxUUydgSG5Ad
	y95XI5nwAhsd+UC5t8n7O347ZZnN6jZjXvcsyN2euxsYduICIOxjtZSZY2twulQZj6H1uhPli7ECy
	8v5Zx7A1k52d3F0g++Bnu9ZHHQmn/85lAL0tP3L9/umbVSNkQ5sqvimTPhGbZRpjh4A2TJcGTnimb
	oGWxql9DqjZTffOPYgGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS2Ae-0005Os-Aw; Tue, 05 Nov 2019 16:59:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS2AW-0005Nq-UB
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 16:59:02 +0000
Received: from localhost (unknown [106.51.111.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6691E21A4A;
 Tue,  5 Nov 2019 16:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572973140;
 bh=/A2do6Mf/FPqPLM4v479lgV7kRc8ywC8Z/ymYhp6rms=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OFavqygrYcNdBWeIIKwJ+n+eOg6AKPGmrReLitjDZaCiWkjp+0njB3pWCDHKLFZTP
 SysI8QrUX1MoPkun18JjrtBovD5bHCDytIt/aJPY+SQGRy49gplo1SuPo5fPOQqzhu
 9iovrOO5Y3/2qhmWoliPXUHB5T4SYIfeTzTk/py0=
Date: Tue, 5 Nov 2019 22:28:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Satendra Singh Thakur <sst2005@gmail.com>
Subject: Re: [PATCH] dma/zx/remove: Removed dmam_pool_destroy from remove
 method
Message-ID: <20191105165855.GC952516@vkoul-mobl>
References: <20191024041623.24658-1-sst2005@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191024041623.24658-1-sst2005@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_085900_992698_27BB57A1 
X-CRM114-Status: GOOD (  13.59  )
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
Cc: linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 Jun Nie <jun.nie@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-10-19, 09:46, Satendra Singh Thakur wrote:
> In the probe method dmam_pool_create is used. Therefore, there is no
> need to explicitly call dmam_pool_destroy in remove method as this
> will be automatically taken care by devres

Please do not reinvent system tags, git log is your friend to check for
the tags to be used.

In this case, it is dmaengine: zx: remove ...


> 
> Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
> ---
>  drivers/dma/zx_dma.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/dma/zx_dma.c b/drivers/dma/zx_dma.c
> index 9f4436f7c914..7e4e457ac6d5 100644
> --- a/drivers/dma/zx_dma.c
> +++ b/drivers/dma/zx_dma.c
> @@ -894,7 +894,6 @@ static int zx_dma_remove(struct platform_device *op)
>  		list_del(&c->vc.chan.device_node);
>  	}
>  	clk_disable_unprepare(d->clk);
> -	dmam_pool_destroy(d->pool);
>  
>  	return 0;
>  }
> -- 
> 2.17.1

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
