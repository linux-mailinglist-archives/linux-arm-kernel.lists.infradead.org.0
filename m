Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D1612987F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 16:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D15cYTBjFoglGQvTPHKs5fM8WdL4Jb2dBTFfatFvCYo=; b=CdPmmPV8U+kpmy
	y/msa49td0xxPsRskgtNiHAgMZA3smwSsTNVfVpDgXODaNFzwzh7jfRmi/GoJyueeArYhjVyMGUMD
	OCPMtGhia/+TTkRjAAio9XvRsRBsaPePYRm72cwnJguDi80ccrxwtpr7w3+wSkKXya+HehqBxjnfM
	3RfKqOwt39IsraoXH0os/zMYhRi23e1+s69IE2FVWErPBgQFFi7cWUt6Pnw23Wu/P7oLculcZkfy0
	dDZ8DnG2+18/5MHUDD/wscb3iAQZO+pN3PRrg0EH3e7EyMMuBpY0FIlf3HfoR8kD83cD6xhSJu0fX
	8CUtEKnlYG24v6MuE9Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijPyL-00010j-3L; Mon, 23 Dec 2019 15:50:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijPyA-0000bv-Le
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 15:50:08 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBEEE20663;
 Mon, 23 Dec 2019 15:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577116206;
 bh=RMoTjXwZcjIZ4sWdkpbd+CDNN2WUkeQnAYsgLbSVu54=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=FDm6HjWvnEvmXVY0d+ZFGhVyJKlxV+7EhJpQtv6xEMM41psUFVFCb57loxIJZgKiJ
 8ESQcAoSB6lRrFp44fsrTaQP6YSbeMkKuLIiIstmeTo2dJg78X7g2ywMc2LZiExtCp
 /Ukdrs/au3+oxV4Rfu/LE4M+uEPDymjU8xXO+It8=
Date: Mon, 23 Dec 2019 15:50:01 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v2] iio: adc: at91-sama5d2_adc: Use dma_request_chan()
 instead dma_request_slave_channel()
Message-ID: <20191223155001.3c4c7261@archlinux>
In-Reply-To: <20191217103100.21737-1-peter.ujfalusi@ti.com>
References: <20191217103100.21737-1-peter.ujfalusi@ti.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_075006_744470_8A11D1CA 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-iio@vger.kernel.org, ludovic.desroches@microchip.com,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, eugen.hristev@microchip.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 17 Dec 2019 12:31:00 +0200
Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:

> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
Unfortunately that doesn't seem to be true.
The function in question returns void...

And for that matter is called only from the set_watermark callback which
doesn't run at probe time.

So if we were to get a deferred response at runtime there isn't a whole
lot we could do with it.

Jonathan



> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
> Hi,
> 
> Changes since v1:
> - Subject prefix is corrected to "iio: adc: at91-sama5d2_adc:"
> 
> Regards,
> Peter
> 
>  drivers/iio/adc/at91-sama5d2_adc.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index e1850f3d5cf3..a5c7771227d5 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -1444,10 +1444,10 @@ static void at91_adc_dma_init(struct platform_device *pdev)
>  	if (st->dma_st.dma_chan)
>  		return;
>  
> -	st->dma_st.dma_chan = dma_request_slave_channel(&pdev->dev, "rx");
> -
> -	if (!st->dma_st.dma_chan)  {
> +	st->dma_st.dma_chan = dma_request_chan(&pdev->dev, "rx");
> +	if (IS_ERR(st->dma_st.dma_chan))  {
>  		dev_info(&pdev->dev, "can't get DMA channel\n");
> +		st->dma_st.dma_chan = NULL;
>  		goto dma_exit;
>  	}
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
