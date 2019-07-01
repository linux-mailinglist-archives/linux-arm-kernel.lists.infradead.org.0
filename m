Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 462535B3C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 06:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xtJ8tYYjIVEEq6YUGn7+ZcHT2RIyFVNY8EF0gLOwB1U=; b=ugHp8B+hbADFgZ
	3C2mbHWTjuXYjK8rxp3Cn8L3qzgYhVZnZnvnoQiFypwqnZjaz6mwXg5hhpIsboaezAAiZ81tC6x0z
	oLVX0PivZHiDButtf7OdTqbPKs8YO3x2/TxYSBhynWF9kPSdYI8ObCROHoo8UG6vegeur26bSJ3iv
	jHEII8GLRfNKbYYrG/w16PMiBf3l8LfIjrBZ9/jmd9EO2RFrH7t3kJ/njzA4uE8R+dbZJysL/hzcx
	RzZLnjfUBZXo6ZzVkex9vCbUGoU4dK0RibGSTyb90bpu9uPNzrEai75PAjoYjXzNBz6eJGkHlD2ZI
	AONP8K4WBBT8UWhufqYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhoOG-0004b4-9T; Mon, 01 Jul 2019 04:58:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhoO0-0004aa-Eb
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 04:57:53 +0000
Received: from localhost (unknown [122.167.76.109])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 059FD208E4;
 Mon,  1 Jul 2019 04:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561957071;
 bh=Xoo66K/G7tcXAmjXGTmitRGCFyxgVt2d479uVZAiUpo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=1pOjHruXzLwzMCPIasWt3ujiDoE1q3JURU5+mwfNEZTqecdT0+TkspW//60OUJq1m
 1pN5yUlaCNm71cv6rmBxMFtzhyDNEbcINKK0DzXPztRRr1KfIxfy+L5fKF9ZswnzOe
 NIqXYqNIXB2J2Dt/P77Guw+sjH1KU/xS6cTsXEdY=
Date: Mon, 1 Jul 2019 10:24:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Fuqian Huang <huangfq.daxian@gmail.com>
Subject: Re: [PATCH 12/87] dma: imx-sdma: Remove call to memset after
 dma_alloc_coherent
Message-ID: <20190701045443.GI2911@vkoul-mobl>
References: <20190627173536.2457-1-huangfq.daxian@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627173536.2457-1-huangfq.daxian@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_215752_508149_89B734C6 
X-CRM114-Status: GOOD (  14.63  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28-06-19, 01:35, Fuqian Huang wrote:
>     In commit af7ddd8a627c
> ("Merge tag 'dma-mapping-4.21' of git://git.infradead.org/users/hch/dma-mapping"),
>     dma_alloc_coherent has already zeroed the memory.
>     So memset is not needed.

Please point to the exact commit and not the merge commit. Hint use git
blame on that file...

> 
> Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
> ---
>  drivers/dma/imx-sdma.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index 99d9f431ae2c..54d86359bdf8 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -1886,10 +1886,6 @@ static int sdma_init(struct sdma_engine *sdma)
>  	sdma->context_phys = ccb_phys +
>  		MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control);
>  
> -	/* Zero-out the CCB structures array just allocated */
> -	memset(sdma->channel_control, 0,
> -			MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control));
> -
>  	/* disable all channels */
>  	for (i = 0; i < sdma->drvdata->num_events; i++)
>  		writel_relaxed(0, sdma->regs + chnenbl_ofs(sdma, i));
> -- 
> 2.11.0

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
