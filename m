Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4837260774
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTvvWqDwono+LWZWul+VTv1SqKHwtJGoyYynbuWPExw=; b=cLUuSaqY1u/HzB
	DPanYjCQQBje5KybBr4cqsfW0CltfuS0TtyK7aX+RUAEaVNuEXoME19LC5s3vmCc8UQrZA9JXH4CK
	4V+7xkyVwreaB4ePYlFQfrrIBJJ1pg37HW07BvS3Wm0nmmCsCJYv5rrap9BlnVjqfHnRh9N1L4vFK
	iPDsUeRuitm75Il570xXmhSyqsillN5kQa12+Bq1WpCQl7BBU5vE02RVqysg0putqTrZ/hJ3IyDRU
	NQFNvDs7xqVMDyWb1iQHRQhFeqShv6dCLiKs8zb3g7bIeORHQGgd9mlNR0SL3f9XyrW+4t+YZelGb
	FjU5wi47W87fcyxEW0fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOuN-0003xB-La; Fri, 05 Jul 2019 14:09:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOuG-0003wV-B3
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:09:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-ID:Content-Type:In-Reply-To:References:Message-ID:Date:Subject:To:
 From:Sender:Reply-To:Cc:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nuMS6p+p3kSwZitSa3B2HZ8uP0JDZ2NWsyUgLamNnd0=; b=GjnwkNipxS9kjakQqvGP9DTIYH
 QsA0u5sHfSTWlOzzvY2ZvMyJABGjWYmhtLjqTuNlWmPq9JktOp3MLk1+/60OCLv826IS6rhLbXhLG
 FS3QFJG+qgbWJGhjOzLN1+0k0JrT5w1MF14OdHnypET7xJovgIz/3DeuRCxKQz1cIW9Pxal5sCOkf
 DXkmShW1Udv7IxATE88cYxzqfgHESh7KPATPaVlwjUE075H9jBx+WuIYC14mJs0r5oC84osE5DdFE
 0A6M/lFD7xOU043/jGrrPIEFZCv81n+Lz1uWNg7GB/nW2qBT9okEc45NHCBf00Zsv/KJPE8LS5Rv0
 zODhIS3g==;
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjNT5-0001td-EE
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 12:37:37 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x65CWUBO015894; Fri, 5 Jul 2019 14:36:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : references : in-reply-to : content-type : content-id :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=nuMS6p+p3kSwZitSa3B2HZ8uP0JDZ2NWsyUgLamNnd0=;
 b=NEVk99+KVuuwQZPkG0kmtuAaoM+1yQYeq2y07wKKVR5WjnQccS0/1HiOmmHp73HOR9N5
 14Gq/eo3rYJLA6vGhwt0M0pufNUc3aE6mpbN8pZfVkbKPNWLoFx5Ym+pjNbBVmUDgUFz
 gchrebzYFkXdBgiX5AVCz3bEW5mCajFgor1PLMi960cttvIjiX/2ZCM6hzqrN0f66p3G
 mOAUyy30RfXCWGaVmAJLuUYcWKweyTVnWHc9ya1pxJutg7ydvnPwlRrHNkXybc01Qbiw
 znhM9q4rEBN9AylBWAWk9SpdUZ6y6woQN1iqTJ39KqDWhiNLO9ENi24xJvCTGXaF3Mfi Tg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tdxvjjgj1-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Fri, 05 Jul 2019 14:36:13 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7C90531;
 Fri,  5 Jul 2019 12:36:12 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4862E2C7F;
 Fri,  5 Jul 2019 12:36:12 +0000 (GMT)
Received: from SFHDAG6NODE3.st.com (10.75.127.18) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 5 Jul
 2019 14:36:11 +0200
Received: from SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6]) by
 SFHDAG6NODE3.st.com ([fe80::d04:5337:ab17:b6f6%20]) with mapi id
 15.00.1473.003; Fri, 5 Jul 2019 14:36:11 +0200
From: Philippe CORNU <philippe.cornu@st.com>
To: Olivier MOYSAN <olivier.moysan@st.com>, "a.hajda@samsung.com"
 <a.hajda@samsung.com>, "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "jonas@kwiboo.se" <jonas@kwiboo.se>, "jernej.skrabec@siol.net"
 <jernej.skrabec@siol.net>, "airlied@linux.ie" <airlied@linux.ie>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jsarha@ti.com" <jsarha@ti.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 3/3] drm/bridge: sii902x: make audio mclk optional
Thread-Topic: [PATCH 3/3] drm/bridge: sii902x: make audio mclk optional
Thread-Index: AQHVMO2M8CUkPHajiUCKtjETQ0unPqa72RGA
Date: Fri, 5 Jul 2019 12:36:11 +0000
Message-ID: <2828a8ca-6d25-fe49-f97a-cfd86e5d5fac@st.com>
References: <1562082426-14876-1-git-send-email-olivier.moysan@st.com>
 <1562082426-14876-4-git-send-email-olivier.moysan@st.com>
