Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E20E42B1FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 12:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LtE6vjY9NBuAe13Oz0kpaENV1Y2mytTODKqB7d0fURY=; b=riMLQl94d1pXCd
	QMRqKZ+QZC4B+bFYruccf1w2sx+lArYCQ/bZCNsT0AZ8oIfhtD2hnSVYNF12Hx+HXtw3xh5wEMzbV
	o9uXNSS6pz8mIuPjIoV5Hi5b/3tCMQsiVOq4i4k79KH3tApxNEjSKBJTGcAFaj2VAsohW1s0GGeY0
	dhVct00OoHS1aY6Qg3AWdHoE9poulKXLl7/347/dNBdexfPQCoCYNfJvX3CJhsoiXepszuh8ALRkX
	39QpIvKE0N3tgUTTc5TwNrVjGqkBUXivibpbvt95tgxW9F7fgxQDnUKXCrxnWQyhJ2wePSRzCUEEk
	/uQQ5r5VnaPL+eqM0n5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVCif-0004LC-Pr; Mon, 27 May 2019 10:19:05 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCiX-0004KN-K0
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 10:18:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id l17so7964659wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 03:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=LwxUoJ6KHI7Lo4NCQzACEK8n04rpymIn25xi21VbxX4=;
 b=RqL1nQrOdTjnzSONL1IvtOuOlklcvbK1tF85BRV+pbcLrhXWlADQMKsenoa4tQjrLP
 N/jVWwsUuQT+XjDm/PuwIjgLVX5BGr1d0seSz7N3/TJFKnuxGwXn6zvBHJr8iqiRGXqJ
 Z7klCMvZWvov9l/aE0u3uUoRGZu9L6SoNhxal6ZE+toQPACBxnEfI5G5hMKfi4tNKRdj
 Qbu3Y1AmfGndb6R+aW7yydE0yPDplieWU4VQFk/39h9d5nojMZmT2NIi5pBnLocZ0ny1
 1G46SK/biSVszctEqgwekddHB74ixXLVykPdmeSKdsRVau0l90IfdDHDr4oVAV5UsSkS
 trnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=LwxUoJ6KHI7Lo4NCQzACEK8n04rpymIn25xi21VbxX4=;
 b=esvDnIO1Mp1ZUZeav++pbqI1NcYYS+/JPh/5FsUVZqEOThyx+4JcP8hT8EMjpQl5fz
 VUi+UHu6Wy2VBevnYTltkkEauZNOFRPS3Z/IF0T9eM+hB/sgWYFYxMXYLZ/c+ey8wsTV
 IFgsmMBt5+aLB62KmGQ9M5R2d3455IPOWdIhAZV1rL4HkjKMnoNhuI/5s2zHjZ9Go8Ez
 QZ5IHyVjmMqdsMbMBfnIvWs3MiHl7N1zxwbeheE8JfEhePFEjcmThKJAv4GboioZ6H69
 t/HRfMweh7qK48pE1kqnnPgmPbvgrD28nBKR6smFEWZC0Qz3y9MoVfE5RLl6E/hwsMi/
 0g5Q==
X-Gm-Message-State: APjAAAXB5YChqzWZfcqOI8ZQQRjPOfbBA1Bj1FFs7jcrxKPz+Fh434ew
 Bcb1Oe68v/Nwq6U0hSbZnLjvOQ==
X-Google-Smtp-Source: APXvYqyv3HYYF09TdDZ2Jkaw8zvFhG9+4dXf5+1hmublX7pzRHeL7KsnSbQ+YLYMrJThebn4SnCHdw==
X-Received: by 2002:adf:83c5:: with SMTP id 63mr43965605wre.33.1558952334994; 
 Mon, 27 May 2019 03:18:54 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id n10sm4553989wrr.11.2019.05.27.03.18.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 03:18:53 -0700 (PDT)
Subject: Re: [PATCH v6 3/4] media: meson: add v4l2 m2m video decoder driver
To: Hans Verkuil <hverkuil@xs4all.nl>, Maxime Jourdan
 <mjourdan@baylibre.com>, Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20190514135612.30822-1-mjourdan@baylibre.com>
 <20190514135612.30822-4-mjourdan@baylibre.com>
 <07af1a22-d57c-aff6-b476-98fbf72135c1@xs4all.nl>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <480f2c43-9858-a4d3-7a6b-452756fb6076@baylibre.com>
