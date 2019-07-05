Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA064607C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:24:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hecN7qgbbNaaIQidYCiAz+blEq20eC6xmdolbBMeHA=; b=s78IoFvGjvplwW
	OMeBtSLvS0z2vWei2+DElYEGga0lsFKCHCBIxE/3VEcQTZrslRiufjBXxjljUcZFcEgzEGsCG0oBk
	p48CYhIRDhWFym8fvjQGhflrLLYqhSxs5qrnFH/hJB74Ejpk8oE5LJUisOogFIqTLcD781neu6D2T
	SoAgAk478pROMUD933CKEgZzRAJ6I9MeLtgXeinC1Gm+S91imOIKQM8h3piwwWPhPxPH+vWK8BEAO
	I++PJ4ofuZNh9hpMjSEFg1gdnPFvCcHiIqQcXo+doej0v1omVoatujtOQUSakb3IfFd9G4OAJMHV6
	GxPM05B+xcdstBFT4zJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjP8x-0007Hl-8t; Fri, 05 Jul 2019 14:24:55 +0000
Received: from mail-oln040092072037.outbound.protection.outlook.com
 ([40.92.72.37] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjP8p-0007GK-1U; Fri, 05 Jul 2019 14:24:49 +0000
Received: from DB5EUR03FT059.eop-EUR03.prod.protection.outlook.com
 (10.152.20.52) by DB5EUR03HT049.eop-EUR03.prod.protection.outlook.com
 (10.152.20.232) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2052.18; Fri, 5 Jul
 2019 05:45:50 +0000
Received: from VI1PR06MB4142.eurprd06.prod.outlook.com (10.152.20.54) by
 DB5EUR03FT059.mail.protection.outlook.com (10.152.21.175) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Fri, 5 Jul 2019 05:45:50 +0000
Received: from VI1PR06MB4142.eurprd06.prod.outlook.com
 ([fe80::c8ce:d86:2172:6b3]) by VI1PR06MB4142.eurprd06.prod.outlook.com
 ([fe80::c8ce:d86:2172:6b3%7]) with mapi id 15.20.2052.010; Fri, 5 Jul 2019
 05:45:49 +0000
From: Jonas Karlman <jonas@kwiboo.se>
To: Cheng-Yi Chiang <cychiang@chromium.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: Re: [alsa-devel] [PATCH 2/4] drm: bridge: dw-hdmi: Report connector
 status using callback
Thread-Topic: [alsa-devel] [PATCH 2/4] drm: bridge: dw-hdmi: Report connector
 status using callback
Thread-Index: AQHVMvTmlQAxzmEkvEygINjZy8KRxw==
Date: Fri, 5 Jul 2019 05:45:49 +0000
Message-ID: <VI1PR06MB41425D1F24AC653F08AFA463ACF50@VI1PR06MB4142.eurprd06.prod.outlook.com>
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-3-cychiang@chromium.org>
In-Reply-To: <20190705042623.129541-3-cychiang@chromium.org>
Accept-Language: sv-SE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR06CA0035.eurprd06.prod.outlook.com
 (2603:10a6:20b:14::48) To VI1PR06MB4142.eurprd06.prod.outlook.com
 (2603:10a6:802:64::15)
x-incomingtopheadermarker: OriginalChecksum:0DC5DDDF7A9E0FCEBD746EBE7A4A8744CC3AC11788CB69B54DE975C287CEF30A;
 UpperCasedChecksum:0D77BD3918D7E91A876A73929B659EE11231D2D9B420C7202D8C83FF969E7833;
 SizeAsReceived:8373; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Om7HmFmJ8b/vClwNRiGfx5UoHX0pbMJ6]
x-microsoft-original-message-id: <20d7dcaf-656c-1606-e0cc-b0f22151ab47@kwiboo.se>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
 SRVR:DB5EUR03HT049; 
x-ms-traffictypediagnostic: DB5EUR03HT049:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: K38KIC56eJSxp+qeVO+APTMClRqjgiiQO2mJMa0eu8qAhjTXZVdyFGXNeQagxq/mGjA6KSJ4C15baX5B1klVjGcV5rCtwThh5KdabqoQZIBioSNiNx9ZAoQe7Bz1g8ErROc484YE6HOba8mFpszwnQiFIb6SyXpMzty9ODmJSRFTCpAd0IVPD5Fn72CdqdjV
Content-ID: <07B9D3D23364E34B86C7B351E0C533CC@eurprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 09121cd1-0851-4151-e9c4-08d7010c0868
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 05:45:49.6718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_072447_093808_858A2F41 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.72.37 listed in list.dnswl.org]
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 "dianders@chromium.org" <dianders@chromium.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, Takashi
 Iwai <tiwai@suse.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent
 Pinchart <Laurent.pinchart@ideasonboard.com>, Daniel Vetter <daniel@ffwll.ch>,
 "dgreid@chromium.org" <dgreid@chromium.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-07-05 06:26, Cheng-Yi Chiang wrote:
> Allow codec driver register callback function for plug event.
>
> The callback registration flow:
> dw-hdmi <--- hw-hdmi-i2s-audio <--- hdmi-codec
>
> dw-hdmi-i2s-audio implements hook_plugged_cb op
> so codec driver can register the callback.
>
> dw-hdmi implements set_plugged_cb op so platform device can register the
> callback.
>
> When connector plug/unplug event happens, report this event using the
> callback.
>
> Make sure that audio and drm are using the single source of truth for
> connector status.