In-Reply-To: <1562082426-14876-4-git-send-email-olivier.moysan@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.47]
Content-ID: <94B1862D7883AE44876E6AC9CEA4D8CD@st.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-05_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_133735_526494_EEDB0510 
X-CRM114-Status: GOOD (  24.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olivier,
and many thanks for your patch.

Reviewed-by: Philippe Cornu <philippe.cornu@st.com>
Philippe :-)

On 7/2/19 5:47 PM, Olivier Moysan wrote:
> The master clock on i2s bus is not mandatory,
> as sii902X internal PLL can be used instead.
> Make use of mclk optional.
> 
> Fixes: ff5781634c41 ("drm/bridge: sii902x: Implement HDMI audio support")
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>   drivers/gpu/drm/bridge/sii902x.c | 39 +++++++++++++++++++++++----------------
>   1 file changed, 23 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/sii902x.c b/drivers/gpu/drm/bridge/sii902x.c
> index 36acc256e67e..a08bd9fdc046 100644
> --- a/drivers/gpu/drm/bridge/sii902x.c
> +++ b/drivers/gpu/drm/bridge/sii902x.c
> @@ -562,19 +562,21 @@ static int sii902x_audio_hw_params(struct device *dev, void *data,
>   		}
>   	}
>   
> -	ret = clk_prepare_enable(sii902x->audio.mclk);
> -	if (ret) {
> -		dev_err(dev, "Enabling mclk failed: %d\n", ret);
> -		return ret;
> -	}
> +	if (sii902x->audio.mclk) {
> +		ret = clk_prepare_enable(sii902x->audio.mclk);
> +		if (ret) {
> +			dev_err(dev, "Enabling mclk failed: %d\n", ret);
> +			return ret;
> +		}
>   
> -	mclk_rate = clk_get_rate(sii902x->audio.mclk);
> +		mclk_rate = clk_get_rate(sii902x->audio.mclk);
>   
> -	ret = sii902x_select_mclk_div(&i2s_config_reg, params->sample_rate,
> -				      mclk_rate);
> -	if (mclk_rate != ret * params->sample_rate)
> -		dev_dbg(dev, "Inaccurate reference clock (%ld/%d != %u)\n",
> -			mclk_rate, ret, params->sample_rate);
> +		ret = sii902x_select_mclk_div(&i2s_config_reg,
> +					      params->sample_rate, mclk_rate);
> +		if (mclk_rate != ret * params->sample_rate)
> +			dev_dbg(dev, "Inaccurate reference clock (%ld/%d != %u)\n",
> +				mclk_rate, ret, params->sample_rate);
> +	}
>   
>   	mutex_lock(&sii902x->mutex);
>   
> @@ -640,7 +642,8 @@ static int sii902x_audio_hw_params(struct device *dev, void *data,
>   	mutex_unlock(&sii902x->mutex);
>   
>   	if (ret) {
> -		clk_disable_unprepare(sii902x->audio.mclk);
> +		if (sii902x->audio.mclk)
> +			clk_disable_unprepare(sii902x->audio.mclk);
>   		dev_err(dev, "%s: hdmi audio enable failed: %d\n", __func__,
>   			ret);
>   	}
> @@ -659,7 +662,8 @@ static void sii902x_audio_shutdown(struct device *dev, void *data)
>   
>   	mutex_unlock(&sii902x->mutex);
>   
> -	clk_disable_unprepare(sii902x->audio.mclk);
> +	if (sii902x->audio.mclk)
> +		clk_disable_unprepare(sii902x->audio.mclk);
>   }
>   
>   int sii902x_audio_digital_mute(struct device *dev, void *data, bool enable)
> @@ -752,9 +756,12 @@ static int sii902x_audio_codec_init(struct sii902x *sii902x,
>   
>   	sii902x->audio.mclk = devm_clk_get(dev, "mclk");
>   	if (IS_ERR(sii902x->audio.mclk)) {
> -		dev_err(dev, "%s: No clock (audio mclk) found: %ld\n",
> -			__func__, PTR_ERR(sii902x->audio.mclk));
> -		return 0;
> +		if (PTR_ERR(sii902x->audio.mclk) != -ENOENT) {
> +			dev_err(dev, "%s: No clock (audio mclk) found: %ld\n",
> +				__func__, PTR_ERR(sii902x->audio.mclk));
> +			return PTR_ERR(sii902x->audio.mclk);
> +		}
> +		sii902x->audio.mclk = NULL;
>   	}
>   
>   	sii902x->audio.pdev = platform_device_register_data(
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
