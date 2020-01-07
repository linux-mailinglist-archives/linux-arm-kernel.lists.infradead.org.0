Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2EC131FFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 07:48:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GSy0c65BOBdvQaQJ0RLQIenRCRevbDk7hBvU0KQlj8w=; b=hOUKAFRA3Wjt0t7lzHJEsNmlQ
	5pGSVX/9k8plIvnrYOcggeG5VBy96ti5zMkvRwgWMLg8BSuFfVP9zAQdWHhytFprCU1flgKWqiSM3
	Y/zEaALGvs2TyjxHSAHmcHdJ9qUQbPb6MPRUPrBBy87pgXQ7hTa0gcDEWpwKD7s6NkAKhbbjMeA02
	eCA6zK5pik91PoXptHi6UQur4jXCRat0bYJBnnLCPHaEQMkYRXvZ0SAzO6/Ukgk4nyACDlZiPS1Md
	tWOv4vI47erohf859AtD4IucPNiUUtm5rHuecJamOki8HQrEIua+2gkf0GJKT8NxMOJl9fLkHFJKL
	Z8LhccOZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioieu-0005WG-TX; Tue, 07 Jan 2020 06:48:08 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioien-0005V9-RH
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 06:48:03 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0076ljZb049917;
 Tue, 7 Jan 2020 00:47:45 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1578379665;
 bh=ODJ0NEYqrokHx/XZRr/mSRy9p7wnelQTyTQlEpgfxH4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=i21aNB1qs9sdXY54gDqh6MG8zV4rcKAjiHzA9EMtNipbZbsJRgqHWqw/deDRJEDMd
 xCXx4e41TXY+ClHHc4irVRTxHO8g96+vKgo6RBPPjt8ZB+jXcgk/zlovDEICyQ2B5w
 ElVly+gQRAci5vAHiRsFEgL6/4dmF2Oat8pH/FVc=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0076ljgs110930
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 7 Jan 2020 00:47:45 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 7 Jan
 2020 00:47:43 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 7 Jan 2020 00:47:43 -0600
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0076leCl053362;
 Tue, 7 Jan 2020 00:47:41 -0600
Subject: Re: [PATCH] drm: replace IS_ERR and PTR_ERR with PTR_ERR_OR_ZERO
To: yu kuai <yukuai3@huawei.com>
References: <20191225132042.5491-1-yukuai3@huawei.com>
 <20191227115401.agumkfuiwexl2wmx@hendrix.home>
From: Tomi Valkeinen <tomi.valkeinen@ti.com>
Message-ID: <ec4d34d6-7c58-ea1e-cc9c-c2df0baaf23b@ti.com>
Date: Tue, 7 Jan 2020 08:47:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191227115401.agumkfuiwexl2wmx@hendrix.home>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_224801_985753_DC04C81F 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jernej.skrabec@siol.net, yi.zhang@huawei.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 jonathanh@nvidia.com, zhengbin13@huawei.com, wens@csie.org,
 thierry.reding@gmail.com, dri-devel@lists.freedesktop.org, daniel@ffwll.ch,
 linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/12/2019 13:54, Maxime Ripard wrote:
