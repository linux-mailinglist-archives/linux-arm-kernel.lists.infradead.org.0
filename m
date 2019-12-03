Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D66B810FA3D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 09:55:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=97s9etIZ7XaSk7O1fWPwuc8JoFabhGFYSSdpFXI8GSY=; b=cZVnL4RAbCu2ds
	zX0XznsZ1+g1jviKR0HNJ3qVgjAyeBtPXeh3BpHNwkSlTMOs4qTv6IImuE49bWpBN4VlqSUDkt8HU
	MwOsKKrAwG0e2KnEq7lmTR7e9enOaWCh3U+cnpH+rhEddYLAKTu1AAU4pDYaVvkJ6zsRtuVPaXlIA
	Gq4uhVjj3ml0bEMhEG2nUEFalWU+kIYLT8BSznMwWWZMF8UQVkvocPSm6O3LapmQsGkxpjHx297sx
	4emAWg96oKL1M9P59Jk/wr0kXhZRMe0xMInmqoEqcmyDshDyun0Fi208fsbZgkbckER6UBkamRAWU
	6oadpM/y+rmSIgq94xxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3xl-0002wx-AX; Tue, 03 Dec 2019 08:55:17 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3xe-0002gR-LJ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 08:55:12 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 3F903634C87;
 Tue,  3 Dec 2019 10:54:18 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1ic3wn-0001NZ-OF; Tue, 03 Dec 2019 10:54:17 +0200
Date: Tue, 3 Dec 2019 10:54:17 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 3/5] media: i2c: imx290: Add RAW12 mode support
Message-ID: <20191203085417.GB5282@valkosipuli.retiisi.org.uk>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-4-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129190541.30315-4-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_005510_887642_D5286E81 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: devicetree@vger.kernel.org, c.barrett@framos.com,
 linux-kernel@vger.kernel.org, a.brela@framos.com, peter.griffin@linaro.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Manivannan,

On Sat, Nov 30, 2019 at 12:35:39AM +0530, Manivannan Sadhasivam wrote:
> IMX290 is capable of outputting frames in both Raw Bayer (packed) 10 and
> 12 bit formats. Since the driver already supports RAW10 mode, let's add
> the missing RAW12 mode as well.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/media/i2c/imx290.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> index e218c959a729..d5bb3a59ac46 100644
> --- a/drivers/media/i2c/imx290.c
> +++ b/drivers/media/i2c/imx290.c
> @@ -75,6 +75,7 @@ struct imx290 {
>  	struct clk *xclk;
>  	struct regmap *regmap;
>  	int nlanes;
> +	u8 bpp;
>  
>  	struct v4l2_subdev sd;
>  	struct v4l2_fwnode_endpoint ep;
> @@ -98,6 +99,7 @@ struct imx290_pixfmt {
>  
>  static const struct imx290_pixfmt imx290_formats[] = {
>  	{ MEDIA_BUS_FMT_SRGGB10_1X10 },
> +	{ MEDIA_BUS_FMT_SRGGB12_1X12 },
>  };
>  
>  static const struct regmap_config imx290_regmap_config = {
> @@ -265,6 +267,18 @@ static const struct imx290_regval imx290_10bit_settings[] = {
>  	{ 0x300b, 0x00},
>  };
>  
> +static const struct imx290_regval imx290_12bit_settings[] = {
> +	{ 0x3005, 0x01 },
> +	{ 0x3046, 0x01 },
> +	{ 0x3129, 0x00 },
> +	{ 0x317c, 0x00 },
> +	{ 0x31ec, 0x0e },
> +	{ 0x3441, 0x0c },
> +	{ 0x3442, 0x0c },
> +	{ 0x300a, 0xf0 },
> +	{ 0x300b, 0x00 },
> +};
> +
>  /* supported link frequencies */
>  static const s64 imx290_link_freq[] = {
>  	IMX290_DEFAULT_LINK_FREQ,
> @@ -550,6 +564,21 @@ static int imx290_write_current_format(struct imx290 *imx290,
>  			dev_err(imx290->dev, "Could not set format registers\n");
>  			return ret;
>  		}
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
>  		break;
>  	default:
>  		dev_err(imx290->dev, "Unknown pixel format\n");
> @@ -910,6 +939,9 @@ static int imx290_probe(struct i2c_client *client)
>  		goto free_err;
>  	}
>  
> +	/* Default bits per pixel value */
> +	imx290->bpp = 10;

Where is the format being initialised at the moment? Nowhere?

If that is the case, I think it should be fixed before this patch.

> +
>  	mutex_init(&imx290->lock);
>  
>  	v4l2_ctrl_handler_init(&imx290->ctrls, 4);

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