Date: Mon, 27 May 2019 12:18:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <07af1a22-d57c-aff6-b476-98fbf72135c1@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_031857_800165_C6CE0DB0 
X-CRM114-Status: GOOD (  24.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hans.verkuil@cisco.com>, linux-amlogic@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hans,

On 27/05/2019 12:04, Hans Verkuil wrote:
> Hi Maxime,
> 
> First a high-level comment: I think this driver should go to staging.
> Once we finalize the stateful decoder spec, and we've updated the
> v4l2-compliance test, then this needs to be tested against that and
> only if it passes can it be moved out of staging.

I don't understand the reason since other stateful codecs are already
mainline and doesn't match the in-discussion stateful decoder spec either.

Neil

> 
> It is just a bit too soon to have this in mainline at this time.
> 
> One other comment below:
> 
> On 5/14/19 3:56 PM, Maxime Jourdan wrote:
>> Amlogic SoCs feature a powerful video decoder unit able to
>> decode many formats, with a performance of usually up to 4k60.
>>
>> This is a driver for this IP that is based around the v4l2 m2m framework.
>>
>> It features decoding for:
>> - MPEG 1
>> - MPEG 2
>>
>> Supported SoCs are: GXBB (S905), GXL (S905X/W/D), GXM (S912)
>>
>> There is also a hardware bitstream parser (ESPARSER) that is handled here.
>>
>> Tested-by: Neil Armstrong <narmstrong@baylibre.com>
>> Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
>> ---
>>  drivers/media/platform/Kconfig                |   10 +
>>  drivers/media/platform/meson/Makefile         |    1 +
>>  drivers/media/platform/meson/vdec/Makefile    |    8 +
>>  .../media/platform/meson/vdec/codec_mpeg12.c  |  209 ++++
>>  .../media/platform/meson/vdec/codec_mpeg12.h  |   14 +
>>  drivers/media/platform/meson/vdec/dos_regs.h  |   98 ++
>>  drivers/media/platform/meson/vdec/esparser.c  |  323 +++++
>>  drivers/media/platform/meson/vdec/esparser.h  |   32 +
>>  drivers/media/platform/meson/vdec/vdec.c      | 1071 +++++++++++++++++
>>  drivers/media/platform/meson/vdec/vdec.h      |  265 ++++
>>  drivers/media/platform/meson/vdec/vdec_1.c    |  229 ++++
>>  drivers/media/platform/meson/vdec/vdec_1.h    |   14 +
>>  .../media/platform/meson/vdec/vdec_ctrls.c    |   51 +
>>  .../media/platform/meson/vdec/vdec_ctrls.h    |   14 +
>>  .../media/platform/meson/vdec/vdec_helpers.c  |  441 +++++++
>>  .../media/platform/meson/vdec/vdec_helpers.h  |   80 ++
>>  .../media/platform/meson/vdec/vdec_platform.c |  107 ++
>>  .../media/platform/meson/vdec/vdec_platform.h |   30 +
>>  18 files changed, 2997 insertions(+)
>>  create mode 100644 drivers/media/platform/meson/vdec/Makefile
>>  create mode 100644 drivers/media/platform/meson/vdec/codec_mpeg12.c
>>  create mode 100644 drivers/media/platform/meson/vdec/codec_mpeg12.h
>>  create mode 100644 drivers/media/platform/meson/vdec/dos_regs.h
>>  create mode 100644 drivers/media/platform/meson/vdec/esparser.c
>>  create mode 100644 drivers/media/platform/meson/vdec/esparser.h
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec.c
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec.h
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_1.c
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_1.h
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_ctrls.c
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_ctrls.h
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_helpers.c
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_helpers.h
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_platform.c
>>  create mode 100644 drivers/media/platform/meson/vdec/vdec_platform.h
>>
> 
> <snip>
> 
>> diff --git a/drivers/media/platform/meson/vdec/vdec_ctrls.c b/drivers/media/platform/meson/vdec/vdec_ctrls.c
>> new file mode 100644
>> index 000000000000..d5d6b1b97aa5
>> --- /dev/null
>> +++ b/drivers/media/platform/meson/vdec/vdec_ctrls.c
>> @@ -0,0 +1,51 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/*
>> + * Copyright (C) 2018 BayLibre, SAS
>> + * Author: Maxime Jourdan <mjourdan@baylibre.com>
>> + */
>> +
>> +#include "vdec_ctrls.h"
>> +
>> +static int vdec_op_g_volatile_ctrl(struct v4l2_ctrl *ctrl)
>> +{
>> +	struct amvdec_session *sess =
>> +	      container_of(ctrl->handler, struct amvdec_session, ctrl_handler);
>> +
>> +	switch (ctrl->id) {
>> +	case V4L2_CID_MIN_BUFFERS_FOR_CAPTURE:
>> +		ctrl->val = sess->dpb_size;
>> +		break;
>> +	default:
>> +		return -EINVAL;
>> +	};
>> +
>> +	return 0;
>> +}
>> +
>> +static const struct v4l2_ctrl_ops vdec_ctrl_ops = {
>> +	.g_volatile_ctrl = vdec_op_g_volatile_ctrl,
>> +};
>> +
>> +int amvdec_init_ctrls(struct v4l2_ctrl_handler *ctrl_handler)
>> +{
>> +	int ret;
>> +	struct v4l2_ctrl *ctrl;
>> +
>> +	ret = v4l2_ctrl_handler_init(ctrl_handler, 1);
>> +	if (ret)
>> +		return ret;
>> +
>> +	ctrl = v4l2_ctrl_new_std(ctrl_handler, &vdec_ctrl_ops,
>> +		V4L2_CID_MIN_BUFFERS_FOR_CAPTURE, 1, 32, 1, 1);
>> +	if (ctrl)
>> +		ctrl->flags |= V4L2_CTRL_FLAG_VOLATILE;
> 
> Why is this volatile? That makes little sense.
> 
>> +
>> +	ret = ctrl_handler->error;
>> +	if (ret) {
>> +		v4l2_ctrl_handler_free(ctrl_handler);
>> +		return ret;
>> +	}
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL_GPL(amvdec_init_ctrls);
> 
> <snip>
> 
> Regards,
> 
> 	Hans
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
