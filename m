Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 331BA12B5A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 16:30:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JRkRDShfyn6QEkr+8vCBbJwp1lvEINXmYdKN1mAy998=; b=uOPEu55kKXJnqV
	kbNrd3y+9YzdRzmPxvF2+JMNQPjRxjdwMTEZmSXxrd6fhXOW2+M6jKG0JKCo0p1yTfnQkCUp/2H++
	fZzAi8qPFkVFMb7Jx+WnBS+jdcQg59+rCM4PkeTf8rvxk/Jbx9eS3qG6+iGMlTBlp2h6zy0yfH1nc
	U/WAG3em3ZKCAoxFOp7pJandktL/zoN+Z6KkFK//HsOgipbeKEVKajs3LuQ2BHbWD+zTq5rd9UWuk
	h9ImozMipI/vMlbf12yG3XqAIWdWbVOn2I3MjscdMkxtzy/toHzpnNc8s3H6JtATewI53Jqr2jEJ8
	kH0elKnVJsafXDI7jMBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikrZF-0005Cc-Kh; Fri, 27 Dec 2019 15:30:21 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikrZ3-0004kp-B6
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 15:30:11 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 9CF98634C86;
 Fri, 27 Dec 2019 17:29:32 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1ikrYT-00017t-1N; Fri, 27 Dec 2019 17:29:33 +0200
Date: Fri, 27 Dec 2019 17:29:33 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH v2 3/6] media: i2c: imx290: Add RAW12 mode support
Message-ID: <20191227152932.GG861@valkosipuli.retiisi.org.uk>
References: <20191219182222.18961-1-manivannan.sadhasivam@linaro.org>
 <20191219182222.18961-4-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219182222.18961-4-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_073009_598269_1CB35596 
X-CRM114-Status: GOOD (  15.83  )
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

On Thu, Dec 19, 2019 at 11:52:19PM +0530, Manivannan Sadhasivam wrote:
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
> index 96eea0aafd3e..b6eeca56d3c9 100644
> --- a/drivers/media/i2c/imx290.c
> +++ b/drivers/media/i2c/imx290.c
> @@ -75,6 +75,7 @@ struct imx290 {
>  	struct clk *xclk;
>  	struct regmap *regmap;
>  	u8 nlanes;
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
> @@ -913,6 +942,9 @@ static int imx290_probe(struct i2c_client *client)
>  		goto free_err;
>  	}
>  
> +	/* Default bits per pixel value */
> +	imx290->bpp = 10;

This has an effect on the pixel rate; please calculate the value based on
bpp.

> +
>  	mutex_init(&imx290->lock);
>  
>  	v4l2_ctrl_handler_init(&imx290->ctrls, 4);

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
