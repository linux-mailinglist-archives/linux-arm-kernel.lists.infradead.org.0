Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25642E08C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uodYMoqRj6IZoZTUyXgHn9/BZN5bxzEp0xokzyVefFs=; b=MooIKhyO3ygVKkiAcPCzXXdp9
	VsHwaSAiyXtNOptAU5WMYoWDng0nMAcT83iQ/QzBoScQV4O7S1dDhXBVFu4/lbtGpP13LY+yy5+HR
	8UNkzPrSIGniIQSyUhq3FKlCa0qDpRrL0GoNFDOyp5OgOKxh2o2+VgXnp9lyvyIzdKU5YNc8vSb2a
	iyHzqkyrDqrYyXaMdGyI4vGipBiqprYSHMjPG8nZSK2d89KhQ0oWOTUcueZzN7Z9K5lCn77J0Kgjt
	2Is7tsSmU1tfVYpWo45Fn7zziKHf/4XDJlNUXNvX5SBFGOW3qBNC1WeP6Ggk4Axrblfrdn5gL2UIE
	0nOtQP/5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMwzU-0000Km-Eg; Tue, 22 Oct 2019 16:26:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMwzG-0000Ji-HI
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:26:24 +0000
Received: by mail-wr1-x441.google.com with SMTP id q13so13805513wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 09:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=eMfueehBIZbPRvbot5NVcmWMNha33nIDFO+DQF3Oqko=;
 b=e1z1SJv/jncmxRx9XNeieAVDenTqhPMpmlIxz66KVdjqbU6g+WzfrTzx4TaM26pejU
 yKrsfJDFRJx3SRHP7ZL9LbTt5ptsI/hud39gqlFbMVHNb8C8q3j8npoUdV/AHj2uSMyl
 YXWgce+eRhLdDm6c0B+GBecDltyC5wH5wZnJ+y6/mYZeObRwX3uQZJEx2Pcf0Wc+9P6l
 qoex//Zv5AVZ588ewat6qlMDloDD1aVBKCyg/rjLvrgAWuSqmsB9LHDQreSl35Ooi8wb
 +ivTGLVGj7upq+OuRoC6MidPIuAI9kC8tdwjua23yUOM6LIi2UGnF0cMb1QXrQMV5X4B
 V+gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=eMfueehBIZbPRvbot5NVcmWMNha33nIDFO+DQF3Oqko=;
 b=pegYyAbYWMGrQWx5AcGRJI/hS02SKCIeCjX2//rg5T6+YwaVgAnJQNYTghPsHZ2nwr
 xB28PK4JhrIr/W3aAwk7ozN+PXmW+uVbGS7AJ3MlF4jvfZ561ktMUSavc/un4S8wIDlm
 pGxvt209HaS/zKu3XeLgY9QsHc7wEGVb9j8PZlcq5a8xAhK4OKDyMk5Vl7qLc8v1YSUB
 fMEq4lmZ8s4yyP86vMVowUoLpim6ZkaRED+Z6bcEFq5N63vZxtDRRu2fj3swxZ+neD1Y
 kGUvQpRP5NlFg/1g06lFk0SKuXq7KCS3QiXqJeDxiQOz/hHX3S2a8Cp/C3OG2cQY9wHk
 ynXQ==
X-Gm-Message-State: APjAAAUFcXjU6jLSwRy2A93rFenksHLgwZA1xLk3R9C1zaaWS05t3wov
 hnd2CA6xkGi/yIRUxdztvCg=
X-Google-Smtp-Source: APXvYqwJt4B2vg3jWzFx3qVnLtzw2L7NtsXX8vQdJOrcCCY3pESZs7sl/Pqs1FCfnZFsmxqYj87r/Q==
X-Received: by 2002:a5d:50c2:: with SMTP id f2mr4289511wrt.147.1571761576733; 
 Tue, 22 Oct 2019 09:26:16 -0700 (PDT)
Received: from [172.30.89.178] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
 by smtp.gmail.com with ESMTPSA id k8sm36163765wrg.15.2019.10.22.09.26.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 09:26:15 -0700 (PDT)
Subject: Re: [PATCH v8 5/5] media: imx: Try colorimetry at both sink and
 source pads
