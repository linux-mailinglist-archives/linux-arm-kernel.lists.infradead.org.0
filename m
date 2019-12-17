Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FDA1224F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 07:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ggYMwMjxqA1GQovCTaNIdCsmpxCn+MmxTIZczbwb8sA=; b=ju2dchtT+Q/dWhSeKN7Q1l1g8
	w0WN0FVGyAwGshjNJrYTnIuXTQjH0GFIpSgriQ0OSng6l2xyH7LMllyCgtZDZ1JJBdSXeIFw+DNyD
	0AKK2anQLZl7Vy+OM4iLDYYhQU9pMVLDY6EHJVtBPUCGlwby00kEU6Ng05Or7jjMjNVUioAPNJN06
	/nRrqxvi8P6rGiip0FCcQn/uVSqWqIi/MnnJVoOWA+d4FCAfFRGfmhHwQ0a7tg/B3be4YZnrZkZnN
	606WBKQyrx6SP+G7Hh0TnxGF2q/Uf0j8Uxfttfuj7WwiAMa4UbT7EprCDoNEICHcew9q4ZT9/nh/i
	nFI9Rs8gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih6bi-0005t7-DP; Tue, 17 Dec 2019 06:45:22 +0000
Received: from olimex.com ([2001:470:0:1f2::b869:4820])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih6bZ-0005sO-FO
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 06:45:14 +0000
Received: from 94.155.250.134 ([94.155.250.134]) by olimex.com with ESMTPSA
 (ECDHE-RSA-AES128-GCM-SHA256:TLSv1.2:Kx=ECDH:Au=RSA:Enc=AESGCM(128):Mac=AEAD)
 (SMTP-AUTH username stefan@olimex.com, mechanism PLAIN)
 for <linux-arm-kernel@lists.infradead.org>; Mon, 16 Dec 2019 22:45:11 -0800
Subject: Re: [PATCH 1/1] drm/sun4i: hdmi: Check for null pointer before cleanup
To: Maxime Ripard <mripard@kernel.org>
References: <20191216144348.7540-1-stefan@olimex.com>
 <20191216161258.lmkq2ersfm746t7q@gilmour.lan>
From: Stefan Mavrodiev <stefan@olimex.com>
Message-ID: <cebda755-2649-79a1-fd08-79b13edef1a5@olimex.com>
Date: Tue, 17 Dec 2019 08:45:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191216161258.lmkq2ersfm746t7q@gilmour.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_224513_516534_6CC83393 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Stefan Mavrodiev <stefan@olimex.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12/16/19 6:12 PM, Maxime Ripard wrote:
> Hi,
>
> On Mon, Dec 16, 2019 at 04:43:48PM +0200, Stefan Mavrodiev wrote:
>> It's possible hdmi->connector and hdmi->encoder divices to be NULL.
>> This can happen when building as kernel module and you try to remove
>> the module.
>>
>> This patch make simple null check, before calling the cleanup functions.
>>
>> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>
>> ---
>>   drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c | 6 ++++--
>>   1 file changed, 4 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>> index a7c4654445c7..b61e00f2ecb8 100644
>> --- a/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>> +++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_enc.c
>> @@ -685,8 +685,10 @@ static void sun4i_hdmi_unbind(struct device *dev, struct device *master,
>>   	struct sun4i_hdmi *hdmi = dev_get_drvdata(dev);
>>
>>   	cec_unregister_adapter(hdmi->cec_adap);
>> -	drm_connector_cleanup(&hdmi->connector);
>> -	drm_encoder_cleanup(&hdmi->encoder);
>> +	if (hdmi->connector.dev)
>> +		drm_connector_cleanup(&hdmi->connector);
>> +	if (hdmi->encoder.dev)
>> +		drm_encoder_cleanup(&hdmi->encoder);
> Hmmm, this doesn't look right. Do you have more information on how you
> can reproduce it?

Just build sun4i_drm_hdmi as module (CONFIG_DRM_SUN4I_HDMI=m). Then try 
to unload the module:

# rmmod sun4i_drm_hdmi

And you get this:

Unable to handle kernel NULL pointer dereference at virtual address 00000000
pgd = 6b032436
[00000000] *pgd=00000000
Internal error: Oops: 5 [#1] SMP ARM
Modules linked in: sun4i_drm_hdmi(-)
CPU: 0 PID: 1081 Comm: rmmod Not tainted 5.5.0-rc1-00030-g6ec417030d93 #33
Hardware name: Allwinner sun7i (A20) Family
PC is at drm_connector_cleanup+0x40/0x208
LR is at sun4i_hdmi_unbind+0x10/0x54 [sun4i_drm_hdmi]
...


I've tested that with sunxi/for-next branch on A20-OLinuXino board.

Best regards,
Stefan

>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
