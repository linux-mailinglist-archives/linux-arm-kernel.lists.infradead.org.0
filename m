Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A2110FA44
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 09:57:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iylQTE96uuR8thXcAJfePlAxl7c42Z/p077ZjrpbcVU=; b=AbAVad4GYLvSDG
	1ptfHmhdfd0JpRi629VQRBTZo0/eX2ZtLAUvNGcuoGIRzvtJRgdNlHEUVyS9p5Of1PV6tDMaA5wH8
	HDDFUV9JNRCyfdu2+VY7+p+jXk5ChnrGciglvsbfuoRiBn6eN1WsSJY7n/f/VPbp5yDFoR83PyRWA
	MU4dMPy4oyaI9BeA87HeBHVrN0b3nueCP3QiDl/G6TVGlOgkgV9ddUM6NDJxaNWP2E33LBMslIGSb
	9po4u8rYbJRBcu3M6cVERKx1XrxYK68azZiC6CCQtrOhUUlQ6q6PYx/rC1Yb4IyhGzrD3RFSzbla3
	W/xEO2qaBrWyXfsdgIxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic3zY-0003J7-Dq; Tue, 03 Dec 2019 08:57:08 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic3zM-0003IG-TD
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 08:56:58 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 3C202634C89;
 Tue,  3 Dec 2019 10:56:05 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1ic3yW-0001Nf-SG; Tue, 03 Dec 2019 10:56:04 +0200
Date: Tue, 3 Dec 2019 10:56:04 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH 4/5] media: i2c: imx290: Add support to enumerate all
 frame sizes
Message-ID: <20191203085604.GC5282@valkosipuli.retiisi.org.uk>
References: <20191129190541.30315-1-manivannan.sadhasivam@linaro.org>
 <20191129190541.30315-5-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129190541.30315-5-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_005657_122179_23FD32B0 
X-CRM114-Status: GOOD (  13.75  )
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

On Sat, Nov 30, 2019 at 12:35:40AM +0530, Manivannan Sadhasivam wrote:
> Add support to enumerate all frame sizes supported by IMX290. This is
> required for using with userspace tools such as libcamera.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  drivers/media/i2c/imx290.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/media/i2c/imx290.c b/drivers/media/i2c/imx290.c
> index d5bb3a59ac46..f26c4a0ee0a0 100644
> --- a/drivers/media/i2c/imx290.c
> +++ b/drivers/media/i2c/imx290.c
> @@ -468,6 +468,25 @@ static int imx290_enum_mbus_code(struct v4l2_subdev *sd,
>  	return 0;
>  }
>  
> +static int imx290_enum_frame_size(struct v4l2_subdev *subdev,
> +				  struct v4l2_subdev_pad_config *cfg,
> +				  struct v4l2_subdev_frame_size_enum *fse)
> +{
> +	if ((fse->code != imx290_formats[0].code) &&
> +	    (fse->code != imx290_formats[1].code))

Please use a loop over imx290_formats instead.

> +		return -EINVAL;
> +
> +	if (fse->index >= ARRAY_SIZE(imx290_modes))
> +		return -EINVAL;
> +
> +	fse->min_width = imx290_modes[fse->index].width;
> +	fse->max_width = imx290_modes[fse->index].width;
> +	fse->min_height = imx290_modes[fse->index].height;
> +	fse->max_height = imx290_modes[fse->index].height;
> +
> +	return 0;
> +}
> +
>  static int imx290_get_fmt(struct v4l2_subdev *sd,
>  			  struct v4l2_subdev_pad_config *cfg,
>  			  struct v4l2_subdev_format *fmt)
> @@ -820,6 +839,7 @@ static const struct v4l2_subdev_video_ops imx290_video_ops = {
>  static const struct v4l2_subdev_pad_ops imx290_pad_ops = {
>  	.init_cfg = imx290_entity_init_cfg,
>  	.enum_mbus_code = imx290_enum_mbus_code,
> +	.enum_frame_size = imx290_enum_frame_size,
>  	.get_fmt = imx290_get_fmt,
>  	.set_fmt = imx290_set_fmt,
>  };

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
