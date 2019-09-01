Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684E9A48AA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 12:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XQfSKcDABb0fsSR6hBZGR1YAAPcJXeTN4uqM6DKhEQM=; b=MART2VDe/qcD4x
	0j5zQH3So5288YJdhhhXCZ3U2GMtkSHlTFjn5pn2i2RmoTRjYtK8TD6rXiwaAbZAKdiBWPcMD1SJN
	HbexJnPLsj8p8Pf4iJoIziOvSeHhOGKnaZJy2In2Cb6aJDQvFMcPdF1IWkUYGdLZfF95iXlbdCgmu
	t3tjdixaNKBFxCyLN6K9nrI9hzDBtmHbEfzzW56TJyLko2Bq3qPEkuXbvxsdNIfuI697+ztn3x0M9
	V6Uq2Yvu98qH2lzi1p1dE6eV3g6PcJftvvBVo2lTC1EM2J73Uld6fQdCnBojTX4EEs/aOV5nwnlr8
	ib8BiRMtJ5kNNK2gZEEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Mih-000761-8P; Sun, 01 Sep 2019 10:04:28 +0000
Received: from mail-oln040092066060.outbound.protection.outlook.com
 ([40.92.66.60] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4MiF-00075A-K0; Sun, 01 Sep 2019 10:04:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkbehVc7oP/dh9Cps3Ox79sWtE5xjnwgI7pxhpTOZ1YV0wNviIt0HQotyDMf1UvOxivJSIKaLQAQKb+Y8U4uluXZ7v9CudLEQ+dHTH0znJdDS6q6sms0qvti+ZAoGtmQswwv4aMLo34t6Q6gtantJ8jDeLR47lch6cckTXa8u6xfJT49nOZFPL9XLCDYFHSkyKSTa9iBP9Y/lf+T0hCtexE8QHZ9rIyeZ2O8y5B+sCUaxAhoKovNeuFU+yCuvMWNmsJDQEQPNkR7JH/yWc0IMjcjOnhrIQvKYH1tnWo8Ndu5vwmvbRxy2ggazTm+FRoxWggQmWZAD9n6R4R61jY6bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HaavbiEG3ZX9MFpUhrwDr9aaAj5KgWam58l2xiiE6eQ=;
 b=l6sIMC+Bb89eVWvxW1RB5egb4YTTxLdfcWVoaLo9fCA+zKXwvk17cgChbUGzKKqOacaKoMgDKgWjOWOpc9X2pcDHYV4qYUsM4QE1maIqeGyjMy3qxnepQMhi/j5ceuzJXRNLQrkSdrdrm098VgllknEPf6NZD7RlWxce0PfhXhRbiJOXm+NVfbbkyffvfZ7iOIVtr3r6xbXrxSHlez5bq8WC9wc3Q46h4pm1gaX1HmWZi7MsUvNLa2rYdN3LDrZwFfMb5Rdr1zMYgZDuF+lIR3fFFf9C19Gj3PFGFVlBKGptGsVskZI6ow66yUBcTLSrX/Y2Og0/E4vo3PnIeD3DEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from HE1EUR01FT007.eop-EUR01.prod.protection.outlook.com
 (10.152.0.51) by HE1EUR01HT185.eop-EUR01.prod.protection.outlook.com
 (10.152.1.199) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2220.16; Sun, 1 Sep
 2019 10:03:53 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com (10.152.0.57) by
 HE1EUR01FT007.mail.protection.outlook.com (10.152.1.243) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.16 via Frontend Transport; Sun, 1 Sep 2019 10:03:53 +0000
Received: from HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088]) by HE1PR06MB4011.eurprd06.prod.outlook.com
 ([fe80::a0ba:e766:2a23:2088%3]) with mapi id 15.20.2199.021; Sun, 1 Sep 2019
 10:03:53 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Cheng-Yi Chiang <cychiang@chromium.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] drm: dw-hdmi-i2s: enable audio clock in audio_startup
