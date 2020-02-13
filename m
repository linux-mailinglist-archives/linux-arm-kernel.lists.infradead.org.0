Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C95A15CAD2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 19:58:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/A3Dq/T/jlUVXe48ozf4nNTPjfPIMypENUUW+7t0ys=; b=haY06MIqrRg/7B
	6f7EAjjwuZkCDVUXYZRZlZiAetQA/LneiLRYvquAptViCJokuQFzUq4RnEOePshJ89ux7MT5mNO9G
	DtGL7CiNktPap8gE5jaYRQO5Pwv+BXaEhixa8tCjiX9TUmztAyoLXkhPrxAdMY4GwRXAZaIxBrFMx
	9QbH1WJCvZ5GCR7yZEioC5gSpdVa7ld6xiRHfQQzOndGAWGs62lnM7EsLvy0KR++q/HNcgUgmgaop
	5strBF0LW09GP2b35WcNLW/Im7QoK6IXl/p1JEXOR4l5BFkb4loXkJ3w6pXVnoHLTJr1Uc7IUsNtn
	meGIN0pXHwJKHqrOnAxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Jh7-000451-3k; Thu, 13 Feb 2020 18:58:37 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Jgv-00043R-8m; Thu, 13 Feb 2020 18:58:27 +0000
Received: by mail-pj1-x1044.google.com with SMTP id n96so2773355pjc.3;
 Thu, 13 Feb 2020 10:58:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4sbfXgq71Lw3rV1MfbUqA//xkH8k/BQruTGRX8wE71Y=;
 b=XrH+dwwBkvkzUT773puDhJFzQk/18wegXBfiOuU57s/5ZyPyf5HoV5HFa2mIhDkmsD
 6LQuJ2P6obUijyjHQdXP7wlwA2wgR7adMpcZE6V6u3nh6OVLy+HYHW5WNARYe8o3rzi8
 VkNdho5h78lDFKlXn9bWeIq/gF13GBWqPRTDCztWcrE0nkYCLMuA8U9XN7pzSBXRA8T8
 nDZ4I/5SqFsF0rvc5HTLAJmcwhBAAMljDXjKKFWfG8+AuIASLKEuS7pcPc92LpWClSNY
 9gUyN44Yr2dPADIC6BTm1owpaQ0WvWTcKgOo5aW8JNq4dkVKKbVyBpQXnmo6JccOGY55
 SMGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=4sbfXgq71Lw3rV1MfbUqA//xkH8k/BQruTGRX8wE71Y=;
 b=A+fX55A0dyTiRl/B+Lqi+ntadAqqk2kfDwBmderA6YdwiQEI/I9dlo+Bm4tpusk2Zl
 gM8Fy0YB+MFYcpE2C99yKj8ZpXQW4CvcNr2suInqnGojnolTiDQpSZv+QHHhlAZ5Ovte
 AZemCFWyDZfx35fvWVPpmu++BzeVCqZrsJk1X9iHMj4QIuht4aadNu+NFkpRpL+OLCim
 /9KvM8Od55Y4RRiWkmsCrWeX5MbwwhguVG1p8MY2j6qX5H0sOk/gZJbXvY4PRCOOUPK3
 aLoPu/fHGGvlIvF/EONGdzY9mWTcXD4FrHKzh690nLoGxJ3jUWM+qBntMV4Lk38n/RCL
 Y9xQ==
X-Gm-Message-State: APjAAAVSm8gMvS89D+7ROAdy5LWAfqXoJenNSWTD5jDQcCanL07z7NeR
 rZ+gTYn3kh8YMk9clOmZrwA=
X-Google-Smtp-Source: APXvYqxQOJlqjdnHOmVbxzWipaSuMhxCrAsPSA51vXQledp5uG2W8ppDo60OIaUE0ZM/csyt6hv4HA==
X-Received: by 2002:a17:90a:1e63:: with SMTP id
 w90mr6688896pjw.36.1581620304545; 
 Thu, 13 Feb 2020 10:58:24 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id b12sm4099080pfr.26.2020.02.13.10.58.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Feb 2020 10:58:23 -0800 (PST)
Subject: Re: [resend PATCH v6 04/12] drm: mediatek: Omit warning on probe
 defers
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 matthias.bgg@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 ck.hu@mediatek.com, p.zabel@pengutronix.de, airlied@linux.ie,
 mturquette@baylibre.com, sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
 <20191207224740.24536-5-matthias.bgg@kernel.org>
 <48f9ec0c-1f1e-5a6c-283b-7efc4ce1bd5e@collabora.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <64cca307-0045-7f82-9916-fa45095be2c2@gmail.com>
