Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5226410232
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 00:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T35FSU3f8Oy2eB1D988JHR1HGnX2CxS+HVNT7dEdEHs=; b=DSIbyeuque0NtrzdvEiALjFrd
	pdd0iSDTuIKi65K/1peSn1Wg57sOh3X4TW82CDIiDSfDhf0exVX4p4TVRqFaze/U8n60Rw/6HkDiq
	2CFK542V8HnN75RMzAXKHIXSqf5crVG21B+ivIxqP50DDrU3A89mq4OVv7WFamRBGFoBUGS5OnVYM
	UH1rvWgdQsO3V8FDfU4SNL6UjOCubDoTCQy0KHZALlteBpoDB4oF9u5iBHw57cesfF7wDpKIi9P/5
	UB3oJAA7KZFwUuugubSUhZlqbwD2ttHJl5RhIHekDTWRRb/D59LrM48HiBxO+cSHYU3lpsh4L+I9A
	+aDx+Mziw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLauL-0003w8-Mq; Tue, 30 Apr 2019 22:07:25 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLauC-0003vI-GA
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 22:07:20 +0000
Received: by mail-ed1-x544.google.com with SMTP id g57so7064595edc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 15:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=9SMu+WlHgYEbLUBVSDeiV1gHsanLvun4cpyyZujK//I=;
 b=QC/tOkzs2vgCKb+BBUDSs1P57HTdA32o5XoJni6v19OmPJBC/sPuHoZXyMJW+JVLNb
 8TagEQDoJ5ePCUYMjG69Y9RsNN/xhF9zY8XfbtPYvGWo+yoWX6P6BljZpnmJBrOEKanW
 D9Ku0SkUzrPc/1IjeHu/7hIBFHZapNr1mXYztEBalIHjaud7RVQiSPf+K8nOQWmUimjp
 mfgyed/QufGyl4RJpYL8H5eQ6iA9yCQ2dBq0cKg0982jIHr4yUsxdGK000pr7s4VeJUt
 lffWB0u7f0AD2UjQ97EiVg6ye98nOVv9WMohfQZJt6LKnIVZfnADvb3czYBwoYcPYvOA
 6qjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=9SMu+WlHgYEbLUBVSDeiV1gHsanLvun4cpyyZujK//I=;
 b=ig1GN2VRkLQJNL/zsz6C0CY7Nrhcr25RH3X+SSxbKY1QM6X5pBD7saJZmublC3bdXC
 pNYSMxOgUJuqyJKDYu92B0v2tDnswuyACeK0JdjUyPd7k7RnRmL6jtgAUOEWrZvG+9no
 NHedjnD0sg8NihJFltWEasgOfftzvSygooKPD8FrF9P3sSsFH9da8NjwqgPMfE/1kW4C
 lIMBiBZF0txdmtWdV4rMjG40QpBlRJYigtjSpFoZiWzmW5OnuYLhHiv++v+5hGQmh/GH
 0Iys++YI6B+mvRnUOiWbDbaQUVcrkdUbeNgfsvWWlPLkoqsImXSZG3Tkoz8x4tKQTJsc
 FrJw==
X-Gm-Message-State: APjAAAWczpd2/ktxA5C8UWAh3scsm50RClYX2ZSYOBEV4FjzL9Gfe2Aq
 1sFt4fB1DVDFO+vO3o+dNKZnxUVi
X-Google-Smtp-Source: APXvYqz5QqiK2l5xxdLKCIT2MX4KWodLOuC11vsnJyB2VbvlkA0dz4qLOqg8UwKE6111QMgbmIalSA==
X-Received: by 2002:aa7:c0d5:: with SMTP id j21mr43115003edp.38.1556662034267; 
 Tue, 30 Apr 2019 15:07:14 -0700 (PDT)
Received: from [172.30.89.180] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id 28sm1243487ejg.27.2019.04.30.15.07.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 15:07:13 -0700 (PDT)
Subject: Re: [PATCH v2 4/8] Revert "media: imx: Set capture compose rectangle
 in capture_device_set_format"
To: Rui Miguel Silva <rmfrfs@gmail.com>, driverdev-devel@linuxdriverproject.org
References: <20190428190916.26567-1-slongerbeam@gmail.com>
 <20190428190916.26567-5-slongerbeam@gmail.com> <m38svrnog8.fsf@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <1189a6b8-452e-cbab-3eb4-461dcfff951f@gmail.com>
