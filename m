Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 403C617E9A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 21:04:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGWC6eq235GaXihF+3EiHLUkwEdhkMh9s/0bcbzGE+E=; b=s253zrBBWsdrVB
	W8ykI+F+k6UfS7EEPUMj3JpXHwJaDNmDcwngRWd6CHZhlanqGusVIcj0myV9jP9taJ4nHoowwgnnF
	a2eYXSttkjCTyCuHSRhHZp8nW/fFk0UEoRXEs6aIN1wE8+cbtQkwyl1jHtX7BZtfFVTRL/qwrGXsI
	t46wmNihRJFyriqgappKmysIKgvl1TuDb3pkID3y6X9U1qMpJX3uFe+mQvLHYglwv+5NFcAOT/beo
	Ck6dWgjRZ4NoaENbL8wOxSM7ZWBFGu5P8pQu2+nAt1PckDKVJWM4cQGX3E5jE++CbNSkiQnBFBjWv
	kb0GnX4uGI9H7/oF8GPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOd5-0005EY-JI; Mon, 09 Mar 2020 20:03:59 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOcu-0005Dy-TN
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 20:03:51 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48bq0x3wtbz1r5rk;
 Mon,  9 Mar 2020 21:03:45 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48bq0x2CVYz1qqkP;
 Mon,  9 Mar 2020 21:03:45 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id 7QrUrWL9FMjW; Mon,  9 Mar 2020 21:03:43 +0100 (CET)
X-Auth-Info: hzRWpRxUI4tclANF6WjEvQz/wPaokBOtRFzOfVKeMrc=
Received: from [IPv6:::1] (unknown [195.140.253.167])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Mon,  9 Mar 2020 21:03:43 +0100 (CET)
Subject: Re: [PATCH] drm/imx: parallel-display: Adjust bus_flags and
 bus_format handling
To: Philipp Zabel <p.zabel@pengutronix.de>, dri-devel@lists.freedesktop.org
References: <20191114131751.26746-1-marex@denx.de>
 <10f02dbe4e7b0966d279508b636e718e031e2e61.camel@pengutronix.de>
From: Marek Vasut <marex@denx.de>
Message-ID: <86c5d55e-d113-7f5e-c8e2-9d025d0d481e@denx.de>
Date: Mon, 9 Mar 2020 21:03:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <10f02dbe4e7b0966d279508b636e718e031e2e61.camel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_130349_252718_495E86EB 
X-CRM114-Status: GOOD (  30.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: David Airlie <airlied@linux.ie>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/9/20 11:50 AM, Philipp Zabel wrote:
> Hi Marek,

Hi,

> On Thu, 2019-11-14 at 14:17 +0100, Marek Vasut wrote:
>> The bus_flags and bus_format handling logic does not seem to cover
>> all potential usecases. Specifically, this seems to fail with an
>> "edt,etm0700g0edh6" display attached to an 24bit display interface,
>> with interface-pix-fmt = "rgb24" set in DT.
> 
> interface-pix-fmt is a legacy property that was never intended to be
> used as an override for the panel bus format. The bus flags were
> supposed to be set from the display-timings node, back when there was no
> of-graph connected panel at all.
> 
> That being said, there isn't really a proper alternative that allows to
> override the bus format requested by the panel driver in the device tree
> to account for weird wiring. We could reuse the bus-width endpoint
> property documented in [1], but that wouldn't completely specify how the
> RGB components are to be mapped onto the parallel bus.
> 
> [1] Documentation/devicetree/bindings/media/video-interfaces.txt
> 
> I do wonder whether for your case it would be better to implement a
> MEDIA_BUS_FMT_RGB666_1X24_CPADLO though, to leave the LSBs untouched
> instead of risking to dump them into accidental PCB antennae.
> 
>> In this specific setup, the panel-simple.c driver entry for the display
>> sets .bus_flags to non-zero value. However, as imxpd->bus_format is set
>> from the DT property "interface-pix-fmt", imx_pd_encoder_atomic_check()
>> will set imx_crtc_state->bus_flags = imxpd->bus_flags even though the
>> imxpd->bus_flags is zero, while the di->bus_flags is correctly set by
>> the panel-simple.c and non-zero.
>>
>> The result is incorrect flags being
>> used for the display configuration and thus an image corruption.
>> (Specifically, DRM_BUS_FLAG_PIXDATA_POSEDGE is not propagated and thus
>> the ipuv3 clocks pixels on the wrong edge).
>>
>> This patch fixes the problem by overriding the imx_crtc_state->bus_format
>> from the imxpd->bus_format only if the DT property "interface-pix-fmt" is
>> present or if the DI provides no formats. Similarly for bus_flags, which
>> are set from imxpd->bus_flags only if the DI provides no formats.
>>
>> Signed-off-by: Marek Vasut <marex@denx.de>
>> Cc: Daniel Vetter <daniel@ffwll.ch>
>> Cc: David Airlie <airlied@linux.ie>
>> Cc: Fabio Estevam <festevam@gmail.com>
>> Cc: NXP Linux Team <linux-imx@nxp.com>
>> Cc: Philipp Zabel <p.zabel@pengutronix.de>
>> Cc: Sascha Hauer <s.hauer@pengutronix.de>
>> Cc: Shawn Guo <shawnguo@kernel.org>
>> Cc: linux-arm-kernel@lists.infradead.org
>> To: dri-devel@lists.freedesktop.org
>> ---
>>  drivers/gpu/drm/imx/parallel-display.c | 13 ++++++++-----
>>  1 file changed, 8 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
>> index 35518e5de356..92f00b12c068 100644
>> --- a/drivers/gpu/drm/imx/parallel-display.c
>> +++ b/drivers/gpu/drm/imx/parallel-display.c
>> @@ -113,13 +113,16 @@ static int imx_pd_encoder_atomic_check(struct drm_encoder *encoder,
>>  	struct drm_display_info *di = &conn_state->connector->display_info;
>>  	struct imx_parallel_display *imxpd = enc_to_imxpd(encoder);
>>  
>> -	if (!imxpd->bus_format && di->num_bus_formats) {
>> -		imx_crtc_state->bus_flags = di->bus_flags;
>> +	if (imxpd->bus_format || !di->num_bus_formats)
> 
> I see no reason to invert the logic here. Let's keep the common case
> first.
> 
>> +		imx_crtc_state->bus_format = imxpd->bus_format;
>> +	else
>>  		imx_crtc_state->bus_format = di->bus_formats[0];
>> -	} else {
>> +
>> +	if (di->num_bus_formats)
>> +		imx_crtc_state->bus_flags = di->bus_flags;
>> +	else
>>  		imx_crtc_state->bus_flags = imxpd->bus_flags;
>> -		imx_crtc_state->bus_format = imxpd->bus_format;
>> -	}
>> +
>>  	imx_crtc_state->di_hsync_pin = 2;
>>  	imx_crtc_state->di_vsync_pin = 3;
> 
> So while I don't like this being used at all, I think the patch improves
> consistency, as imx_pd_connector_get_modes doesn't allow to override the
> panel's modes with DT display-timings either.

So when this patch was posted half a year ago, it was needed. I rebased
on current next and this patch is no longer needed as some form of it
got in as part of other patches. This functionality is still broken in
e.g. 5.4 though.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