Date: Thu, 13 Feb 2020 19:58:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <48f9ec0c-1f1e-5a6c-283b-7efc4ce1bd5e@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_105825_516309_4F6A9C02 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [matthias.bgg[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, rdunlap@infradead.org, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, sean.wang@kernel.org, wens@csie.org,
 drinkcat@chromium.org, linux-mediatek@lists.infradead.org, mbrugger@suse.com,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/12/2019 10:39, Enric Balletbo i Serra wrote:
> Hi Matthias,
> 
> On 7/12/19 23:47, matthias.bgg@kernel.org wrote:
>> From: Matthias Brugger <mbrugger@suse.com>
>>
>> It can happen that the mmsys clock drivers aren't probed before the
>> platform driver gets invoked. The platform driver used to print a warning
>> that the driver failed to get the clocks. Omit this error on
>> the defered probe path.
>>
>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>> ---
>>  drivers/gpu/drm/mediatek/mtk_disp_color.c |  5 ++++-
>>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c   |  5 ++++-
>>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c  |  5 ++++-
>>  drivers/gpu/drm/mediatek/mtk_dpi.c        | 12 +++++++++---
>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c    |  4 +++-
>>  drivers/gpu/drm/mediatek/mtk_dsi.c        |  8 ++++++--
>>  drivers/gpu/drm/mediatek/mtk_hdmi.c       |  4 +++-
>>  7 files changed, 33 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
>> index 59de2a46aa49..8f0fc96ef7bc 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
>> @@ -118,7 +118,10 @@ static int mtk_disp_color_probe(struct platform_device *pdev)
>>  	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
>>  				&mtk_disp_color_funcs);
>>  	if (ret) {
>> -		dev_err(dev, "Failed to initialize component: %d\n", ret);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to initialize component: %d\n",
>> +				ret);
>> +
>>  		return ret;
>>  	}
>>  
>> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
>> index 21851756c579..7487b0182c05 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
>> @@ -285,7 +285,10 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
>>  	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
>>  				&mtk_disp_ovl_funcs);
>>  	if (ret) {
>> -		dev_err(dev, "Failed to initialize component: %d\n", ret);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to initialize component: %d\n",
>> +				ret);
>> +
>>  		return ret;
>>  	}
>>  
>> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
>> index 405afef31407..835ea8f8dab9 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
>> @@ -287,7 +287,10 @@ static int mtk_disp_rdma_probe(struct platform_device *pdev)
>>  	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
>>  				&mtk_disp_rdma_funcs);
>>  	if (ret) {
>> -		dev_err(dev, "Failed to initialize component: %d\n", ret);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to initialize component: %d\n",
>> +				ret);
>> +
>>  		return ret;
>>  	}
>>  
>> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> index be6d95c5ff25..9ed32470ad02 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
>> @@ -700,21 +700,27 @@ static int mtk_dpi_probe(struct platform_device *pdev)
>>  	dpi->engine_clk = devm_clk_get(dev, "engine");
>>  	if (IS_ERR(dpi->engine_clk)) {
>>  		ret = PTR_ERR(dpi->engine_clk);
>> -		dev_err(dev, "Failed to get engine clock: %d\n", ret);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to get engine clock: %d\n", ret);
> 
> This is only to print an error and I think that devm_clk_get will print a
> warning if the clk is not found. I guess that you can just remove the dev_err
> print logic, here and below.
> 

I didn't follow all the paths, but at least devres_alloc in devm_clk_get isn't
able to alloc the memory, it will silently return -ENOMEM. So I think it is OK
to print an error message here.

Regards,
Matthias

> In case there is an optional clock you could use devm_clk_get_optional, not sure
> if there is any, though.
> 
>> +
>>  		return ret;
>>  	}
>>  
>>  	dpi->pixel_clk = devm_clk_get(dev, "pixel");
>>  	if (IS_ERR(dpi->pixel_clk)) {
>>  		ret = PTR_ERR(dpi->pixel_clk);
>> -		dev_err(dev, "Failed to get pixel clock: %d\n", ret);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to get pixel clock: %d\n", ret);
>> +
> 
> ditto
> 
>>  		return ret;
>>  	}
>>  
>>  	dpi->tvd_clk = devm_clk_get(dev, "pll");
>>  	if (IS_ERR(dpi->tvd_clk)) {
>>  		ret = PTR_ERR(dpi->tvd_clk);
>> -		dev_err(dev, "Failed to get tvdpll clock: %d\n", ret);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to get tvdpll clock: %d\n", ret);
>> +
> 
> ditto
> 
>>  		return ret;
>>  	}
>>  
>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
>> index b765181223e6..6054e2b675f9 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
>> @@ -558,7 +558,9 @@ static int mtk_ddp_probe(struct platform_device *pdev)
>>  
>>  	ddp->clk = devm_clk_get(dev, NULL);
>>  	if (IS_ERR(ddp->clk)) {
>> -		dev_err(dev, "Failed to get clock\n");
>> +		if (PTR_ERR(ddp->clk) != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to get clock\n");
>> +
> 
> ditto
> 
>>  		return PTR_ERR(ddp->clk);
>>  	}
>>  
>> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
>> index 4332563df952..66d5b0fdd678 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
>> @@ -1110,14 +1110,18 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>>  	dsi->engine_clk = devm_clk_get(dev, "engine");
>>  	if (IS_ERR(dsi->engine_clk)) {
>>  		ret = PTR_ERR(dsi->engine_clk);
>> -		dev_err(dev, "Failed to get engine clock: %d\n", ret);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to get engine clock: %d\n", ret);
>> +
> 
> ditto
> 
>>  		return ret;
>>  	}
>>  
>>  	dsi->digital_clk = devm_clk_get(dev, "digital");
>>  	if (IS_ERR(dsi->digital_clk)) {
>>  		ret = PTR_ERR(dsi->digital_clk);
>> -		dev_err(dev, "Failed to get digital clock: %d\n", ret);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to get digital clock: %d\n", ret);
>> +
> 
> ditto
> 
>>  		return ret;
>>  	}
>>  
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> index ce91b61364eb..62f9ca2308ee 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
>> @@ -1447,7 +1447,9 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
>>  
>>  	ret = mtk_hdmi_get_all_clk(hdmi, np);
>>  	if (ret) {
>> -		dev_err(dev, "Failed to get clocks: %d\n", ret);
>> +		if (ret != -EPROBE_DEFER)
>> +			dev_err(dev, "Failed to get clocks: %d\n", ret);
>> +
>>  		return ret;
>>  	}
>>  
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
