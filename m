Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B5610FB09
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 10:48:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZnHa49eyDe/8iVsuOJom73sNrYMcKTD/jbV6Niu2I8=; b=U7UsY9OI5aWX4O
	ICkKnG/iHYiilmLRbl+Ev9FUI/jDZdpXrus+0vqdo+54/U4HnCcpUy1Dxg96BOaoPRQBiNAZTmRO+
	TKBQ99xmIS+TW6W9mTYpqhr6W3sn8tTeBzET9QGXd0l2p8ie/feg4oR/YG48mA4XgRpzB37aKkh2L
	yyYfcfAqOEhZ+dxy5shPhjLQJ1/k3YcO8x6q5H4hD8NTkgMD0PuXeuoCqVTqMwmjVSx8tq1ia8ZqV
	mKEZ4L77kvy5phO/lrosaQLSe7mQOWQsfXMaCjEqEL7HvSGyEioTH+MG3mB/g4laklNzHbLqaVrwz
	BHsfftyQ1X5mYmGbWpZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic4my-0005iV-IV; Tue, 03 Dec 2019 09:48:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic4mq-0005hy-Ul
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 09:48:06 +0000
Received: from kresse.hi.pengutronix.de ([2001:67c:670:100:1d::2a])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1ic4mb-0003Hm-Py; Tue, 03 Dec 2019 10:47:49 +0100
Message-ID: <9e210702979c45c11d16bf5df97b75863da587d0.camel@pengutronix.de>
Subject: Re: [PATCH v5 1/3] dmaengine: imx-sdma: fix buffer ownership
From: Lucas Stach <l.stach@pengutronix.de>
To: Philipp Puschmann <philipp.puschmann@emlix.com>, 
 linux-kernel@vger.kernel.org
Date: Tue, 03 Dec 2019 10:47:48 +0100
In-Reply-To: <20190923135808.815-2-philipp.puschmann@emlix.com>
References: <20190923135808.815-1-philipp.puschmann@emlix.com>
 <20190923135808.815-2-philipp.puschmann@emlix.com>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::2a
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_014804_992892_B7F80D3A 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: fugang.duan@nxp.com, jlu@pengutronix.de, festevam@gmail.com,
 s.hauer@pengutronix.de, vkoul@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 yibin.gong@nxp.com, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mo, 2019-09-23 at 15:58 +0200, Philipp Puschmann wrote:
> BD_DONE flag marks ownership of the buffer. When 1 SDMA owns the
> buffer, when 0 ARM owns it. When processing the buffers in
> sdma_update_channel_loop the ownership of the currently processed
> buffer was set to SDMA again before running the callback function of
> the buffer and while the sdma script may be running in parallel. So
> there was the possibility to get the buffer overwritten by SDMA
> before
> it has been processed by kernel leading to kind of random errors in
> the
> upper layers, e.g. bluetooth.
> 
> Fixes: 1ec1e82f2510 ("dmaengine: Add Freescale i.MX SDMA support")
> Signed-off-by: Philipp Puschmann <philipp.puschmann@emlix.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
> 
> Changelog v5:
>  - no changes
> 
> Changelog v4:
>  - fixed the fixes tag
>  
> Changelog v3:
>  - use correct dma_wmb() instead of dma_wb()
>  - add fixes tag
> 
> Changelog v2:
>  - add dma_wb()
>  
>  drivers/dma/imx-sdma.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
> index 9ba74ab7e912..b42281604e54 100644
> --- a/drivers/dma/imx-sdma.c
> +++ b/drivers/dma/imx-sdma.c
> @@ -802,7 +802,6 @@ static void sdma_update_channel_loop(struct
> sdma_channel *sdmac)
>  		*/
>  
>  		desc->chn_real_count = bd->mode.count;
> -		bd->mode.status |= BD_DONE;
>  		bd->mode.count = desc->period_len;
>  		desc->buf_ptail = desc->buf_tail;
>  		desc->buf_tail = (desc->buf_tail + 1) % desc->num_bd;
> @@ -817,6 +816,9 @@ static void sdma_update_channel_loop(struct
> sdma_channel *sdmac)
>  		dmaengine_desc_get_callback_invoke(&desc->vd.tx, NULL);
>  		spin_lock(&sdmac->vc.lock);
>  
> +		dma_wmb();
> +		bd->mode.status |= BD_DONE;
> +
>  		if (error)
>  			sdmac->status = old_status;
>  	}


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
