Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 659D95E922
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 18:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WerapnVAO2urpF9J6QFI+VDNcF5XojxhkLPxzsXHgxY=; b=ANK5hKSF0rxmgD
	X7Kn3+tNwtljtovoh4+wHp2bth6fP4Kri4AZ6Mbred2wFGJG6f033Fq8cT5oxDgVMFAPcWOKCsaOk
	QHKepaqyaK9qFu2zmKcDGP2YKatbSbbFGgrZW6+Q7TVlJDZjk5NyMYquknYfpecFdCiw1QyOuv55d
	P51hgjEiEbk76tiGPa/7oWdm1cRXFuTrWoc84LVhucIZKNlu2cC1OJzPoexmV8cNR925krT7dqHTn
	S2kvdPOQV8SiXEQFz5zHEe7W5hHriDpZmZmdvsUqTf0gQQn6cgTjBURYq3mNT+YRwn6/tCCb641AS
	Zmy2ZWDcSGRzEOdvR9AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiBe-000120-Om; Wed, 03 Jul 2019 16:32:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiBP-00011O-V0; Wed, 03 Jul 2019 16:32:37 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5FB002187F;
 Wed,  3 Jul 2019 16:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562171554;
 bh=8hkx9D6cVHuLlyuoRR6plS3cZoqyazckirKKEEaVDhc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HlXDW6vx8wTFxhwAjRJH4wSDIXbJZ3SjmBvcvttiyLCS63EFVOW8+dJPOytcTUxD4
 dIv7CTcdJKQrr2CVJHK32yAfvGXwaHezOLLG7CvxC4ztyPsXl7CsCKC3nJ3+MiTBtk
 vwyZ4dKaKJ/Y08WQBFNAg/BcSzS9zX0nRZy79KOk=
Date: Wed, 3 Jul 2019 18:32:32 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: fatihaltinpinar@gmail.com
Subject: Re: [PATCH] Staging: mt7621-dma: mtk-hsdma: fix a coding style issue
Message-ID: <20190703163232.GA29325@kroah.com>
References: <20190702080632.27470-1-fatihaltinpinar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702080632.27470-1-fatihaltinpinar@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_093236_018288_E2CB893E 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: matthias.bgg@gmail.com, devel@driverdev.osuosl.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 02, 2019 at 11:06:32AM +0300, fatihaltinpinar@gmail.com wrote:
> From: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
> 
> Fixed a coding style issue. Removed curly brackets of an one
> line if statement.
> 
> Signed-off-by: Fatih ALTINPINAR <fatihaltinpinar@gmail.com>
> ---
>  drivers/staging/mt7621-dma/mtk-hsdma.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
> index 0fbb9932d6bb..a58725dd2611 100644
> --- a/drivers/staging/mt7621-dma/mtk-hsdma.c
> +++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
> @@ -664,9 +664,8 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
>  		return -EINVAL;
>  
>  	hsdma = devm_kzalloc(&pdev->dev, sizeof(*hsdma), GFP_KERNEL);
> -	if (!hsdma) {
> +	if (!hsdma)
>  		return -EINVAL;
> -	}
>  
>  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	base = devm_ioremap_resource(&pdev->dev, res);

This change is already in my tree, always be sure to work against the
proper kernel tree for doing new development.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
