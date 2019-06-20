Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236954C718
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 08:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FE1ysBLd+YgopDTbOr9N40Nm61L7s9ZeUti7c04X+E=; b=TWvHejrO3fEota
	9819ny8k4G0+hSyRNH1+O0qmIaxtBPx9OToh4K7Ctup+hfSXZ9WXmbUFalbChZOSgWH4SmlOe6htE
	+g9TGA13clbR5WC/7q5MSK151y60qjqUMu3uP3otBDakqPidHtS8ps5yeU/WWYmlzewfLiIvazuvK
	fYv8VF4cY5YZF7Ts5zIfBqrPzNZ7tBMal6w9ko1idGa9hNruUPgEEJSlMUYx4xJrazuGZoTui/WUd
	tfRydPgfop5Q2LnKLXVX4XJuL0rtz2Hn4oHO8DeG5SB04wRWyYxPzHy5b9qBYnJEOORhLhHi5SP80
	oGSkBp6rKod3otzVEbQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdqCa-0002iC-74; Thu, 20 Jun 2019 06:05:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdqCJ-0002fm-W8
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 06:05:26 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0E69220B1F;
 Thu, 20 Jun 2019 06:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561010723;
 bh=dewLJ5F9IirnNWINjNtg/Lg7r11/O2Ew51sJDsySfwM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VAuBtqFE2MxroHCWYHUBql+7ACqz/bSP05jcTpOHSSfNOC1yoEn1fdNLbkjaaeZ44
 NA8wdTuKvytQagGkE8HtQXNk/ds6o++EJKuVRk7wMqELpIjwrmFRajr7M72j5IoCbt
 /Vn73Fu94hlopz3+eEtVHWNPhynhJKBnMoPqedjw=
Date: Thu, 20 Jun 2019 08:05:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 26/28] coresight: tmc: Smatch: Fix potential NULL pointer
 dereference
Message-ID: <20190620060521.GG26319@kroah.com>
References: <20190619195318.19254-1-mathieu.poirier@linaro.org>
 <20190619195318.19254-27-mathieu.poirier@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619195318.19254-27-mathieu.poirier@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_230524_132314_6E710558 
X-CRM114-Status: GOOD (  17.72  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 01:53:16PM -0600, Mathieu Poirier wrote:
> From: Suzuki K Poulose <suzuki.poulose@arm.com>
> 
> Based on the following report from Smatch, fix the potential
> NULL pointer dereference check.
> 
> The patch 743256e214e8: "coresight: tmc: Clean up device specific
> data" from May 22, 2019, leads to the following Smatch complaint:
> 
>     drivers/hwtracing/coresight/coresight-tmc-etr.c:625 tmc_etr_free_flat_buf()
>     warn: variable dereferenced before check 'flat_buf' (see line 623)
> 
> drivers/hwtracing/coresight/coresight-tmc-etr.c
>    622		struct etr_flat_buf *flat_buf = etr_buf->private;
>    623		struct device *real_dev = flat_buf->dev->parent;
>                                           ^^^^^^^^^^
> The patch introduces a new NULL check
> 
>    624
>    625		if (flat_buf && flat_buf->daddr)
>                     ^^^^^^^^
> but the existing code assumed it can be NULL.
> 
>    626			dma_free_coherent(real_dev, flat_buf->size,
>    627					  flat_buf->vaddr, flat_buf->daddr);
> 
> Cc: Dan Carpenter <dan.carpenter@oracle.com>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> index 5d2bf6d18961..17006705287a 100644
> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
> @@ -620,11 +620,13 @@ static int tmc_etr_alloc_flat_buf(struct tmc_drvdata *drvdata,
>  static void tmc_etr_free_flat_buf(struct etr_buf *etr_buf)
>  {
>  	struct etr_flat_buf *flat_buf = etr_buf->private;
> -	struct device *real_dev = flat_buf->dev->parent;
>  
> -	if (flat_buf && flat_buf->daddr)
> +	if (flat_buf && flat_buf->daddr) {
> +		struct device *real_dev = flat_buf->dev->parent;
> +
>  		dma_free_coherent(real_dev, flat_buf->size,
>  				  flat_buf->vaddr, flat_buf->daddr);
> +	}
>  	kfree(flat_buf);
>  }
>  
> -- 
> 2.17.1
> 

Again, 5.2-final and stable...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
