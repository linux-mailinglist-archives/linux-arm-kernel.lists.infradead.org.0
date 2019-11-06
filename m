Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E3AF1AA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 17:00:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pfnZT7KixhMd/udGVQWHFa152IeS0C+LkL7Fm+M41E=; b=WtNjIM3xUCqtt7
	Fg/kPEORyqbp9CmOHJMPs+C+2NleOJyFbcVaeOJ43mGuy6/xtqNVcLe8CkaZiQxRRNomd0TOFtfSh
	yn9MooeSPkZroCTbMz10t9mmwvMVhFpx61hTo6shPa19LyS6yL+KciPfI+1Dqeqgrk6OXDWCPPn4o
	97ppBNoSyZs392RrfWwmB7SWxVf1v9+pk1L8NKVwk65wjfw5N8V2+2QgFRLjIky91DFXEZ0O6LlPf
	+hSFmcKUaKtTYU9qhuXkPcq9rBSzl9nX5PN5NTwi6V5g43dHvr0XXuPHw5lmUj6kF7Fr3aoJlN5iv
	+mBK817aHGKH9XmwN4qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNjT-0000X7-Lj; Wed, 06 Nov 2019 16:00:31 +0000
Received: from mailoutvs23.siol.net ([185.57.226.214] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNj7-0007t0-Lb
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 16:00:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 44D93521596;
 Wed,  6 Nov 2019 17:00:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id obZsmNfd8f1h; Wed,  6 Nov 2019 17:00:01 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 844B05212D8;
 Wed,  6 Nov 2019 17:00:01 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id D8C49520498;
 Wed,  6 Nov 2019 16:59:57 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH -next] media: sun8i: Remove redundant dev_err call in
 deinterlace_probe()
Date: Wed, 06 Nov 2019 16:59:57 +0100
Message-ID: <33629436.gII23uOffu@jernej-laptop>
In-Reply-To: <20191106153213.13752-1-weiyongjun1@huawei.com>
References: <20191106153213.13752-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_080009_909909_2C186948 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.214 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sreda, 06. november 2019 ob 16:32:12 CET je Wei Yongjun napisal(a):
> There is a error message within devm_ioremap_resource
> already, so remove the dev_err call to avoid redundant
> error message.
> 
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej

> ---
>  drivers/media/platform/sunxi/sun8i-di/sun8i-di.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
> b/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c index
> aaa1dc159ac2..b61f3dea7c93 100644
> --- a/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
> +++ b/drivers/media/platform/sunxi/sun8i-di/sun8i-di.c
> @@ -834,11 +834,8 @@ static int deinterlace_probe(struct platform_device
> *pdev)
> 
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	dev->base = devm_ioremap_resource(&pdev->dev, res);
> -	if (IS_ERR(dev->base)) {
> -		dev_err(dev->dev, "Failed to map registers\n");
> -
> +	if (IS_ERR(dev->base))
>  		return PTR_ERR(dev->base);
> -	}
> 
>  	dev->bus_clk = devm_clk_get(dev->dev, "bus");
>  	if (IS_ERR(dev->bus_clk)) {





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
