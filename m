Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840A2E154D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 11:07:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Aum9kzxeKwBLnpF5glIBM4SERtqepgpE2AzpUQZGhdA=; b=q+RDQRaEDSB7iMCFAL1FkoLN68
	5uYSBDVt0O3bWRBErv2iCiwXxuuTVLunouKwDYlJ347sAzZDFSXfDoxpxFvSY/k06ntorvtbSoWl9
	l1+wTHs9GwvcLMcN1Y/ypY0AeGMXAQgGHwqDiV3TpQqfJeVD8PX9bJoCfFg4dJP+9x7gvJ/5Xx+c1
	TwIOnYREC53x4qtYkIVxJvE5bvnDotD60ASs8LaTvhaGw6dMK+NkDH1cI13EZB1Dq0iaXCo4QZH8y
	H/eD9Aqd2rsa6sVqIjX/I5QTPS3z/AQpZatLJV6q+2RS/p6EXBqXoPFagXnJdbsOsLKDS/2UajjJy
	A2HJPBcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNCc4-0007iy-1S; Wed, 23 Oct 2019 09:07:28 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNCbk-0007dA-Sy
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 09:07:13 +0000
Received: by mail-wr1-x443.google.com with SMTP id t16so16034199wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 02:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=references:user-agent:from:to:cc:subject:in-reply-to:date
 :message-id:mime-version;
 bh=DGeDA25TYiUuIpMDImm7WFGjIrrmobA3u0x8S/aGI4E=;
 b=TwhmUhltig4OVlNM1ZZI70yqAPoSr/NxzEh6Cb70HnfUltjt17LzFsogYw1NqslTVU
 JW6gpvHAIfixEcUOKCXOelPJ74TJtWl1InTuzlysO5WtDfdNcdVMe+gNdeWhPSIL+7gL
 VjJQ8CRQQg21PRDdA2yYkqeS3YMY2JnN7vOBhqaLPDzKYo6aCpl7tU7x2C/a7jrvRVVD
 gznbI1roC503ZbgeRT3imkIG+mjdBJUMwKXZbeTwrRNi8jXFrKYwsiF1u/VBj1C7IYVf
 SePoPjwfsU+hjT6aeAO5fjL3AKqJBOOmn6lJhZYqpSYneEiimZs8e3z99XbWSpNgpP6h
 kyuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:cc:subject
 :in-reply-to:date:message-id:mime-version;
 bh=DGeDA25TYiUuIpMDImm7WFGjIrrmobA3u0x8S/aGI4E=;
 b=XV29x3Y0BnbPgew1U/pj4Di/uDlcOp3mMBk3EpCnfNmtN6azPNU68rxc6FWMWfzBUu
 vZQSI/XqVF8UAXyAMiOfQp05Y7/1wzuiSFo1tHbdErnwX301zpuzQuLGf8lmCvUKuipd
 sGbHAJb066rFQLT431GAFHA6U5ugwMbY4KzPKpUD82tdm3ykUGDC7Z2lYYVZXNAGQNNI
 BcCdXJUVc1/Z3fIwA88z+5Vo9f+tpffPfQIW96KMypj6VX3ZSKWmpFSCMtF5oCxRzaih
 IScZwO2UR+K9M6IoY9V1zfEUj2uMm7U3H6pZCV0b0JEthl+LcYq6Qf83BIaNXT53GwJR
 Miww==
X-Gm-Message-State: APjAAAXinO9ASxzXOpRFw+owuVmY7ZEBY2eDq+sbGtKuEusD2iNUyv8X
 rJ3syOJKUCsKV7R/meUcQrQ=
X-Google-Smtp-Source: APXvYqy6ljv2PZoOk13Zus0BLWNq4gn064+QBpPT6Pukr0ysbATQYFeIw+ZFGB5LuBWsTz6tZtq3UA==
X-Received: by 2002:adf:cd84:: with SMTP id q4mr7304620wrj.153.1571821627148; 
 Wed, 23 Oct 2019 02:07:07 -0700 (PDT)