Date: Tue, 30 Apr 2019 15:07:08 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <m38svrnog8.fsf@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_150718_307055_88D76882 
X-CRM114-Status: GOOD (  19.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Yes, because the reverted commit was merged before the imx7 support, I 
will fix this for v3.

Steve


On 4/30/19 3:00 PM, Rui Miguel Silva wrote:
> Hi Steve,
> On Sun 28 Apr 2019 at 20:09, Steve Longerbeam wrote:
>> Rvert this commit, as imx_media_capture_device_set_format() will be
>> removed.
>>
>> This reverts commit 5964cbd8692252615370b77eb96764dd70c2f837.
>>
>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
>> ---
>>   drivers/staging/media/imx/imx-ic-prpencvf.c   |  5 ++--
>>   drivers/staging/media/imx/imx-media-capture.c | 24 +++++++++----------
>>   drivers/staging/media/imx/imx-media-csi.c     |  5 ++--
>>   drivers/staging/media/imx/imx-media-utils.c   | 20 ++++------------
>>   drivers/staging/media/imx/imx-media.h         |  6 ++---
>>   5 files changed, 23 insertions(+), 37 deletions(-)
>>
>> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> index 8242d88dfb82..afaa3a8b15e9 100644
>> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
>> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
>> @@ -910,7 +910,6 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>   	const struct imx_media_pixfmt *cc;
>>   	struct v4l2_pix_format vdev_fmt;
>>   	struct v4l2_mbus_framefmt *fmt;
>> -	struct v4l2_rect vdev_compose;
>>   	int ret = 0;
>>   
>>   	if (sdformat->pad >= PRPENCVF_NUM_PADS)
>> @@ -952,11 +951,11 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>   	priv->cc[sdformat->pad] = cc;
>>   
>>   	/* propagate output pad format to capture device */
>> -	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt, &vdev_compose,
>> +	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
>>   				      &priv->format_mbus[PRPENCVF_SRC_PAD],
>>   				      priv->cc[PRPENCVF_SRC_PAD]);
>>   	mutex_unlock(&priv->lock);
>> -	imx_media_capture_device_set_format(vdev, &vdev_fmt, &vdev_compose);
>> +	imx_media_capture_device_set_format(vdev, &vdev_fmt);
>>   
>>   	return 0;
>>   out:
>> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
>> index 335084a6b0cd..555f6204660b 100644
>> --- a/drivers/staging/media/imx/imx-media-capture.c
>> +++ b/drivers/staging/media/imx/imx-media-capture.c
>> @@ -205,8 +205,7 @@ static int capture_g_fmt_vid_cap(struct file *file, void *fh,
>>   
>>   static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
>>   				     struct v4l2_subdev_format *fmt_src,
>> -				     struct v4l2_format *f,
>> -				     struct v4l2_rect *compose)
>> +				     struct v4l2_format *f)
>>   {
>>   	const struct imx_media_pixfmt *cc, *cc_src;
>>   
>> @@ -246,8 +245,7 @@ static int __capture_try_fmt_vid_cap(struct capture_priv *priv,
>>   		}
>>   	}
>>   
>> -	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, compose,
>> -				      &fmt_src->format, cc);
>> +	imx_media_mbus_fmt_to_pix_fmt(&f->fmt.pix, &fmt_src->format, cc);
>>   
>>   	return 0;
>>   }
>> @@ -265,7 +263,7 @@ static int capture_try_fmt_vid_cap(struct file *file, void *fh,
>>   	if (ret)
>>   		return ret;
>>   
>> -	return __capture_try_fmt_vid_cap(priv, &fmt_src, f, NULL);
>> +	return __capture_try_fmt_vid_cap(priv, &fmt_src, f);
>>   }
>>   
>>   static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>> @@ -273,7 +271,6 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>>   {
>>   	struct capture_priv *priv = video_drvdata(file);
>>   	struct v4l2_subdev_format fmt_src;
>> -	struct v4l2_rect compose;
>>   	int ret;
>>   
>>   	if (vb2_is_busy(&priv->q)) {
>> @@ -287,14 +284,17 @@ static int capture_s_fmt_vid_cap(struct file *file, void *fh,
>>   	if (ret)
>>   		return ret;
>>   
>> -	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f, &compose);
>> +	ret = __capture_try_fmt_vid_cap(priv, &fmt_src, f);
>>   	if (ret)
>>   		return ret;
>>   
>>   	priv->vdev.fmt.fmt.pix = f->fmt.pix;
>>   	priv->vdev.cc = imx_media_find_format(f->fmt.pix.pixelformat,
>>   					      CS_SEL_ANY, true);
>> -	priv->vdev.compose = compose;
>> +	priv->vdev.compose.left = 0;
>> +	priv->vdev.compose.top = 0;
>> +	priv->vdev.compose.width = fmt_src.format.width;
>> +	priv->vdev.compose.height = fmt_src.format.height;
>>   
>>   	return 0;
>>   }
>> @@ -655,8 +655,7 @@ static struct video_device capture_videodev = {
>>   };
>>   
>>   void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
>> -					 const struct v4l2_pix_format *pix,
>> -					 const struct v4l2_rect *compose)
>> +					 struct v4l2_pix_format *pix)
>>   {
>>   	struct capture_priv *priv = to_capture_priv(vdev);
>>   
>> @@ -664,7 +663,6 @@ void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
>>   	priv->vdev.fmt.fmt.pix = *pix;
>>   	priv->vdev.cc = imx_media_find_format(pix->pixelformat, CS_SEL_ANY,
>>   					      true);
>> -	priv->vdev.compose = *compose;
>>   	mutex_unlock(&priv->mutex);
>>   }
>>   EXPORT_SYMBOL_GPL(imx_media_capture_device_set_format);
>> @@ -770,8 +768,10 @@ int imx_media_capture_device_register(struct imx_media_video_dev *vdev)
>>   	}
>>   
>>   	vdev->fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
>> -	imx_media_mbus_fmt_to_pix_fmt(&vdev->fmt.fmt.pix, &vdev->compose,
>> +	imx_media_mbus_fmt_to_pix_fmt(&vdev->fmt.fmt.pix,
>>   				      &fmt_src.format, NULL);
>> +	vdev->compose.width = fmt_src.format.width;
>> +	vdev->compose.height = fmt_src.format.height;
>>   	vdev->cc = imx_media_find_format(vdev->fmt.fmt.pix.pixelformat,
>>   					 CS_SEL_ANY, false);
>>   
>> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
>> index c70fa6b509ae..09b89a72eaa2 100644
>> --- a/drivers/staging/media/imx/imx-media-csi.c
>> +++ b/drivers/staging/media/imx/imx-media-csi.c
>> @@ -1512,7 +1512,6 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
>>   	struct v4l2_pix_format vdev_fmt;
>>   	struct v4l2_mbus_framefmt *fmt;
>>   	struct v4l2_rect *crop, *compose;
>> -	struct v4l2_rect vdev_compose;
>>   	int ret;
>>   
>>   	if (sdformat->pad >= CSI_NUM_PADS)
>> @@ -1568,11 +1567,11 @@ static int csi_set_fmt(struct v4l2_subdev *sd,
>>   	priv->cc[sdformat->pad] = cc;
>>   
>>   	/* propagate IDMAC output pad format to capture device */
>> -	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt, &vdev_compose,
>> +	imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt,
>>   				      &priv->format_mbus[CSI_SRC_PAD_IDMAC],
>>   				      priv->cc[CSI_SRC_PAD_IDMAC]);
>>   	mutex_unlock(&priv->lock);
>> -	imx_media_capture_device_set_format(vdev, &vdev_fmt, &vdev_compose);
>> +	imx_media_capture_device_set_format(vdev, &vdev_fmt);
>>   
>>   	return 0;
>>   out:
>> diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
>> index 8a6e57652402..a80ef0b087ad 100644
>> --- a/drivers/staging/media/imx/imx-media-utils.c
>> +++ b/drivers/staging/media/imx/imx-media-utils.c
>> @@ -577,8 +577,7 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>   EXPORT_SYMBOL_GPL(imx_media_fill_default_mbus_fields);
>>   
>>   int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>> -				  struct v4l2_rect *compose,
>> -				  const struct v4l2_mbus_framefmt *mbus,
>> +				  struct v4l2_mbus_framefmt *mbus,
>>   				  const struct imx_media_pixfmt *cc)
>>   {
>>   	u32 width;
>> @@ -625,17 +624,6 @@ int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>>   	pix->sizeimage = cc->planar ? ((stride * pix->height * cc->bpp) >> 3) :
>>   			 stride * pix->height;
>>   
>> -	/*
>> -	 * set capture compose rectangle, which is fixed to the
>> -	 * source subdevice mbus format.
>> -	 */
>> -	if (compose) {
>> -		compose->left = 0;
>> -		compose->top = 0;
>> -		compose->width = mbus->width;
>> -		compose->height = mbus->height;
>> -	}
>> -
>>   	return 0;
>>   }
>>   EXPORT_SYMBOL_GPL(imx_media_mbus_fmt_to_pix_fmt);
>> @@ -647,11 +635,13 @@ int imx_media_mbus_fmt_to_ipu_image(struct ipu_image *image,
>>   
>>   	memset(image, 0, sizeof(*image));
>>   
>> -	ret = imx_media_mbus_fmt_to_pix_fmt(&image->pix, &image->rect,
>> -					    mbus, NULL);
>> +	ret = imx_media_mbus_fmt_to_pix_fmt(&image->pix, mbus, NULL);
>>   	if (ret)
>>   		return ret;
>>   
>> +	image->rect.width = mbus->width;
>> +	image->rect.height = mbus->height;
>> +
>>   	return 0;
>>   }
>>   EXPORT_SYMBOL_GPL(imx_media_mbus_fmt_to_ipu_image);
>> diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
>> index 71e20f53ed7b..ddea972b7bc4 100644
>> --- a/drivers/staging/media/imx/imx-media.h
>> +++ b/drivers/staging/media/imx/imx-media.h
>> @@ -174,8 +174,7 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>   					struct v4l2_mbus_framefmt *fmt,
>>   					bool ic_route);
>>   int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>> -				  struct v4l2_rect *compose,
>> -				  const struct v4l2_mbus_framefmt *mbus,
>> +				  struct v4l2_mbus_framefmt *mbus,
>>   				  const struct imx_media_pixfmt *cc);
> Also here you change this function arguments and only remove it
> from imx7-media-csi.c in the next patch, triggering:
>
>
> vers/staging/media/imx/imx7-media-csi.c: In function 'imx7_csi_set_fmt':
> drivers/staging/media/imx/imx7-media-csi.c:1089:43: error: passing argument 2 of 'imx_media_mbus_fmt_to_pix_fmt' from incompatible pointer type [-Werror=incompatible-pointer-types]
>    imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt, &vdev_compose,
>                                             ^~~~~~~~~~~~~
> In file included from drivers/staging/media/imx/imx7-media-csi.c:30:
> drivers/staging/media/imx/imx-media.h:177:34: note: expected 'struct v4l2_mbus_framefmt *' but argument is of type 'struct v4l2_rect *'
>         struct v4l2_mbus_framefmt *mbus,
>         ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~
> drivers/staging/media/imx/imx7-media-csi.c:1090:11: error: passing argument 3 of 'imx_media_mbus_fmt_to_pix_fmt' from incompatible pointer type [-Werror=incompatible-pointer-types]
>             &csi->format_mbus[IMX7_CSI_PAD_SRC],
>             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from drivers/staging/media/imx/imx7-media-csi.c:30:
> drivers/staging/media/imx/imx-media.h:178:38: note: expected 'const struct imx_media_pixfmt *' but argument is of type 'struct v4l2_mbus_framefmt *'
>         const struct imx_media_pixfmt *cc);
>         ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~
> drivers/staging/media/imx/imx7-media-csi.c:1089:2: error: too many arguments to function 'imx_media_mbus_fmt_to_pix_fmt'
>    imx_media_mbus_fmt_to_pix_fmt(&vdev_fmt, &vdev_compose,
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from drivers/staging/media/imx/imx7-media-csi.c:30:
> drivers/staging/media/imx/imx-media.h:176:5: note: declared here
>   int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/staging/media/imx/imx7-media-csi.c:1093:2: error: too many arguments to function 'imx_media_capture_device_set_format'
>    imx_media_capture_device_set_format(vdev, &vdev_fmt, &vdev_compose);
>    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> In file included from drivers/staging/media/imx/imx7-media-csi.c:30:
> drivers/staging/media/imx/imx-media.h:281:6: note: declared here
>   void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
>
> ---
> Cheers,
> 	Rui
>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