Thread-Topic: [PATCH] drm: dw-hdmi-i2s: enable audio clock in audio_startup
Thread-Index: AQHVXiJ4olMh5nfx9ESKyNNc1nttD6cWnNeA
Date: Sun, 1 Sep 2019 10:03:53 +0000
Message-ID: <HE1PR06MB4011FA45247F186BB83DFF04ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <20190829042957.150929-1-cychiang@chromium.org>
In-Reply-To: <20190829042957.150929-1-cychiang@chromium.org>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1P191CA0002.EURP191.PROD.OUTLOOK.COM (2603:10a6:3:cf::12)
 To HE1PR06MB4011.eurprd06.prod.outlook.com
 (2603:10a6:7:9c::32)
x-incomingtopheadermarker: OriginalChecksum:16C72D0C8AB52BEE626484D0B0E852CFFB509B27838AC274E6A26036719DAA6B;
 UpperCasedChecksum:118D8592DF4188344C2A8E08D26BEBCC14626A9511864823E42993A4B8E11281;
 SizeAsReceived:8542; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [+npBKufwFZGj9FtjgXjbVb5NfZd1lCOJ]
x-microsoft-original-message-id: <4c191c41-1e7a-0fd5-e4c8-f5df55a92fc4@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:HE1EUR01HT185; 
x-ms-traffictypediagnostic: HE1EUR01HT185:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: qId+/Ijj75PN1F7VHwgSPyHM6ytGrwqcE0kM9ZL5GN8eIY6LX1+kkIR0e+NM1JiunrCQDeVb7SFyzTa+RWRxARj/pD6QUH0dzyd3QsN5jiDmSt4uDgLLOuIRlZQrkcuJwZBNfYfbzgoKIjqzvmmkecbCX0YzGKnjEGWiHIufvHMeNxLmyb2OAnEnpQUOmrYz
x-ms-exchange-transport-forked: True
Content-ID: <0218E2ADABBE9D4DBD0D6B875F7CFEE1@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a8ec63f-234b-4be1-5cad-08d72ec3b1b5
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2019 10:03:53.5265 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_030359_663373_8C418730 
X-CRM114-Status: GOOD (  15.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.66.60 listed in list.dnswl.org]
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 "zhengxing@rock-chips.com" <zhengxing@rock-chips.com>,
 "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>,
 "dianders@chromium.org" <dianders@chromium.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "cain.cai@rock-chips.com" <cain.cai@rock-chips.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>,
 "eddie.cai@rock-chips.com" <eddie.cai@rock-chips.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "dgreid@chromium.org" <dgreid@chromium.org>,
 "sam@ravnborg.org" <sam@ravnborg.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-29 06:29, Cheng-Yi Chiang wrote:
> In the designware databook, the sequence of enabling audio clock and
> setting format is not clearly specified.
> Currently, audio clock is enabled in the end of hw_param ops after
> setting format.
>
> On some monitors, there is a possibility that audio does not come out.
> Fix this by enabling audio clock in audio_startup ops
> before hw_param ops setting format.
>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index 5cbb71a866d5..08b4adbb1ddc 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -69,6 +69,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
>  	hdmi_write(audio, conf0, HDMI_AUD_CONF0);
>  	hdmi_write(audio, conf1, HDMI_AUD_CONF1);
>  
> +	return 0;
> +}
> +
> +static int dw_hdmi_i2s_audio_startup(struct device *dev, void *data)
> +{
> +	struct dw_hdmi_i2s_audio_data *audio = data;
> +	struct dw_hdmi *hdmi = audio->hdmi;
> +
>  	dw_hdmi_audio_enable(hdmi);
>  
>  	return 0;
> @@ -105,6 +113,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
>  }
>  
>  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
> +	.audio_startup = dw_hdmi_i2s_audio_startup,

A small white space nit, there should be a tab and not space to align the equal sign above.
Also this patch do not cleanly apply to drm-misc-next or linux-next after
fc1ca6e01d0a "drm/bridge: dw-hdmi-i2s: add .get_eld support" was merged.

This patch does fix an issue I have observed on my Rockchip devices where audio would not always
came out after switching between audio streams having different rate and channels parameters.
I used to carry [1] to fix that issue, but this seems like a more sane fix.

[1] https://github.com/Kwiboo/linux-rockchip/commit/4862e4044532b8b480fa3a0faddc197586623808

With above fixed,

Reviewed-by: Jonas Karlman <jonas@kwiboo.se>

Regards,
Jonas

>  	.hw_params	= dw_hdmi_i2s_hw_params,
>  	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
>  	.get_dai_id	= dw_hdmi_i2s_get_dai_id,


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
