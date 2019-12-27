Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E891212B5B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 16:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pts2GgoXVB19QSEXLTCfdiCJLrIinIxnBAszu33MgYw=; b=OuJv5yW0/ZJRkS
	h3YuWPetX5b5f9SpLSseY5XM7KSwlWy4EYAbaFoy2FSy+VGx0k4wgDvd7CFUTYNbpSYPov2UBGYJu
	/uY2YyPnxQZQjpeyGHQjg1b5XXKOwxefNNcDPw9HYWMAPLZtaCBLdGNlYxTAJDsSR6SDwnk6oiJS3
	6+A8UxkFut3S+5x1Nq/mCusBlIIcxHPN+OBikbzPy2qL94FI5BKLy9Kka3CvNhUbVgLV5QaoGhnBK
	rSI5ymsu+P9gawM199jJl//xqrOj5IjDVriV6HUtcoygvrJakgfxXkGutPWWVkdQgeJ/qIXycopcN
	KQ2CL/AJL2LzWUmtf0LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikrpT-0002D1-Jv; Fri, 27 Dec 2019 15:47:07 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikrpG-0002CT-8e
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 15:46:56 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 4D9AB634C86;
 Fri, 27 Dec 2019 17:46:17 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1ikrof-000181-JN; Fri, 27 Dec 2019 17:46:17 +0200
Date: Fri, 27 Dec 2019 17:46:17 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 5/6] media: i2c: imx290: Add configurable link
 frequency and pixel rate
Message-ID: <20191227154617.GH861@valkosipuli.retiisi.org.uk>
References: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
 <20191219182222.18961-6-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219182222.18961-6-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_074654_671043_2FA1E16D 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Thu, Dec 19, 2019 at 11:52:21PM +0530, Manivannan Sadhasivam wrote:
> IMX290 operates with multiple link frequency and pixel rate combinations.
> The initial driver used a single setting for both but since we now have
> the lane count support in place, let's add configurable link frequency
> and pixel rate.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/media/i2c/imx290.c | 155 +++++++++++++++++++++----------------
>  1 file changed, 89 insertions(+), 66 deletions(-)
> 
> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> index a1974340e6fa..52f1e470b507 100644
> --- a/drivers/media/i2c/imx290.c
> +++ b/drivers/media/i2c/imx290.c
> @@ -45,8 +45,6 @@
>  #define IMX290_HMAX_2_720 0x19C8
>  #define IMX290_HMAX_4_720 0x0CE4
>  
> -#define IMX290_DEFAULT_LINK_FREQ 445500000
> -
>  static const char * const imx290_supply_name[] = {
>  	"vdda",
>  	"vddd",
> @@ -63,8 +61,6 @@ struct imx290_regval {
>  struct imx290_mode {
>  	u32 width;
>  	u32 height;
> -	u32 pixel_rate;
> -	u32 link_freq_index;
>  
>  	const struct imx290_regval *data;
>  	u32 data_size;
> @@ -281,7 +277,10 @@ static const struct imx290_regval imx290_12bit_settings[] = {
>  
>  /* supported link frequencies */
>  static const s64 imx290_link_freq[] = {
> -	IMX290_DEFAULT_LINK_FREQ,
> +	891000000, /* 1920x1080 -  2 lane */
> +	445500000, /* 1920x1080 -  4 lane */
> +	594000000, /* 1280x720  -  2 lane */
> +	297000000, /* 1280x720  -  4 lane */

Please use different arrays for different lane configurations. That makes
this a lot cleaner.

This patch should precede the one adding support for 12 bpp.

>  };
>  
>  /* Mode configs */
> @@ -291,16 +290,12 @@ static const struct imx290_mode imx290_modes[] = {
>  		.height = 1080,
>  		.data = imx290_1080p_settings,
>  		.data_size = ARRAY_SIZE(imx290_1080p_settings),
> -		.pixel_rate = 178200000,
> -		.link_freq_index = 0,
>  	},
>  	{
>  		.width = 1280,
>  		.height = 720,
>  		.data = imx290_720p_settings,
>  		.data_size = ARRAY_SIZE(imx290_720p_settings),
> -		.pixel_rate = 178200000,
> -		.link_freq_index = 0,
>  	},
>  };
>  
> @@ -509,6 +504,73 @@ static int imx290_get_fmt(struct v4l2_subdev *sd,
>  	return 0;
>  }
>  
> +static s64 imx290_get_link_freq_index(struct imx290 *imx290)
> +{
> +	const struct imx290_mode *cur_mode = imx290->current_mode;
> +	u8 index;
> +
> +	if (cur_mode->width == 1920)
> +		index = imx290->nlanes / 4;
> +	else
> +		index = (imx290->nlanes / 4) + 2;
> +
> +	return index;
> +}
> +
> +static s64 imx290_get_link_freq(struct imx290 *imx290)
> +{
> +	u8 index = imx290_get_link_freq_index(imx290);
> +
> +	return imx290_link_freq[index];
> +}
> +
> +static u64 imx290_calc_pixel_rate(struct imx290 *imx290)
> +{
> +	s64 link_freq = imx290_get_link_freq(imx290);
> +	u8 nlanes = imx290->nlanes;
> +
> +	/* pixel rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
> +	return (link_freq * 2 * nlanes / imx290->bpp);
> +}
> +
> +static int imx290_write_current_format(struct imx290 *imx290,
> +				       struct v4l2_mbus_framefmt *format)
> +{
> +	int ret;
> +
> +	switch (format->code) {
> +	case MEDIA_BUS_FMT_SRGGB10_1X10:
> +		ret = imx290_set_register_array(imx290, imx290_10bit_settings,
> +						ARRAY_SIZE(
> +							imx290_10bit_settings));
> +		if (ret < 0) {
> +			dev_err(imx290->dev, "Could not set format registers\n");
> +			return ret;
> +		}
> +
> +		imx290->bpp = 10;
> +
> +		break;
> +	case MEDIA_BUS_FMT_SRGGB12_1X12:
> +		ret = imx290_set_register_array(imx290, imx290_12bit_settings,
> +						ARRAY_SIZE(
> +							imx290_12bit_settings));
> +		if (ret < 0) {
> +			dev_err(imx290->dev, "Could not set format registers\n");
> +			return ret;
> +		}
> +
> +		imx290->bpp = 12;
> +
> +		break;
> +	default:
> +		dev_err(imx290->dev, "Unknown pixel format\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int imx290_set_fmt(struct v4l2_subdev *sd,
>  			  struct v4l2_subdev_pad_config *cfg,
>  		      struct v4l2_subdev_format *fmt)
> @@ -517,6 +579,7 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
>  	const struct imx290_mode *mode;
>  	struct v4l2_mbus_framefmt *format;
>  	unsigned int i;
> +	int ret = 0;
>  
>  	mutex_lock(&imx290->lock);
>  
> @@ -542,17 +605,27 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
>  		format = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
>  	} else {
>  		format = &imx290->current_format;
> -		__v4l2_ctrl_s_ctrl(imx290->link_freq, mode->link_freq_index);
> -		__v4l2_ctrl_s_ctrl_int64(imx290->pixel_rate, mode->pixel_rate);
> -
>  		imx290->current_mode = mode;
> +
> +		/* Set current frame format */
> +		ret = imx290_write_current_format(imx290, &fmt->format);
> +		if (ret < 0) {
> +			dev_err(imx290->dev, "Could not set frame format\n");
> +			goto err_out;
> +		}
> +
> +		__v4l2_ctrl_s_ctrl(imx290->link_freq,
> +				   imx290_get_link_freq_index(imx290));
> +		__v4l2_ctrl_s_ctrl_int64(imx290->pixel_rate,
> +					 imx290_calc_pixel_rate(imx290));
>  	}
>  
>  	*format = fmt->format;
>  
> +err_out:
>  	mutex_unlock(&imx290->lock);
>  
> -	return 0;
> +	return ret;
>  }
>  
>  static int imx290_entity_init_cfg(struct v4l2_subdev *subdev,
> @@ -569,44 +642,6 @@ static int imx290_entity_init_cfg(struct v4l2_subdev *subdev,
>  	return 0;
>  }
>  
> -static int imx290_write_current_format(struct imx290 *imx290,
> -				       struct v4l2_mbus_framefmt *format)
> -{
> -	int ret;
> -
> -	switch (format->code) {
> -	case MEDIA_BUS_FMT_SRGGB10_1X10:
> -		ret = imx290_set_register_array(imx290, imx290_10bit_settings,
> -						ARRAY_SIZE(
> -							imx290_10bit_settings));
> -		if (ret < 0) {
> -			dev_err(imx290->dev, "Could not set format registers\n");
> -			return ret;
> -		}
> -
> -		imx290->bpp = 10;
> -
> -		break;
> -	case MEDIA_BUS_FMT_SRGGB12_1X12:
> -		ret = imx290_set_register_array(imx290, imx290_12bit_settings,
> -						ARRAY_SIZE(
> -							imx290_12bit_settings));
> -		if (ret < 0) {
> -			dev_err(imx290->dev, "Could not set format registers\n");
> -			return ret;
> -		}
> -
> -		imx290->bpp = 12;
> -
> -		break;
> -	default:
> -		dev_err(imx290->dev, "Unknown pixel format\n");
> -		return -EINVAL;
> -	}
> -
> -	return 0;
> -}
> -
>  static int imx290_set_hmax(struct imx290 *imx290, u32 val)
>  {
>  	int ret;
> @@ -640,13 +675,6 @@ static int imx290_start_streaming(struct imx290 *imx290)
>  		return ret;
>  	}
>  
> -	/* Set current frame format */
> -	ret = imx290_write_current_format(imx290, &imx290->current_format);
> -	if (ret < 0) {
> -		dev_err(imx290->dev, "Could not set frame format\n");
> -		return ret;
> -	}
> -
>  	/* Apply default values of current mode */
>  	ret = imx290_set_register_array(imx290, imx290->current_mode->data,
>  					imx290->current_mode->data_size);
> @@ -904,12 +932,6 @@ static int imx290_probe(struct i2c_client *client)
>  		goto free_err;
>  	}
>  
> -	if (imx290->ep.link_frequencies[0] != IMX290_DEFAULT_LINK_FREQ) {
> -		dev_err(dev, "Unsupported link frequency\n");
> -		ret = -EINVAL;
> -		goto free_err;
> -	}
> -
>  	/* Only CSI2 is supported for now */
>  	if (imx290->ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
>  		dev_err(dev, "Unsupported bus type, should be CSI2\n");
> @@ -976,14 +998,15 @@ static int imx290_probe(struct i2c_client *client)
>  				       &imx290_ctrl_ops,
>  				       V4L2_CID_LINK_FREQ,
>  				       ARRAY_SIZE(imx290_link_freq) - 1,
> -				       0, imx290_link_freq);
> +				       (imx290->nlanes / 4),
> +				       imx290_link_freq);
>  	if (imx290->link_freq)
>  		imx290->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;
>  
>  	imx290->pixel_rate = v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
>  					       V4L2_CID_PIXEL_RATE, 1,
>  					       INT_MAX, 1,
> -					       imx290_modes[0].pixel_rate);
> +					       imx290_calc_pixel_rate(imx290));
>  
>  	v4l2_ctrl_new_std_menu_items(&imx290->ctrls, &imx290_ctrl_ops,
>  				     V4L2_CID_TEST_PATTERN,

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
