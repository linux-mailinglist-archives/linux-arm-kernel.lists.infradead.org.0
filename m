Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDEAC1E1E1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 11:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7G0sFBkZUA5PFflWD7yPsIy4O5Ci126VuwYbKgW6l8I=; b=SCAipDWSMP921s
	9nKPZMM6DMYbcW7yFqrBbanRIm+Skp9nr7qDDBQE+3/gcI5BsAGKUTDSCR56eQUQ0RistjI0KKfFF
	detUvIYVT2mvQe78lpufpQtW3zh7PS2SIXsgK7y8hH3JDxeqQOHcwLIjRHXhbBaEMr3EqECszSPu/
	7GHOlPliDlyPhZyt7VA31GEkbvd4vOE0Oef98PJF+lTvCVEAwZKJpwyS2qr2XrS2gZj8T4eQPx550
	4w1RzoandkDMhTGE88mRVFnIXwvcpOxvx2Nr7gHjCyKEc91VRJQuQS0i8tXwCTJ9eOEkBLWSoODmf
	gx2ZxNY2OvC3w8HV6KvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdVeS-0003AY-9B; Tue, 26 May 2020 09:13:36 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdVeH-0003A7-C5
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 09:13:27 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id E88A2634C87;
 Tue, 26 May 2020 12:12:34 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jdVdT-0002Rj-14; Tue, 26 May 2020 12:12:35 +0300
Date: Tue, 26 May 2020 12:12:35 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Andrey Konovalov <andrey.konovalov@linaro.org>
Subject: Re: [PATCH v3 05/10] media: i2c: imx290: Add configurable link
 frequency and pixel rate
Message-ID: <20200526091234.GH8214@valkosipuli.retiisi.org.uk>
References: <20200524192505.20682-1-andrey.konovalov@linaro.org>
 <20200524192505.20682-6-andrey.konovalov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200524192505.20682-6-andrey.konovalov@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_021325_774491_DD422A78 
