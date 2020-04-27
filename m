Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D0D1BA045
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:46:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YylBMAPiv7WdNuPAt+u2Ja5go3EAYOcPkyVDWbJKiD4=; b=ryVVJ+TT+vjZif
	CQS9yKstHCG7u0mUqwgXlmoKSxn+n10HeIA5vYo+804qQdlplkCbcuD38jNoy0/VPpPYVEFJY/Bl3
	jkX90ZMdprZ3roUt912f3ZuiCobEN3LyJAk7iJNQXDfNSZ5Qw8k9zfn26UZ1Q1lLSp++ItmqbVsBL
	5S4AQ0OnikGGxWoUtC+Am3oFJezcMIHIKrRIkM0+cvbysHkbwJd6vku3aOgop7/y9hvBI2bT6KC+l
	rH+POjaxx89RsTyYj5+nceJnJLKzP/qwIiM5Lb6BSnJFvRbvHNpoPLc+M9ANexbaX8m9zD6sJwaRl
	YEf+S0K+N/HZOvi7vyXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0Ld-00045o-Pp; Mon, 27 Apr 2020 09:46:45 +0000
Received: from first.geanix.com ([116.203.34.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0L9-0003ti-Ke
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:46:17 +0000
Received: from localhost (87-49-45-242-mobile.dk.customer.tdc.net
 [87.49.45.242])
 by first.geanix.com (Postfix) with ESMTPSA id 750221F60926;
 Mon, 27 Apr 2020 09:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=geanix.com; s=first;
 t=1587980771; bh=AwtusWpYt0LjMAEEufQD2qMu5uEH4zwOOrUFXhxnuNo=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To;
 b=A1BmdL+VtH0e0/3aFPtJlxa6fTvYjW4SNEsJQrx3/q3i87z27fb3KcWUDicBz1b/b
 AUUvhQH4zT5Kgt/u/HpT/cN6kImVutqs9cyBWkLVezLWstRpuXVrrEZbPPnEOMr2k/
 eCTOTYngvFURE9wY2gcdvQkiDCTURK4uUNHCQOsiC5V2Hux9r6Acxs+yim/MrDQU1O
 XS8XThsWPcqd+DAqY/Z3BZZPHQMV6NUReVKIBMF36FPAGfz8lZll02r2ic4LU2fPvH
 WBnRj1ViXSsnisSuaLvOR1LnCrHHrp42jvd9iVu38wmGelUGiPFCBCZRMW451xz1vi
 aEtUjg3Y13/8Q==
From: Esben Haabendal <esben@geanix.com>
To: Wei Yongjun <weiyongjun1@huawei.com>
Subject: Re: [PATCH net-next] net: ll_temac: Fix return value check in
 temac_probe()
References: <20200427094052.181554-1-weiyongjun1@huawei.com>
Date: Mon, 27 Apr 2020 11:46:10 +0200
In-Reply-To: <20200427094052.181554-1-weiyongjun1@huawei.com> (Wei Yongjun's
 message of "Mon, 27 Apr 2020 09:40:52 +0000")
Message-ID: <87sggpp8gt.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-Spam-Status: No, score=-3.1 required=4.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,URIBL_BLOCKED
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on 581450de519a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_024616_273156_9894CCF2 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: andrew@lunn.ch, netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 michal.simek@xilinx.com, ynezz@true.cz, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Esben Haabendal <esben@geanix.com>

Wei Yongjun <weiyongjun1@huawei.com> writes:

> In case of error, the function devm_ioremap() returns NULL pointer
> not ERR_PTR(). The IS_ERR() test in the return value check should
> be replaced with NULL test.
>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/net/ethernet/xilinx/ll_temac_main.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
> index 3e313e71ae36..929244064abd 100644
> --- a/drivers/net/ethernet/xilinx/ll_temac_main.c
> +++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
> @@ -1410,9 +1410,9 @@ static int temac_probe(struct platform_device *pdev)
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	lp->regs = devm_ioremap(&pdev->dev, res->start,
>  					resource_size(res));
> -	if (IS_ERR(lp->regs)) {
> +	if (!lp->regs) {
>  		dev_err(&pdev->dev, "could not map TEMAC registers\n");
> -		return PTR_ERR(lp->regs);
> +		return -ENOMEM;
>  	}
>  
>  	/* Select register access functions with the specified
> @@ -1505,10 +1505,10 @@ static int temac_probe(struct platform_device *pdev)
>  		res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
>  		lp->sdma_regs = devm_ioremap(&pdev->dev, res->start,
>  						     resource_size(res));
> -		if (IS_ERR(lp->sdma_regs)) {
> +		if (!lp->sdma_regs) {
>  			dev_err(&pdev->dev,
>  				"could not map DMA registers\n");
> -			return PTR_ERR(lp->sdma_regs);
> +			return -ENOMEM;
>  		}
>  		if (pdata->dma_little_endian) {
>  			lp->dma_in = temac_dma_in32_le;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
