Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F312D2B1CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 12:04:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmzfIUsaVv36Othxxffolj76m6GK1ZVbasFv3q1uNBE=; b=MEXFVyrOXuyhkG
	6nPDTb+3ob1mNHQinw2ZAT5QqWH3RlX6UL+zCDHgcxb1uErqLyHdivpaD9t+0/S5fLiSNHlCWrTmL
	yk3MDySujtWD+k/7IU28/wU1aNcF13264djUQZM0w7R/msYQY4z2BtQNV+OBOWhbSVSZJoPc6Zn9r
	cGvbMUx+2v0UDzjpWPVTNQu6pCdGF0xBvtDjewHhA6Ztuz8C4Hk/rlJne9p0yz+mPmP6J+66GnFll
	VTGiPYNY3l1FPYZ66hxCAmbfqREY1SwtTeir+dlc0a1AEdv3tV04gXPi0hHafZD2/TqMzZ+srrhkK
	OILYIKPj5hvuH4TQu/TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCUx-0007IA-0u; Mon, 27 May 2019 10:04:55 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCUn-0007Gy-7i; Mon, 27 May 2019 10:04:47 +0000
Received: from [IPv6:2001:983:e9a7:1:f4bd:6355:63eb:2e52]
 ([IPv6:2001:983:e9a7:1:f4bd:6355:63eb:2e52])
 by smtp-cloud9.xs4all.net with ESMTPA
 id VCUjha9zasDWyVCUkhYa6r; Mon, 27 May 2019 12:04:43 +0200
Subject: Re: [PATCH v6 3/4] media: meson: add v4l2 m2m video decoder driver
To: Maxime Jourdan <mjourdan@baylibre.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190514135612.30822-1-mjourdan@baylibre.com>
 <20190514135612.30822-4-mjourdan@baylibre.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <07af1a22-d57c-aff6-b476-98fbf72135c1@xs4all.nl>
Date: Mon, 27 May 2019 12:04:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514135612.30822-4-mjourdan@baylibre.com>
Content-Language: en-US
X-CMAE-Envelope: MS4wfAPUbd4gijip9ltc6qVw2YEjOF0VIgfB18qKQs3YdT8omNplMAt5egnMNAw3XdidYdjEBlmH04PQ1ljmVzJug/BCTYRoHjk/jEOeP5p4/ko40rneX8r/
 kZrBaQuTbkRY7Z3ce5qv1ALfpan9mfio53vmqQICqw3kYpLmuwL58u3vVg2qoOQUv8Q8VFEiI3FLzF+pvSL3cBLc4mSJAY9ni5NoOH1nrVK5jrhjEHNlssua
 9uUc4NXWho+Q28lFs2SfLUDSH8BCkeF4Vghgbd51E3Uv9RPGTgfI0RuCT3YCa5kNWErG3+r5p4xTlE5T+LA5bOVs4P/hhoA4I8oUKEWo1+h352FDMQjABkCk
 1PefiX2S62LqbA+e8aL+yBscJqB1hyoqz2lsC80AiOkJTP8qQZz1TTQ54k9i3BdouWOjfRvKbrxYxDbUVetxus9ytZS8EI3GK7axkhW50t9sca2TJj6FQWRL
 cSKtvMjk1LinxBFDaeFIc+yqBSdV/pcp8YbSaoSHwrveh1Rbhijy6zdKG3t/jxf9DavNnVKuuZJyF/qCM/rMjbsdDhdV2TOByc05dlakGs4jhelHMWMooNsV
 iSyFD0y9vHa3tQY5AmHFiqdZoFs8om1JsAlu1KQmZMj4cw557CBpNoErHL6b82IBwygpaCpDWUYpTQ4qoRhyDe8P
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_030445_593353_C88A88FD 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-amlogic@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

First a high-level comment: I think this driver should go to staging.
Once we finalize the stateful decoder spec, and we've updated the
v4l2-compliance test, then this needs to be tested against that and
only if it passes can it be moved out of staging.

It is just a bit too soon to have this in mainline at this time.

One other comment below:

On 5/14/19 3:56 PM, Maxime Jourdan wrote:
> Amlogic SoCs feature a powerful video decoder unit able to
> decode many formats, with a performance of usually up to 4k60.
> 
> This is a driver for this IP that is based around the v4l2 m2m framework.
> 
> It features decoding for:
> - MPEG 1
> - MPEG 2
> 
> Supported SoCs are: GXBB (S905), GXL (S905X/W/D), GXM (S912)
> 
> There is also a hardware bitstream parser (ESPARSER) that is handled here.
> 
> Tested-by: Neil Armstrong <narmstrong@baylibre.com>
> Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
> ---
>  drivers/media/platform/Kconfig                |   10 +
>  drivers/media/platform/meson/Makefile         |    1 +
>  drivers/media/platform/meson/vdec/Makefile    |    8 +
>  .../media/platform/meson/vdec/codec_mpeg12.c  |  209 ++++
>  .../media/platform/meson/vdec/codec_mpeg12.h  |   14 +
>  drivers/media/platform/meson/vdec/dos_regs.h  |   98 ++
>  drivers/media/platform/meson/vdec/esparser.c  |  323 +++++
>  drivers/media/platform/meson/vdec/esparser.h  |   32 +
>  drivers/media/platform/meson/vdec/vdec.c      | 1071 +++++++++++++++++
>  drivers/media/platform/meson/vdec/vdec.h      |  265 ++++
>  drivers/media/platform/meson/vdec/vdec_1.c    |  229 ++++
>  drivers/media/platform/meson/vdec/vdec_1.h    |   14 +
>  .../media/platform/meson/vdec/vdec_ctrls.c    |   51 +
>  .../media/platform/meson/vdec/vdec_ctrls.h    |   14 +
>  .../media/platform/meson/vdec/vdec_helpers.c  |  441 +++++++
>  .../media/platform/meson/vdec/vdec_helpers.h  |   80 ++
>  .../media/platform/meson/vdec/vdec_platform.c |  107 ++
>  .../media/platform/meson/vdec/vdec_platform.h |   30 +
>  18 files changed, 2997 insertions(+)
>  create mode 100644 drivers/media/platform/meson/vdec/Makefile
>  create mode 100644 drivers/media/platform/meson/vdec/codec_mpeg12.c
>  create mode 100644 drivers/media/platform/meson/vdec/codec_mpeg12.h
>  create mode 100644 drivers/media/platform/meson/vdec/dos_regs.h
>  create mode 100644 drivers/media/platform/meson/vdec/esparser.c
>  create mode 100644 drivers/media/platform/meson/vdec/esparser.h
>  create mode 100644 drivers/media/platform/meson/vdec/vdec.c
>  create mode 100644 drivers/media/platform/meson/vdec/vdec.h
>  create mode 100644 drivers/media/platform/meson/vdec/vdec_1.c
>  create mode 100644 drivers/media/platform/meson/vdec/vdec_1.h
>  create mode 100644 drivers/media/platform/meson/vdec/vdec_ctrls.c
>  create mode 100644 drivers/media/platform/meson/vdec/vdec_ctrls.h
>  create mode 100644 drivers/media/platform/meson/vdec/vdec_helpers.c
>  create mode 100644 drivers/media/platform/meson/vdec/vdec_helpers.h
>  create mode 100644 drivers/media/platform/meson/vdec/vdec_platform.c
>  create mode 100644 drivers/media/platform/meson/vdec/vdec_platform.h
> 

<snip>

> diff --git a/drivers/media/platform/meson/vdec/vdec_ctrls.c b/drivers/media/platform/meson/vdec/vdec_ctrls.c
> new file mode 100644
> index 000000000000..d5d6b1b97aa5
> --- /dev/null
> +++ b/drivers/media/platform/meson/vdec/vdec_ctrls.c
> @@ -0,0 +1,51 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright (C) 2018 BayLibre, SAS
> + * Author: Maxime Jourdan <mjourdan@baylibre.com>
> + */
> +
> +#include "vdec_ctrls.h"
> +
> +static int vdec_op_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
> +{
> +	struct amvdec_session *sess =
> +	      container_of(ctrl->handler, struct amvdec_session, ctrl_handler);
> +
> +	switch (ctrl->id) {
> +	case V4L2_CID_MIN_BUFFERS_FOR_CAPTURE:
> +		ctrl->val = sess->dpb_size;
> +		break;
> +	default:
> +		return -EINVAL;
> +	};
> +
> +	return 0;
> +}
> +
> +static const struct v4l2_ctrl_ops vdec_ctrl_ops = {
> +	.g_volatile_ctrl = vdec_op_g_volatile_ctrl,
> +};
> +
> +int amvdec_init_ctrls(struct v4l2_ctrl_handler *ctrl_handler)
> +{
> +	int ret;
> +	struct v4l2_ctrl *ctrl;
> +
> +	ret = v4l2_ctrl_handler_init(ctrl_handler, 1);
> +	if (ret)
> +		return ret;
> +
> +	ctrl = v4l2_ctrl_new_std(ctrl_handler, &vdec_ctrl_ops,
> +		V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, 1, 32, 1, 1);
> +	if (ctrl)
> +		ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;

Why is this volatile? That makes little sense.

> +
> +	ret = ctrl_handler->error;
> +	if (ret) {
> +		v4l2_ctrl_handler_free(ctrl_handler);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(amvdec_init_ctrls);

<snip>

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