I have a similar notification need for making a snd_ctl_notify() call from hdmi-codec when ELD changes,
see [1] for work in progress patches (part of a dw-hdmi multi-channel lpcm series I am preparing).

Any suggestions on how to handle a ELD change notification?
Should I use a similar pattern as in this series?
(I lost track of the hdmi-notifier/drm_audio_component discussion)

[1] https://github.com/Kwiboo/linux-rockchip/compare/54b40fdd264c7ed96017271eb6524cca4ff755ab...9c17284e8a8657e8b1da53a1c7ff056cbd8ce43c

Best regards,
Jonas

>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |  3 ++
>  .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   | 10 ++++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 34 ++++++++++++++++++-
>  3 files changed, 46 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> index 63b5756f463b..f523c590984e 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-audio.h
> @@ -2,6 +2,8 @@
>  #ifndef DW_HDMI_AUDIO_H
>  #define DW_HDMI_AUDIO_H
>  
> +#include <sound/hdmi-codec.h>
> +
>  struct dw_hdmi;
>  
>  struct dw_hdmi_audio_data {
> @@ -17,6 +19,7 @@ struct dw_hdmi_i2s_audio_data {
>  
>  	void (*write)(struct dw_hdmi *hdmi, u8 val, int offset);
>  	u8 (*read)(struct dw_hdmi *hdmi, int offset);
> +	int (*set_plugged_cb)(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn);
>  };
>  
>  #endif
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index 5cbb71a866d5..7b93cf05c985 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -104,10 +104,20 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
>  	return -EINVAL;
>  }
>  
> +static int dw_hdmi_i2s_hook_plugged_cb(struct device *dev, void *data,
> +				       hdmi_codec_plugged_cb fn)
> +{
> +	struct dw_hdmi_i2s_audio_data *audio = data;
> +	struct dw_hdmi *hdmi = audio->hdmi;
> +
> +	return audio->set_plugged_cb(hdmi, fn);
> +}
> +
>  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
>  	.hw_params	= dw_hdmi_i2s_hw_params,
>  	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
>  	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
> +	.hook_plugged_cb = dw_hdmi_i2s_hook_plugged_cb,
>  };
>  
>  static int snd_dw_hdmi_probe(struct platform_device *pdev)
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index 045b1b13fd0e..c69a399fc7ca 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -26,6 +26,8 @@
>  #include <drm/drm_probe_helper.h>
>  #include <drm/bridge/dw_hdmi.h>
>  
> +#include <sound/hdmi-codec.h>
> +
>  #include <uapi/linux/media-bus-format.h>
>  #include <uapi/linux/videodev2.h>
>  
> @@ -185,6 +187,9 @@ struct dw_hdmi {
>  	void (*disable_audio)(struct dw_hdmi *hdmi);
>  
>  	struct cec_notifier *cec_notifier;
> +
> +	hdmi_codec_plugged_cb plugged_cb;
> +	enum drm_connector_status last_connector_result;
>  };
>  
>  #define HDMI_IH_PHY_STAT0_RX_SENSE \
> @@ -209,6 +214,17 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
>  	return val;
>  }
>  
> +static int hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn)
> +{
> +	mutex_lock(&hdmi->mutex);
> +	hdmi->plugged_cb = fn;
> +	if (hdmi->audio && !IS_ERR(hdmi->audio))
> +		fn(hdmi->audio,
> +		   hdmi->last_connector_result == connector_status_connected);
> +	mutex_unlock(&hdmi->mutex);
> +	return 0;
> +}
> +
>  static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
>  {
>  	regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
> @@ -2044,6 +2060,7 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>  {
>  	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
>  					     connector);
> +	enum drm_connector_status result;
>  
>  	mutex_lock(&hdmi->mutex);
>  	hdmi->force = DRM_FORCE_UNSPECIFIED;
> @@ -2051,7 +2068,20 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>  	dw_hdmi_update_phy_mask(hdmi);
>  	mutex_unlock(&hdmi->mutex);
>  
> -	return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> +	result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> +
> +	mutex_lock(&hdmi->mutex);
> +	if (result != hdmi->last_connector_result) {
> +		dev_dbg(hdmi->dev, "read_hpd result: %d", result);
> +		if (hdmi->plugged_cb && hdmi->audio && !IS_ERR(hdmi->audio)) {
> +			hdmi->plugged_cb(hdmi->audio,
> +					 result == connector_status_connected);
> +			hdmi->last_connector_result = result;
> +		}
> +	}
> +	mutex_unlock(&hdmi->mutex);
> +
> +	return result;
>  }
>  
>  static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
> @@ -2460,6 +2490,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  	hdmi->rxsense = true;
>  	hdmi->phy_mask = (u8)~(HDMI_PHY_HPD | HDMI_PHY_RX_SENSE);
>  	hdmi->mc_clkdis = 0x7f;
> +	hdmi->last_connector_result = connector_status_disconnected;
>  
>  	mutex_init(&hdmi->mutex);
>  	mutex_init(&hdmi->audio_mutex);
> @@ -2653,6 +2684,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  		audio.hdmi	= hdmi;
>  		audio.write	= hdmi_writeb;
>  		audio.read	= hdmi_readb;
> +		audio.set_plugged_cb = hdmi_set_plugged_cb;
>  		hdmi->enable_audio = dw_hdmi_i2s_audio_enable;
>  		hdmi->disable_audio = dw_hdmi_i2s_audio_disable;
>  


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