Received: from arch-late (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id o19sm20050046wmh.27.2019.10.23.02.07.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 02:07:05 -0700 (PDT)
References: <20190522010317.23710-1-slongerbeam@gmail.com>
 <20190522010317.23710-6-slongerbeam@gmail.com>
 <20191022014437.GG4947@pendragon.ideasonboard.com>
 <m3ftjkoqde.fsf@gmail.com>
 <49778a60-7cf9-0315-f66f-21b47feedb1c@gmail.com>
User-agent: mu4e 1.2.0; emacs 27.0.50
From: Rui Miguel Silva <rmfrfs@gmail.com>
To: Steve Longerbeam <slongerbeam@gmail.com>
Subject: Re: [PATCH v8 5/5] media: imx: Try colorimetry at both sink and
 source pads
In-reply-to: <49778a60-7cf9-0315-f66f-21b47feedb1c@gmail.com>
Date: Wed, 23 Oct 2019 10:07:00 +0100
Message-ID: <m37e4vrft7.fsf@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_020709_181343_BA04FB92 
X-CRM114-Status: GOOD (  24.54  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
 1.0 HK_RANDOM_FROM         From username looks random
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rmfrfs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 open list <linux-kernel@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Steve,
On Tue 22 Oct 2019 at 17:26, Steve Longerbeam wrote:
> Hi Laurent, Rui,
>
> Besides field type ANY, the imx7 CSI should probably be dealing with other field
> type conversions as well. I may be mistaken, but like the imx6, the imx7 does
> not have the ability to detect whether a captured field is a top field or a
> bottom field, so it can't support ALTERNATE mode. It should probably capture two
> consecutive fields and in that case and report seq-tb or seq-bt at its output.
> Also the imx6 supports interlacing field lines, if that is the case for imx7 it
> should also support converting ALTERNATE to INTERLACED at its output.
>

Yeah, that makes sense to me, I already saw yours csi_try_field
that does something in this lines.

I will try to handle that in imx7 also.

Thanks for your inputs here.

Cheers,
    Rui
>
> Steve
>
>
> On 10/22/19 6:34 AM, Rui Miguel Silva wrote:
>> Hi Laurent,
>> On Tue 22 Oct 2019 at 02:44, Laurent Pinchart wrote:
>>> Hi Steve,
>>>
>>> On Tue, May 21, 2019 at 06:03:17PM -0700, Steve Longerbeam wrote:
>>>> Retask imx_media_fill_default_mbus_fields() to try colorimetry parameters,
>>>> renaming it to to imx_media_try_colorimetry(), and call it at both sink and
>>>> source pad try_fmt's. The unrelated check for uninitialized field value is
>>>> moved out to appropriate places in each subdev try_fmt.
>>>>
>>>> The IC now supports Rec.709 and BT.601 Y'CbCr encoding, and both limited
>>>> and full range quantization for both YUV and RGB space, so allow those
>>>> for pipelines that route through the IC.
>>>>
>>>> Signed-off-by: Steve Longerbeam <slongerbeam@gmail.com>
>>>> ---
>>>> Changes in v7:
>>>> - squashed with "media: imx: Allow Rec.709 encoding for IC routes".
>>>> - remove the RGB full-range quantization restriction for IC routes.
>>>> ---
>>>>   drivers/staging/media/imx/imx-ic-prp.c      |  6 +-
>>>>   drivers/staging/media/imx/imx-ic-prpencvf.c |  8 +--
>>>>   drivers/staging/media/imx/imx-media-csi.c   | 19 +++---
>>>>   drivers/staging/media/imx/imx-media-utils.c | 73 ++++++++++-----------
>>>>   drivers/staging/media/imx/imx-media-vdic.c  |  5 +-
>>>>   drivers/staging/media/imx/imx-media.h       |  5 +-
>>>>   drivers/staging/media/imx/imx7-media-csi.c  |  8 +--
>>>>   7 files changed, 62 insertions(+), 62 deletions(-)
>>>>
>>>> diff --git a/drivers/staging/media/imx/imx-ic-prp.c b/drivers/staging/media/imx/imx-ic-prp.c
>>>> index 10ffe00f1a54..f87fe0203720 100644
>>>> --- a/drivers/staging/media/imx/imx-ic-prp.c
>>>> +++ b/drivers/staging/media/imx/imx-ic-prp.c
>>>> @@ -193,8 +193,8 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>>>   			sdformat->format.code = cc->codes[0];
>>>>   		}
>>>>
>>>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>>>> -						   true);
>>>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>>>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>>>   		break;
>>>>   	case PRP_SRC_PAD_PRPENC:
>>>>   	case PRP_SRC_PAD_PRPVF:
>>>> @@ -203,6 +203,8 @@ static int prp_set_fmt(struct v4l2_subdev *sd,
>>>>   		break;
>>>>   	}
>>>>
>>>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>>> +
>>>>   	fmt = __prp_get_fmt(priv, cfg, sdformat->pad, sdformat->which);
>>>>   	*fmt = sdformat->format;
>>>>   out:
>>>> diff --git a/drivers/staging/media/imx/imx-ic-prpencvf.c b/drivers/staging/media/imx/imx-ic-prpencvf.c
>>>> index e8b36a181ccc..f2fe3c11c70e 100644
>>>> --- a/drivers/staging/media/imx/imx-ic-prpencvf.c
>>>> +++ b/drivers/staging/media/imx/imx-ic-prpencvf.c
>>>> @@ -907,8 +907,6 @@ static void prp_try_fmt(struct prp_priv *priv,
>>>>   		/* propagate colorimetry from sink */
>>>>   		sdformat->format.colorspace = infmt->colorspace;
>>>>   		sdformat->format.xfer_func = infmt->xfer_func;
>>>> -		sdformat->format.quantization = infmt->quantization;
>>>> -		sdformat->format.ycbcr_enc = infmt->ycbcr_enc;
>>>>   	} else {
>>>>   		v4l_bound_align_image(&sdformat->format.width,
>>>>   				      MIN_W_SINK, MAX_W_SINK, W_ALIGN_SINK,
>>>> @@ -916,9 +914,11 @@ static void prp_try_fmt(struct prp_priv *priv,
>>>>   				      MIN_H_SINK, MAX_H_SINK, H_ALIGN_SINK,
>>>>   				      S_ALIGN);
>>>>
>>>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>>>> -						   true);
>>>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>>>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>>>   	}
>>>> +
>>>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>>>   }
>>>>
>>>>   static int prp_set_fmt(struct v4l2_subdev *sd,
>>>> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
>>>> index 1d248aca40a9..dce4addadff4 100644
>>>> --- a/drivers/staging/media/imx/imx-media-csi.c
>>>> +++ b/drivers/staging/media/imx/imx-media-csi.c
>>>> @@ -1375,9 +1375,15 @@ static void csi_try_field(struct csi_priv *priv,
>>>>   	struct v4l2_mbus_framefmt *infmt =
>>>>   		__csi_get_fmt(priv, cfg, CSI_SINK_PAD, sdformat->which);
>>>>
>>>> -	/* no restrictions on sink pad field type */
>>>> -	if (sdformat->pad == CSI_SINK_PAD)
>>>> +	/*
>>>> +	 * no restrictions on sink pad field type except must
>>>> +	 * be initialized.
>>>> +	 */
>>>> +	if (sdformat->pad == CSI_SINK_PAD) {
>>>> +		if (sdformat->format.field == V4L2_FIELD_ANY)
>>>> +			sdformat->format.field = V4L2_FIELD_NONE;
>>>>   		return;
>>>> +	}
>>>>
>>>>   	switch (infmt->field) {
>>>>   	case V4L2_FIELD_SEQ_TB:
>>>> @@ -1455,8 +1461,6 @@ static void csi_try_fmt(struct csi_priv *priv,
>>>>   		/* propagate colorimetry from sink */
>>>>   		sdformat->format.colorspace = infmt->colorspace;
>>>>   		sdformat->format.xfer_func = infmt->xfer_func;
>>>> -		sdformat->format.quantization = infmt->quantization;
>>>> -		sdformat->format.ycbcr_enc = infmt->ycbcr_enc;
>>>>
>>>>   		break;
>>>>   	case CSI_SINK_PAD:
>>>> @@ -1476,10 +1480,6 @@ static void csi_try_fmt(struct csi_priv *priv,
>>>>
>>>>   		csi_try_field(priv, cfg, sdformat);
>>>>
>>>> -		imx_media_fill_default_mbus_fields(
>>>> -			&sdformat->format, infmt,
>>>> -			priv->active_output_pad == CSI_SRC_PAD_DIRECT);
>>>> -
>>>>   		/* Reset crop and compose rectangles */
>>>>   		crop->left = 0;
>>>>   		crop->top = 0;
>>>> @@ -1495,6 +1495,9 @@ static void csi_try_fmt(struct csi_priv *priv,
>>>>
>>>>   		break;
>>>>   	}
>>>> +
>>>> +	imx_media_try_colorimetry(&sdformat->format,
>>>> +			priv->active_output_pad == CSI_SRC_PAD_DIRECT);
>>>>   }
>>>>
>>>>   static int csi_set_fmt(struct v4l2_subdev *sd,
>>>> diff --git a/drivers/staging/media/imx/imx-media-utils.c b/drivers/staging/media/imx/imx-media-utils.c
>>>> index b41842dba5ec..05b63395084e 100644
>>>> --- a/drivers/staging/media/imx/imx-media-utils.c
>>>> +++ b/drivers/staging/media/imx/imx-media-utils.c
>>>> @@ -511,21 +511,18 @@ int imx_media_init_cfg(struct v4l2_subdev *sd,
>>>>   EXPORT_SYMBOL_GPL(imx_media_init_cfg);
>>>>
>>>>   /*
>>>> - * Check whether the field and colorimetry parameters in tryfmt are
>>>> - * uninitialized, and if so fill them with the values from fmt,
>>>> - * or if tryfmt->colorspace has been initialized, all the default
>>>> - * colorimetry params can be derived from tryfmt->colorspace.
>>>> + * Default the colorspace in tryfmt to SRGB if set to an unsupported
>>>> + * colorspace or not initialized. Then set the remaining colorimetry
>>>> + * parameters based on the colorspace if they are uninitialized.
>>>>    *
>>>>    * tryfmt->code must be set on entry.
>>>>    *
>>>>    * If this format is destined to be routed through the Image Converter,
>>>> - * quantization and Y`CbCr encoding must be fixed. The IC expects and
>>>> - * produces fixed quantization and Y`CbCr encoding at its input and output
>>>> - * (full range for RGB, limited range for YUV, and V4L2_YCBCR_ENC_601).
>>>> + * Y`CbCr encoding must be fixed. The IC supports only BT.601 Y`CbCr
>>>> + * or Rec.709 Y`CbCr encoding.
>>>>    */
>>>> -void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>>> -					struct v4l2_mbus_framefmt *fmt,
>>>> -					bool ic_route)
>>>> +void imx_media_try_colorimetry(struct v4l2_mbus_framefmt *tryfmt,
>>>> +			       bool ic_route)
>>>>   {
>>>>   	const struct imx_media_pixfmt *cc;
>>>>   	bool is_rgb = false;
>>>> @@ -533,44 +530,46 @@ void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>>>   	cc = imx_media_find_mbus_format(tryfmt->code, CS_SEL_ANY, true);
>>>>   	if (!cc)
>>>>   		cc = imx_media_find_ipu_format(tryfmt->code, CS_SEL_ANY);
>>>> -	if (cc && cc->cs != IPUV3_COLORSPACE_YUV)
>>>> +	if (cc && cc->cs == IPUV3_COLORSPACE_RGB)
>>>>   		is_rgb = true;
>>>>
>>>> -	/* fill field if necessary */
>>>> -	if (tryfmt->field == V4L2_FIELD_ANY)
>>>> -		tryfmt->field = fmt->field;
>>> Have you tested this patch on i.MX7 ? It breaks pipeline validation as
>>> the field field isn't handled anymore in imx7_csi_try_fmt(), due to the
>>> removal if this code.
>>>
>>> I have a written a fix, I'll prepare a patch.
>>>
>> Somehow I missed completely this series. I do not recall it at all.
>> Thanks in advance for your patch Laurent.
>>
>> ---
>> Cheers,
>> 	Rui
>>
>>>> +	switch (tryfmt->colorspace) {
>>>> +	case V4L2_COLORSPACE_SMPTE170M:
>>>> +	case V4L2_COLORSPACE_REC709:
>>>> +	case V4L2_COLORSPACE_JPEG:
>>>> +	case V4L2_COLORSPACE_SRGB:
>>>> +	case V4L2_COLORSPACE_BT2020:
>>>> +	case V4L2_COLORSPACE_OPRGB:
>>>> +	case V4L2_COLORSPACE_DCI_P3:
>>>> +	case V4L2_COLORSPACE_RAW:
>>>> +		break;
>>>> +	default:
>>>> +		tryfmt->colorspace = V4L2_COLORSPACE_SRGB;
>>>> +		break;
>>>> +	}
>>>> +
>>>> +	if (tryfmt->xfer_func == V4L2_XFER_FUNC_DEFAULT)
>>>> +		tryfmt->xfer_func =
>>>> +			V4L2_MAP_XFER_FUNC_DEFAULT(tryfmt->colorspace);
>>>>
>>>> -	/* fill colorimetry if necessary */
>>>> -	if (tryfmt->colorspace == V4L2_COLORSPACE_DEFAULT) {
>>>> -		tryfmt->colorspace = fmt->colorspace;
>>>> -		tryfmt->xfer_func = fmt->xfer_func;
>>>> -		tryfmt->ycbcr_enc = fmt->ycbcr_enc;
>>>> -		tryfmt->quantization = fmt->quantization;
>>>> +	if (ic_route) {
>>>> +		if (tryfmt->ycbcr_enc != V4L2_YCBCR_ENC_601 &&
>>>> +		    tryfmt->ycbcr_enc != V4L2_YCBCR_ENC_709)
>>>> +			tryfmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>>>>   	} else {
>>>> -		if (tryfmt->xfer_func == V4L2_XFER_FUNC_DEFAULT) {
>>>> -			tryfmt->xfer_func =
>>>> -				V4L2_MAP_XFER_FUNC_DEFAULT(tryfmt->colorspace);
>>>> -		}
>>>>   		if (tryfmt->ycbcr_enc == V4L2_YCBCR_ENC_DEFAULT) {
>>>>   			tryfmt->ycbcr_enc =
>>>>   				V4L2_MAP_YCBCR_ENC_DEFAULT(tryfmt->colorspace);
>>>>   		}
>>>> -		if (tryfmt->quantization == V4L2_QUANTIZATION_DEFAULT) {
>>>> -			tryfmt->quantization =
>>>> -				V4L2_MAP_QUANTIZATION_DEFAULT(
>>>> -					is_rgb, tryfmt->colorspace,
>>>> -					tryfmt->ycbcr_enc);
>>>> -		}
>>>>   	}
>>>>
>>>> -	if (ic_route) {
>>>> -		tryfmt->quantization = is_rgb ?
>>>> -			V4L2_QUANTIZATION_FULL_RANGE :
>>>> -			V4L2_QUANTIZATION_LIM_RANGE;
>>>> -		tryfmt->ycbcr_enc = V4L2_YCBCR_ENC_601;
>>>> -	}
>>>> +	if (tryfmt->quantization == V4L2_QUANTIZATION_DEFAULT)
>>>> +		tryfmt->quantization =
>>>> +			V4L2_MAP_QUANTIZATION_DEFAULT(is_rgb,
>>>> +						      tryfmt->colorspace,
>>>> +						      tryfmt->ycbcr_enc);
>>>>   }
>>>> -EXPORT_SYMBOL_GPL(imx_media_fill_default_mbus_fields);
>>>> +EXPORT_SYMBOL_GPL(imx_media_try_colorimetry);
>>>>
>>>>   int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>>>>   				  struct v4l2_rect *compose,
>>>> diff --git a/drivers/staging/media/imx/imx-media-vdic.c b/drivers/staging/media/imx/imx-media-vdic.c
>>>> index 4487374c9435..fbafd7fb7aeb 100644
>>>> --- a/drivers/staging/media/imx/imx-media-vdic.c
>>>> +++ b/drivers/staging/media/imx/imx-media-vdic.c
>>>> @@ -617,14 +617,13 @@ static void vdic_try_fmt(struct vdic_priv *priv,
>>>>   				      &sdformat->format.height,
>>>>   				      MIN_H, MAX_H_VDIC, H_ALIGN, S_ALIGN);
>>>>
>>>> -		imx_media_fill_default_mbus_fields(&sdformat->format, infmt,
>>>> -						   true);
>>>> -
>>>>   		/* input must be interlaced! Choose SEQ_TB if not */
>>>>   		if (!V4L2_FIELD_HAS_BOTH(sdformat->format.field))
>>>>   			sdformat->format.field = V4L2_FIELD_SEQ_TB;
>>>>   		break;
>>>>   	}
>>>> +
>>>> +	imx_media_try_colorimetry(&sdformat->format, true);
>>>>   }
>>>>
>>>>   static int vdic_set_fmt(struct v4l2_subdev *sd,
>>>> diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
>>>> index 6587aa49e005..23024c9bc887 100644
>>>> --- a/drivers/staging/media/imx/imx-media.h
>>>> +++ b/drivers/staging/media/imx/imx-media.h
>>>> @@ -172,9 +172,8 @@ int imx_media_init_mbus_fmt(struct v4l2_mbus_framefmt *mbus,
>>>>   			    const struct imx_media_pixfmt **cc);
>>>>   int imx_media_init_cfg(struct v4l2_subdev *sd,
>>>>   		       struct v4l2_subdev_pad_config *cfg);
>>>> -void imx_media_fill_default_mbus_fields(struct v4l2_mbus_framefmt *tryfmt,
>>>> -					struct v4l2_mbus_framefmt *fmt,
>>>> -					bool ic_route);
>>>> +void imx_media_try_colorimetry(struct v4l2_mbus_framefmt *tryfmt,
>>>> +			       bool ic_route);
>>>>   int imx_media_mbus_fmt_to_pix_fmt(struct v4l2_pix_format *pix,
>>>>   				  struct v4l2_rect *compose,
>>>>   				  const struct v4l2_mbus_framefmt *mbus,
>>>> diff --git a/drivers/staging/media/imx/imx7-media-csi.c b/drivers/staging/media/imx/imx7-media-csi.c
>>>> index a708a0340eb1..6e2f4c3eb24f 100644
>>>> --- a/drivers/staging/media/imx/imx7-media-csi.c
>>>> +++ b/drivers/staging/media/imx/imx7-media-csi.c
>>>> @@ -1003,8 +1003,6 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>>>>
>>>>   		sdformat->format.colorspace = in_fmt->colorspace;
>>>>   		sdformat->format.xfer_func = in_fmt->xfer_func;
>>>> -		sdformat->format.quantization = in_fmt->quantization;
>>>> -		sdformat->format.ycbcr_enc = in_fmt->ycbcr_enc;
>>>>   		break;
>>>>   	case IMX7_CSI_PAD_SINK:
>>>>   		*cc = imx_media_find_mbus_format(sdformat->format.code,
>>>> @@ -1015,14 +1013,14 @@ static int imx7_csi_try_fmt(struct imx7_csi *csi,
>>>>   							 false);
>>>>   			sdformat->format.code = (*cc)->codes[0];
>>>>   		}
>>>> -
>>>> -		imx_media_fill_default_mbus_fields(&sdformat->format, in_fmt,
>>>> -						   false);
>>>>   		break;
>>>>   	default:
>>>>   		return -EINVAL;
>>>>   		break;
>>>>   	}
>>>> +
>>>> +	imx_media_try_colorimetry(&sdformat->format, false);
>>>> +
>>>>   	return 0;
>>>>   }
>>>>
>>>> --
>>>> 2.17.1
>>>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
