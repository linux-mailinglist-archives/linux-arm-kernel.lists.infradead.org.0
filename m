Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C281FF1DE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 14:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97dmia0ZNzZRJDaMULCvJ42VtUIvkBIe8s4JFIF48Kk=; b=D6UBmpHguKwQ0L
	jeMIyLwZmaHBLbMV1dDwJbdmF1zDTOqklHMIBq6nvy19OTzo+QAs8P86sNSEhjWdWILPJGmor7buY
	HIPhyhGFNbiWIR1+gmWJYVUCvqmlc6i2m8e8ZOYtFYbxhOZQHRbuIl/gbMrxMOxD1G0IxUoLNo/zS
	bS6B9HSM0wP9jgRSHgop1V6vJQI2V+rurM4RDUIHO0d/Zwk3wRnM7kMp/dTwZOiLAwGCt6meQV2pq
	0RZkhcAHN6cGEE5OP/dUlME5pxVVIEaS8cqbrtyrzegm53wNhw2r9MZlPw/fRugNNtWLjuobQqiZJ
	+FVaDqbWg4lXaq6EWgRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltim-0003j9-Gd; Thu, 18 Jun 2020 12:32:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jltgN-0000ZJ-Ig; Thu, 18 Jun 2020 12:30:20 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1jltg5-00080e-08; Thu, 18 Jun 2020 14:29:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: wu000273@umn.edu
Subject: Re: [PATCH] media: rockchip/rga: Fix a reference count leak.
Date: Thu, 18 Jun 2020 14:29:56 +0200
Message-ID: <2014126.fRahu6ktRn@diego>
In-Reply-To: <20200613231350.15504-1-wu000273@umn.edu>
References: <20200613231350.15504-1-wu000273@umn.edu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_053015_766896_582969AC 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kjlu@umn.edu, linux-kernel@vger.kernel.org,
 Hans Verkuil <hansverk@cisco.com>, linux-rockchip@lists.infradead.org,
 Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Sonntag, 14. Juni 2020, 01:13:49 CEST schrieb wu000273@umn.edu:
> From: Qiushi Wu <wu000273@umn.edu>
> 
> pm_runtime_get_sync() increments the runtime PM usage counter even
> when it returns an error code. Thus call pm_runtime_put_noidle()
> if pm_runtime_get_sync() fails.
> 
> Fixes: f7e7b48e6d79 ("[media] rockchip/rga: v4l2 m2m support")
> Signed-off-by: Qiushi Wu <wu000273@umn.edu>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/media/platform/rockchip/rga/rga-buf.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
> index 36b821ccc1db..bf9a75b75083 100644
> --- a/drivers/media/platform/rockchip/rga/rga-buf.c
> +++ b/drivers/media/platform/rockchip/rga/rga-buf.c
> @@ -81,6 +81,7 @@ static int rga_buf_start_streaming(struct vb2_queue *q, unsigned int count)
>  
>  	ret = pm_runtime_get_sync(rga->dev);
>  	if (ret < 0) {
> +		pm_runtime_put_noidle(rga->dev);
>  		rga_buf_return_buffers(q, VB2_BUF_STATE_QUEUED);
>  		return ret;
>  	}
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
