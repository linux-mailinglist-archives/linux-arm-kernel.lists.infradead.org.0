Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 243EC138111
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Jan 2020 12:15:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6HgH4U9LkATDgZLG4Q+swuaCUwubvlVlWVRJ1O//xiE=; b=PDSRT9WN5UECVS
	dfWY3GjtlvV/h4uga68k9G4TEvo/yDBTDetLQTUxTI6b+A4GrxRoIKhbJ+LtNPJC45Ix1ZGem3uly
	2jme3gmvdv4T88uwiRXb5kQ23CyB7CFwxCnQ8N4DtLcjVsaqtkyvjsoUoFRwuxrTLKvUic7lHWeHV
	wPZ6FgdA75gH7Oih2mhCYm+QUyfdy3kzynDI1ePqx+tqRALIQfL9sSRD8IefHuxVVd1JsDlkyaJbc
	lp1Lodvkp0SR6YOZRYJyesSqkwLbo6IndNgHhKh+/mLswl8JNHSttFqR9vXKDeu3Z2DBxFqISV1AN
	HAgfpG5/fpgyoK8HMn6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqEjd-0000YE-J5; Sat, 11 Jan 2020 11:15:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqEjS-0000DC-VF
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Jan 2020 11:15:08 +0000
Received: from archlinux (cpc149474-cmbg20-2-0-cust94.5-4.cable.virginm.net
 [82.4.196.95])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 37EFA2082E;
 Sat, 11 Jan 2020 11:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578741306;
 bh=erQ6M4hMxHylqYfd9kNe8cMwdxxMfWcIL4nVaDchgOE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rS1kqrVm1bYPDTCdYCZ7pPKr3VxaGwvPOLjF4nIlSfHNWyOhHgS+RPt9G6E5oRANy
 AJO+4ejKwlLNFNzmCRAk66UcsP4n4d39IwI1iE9na5KlMLinn3F7NPGxPwb/py1m1x
 yLWdoaKD8aCDqWIrs2w3vtaK9MhmeY9u0slnnoTE=
Date: Sat, 11 Jan 2020 11:15:01 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v3] iio: adc: at91-sama5d2_adc: Use dma_request_chan()
 instead dma_request_slave_channel()
Message-ID: <20200111111501.77d19476@archlinux>
In-Reply-To: <20200107113729.5505-1-peter.ujfalusi@ti.com>
References: <20200107113729.5505-1-peter.ujfalusi@ti.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200111_031507_036936_B1EDAA0E 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, 7 Jan 2020 13:37:29 +0200
Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:

> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> The dma_request_chan() is the standard API to request slave channel,
> clients should be moved away from the legacy API to allow us to retire
> them.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>

Applied to the togreg branch of iio.git and pushed out as testing.
Note that tree will get rebased shortly to catch up with upstream.
(testing can in theory be rebased at any time even if I don't do it
that often).

Thanks,

Jonathan

> ---
> Hi,
> 
> Changes since v2:
> - Commit message updated
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