X-CRM114-Status: GOOD (  21.57  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 manivannan.sadhasivam@linaro.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andrey,

On Sun, May 24, 2020 at 10:25:00PM +0300, Andrey Konovalov wrote:
> From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> IMX290 operates with multiple link frequency and pixel rate combinations.
> The initial driver used a single setting for both but since we now have
> the lane count support in place, let's add configurable link frequency
> and pixel rate.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Andrey Konovalov <andrey.konovalov@linaro.org>
> ---
>  drivers/media/i2c/imx290.c | 100 ++++++++++++++++++++++++-------------
>  1 file changed, 66 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> index a361c9ac8bd5..e800557cf423 100644
> --- a/drivers/media/i2c/imx290.c
> +++ b/drivers/media/i2c/imx290.c
> @@ -38,8 +38,6 @@
>  #define IMX290_HMAX_2_720 0x19C8
>  #define IMX290_HMAX_4_720 0x0CE4
>  
> -#define IMX290_DEFAULT_LINK_FREQ 445500000
> -
>  static const char * const imx290_supply_name[] = {
>  	"vdda",
>  	"vddd",
> @@ -56,8 +54,6 @@ struct imx290_regval {
>  struct imx290_mode {
>  	u32 width;
>  	u32 height;
> -	u32 pixel_rate;
> -	u32 link_freq_index;
>  
>  	const struct imx290_regval *data;
>  	u32 data_size;
> @@ -248,8 +244,13 @@ static const struct imx290_regval imx290_10bit_settings[] = {
>  };
>  
>  /* supported link frequencies */
> -static const s64 imx290_link_freq[] = {
> -	IMX290_DEFAULT_LINK_FREQ,
> +static const s64 imx290_link_freq_2lanes[] = {
> +	891000000, /* 1920x1080 -  2 lane */
> +	594000000, /* 1280x720  -  2 lane */
> +};
> +static const s64 imx290_link_freq_4lanes[] = {
> +	445500000, /* 1920x1080 -  4 lane */
> +	297000000, /* 1280x720  -  4 lane */
>  };
>  
>  /* Mode configs */
> @@ -259,16 +260,12 @@ static const struct imx290_mode imx290_modes[] = {
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
> @@ -442,6 +439,32 @@ static int imx290_get_fmt(struct v4l2_subdev *sd,
>  	return 0;
>  }
>  
> +static u8 imx290_get_link_freq_index(struct imx290 *imx290)
> +{
> +	const struct imx290_mode *cur_mode = imx290->current_mode;
> +
> +	return (cur_mode->width == 1920) ? 0 : 1;

Could you use (imx290->current_mode - imx290_modes) / sizeof(*imx290_modes)
or something like that? It'd have fewer chances of breaking if new modes
are added.

> +}
> +
> +static s64 imx290_get_link_freq(struct imx290 *imx290)
> +{
> +	u8 index = imx290_get_link_freq_index(imx290);
> +
> +	if (imx290->nlanes == 4)
> +		return imx290_link_freq_4lanes[index];
> +	else
> +		return imx290_link_freq_2lanes[index];

Or even better: store the link frequencies to the modes themselves. They
are a property of the modes after all.

> +}
> +
> +static u64 imx290_calc_pixel_rate(struct imx290 *imx290)
> +{
> +	s64 link_freq = imx290_get_link_freq(imx290);
> +	u8 nlanes = imx290->nlanes;
> +
> +	/* pixel rate = link_freq * 2 * nr_of_lanes / bits_per_sample */
> +	return (link_freq * 2 * nlanes / 10);
> +}
> +
>  static int imx290_set_fmt(struct v4l2_subdev *sd,
>  			  struct v4l2_subdev_pad_config *cfg,
>  		      struct v4l2_subdev_format *fmt)
> @@ -475,10 +498,14 @@ static int imx290_set_fmt(struct v4l2_subdev *sd,
>  		format = v4l2_subdev_get_try_format(sd, cfg, fmt->pad);
>  	} else {
>  		format = &imx290->current_format;
> -		__v4l2_ctrl_s_ctrl(imx290->link_freq, mode->link_freq_index);
> -		__v4l2_ctrl_s_ctrl_int64(imx290->pixel_rate, mode->pixel_rate);
> -
>  		imx290->current_mode = mode;
> +
> +		if (imx290->link_freq)
> +			__v4l2_ctrl_s_ctrl(imx290->link_freq,
> +					   imx290_get_link_freq_index(imx290));
> +		if (imx290->pixel_rate)
> +			__v4l2_ctrl_s_ctrl_int64(imx290->pixel_rate,
> +						 imx290_calc_pixel_rate(imx290));
>  	}
>  
>  	*format = fmt->format;
> @@ -502,12 +529,11 @@ static int imx290_entity_init_cfg(struct v4l2_subdev *subdev,
>  	return 0;
>  }
>  
> -static int imx290_write_current_format(struct imx290 *imx290,
> -				       struct v4l2_mbus_framefmt *format)
> +static int imx290_write_current_format(struct imx290 *imx290)
>  {
>  	int ret;
>  
> -	switch (format->code) {
> +	switch (imx290->current_format.code) {
>  	case MEDIA_BUS_FMT_SRGGB10_1X10:
>  		ret = imx290_set_register_array(imx290, imx290_10bit_settings,
>  						ARRAY_SIZE(
> @@ -558,8 +584,8 @@ static int imx290_start_streaming(struct imx290 *imx290)
>  		return ret;
>  	}
>  
> -	/* Set current frame format */
> -	ret = imx290_write_current_format(imx290, &imx290->current_format);
> +	/* Apply the register values related to current frame format */
> +	ret = imx290_write_current_format(imx290);
>  	if (ret < 0) {
>  		dev_err(imx290->dev, "Could not set frame format\n");
>  		return ret;
> @@ -821,12 +847,6 @@ static int imx290_probe(struct i2c_client *client)
>  		goto free_err;
>  	}
>  
> -	if (imx290->ep.link_frequencies[0] != IMX290_DEFAULT_LINK_FREQ) {

This check needs to be modified to correspond to the driver's new
capabilities, not removed.

> -		dev_err(dev, "Unsupported link frequency\n");
> -		ret = -EINVAL;
> -		goto free_err;
> -	}
> -
>  	/* Only CSI2 is supported for now */
>  	if (imx290->ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
>  		dev_err(dev, "Unsupported bus type, should be CSI2\n");
> @@ -879,23 +899,38 @@ static int imx290_probe(struct i2c_client *client)
>  
>  	mutex_init(&imx290->lock);
>  
> +	/*
> +	 * Initialize the frame format. In particular, imx290->current_mode
> +	 * and imx290->bpp are set to defaults: imx290_calc_pixel_rate() call
> +	 * below relies on these fields.
> +	 */
> +	imx290_entity_init_cfg(&imx290->sd, NULL);
> +
>  	v4l2_ctrl_handler_init(&imx290->ctrls, 3);
>  
>  	v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
>  			  V4L2_CID_GAIN, 0, 72, 1, 0);
> -	imx290->link_freq =
> -		v4l2_ctrl_new_int_menu(&imx290->ctrls,
> -				       &imx290_ctrl_ops,
> -				       V4L2_CID_LINK_FREQ,
> -				       ARRAY_SIZE(imx290_link_freq) - 1,
> -				       0, imx290_link_freq);
> +	if (imx290->nlanes == 4)
> +		imx290->link_freq =
> +			v4l2_ctrl_new_int_menu(&imx290->ctrls,
> +					       &imx290_ctrl_ops,
> +					       V4L2_CID_LINK_FREQ,
> +					       ARRAY_SIZE(imx290_link_freq_4lanes) - 1,
> +					       0, imx290_link_freq_4lanes);
> +	else
> +		imx290->link_freq =
> +			v4l2_ctrl_new_int_menu(&imx290->ctrls,
> +					       &imx290_ctrl_ops,
> +					       V4L2_CID_LINK_FREQ,
> +					       ARRAY_SIZE(imx290_link_freq_2lanes) - 1,
> +					       0, imx290_link_freq_2lanes);
>  	if (imx290->link_freq)
>  		imx290->link_freq->flags |= V4L2_CTRL_FLAG_READ_ONLY;
>  
>  	imx290->pixel_rate = v4l2_ctrl_new_std(&imx290->ctrls, &imx290_ctrl_ops,
>  					       V4L2_CID_PIXEL_RATE, 1,
>  					       INT_MAX, 1,
> -					       imx290_modes[0].pixel_rate);
> +					       imx290_calc_pixel_rate(imx290));
>  
>  	imx290->sd.ctrl_handler = &imx290->ctrls;
>  
> @@ -919,9 +954,6 @@ static int imx290_probe(struct i2c_client *client)
>  		goto free_ctrl;
>  	}
>  
> -	/* Initialize the frame format (this also sets imx290->current_mode) */
> -	imx290_entity_init_cfg(&imx290->sd, NULL);
> -
>  	ret = v4l2_async_register_subdev(&imx290->sd);
>  	if (ret < 0) {
>  		dev_err(dev, "Could not register v4l2 device\n");

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
