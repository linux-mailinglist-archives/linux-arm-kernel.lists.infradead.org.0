Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3612014D65F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 07:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=r3uEA2EM4KAOAc5xjOh9WNqM5E5/I7KWQqhzbTpQmrw=; b=jztC/65j7qYY9zZf+PUFcHqdQ
	0rpo7iZiDbrRb7NntjZV4UKrXBzH1d/oigz/Nd52HbfF7NIGeoqKa7HoU5X4cG+7Xq9XUAtFHQCcP
	LQmhBTFbeckfh586zr4kDOMdvsuVfJwBxrpRB8bx6o4sgewP29d9+7zeD79aidk84G+l8zd0erlVb
	AMqanUDcY9xaC0t4ZOvyrEH0H5BU1ulrBfb+7WYD6xQ8guOCqdcp064PaWOFUYyGP6gjRd/81356e
	6AgEfij4ME9JLB1shqL6tDe3Ny3s2YRKCRzx+n7xUs/h/ELHLga0jt823GQ8CIICbLT3TQyH1Iczi
	Nfg3xH7sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ix3CY-00033G-19; Thu, 30 Jan 2020 06:21:18 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ix3CL-00032d-Qh
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 06:21:07 +0000
Received: from 94.155.250.134 ([94.155.250.134]) by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Wed, 29 Jan 2020 22:20:58 -0800
Subject: Re: [PATCH v3 1/1] drm: sun4i: hdmi: Add support for sun4i HDMI
 encoder audio
To: Maxime Ripard <maxime@cerno.tech>, Stefan Mavrodiev <stefan@olimex.com>
References: <20200128140642.8404-1-stefan@olimex.com>
 <20200128140642.8404-2-stefan@olimex.com>
 <20200129164321.34mornbi3xvx5dys@gilmour.lan>
From: Stefan Mavrodiev <stefan@olimex.com>
Message-ID: <64676a4b-e149-146c-81b4-7fd5e792efc5@olimex.com>
Date: Thu, 30 Jan 2020 08:20:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200129164321.34mornbi3xvx5dys@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_222105_868146_C191F46D 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 1/29/20 6:43 PM, Maxime Ripard wrote:
> Hi,
>
> On Tue, Jan 28, 2020 at 04:06:42PM +0200, Stefan Mavrodiev wrote:
>> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>> index 68d4644ac2dc..4cd35c97c503 100644
>> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>> @@ -23,6 +23,8 @@
>>   #include <drm/drm_print.h>
>>   #include <drm/drm_probe_helper.h>
>>
>> +#include <sound/soc.h>
>> +
>>   #include "sun4i_backend.h"
>>   #include "sun4i_crtc.h"
>>   #include "sun4i_drv.h"
>> @@ -87,6 +89,10 @@ static void sun4i_hdmi_disable(struct drm_encoder *encoder)
>>
>>   	DRM_DEBUG_DRIVER("Disabling the HDMI Output\n");
>>
>> +#ifdef CONFIG_DRM_SUN4I_HDMI_AUDIO
>> +	sun4i_hdmi_audio_destroy(hdmi);
>> +#endif
>> +
>>   	val = readl(hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
>>   	val &= ~SUN4I_HDMI_VID_CTRL_ENABLE;
>>   	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
>> @@ -114,6 +120,11 @@ static void sun4i_hdmi_enable(struct drm_encoder *encoder)
>>   		val |= SUN4I_HDMI_VID_CTRL_HDMI_MODE;
>>
>>   	writel(val, hdmi->base + SUN4I_HDMI_VID_CTRL_REG);
>> +
>> +#ifdef CONFIG_DRM_SUN4I_HDMI_AUDIO
>> +	if (hdmi->hdmi_audio && sun4i_hdmi_audio_create(hdmi))
>> +		DRM_ERROR("Couldn't create the HDMI audio adapter\n");
>> +#endif
> I really don't think we should be creating / removing the audio card
> at enable / disable time.

For me it's unnatural to have sound card all the time, even when the HDMI
is not plugged-in.

I'll follow your suggestion. Besides it's easier for me just to drop this
register/unregister mechanism.

Best regards,
Stefan Mavrodiev

>
> To fix the drvdata pointer, you just need to use the card pointer in
> the unbind, and that's it.
>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