To: Rui Miguel Silva <rmfrfs@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
References: <20190522010317.23710-1-slongerbeam@gmail.com>
 <20190522010317.23710-6-slongerbeam@gmail.com>
 <20191022014437.GG4947@pendragon.ideasonboard.com> <m3ftjkoqde.fsf@gmail.com>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <49778a60-7cf9-0315-f66f-21b47feedb1c@gmail.com>
Date: Tue, 22 Oct 2019 09:26:10 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <m3ftjkoqde.fsf@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_092622_585014_7720D557 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slongerbeam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 open list <linux-kernel@vger.kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent, Rui,

Besides field type ANY, the imx7 CSI should probably be dealing with 
other field type conversions as well. I may be mistaken, but like the 
imx6, the imx7 does not have the ability to detect whether a captured 
field is a top field or a bottom field, so it can't support ALTERNATE 
mode. It should probably capture two consecutive fields and in that case 
and report seq-tb or seq-bt at its output. Also the imx6 supports 
interlacing field lines, if that is the case for imx7 it should also 
support converting ALTERNATE to INTERLACED at its output.

Steve


On 10/22/19 6:34 AM, Rui Miguel Silva wrote:
> Hi Laurent,
> On Tue 22 Oct 2019 at 02:44, Laurent Pinchart wrote:
>> Hi Steve,
>>
>> On Tue, May 21, 2019 at 06:03:17PM -0700, Steve Longerbeam wrote:
>>> Retask imx_media_fill_default_mbus_fields() to try colorimetry parameters,
>>> renaming it to to imx_media_try_colorimetry(), and call it at both sink and
>>> source pad try_fmt's. The unrelated check for uninitialized field value is
>>> moved out to appropriate places in each subdev try_fmt.
>>>
>>> The IC now supports Rec.709 and BT.601 Y'CbCr encoding, and both limited
>>> and full range quantization for both YUV and RGB space, so allow those
>>> for pipelines that route through the IC.
>>>
>>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
>>> ---
>>> Changes in v7:
>>> - squashed with "media: imx: Allow Rec.709 encoding for IC routes".
>>> - remove the RGB full-range quantization restriction for IC routes.
>>> ---
>>>   drivers/staging/media/imx/imx-ic-prp.c      |  6 +-
>>>   drivers/staging/media/imx/imx-ic-prpencvf.c |  8 +--
>>>   drivers/staging/media/imx/imx-media-csi.c   | 19 +++---
>>>   drivers/staging/media/imx/imx-media-utils.c | 73 ++++++++++-----------
>>>   drivers/staging/media/imx/imx-media-vdic.c  |  5 +-
>>>   drivers/staging/media/imx/imx-media.h       |  5 +-
>>>   drivers/staging/media/imx/imx7-media-csi.c  |  8 +--
>>>   7 files changed, 62 insertions(+), 62 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/imx/imx-ic-prp.c b/drivers/staging/media/imx/imx-ic-prp.c
>>> index 10ffe00f1a54..f87fe0203720 100644
>>> --- a/drivers/staging/media/imx/imx-ic-prp.c
>>> +++ b/drivers/staging/media/imx/imx-ic-prp.c
>>> @@ -193,8 +193,8 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>>   			sdformat->format.code = cc->codes[0];
>>>   		}
>>>
>>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>>> -						   true);
>>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>>   		break;
>>>   	case PRP_SRC_PAD_PRPENC:
>>>   	case PRP_SRC_PAD_PRPVF:
>>> @@ -203,6 +203,8 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>>   		break;
>>>   	}
>>>
>>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>> +
>>>   	fmt = __prp_get_fmt(priv, cfg, sdformat->pad, sdformat->which);
>>>   	*fmt = sdformat->format;
>>>   out:
>>> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
>>> index e8b36a181ccc..f2fe3c11c70e 100644
>>> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
>>> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
>>> @@ -907,8 +907,6 @@ static void prp_try_fmt(struct prp_priv *priv,
>>>   		/* propagate colorimetry from sink */
>>>   		sdformat->format.colorspace = infmt->colorspace;
>>>   		sdformat->format.xfer_func = infmt->xfer_func;
>>> -		sdformat->format.quantization = infmt->quantization;
>>> -		sdformat->format.ycbcr_enc = infmt->ycbcr_enc;
>>>   	} else {
>>>   		v4l_bound_align_image(&sdformat->format.width,
>>>   				      MIN_W_SINK, MAX_W_SINK, W_ALIGN_SINK,
>>> @@ -916,9 +914,11 @@ static void prp_try_fmt(struct prp_priv *priv,
>>>   				      MIN_H_SINK, MAX_H_SINK, H_ALIGN_SINK,
>>>   				      S_ALIGN);
>>>
>>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>>> -						   true);
>>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>>   	}
>>> +
>>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>>   }
>>>
>>>   static int prp_set_fmt(struct v4l2_subdev *sd,
>>> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
>>> index 1d248aca40a9..dce4addadff4 100644
>>> --- a/drivers/staging/media/imx/imx-media-csi.c
>>> +++ b/drivers/staging/media/imx/imx-media-csi.c
>>> @@ -1375,9 +1375,15 @@ static void csi_try_field(struct csi_priv *priv,
>>>   	struct v4l2_mbus_framefmt *infmt =
>>>   		__csi_get_fmt(priv, cfg, CSI_SINK_PAD, sdformat->which);
>>>
>>> -	/* no restrictions on sink pad field type */
>>> -	if (sdformat->pad == CSI_SINK_PAD)
>>> +	/*
>>> +	 * no restrictions on sink pad field type except must
>>> +	 * be initialized.
>>> +	 */
>>> +	if (sdformat->pad == CSI_SINK_PAD) {
>>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>>   		return;
>>> +	}
>>>
>>>   	switch (infmt->field) {
>>>   	case V4L2_FIELD_SEQ_TB:
>>> @@ -1455,8 +1461,6 @@ static void csi_try_fmt(struct csi_priv *priv,
>>>   		/* propagate colorimetry from sink */
>>>   		sdformat->format.colorspace = infmt->colorspace;
>>>   		sdformat->format.xfer_func = infmt->xfer_func;
>>> -		sdformat->format.quantization = infmt->quantization;
>>> -		sdformat->format.ycbcr_enc = infmt->ycbcr_enc;
>>>
>>>   		break;
>>>   	case CSI_SINK_PAD:
>>> @@ -1476,10 +1480,6 @@ static void csi_try_fmt(struct csi_priv *priv,
>>>
>>>   		csi_try_field(priv, cfg, sdformat);
>>>
>>> -		imx_media_fill_default_mbus_fields(
>>> -			&sdformat->format, infmt,
>>> -			priv->active_output_pad == CSI_SRC_PAD_DIRECT);
>>> -
>>>   		/* Reset crop and compose rectangles */
>>>   		crop->left = 0;
>>>   		crop->top = 0;
>>> @@ -1495,6 +1495,9 @@ static void csi_try_fmt(struct csi_priv *priv,
>>>
>>>   		break;
>>>   	}
>>> +
>>> +	imx_media_try_colorimetry(&sdformat->format,
>>> +			priv->active_output_pad == CSI_SRC_PAD_DIRECT);
>>>   }
>>>
>>>   static int csi_set_fmt(struct v4l2_subdev *sd,
>>> diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
>>> index b41842dba5ec..05b63395084e 100644
>>> --- a/drivers/staging/media/imx/imx-media-utils.c
>>> +++ b/drivers/staging/media/imx/imx-media-utils.c
>>> @@ -511,21 +511,18 @@ int imx_media_init_cfg(struct v4l2_subdev *sd,
>>>   EXPORT_SYMBOL_GPL(imx_media_init_cfg);
>>>
>>>   /*
>>> - * Check whether the field and colorimetry parameters in tryfmt are
>>> - * uninitialized, and if so fill them with the values from fmt,
>>> - * or if tryfmt->colorspace has been initialized, all the default
>>> - * colorimetry params can be derived from tryfmt->colorspace.
>>> + * Default the colorspace in tryfmt to SRGB if set to an unsupported
>>> + * colorspace or not initialized. Then set the remaining colorimetry
>>> + * parameters based on the colorspace if they are uninitialized.
>>>    *
>>>    * tryfmt->code must be set on entry.
>>>    *
>>>    * If this format is destined to be routed through the Image Converter,
>>> - * quantization and Y`CbCr encoding must be fixed. The IC expects and
>>> - * produces fixed quantization and Y`CbCr encoding at its input and output
>>> - * (full range for RGB, limited range for YUV, and V4L2_YCBCR_ENC_601).
>>> + * Y`CbCr encoding must be fixed. The IC supports only BT.601 Y`CbCr
>>> + * or Rec.709 Y`CbCr encoding.
>>>    */
>>> -void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>> -					struct v4l2_mbus_framefmt *fmt,
>>> -					bool ic_route)
>>> +void imx_media_try_colorimetry(struct v4l2_mbus_framefmt *tryfmt,
>>> +			       bool ic_route)
>>>   {
>>>   	const struct imx_media_pixfmt *cc;
>>>   	bool is_rgb = false;
>>> @@ -533,44 +530,46 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>>   	cc = imx_media_find_mbus_format(tryfmt->code, CS_SEL_ANY, true);
>>>   	if (!cc)
>>>   		cc = imx_media_find_ipu_format(tryfmt->code, CS_SEL_ANY);
>>> -	if (cc && cc->cs != IPUV3_COLORSPACE_YUV)
>>> +	if (cc && cc->cs == IPUV3_COLORSPACE_RGB)
>>>   		is_rgb = true;
>>>
>>> -	/* fill field if necessary */
>>> -	if (tryfmt->field == V4L2_FIELD_ANY)
>>> -		tryfmt->field = fmt->field;
>> Have you tested this patch on i.MX7 ? It breaks pipeline validation as
>> the field field isn't handled anymore in imx7_csi_try_fmt(), due to the
>> removal if this code.
>>
>> I have a written a fix, I'll prepare a patch.
>>
> Somehow I missed completely this series. I do not recall it at all.
> Thanks in advance for your patch Laurent.
>
> ---
> Cheers,
> 	Rui
>
>>> +	switch (tryfmt->colorspace) {
>>> +	case V4L2_COLORSPACE_SMPTE170M:
>>> +	case V4L2_COLORSPACE_REC709:
>>> +	case V4L2_COLORSPACE_JPEG:
>>> +	case V4L2_COLORSPACE_SRGB:
>>> +	case V4L2_COLORSPACE_BT2020:
>>> +	case V4L2_COLORSPACE_OPRGB:
>>> +	case V4L2_COLORSPACE_DCI_P3:
>>> +	case V4L2_COLORSPACE_RAW:
>>> +		break;
>>> +	default:
>>> +		tryfmt->colorspace = V4L2_COLORSPACE_SRGB;
>>> +		break;
>>> +	}
>>> +
>>> +	if (tryfmt->xfer_func == V4L2_XFER_FUNC_DEFAULT)
>>> +		tryfmt->xfer_func =
>>> +			V4L2_MAP_XFER_FUNC_DEFAULT(tryfmt->colorspace);
>>>
>>> -	/* fill colorimetry if necessary */
>>> -	if (tryfmt->colorspace == V4L2_COLORSPACE_DEFAULT) {
>>> -		tryfmt->colorspace = fmt->colorspace;
>>> -		tryfmt->xfer_func = fmt->xfer_func;
>>> -		tryfmt->ycbcr_enc = fmt->ycbcr_enc;
>>> -		tryfmt->quantization = fmt->quantization;
>>> +	if (ic_route) {
>>> +		if (tryfmt->ycbcr_enc != V4L2_YCBCR_ENC_601 &&
>>> +		    tryfmt->ycbcr_enc != V4L2_YCBCR_ENC_709)
>>> +			tryfmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>>>   	} else {
>>> -		if (tryfmt->xfer_func == V4L2_XFER_FUNC_DEFAULT) {
>>> -			tryfmt->xfer_func =
>>> -				V4L2_MAP_XFER_FUNC_DEFAULT(tryfmt->colorspace);
>>> -		}
>>>   		if (tryfmt->ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT) {
>>>   			tryfmt->ycbcr_enc =
>>>   				V4L2_MAP_YCBCR_ENC_DEFAULT(tryfmt->colorspace);
>>>   		}
>>> -		if (tryfmt->quantization == V4L2_QUANTIZATION_DEFAULT) {
>>> -			tryfmt->quantization =
>>> -				V4L2_MAP_QUANTIZATION_DEFAULT(
>>> -					is_rgb, tryfmt->colorspace,
>>> -					tryfmt->ycbcr_enc);
>>> -		}
>>>   	}
>>>
>>> -	if (ic_route) {
>>> -		tryfmt->quantization = is_rgb ?
>>> -			V4L2_QUANTIZATION_FULL_RANGE :
>>> -			V4L2_QUANTIZATION_LIM_RANGE;
>>> -		tryfmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>>> -	}
>>> +	if (tryfmt->quantization == V4L2_QUANTIZATION_DEFAULT)
>>> +		tryfmt->quantization =
>>> +			V4L2_MAP_QUANTIZATION_DEFAULT(is_rgb,
>>> +						      tryfmt->colorspace,
>>> +						      tryfmt->ycbcr_enc);
>>>   }
>>> -EXPORT_SYMBOL_GPL(imx_media_fill_default_mbus_fields);
>>> +EXPORT_SYMBOL_GPL(imx_media_try_colorimetry);
>>>
>>>   int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>>>   				  struct v4l2_rect *compose,
>>> diff --git a/drivers/staging/media/imx/imx-media-vdic.c b/drivers/staging/media/imx/imx-media-vdic.c
>>> index 4487374c9435..fbafd7fb7aeb 100644
>>> --- a/drivers/staging/media/imx/imx-media-vdic.c
>>> +++ b/drivers/staging/media/imx/imx-media-vdic.c
>>> @@ -617,14 +617,13 @@ static void vdic_try_fmt(struct vdic_priv *priv,
>>>   				      &sdformat->format.height,
>>>   				      MIN_H, MAX_H_VDIC, H_ALIGN, S_ALIGN);
>>>
>>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>>> -						   true);
>>> -
>>>   		/* input must be interlaced! Choose SEQ_TB if not */
>>>   		if (!V4L2_FIELD_HAS_BOTH(sdformat->format.field))
>>>   			sdformat->format.field = V4L2_FIELD_SEQ_TB;
>>>   		break;
>>>   	}
>>> +
>>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>>   }
>>>
>>>   static int vdic_set_fmt(struct v4l2_subdev *sd,
>>> diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
>>> index 6587aa49e005..23024c9bc887 100644
>>> --- a/drivers/staging/media/imx/imx-media.h
>>> +++ b/drivers/staging/media/imx/imx-media.h
>>> @@ -172,9 +172,8 @@ int imx_media_init_mbus_fmt(struct v4l2_mbus_framefmt *mbus,
>>>   			    const struct imx_media_pixfmt **cc);
>>>   int imx_media_init_cfg(struct v4l2_subdev *sd,
>>>   		       struct v4l2_subdev_pad_config *cfg);
>>> -void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>> -					struct v4l2_mbus_framefmt *fmt,
>>> -					bool ic_route);
>>> +void imx_media_try_colorimetry(struct v4l2_mbus_framefmt *tryfmt,
>>> +			       bool ic_route);
>>>   int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>>>   				  struct v4l2_rect *compose,
>>>   				  const struct v4l2_mbus_framefmt *mbus,
>>> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
>>> index a708a0340eb1..6e2f4c3eb24f 100644
>>> --- a/drivers/staging/media/imx/imx7-media-csi.c
>>> +++ b/drivers/staging/media/imx/imx7-media-csi.c
>>> @@ -1003,8 +1003,6 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>>>
>>>   		sdformat->format.colorspace = in_fmt->colorspace;
>>>   		sdformat->format.xfer_func = in_fmt->xfer_func;
>>> -		sdformat->format.quantization = in_fmt->quantization;
>>> -		sdformat->format.ycbcr_enc = in_fmt->ycbcr_enc;
>>>   		break;
>>>   	case IMX7_CSI_PAD_SINK:
>>>   		*cc = imx_media_find_mbus_format(sdformat->format.code,
>>> @@ -1015,14 +1013,14 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>>>   							 false);
>>>   			sdformat->format.code = (*cc)->codes[0];
>>>   		}
>>> -
>>> -		imx_media_fill_default_mbus_fields(&sdformat->format, in_fmt,
>>> -						   false);
>>>   		break;
>>>   	default:
>>>   		return -EINVAL;
>>>   		break;
>>>   	}
>>> +
>>> +	imx_media_try_colorimetry(&sdformat->format, false);
>>> +
>>>   	return 0;
>>>   }
>>>
>>> --
>>> 2.17.1
>>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