> On Wed, Dec 25, 2019 at 09:20:42PM +0800, yu kuai wrote:
>> no functional change, just to make the code simpler
>>
>> Signed-off-by: yu kuai <yukuai3@huawei.com>
>> ---
>>   drivers/gpu/drm/omapdrm/dss/hdmi4.c         | 5 +----
>>   drivers/gpu/drm/omapdrm/dss/hdmi4_core.c    | 6 ++----
>>   drivers/gpu/drm/omapdrm/dss/hdmi5_core.c    | 4 +---
>>   drivers/gpu/drm/omapdrm/dss/hdmi_phy.c      | 4 +---
>>   drivers/gpu/drm/sun4i/sun4i_dotclock.c      | 4 +---
>>   drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c      | 4 +---
>>   drivers/gpu/drm/sun4i/sun4i_hdmi_tmds_clk.c | 4 +---
>>   drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c  | 5 +----
>>   drivers/gpu/drm/tegra/drm.c                 | 4 +---
>>   drivers/gpu/drm/tegra/gem.c                 | 4 +---
>>   10 files changed, 11 insertions(+), 33 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi4.c b/drivers/gpu/drm/omapdrm/dss/hdmi4.c
>> index 0f557fad4513..eb71baedf19e 100644
>> --- a/drivers/gpu/drm/omapdrm/dss/hdmi4.c
>> +++ b/drivers/gpu/drm/omapdrm/dss/hdmi4.c
>> @@ -587,10 +587,7 @@ static int hdmi_audio_register(struct omap_hdmi *hdmi)
>>   		&hdmi->pdev->dev, "omap-hdmi-audio", PLATFORM_DEVID_AUTO,
>>   		&pdata, sizeof(pdata));
>>
>> -	if (IS_ERR(hdmi->audio_pdev))
>> -		return PTR_ERR(hdmi->audio_pdev);
>> -
>> -	return 0;
>> +	return PTR_ERR_OR_ZERO(hdmi->audio_pdev);
>>   }
>>
>>   /* -----------------------------------------------------------------------------
>> diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c b/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c
>> index ea5d5c228534..fdd73fb73653 100644
>> --- a/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c
>> +++ b/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c
>> @@ -924,8 +924,6 @@ int hdmi4_core_init(struct platform_device *pdev, struct hdmi_core_data *core)
>>
>>   	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "core");
>>   	core->base = devm_ioremap_resource(&pdev->dev, res);
>> -	if (IS_ERR(core->base))
>> -		return PTR_ERR(core->base);
>> -
>> -	return 0;
>> +
>> +	return PTR_ERR_OR_ZERO(core->base);
>>   }
>> diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c b/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c
>> index ff4d35c8771f..30454bc9de78 100644
>> --- a/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c
>> +++ b/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c
>> @@ -908,8 +908,6 @@ int hdmi5_core_init(struct platform_device *pdev, struct hdmi_core_data *core)
>>
>>   	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "core");
>>   	core->base = devm_ioremap_resource(&pdev->dev, res);
>> -	if (IS_ERR(core->base))
>> -		return PTR_ERR(core->base);
>>
>> -	return 0;
>> +	return PTR_ERR_OR_ZERO(core->base);
>>   }
>> diff --git a/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c b/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c
>> index 00bbf24488c1..bbc02d5aa8fb 100644
>> --- a/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c
>> +++ b/drivers/gpu/drm/omapdrm/dss/hdmi_phy.c
>> @@ -191,8 +191,6 @@ int hdmi_phy_init(struct platform_device *pdev, struct hdmi_phy_data *phy,
>>
>>   	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "phy");
>>   	phy->base = devm_ioremap_resource(&pdev->dev, res);
>> -	if (IS_ERR(phy->base))
>> -		return PTR_ERR(phy->base);
>>
>> -	return 0;
>> +	return PTR_ERR_OR_ZERO(phy->base);
>>   }
>> diff --git a/drivers/gpu/drm/sun4i/sun4i_dotclock.c b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
>> index 417ade3d2565..84c04d8192b3 100644
>> --- a/drivers/gpu/drm/sun4i/sun4i_dotclock.c
>> +++ b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
>> @@ -191,10 +191,8 @@ int sun4i_dclk_create(struct device *dev, struct sun4i_tcon *tcon)
>>   	dclk->hw.init = &init;
>>
>>   	tcon->dclk = clk_register(dev, &dclk->hw);
>> -	if (IS_ERR(tcon->dclk))
>> -		return PTR_ERR(tcon->dclk);
>>
>> -	return 0;
>> +	return PTR_ERR_OR_ZERO(tcon->dclk);
> 
> This has been submitted a couple of times already. It's harder to
> maintain and not easier to read.
> 
> Please remove sun4i from your patch

Nack for the omapdrm parts too, for the same reasons.

  Tomi

-- 
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
