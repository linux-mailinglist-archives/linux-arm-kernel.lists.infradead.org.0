Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 777FC36EBE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 10:34:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iKS0gtzGZF/qyEHIQQRDTI7xRrSM3T1iwDgAWFdlt8Y=; b=c49SLnvntk6I1H
	/Z4wBnGa5uxfvAQg0zWrmSE2T15eiScslKLiwPiz1xMnMK7gxhulUSKkn7Jkq6vDoznlNm7G3aXrv
	bQoJOMgWaR+Gyg7P8oe3SUX8BaOWjQ4r42TnWw2ke48feNM7KfDHlKqbzDJsKrrXaWSFGrrBwcTMy
	N4S+T9iv4O+IxInasW2SH8aZ1oqafalIEBgnxYXAXGLa0MfjHne7dFfKDchi99DQa7ZGoZafyray2
	MMQ4ZEJ9EYSjsQ0A3S3VAGpFre0UrFtFCpRBxzpanX/aG5zc2HhYodbhzyUQasYmpvjM90gLwlerv
	3YLpLR4TtO4df+6PvaCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYnqx-00074Y-AN; Thu, 06 Jun 2019 08:34:31 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYnqo-00073J-VU
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 08:34:25 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 88CFF634C7F;
 Thu,  6 Jun 2019 11:34:07 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.89)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1hYnqZ-0000Te-La; Thu, 06 Jun 2019 11:34:07 +0300
Date: Thu, 6 Jun 2019 11:34:07 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v3 2/2] media: atmel: atmel-sama5d2-isc: fixed checkpatch
 warnings
Message-ID: <20190606083407.av2ifw4lr5w3pdxi@valkosipuli.retiisi.org.uk>
References: <1559806756-16683-1-git-send-email-eugen.hristev@microchip.com>
 <1559806756-16683-2-git-send-email-eugen.hristev@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559806756-16683-2-git-send-email-eugen.hristev@microchip.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_013423_378009_A02D5FC7 
X-CRM114-Status: GOOD (  21.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: hverkuil@xs4all.nl, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eugen,

On Thu, Jun 06, 2019 at 07:43:47AM +0000, Eugen.Hristev@microchip.com wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> Checkpatch complaining that locks do not have comments,
> unaligned code and macro reuse of same argument in to_isc_clk.
> Fixed them by renaming, realigning and adding struct comments
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
> ---
> Changes in v3:
> - new patch, addresses the checkpatch issues that Hans asked to fix
> 
>  drivers/media/platform/atmel/atmel-isc.h         | 51 +++++++++++++++++++++---
>  drivers/media/platform/atmel/atmel-sama5d2-isc.c |  4 +-
>  2 files changed, 48 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/media/platform/atmel/atmel-isc.h b/drivers/media/platform/atmel/atmel-isc.h
> index 0bd5dff..6ff9fa8 100644
> --- a/drivers/media/platform/atmel/atmel-isc.h
> +++ b/drivers/media/platform/atmel/atmel-isc.h
> @@ -24,14 +24,14 @@ struct isc_clk {
>  	struct clk_hw   hw;
>  	struct clk      *clk;
>  	struct regmap   *regmap;
> -	spinlock_t	lock;
> +	spinlock_t	lock;	/* synchronize access to clock registers */

You probably want to serialise the access, not synchronise it (i.e. happen
at the same time). So, s/synchronise/serialise/ ?

Same on the isc_device fields below.

With that,

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

>  	u8		id;
>  	u8		parent_id;
>  	u32		div;
>  	struct device	*dev;
>  };
>  
> -#define to_isc_clk(hw) container_of(hw, struct isc_clk, hw)
> +#define to_isc_clk(v) container_of(v, struct isc_clk, hw)
>  
>  struct isc_buffer {
>  	struct vb2_v4l2_buffer  vb;
> @@ -146,6 +146,47 @@ struct isc_ctrls {
>  
>  #define ISC_PIPE_LINE_NODE_NUM	11
>  
> +/*
> + * struct isc_device - ISC device driver data/config struct
> + * @regmap:		Register map
> + * @hclock:		Hclock clock input (refer datasheet)
> + * @ispck:		iscpck clock (refer datasheet)
> + * @isc_clks:		ISC clocks
> + *
> + * @dev:		Registered device driver
> + * @v4l2_dev:		v4l2 registered device
> + * @video_dev:		registered video device
> + *
> + * @vb2_vidq:		video buffer 2 video queue
> + * @dma_queue_lock:	lock to synchronize the dma buffer queue
> + * @dma_queue:		the queue for dma buffers
> + * @cur_frm:		current isc frame/buffer
> + * @sequence:		current frame number
> + * @stop:		true if isc is not streaming, false if streaming
> + * @comp:		completion reference that signals frame completion
> + *
> + * @fmt:		current v42l format
> + * @user_formats:	list of formats that are supported and agreed with sd
> + * @num_user_formats:	how many formats are in user_formats
> + *
> + * @config:		current ISC format configuration
> + * @try_config:		the current ISC try format , not yet activated
> + *
> + * @ctrls:		holds information about ISC controls
> + * @do_wb_ctrl:		control regarding the DO_WHITE_BALANCE button
> + * @awb_work:		workqueue reference for autowhitebalance histogram
> + *			analysis
> + *
> + * @lock:		lock for synchronizing userspace file operations
> + *			with ISC operations
> + * @awb_lock:		lock for synchronizing awb work queue operations
> + *			with DMA/buffer operations
> + *
> + * @pipeline:		configuration of the ISC pipeline
> + *
> + * @current_subdev:	current subdevice: the sensor
> + * @subdev_entities:	list of subdevice entitites
> + */
>  struct isc_device {
>  	struct regmap		*regmap;
>  	struct clk		*hclock;
> @@ -157,7 +198,7 @@ struct isc_device {
>  	struct video_device	video_dev;
>  
>  	struct vb2_queue	vb2_vidq;
> -	spinlock_t		dma_queue_lock;
> +	spinlock_t		dma_queue_lock; /* sync access to dma queue */
>  	struct list_head	dma_queue;
>  	struct isc_buffer	*cur_frm;
>  	unsigned int		sequence;
> @@ -175,8 +216,8 @@ struct isc_device {
>  	struct v4l2_ctrl	*do_wb_ctrl;
>  	struct work_struct	awb_work;
>  
> -	struct mutex		lock;
> -	spinlock_t		awb_lock;
> +	struct mutex		lock; /* sync access to file operations */
> +	spinlock_t		awb_lock; /* sync access to DMA buffers from awb work queue */
>  
>  	struct regmap_field	*pipeline[ISC_PIPE_LINE_NODE_NUM];
>  
> diff --git a/drivers/media/platform/atmel/atmel-sama5d2-isc.c b/drivers/media/platform/atmel/atmel-sama5d2-isc.c
> index 69faaaf..299243f 100644
> --- a/drivers/media/platform/atmel/atmel-sama5d2-isc.c
> +++ b/drivers/media/platform/atmel/atmel-sama5d2-isc.c
> @@ -87,8 +87,8 @@ static int isc_parse_dt(struct device *dev, struct isc_device *isc)
>  			break;
>  		}
>  
> -		subdev_entity = devm_kzalloc(dev,
> -					  sizeof(*subdev_entity), GFP_KERNEL);
> +		subdev_entity = devm_kzalloc(dev, sizeof(*subdev_entity),
> +					     GFP_KERNEL);
>  		if (!subdev_entity) {
>  			of_node_put(rem);
>  			ret = -ENOMEM;
> -- 
> 2.7.4
> 

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
