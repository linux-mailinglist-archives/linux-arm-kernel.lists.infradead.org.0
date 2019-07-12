Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9CD566B15
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chNN8S8MramdaUHMapwO8sKO64aKxL+HEQwHyuIcLSk=; b=KBWn/RG21m/7nQ
	zVMVSsSqgKkc/K816hliON6MoSE/Tvo2MCPNs4b8Ayw0NVJ9m5wpoGjSm3c7W9UbBHsuvT29M+oiP
	xlQKafDT2L3Ji5JbxROeDa8JkFH8u4Jm72xdgJ/DpUzv2COOdZsH44Hh3+isUGEuvyKQGIyZORTZR
	L4VldP1KbuS6+3Trexx6VOe2MIev3kT34SAjSea1vnQVSn1iK20GywOlugPPZMPdEVbrSJonYTxV9
	DnGEsploQox3v+HszIXpL2Hhueagc5L1PM5cBmmA0srryJGr+OWnHPgXbHIEBntLTaAH+ys0x4yug
	T7/QE0HQ79ZHhhyNzq3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlt6K-000244-Va; Fri, 12 Jul 2019 10:48:29 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlt67-00021y-Kn; Fri, 12 Jul 2019 10:48:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lzot1skSOlOTbBm7xK1JQoexdHkMmrM79kAyAnNcQlQ=; b=J8rE92gEEPn2uOL+Y361gE38j
 XzQeuEPCUGPwfHPnj7BdO/2csE6YOKoiSxLzgOk94VzCZoInY4/pEYAjH1oPKqbTbH1hvjc8WXLNw
 uRdQtTyheg4+8TzRu2Q4j31X33BH6Evsa3YIcuT3EuoKIJEO/b4l972IxqBLEr2onteG/9/qrROZ8
 qaVCHpNbjvCmUxbaTVJhMaimRNgY2MXVGnoE/XmA0fIZnZmVPezfivjgQTDwV4/4C5AoEM7nSx58q
 1nYZ1wJJhUIvfvCOzFPRn1P3HdAVP3jVCMq1T4XAkRUftAQjqaNXCv1WKJoEn6amGrWKK5hrHqSVD
 BVfnA58sw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:59374)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hlt5o-0001JS-RD; Fri, 12 Jul 2019 11:47:57 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hlt5g-0005bu-Aq; Fri, 12 Jul 2019 11:47:48 +0100
Date: Fri, 12 Jul 2019 11:47:48 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v3 2/5] drm: bridge: dw-hdmi: Report connector status
 using callback
Message-ID: <20190712104748.zlgxgdjbtj2gw4yz@shell.armlinux.org.uk>
References: <20190712100443.221322-1-cychiang@chromium.org>
 <20190712100443.221322-3-cychiang@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712100443.221322-3-cychiang@chromium.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_034815_962474_1646DD81 
X-CRM114-Status: GOOD (  24.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, Mark Brown <broonie@kernel.org>,
 Takashi Iwai <tiwai@suse.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, dianders@chromium.org,
 Hans Verkuil <hverkuil@xs4all.nl>, linux-rockchip@lists.infradead.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, dgreid@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 06:04:40PM +0800, Cheng-Yi Chiang wrote:
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
> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |  3 +
>  .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   | 10 ++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     | 55 ++++++++++++++++++-
>  3 files changed, 67 insertions(+), 1 deletion(-)
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
> index 045b1b13fd0e..ce6646067472 100644
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
> @@ -209,6 +214,40 @@ static inline u8 hdmi_readb(struct dw_hdmi *hdmi, int offset)
>  	return val;
>  }
>  
> +static void handle_plugged_change(struct dw_hdmi *hdmi, bool plugged)
> +{
> +	struct platform_device *codec_pdev;
> +
> +	if (!hdmi->audio || IS_ERR(hdmi->audio))
> +		return;
> +	codec_pdev = platform_get_drvdata(hdmi->audio);
> +	if (!codec_pdev || IS_ERR(codec_pdev))
> +		return;

This looks fragile to me, poking about in another device's driver data
from another driver is really not a good design decision.  I think this
can be simplified if the registration function took the function
pointer and the struct device pointer, and then you only need one test
below:

> +	if (!hdmi->plugged_cb)
> +		return;
> +
> +	hdmi->plugged_cb(&codec_pdev->dev, plugged);
> +}
> +
> +static int hdmi_set_plugged_cb(struct dw_hdmi *hdmi, hdmi_codec_plugged_cb fn)
> +{
> +	bool plugged;
> +	struct platform_device *codec_pdev;
> +
> +	if (!hdmi->audio || IS_ERR(hdmi->audio))
> +		return -EINVAL;

Given the current code structure, how can this ever be true when the
function is called?

> +	codec_pdev = platform_get_drvdata(hdmi->audio);
> +	if (!codec_pdev || IS_ERR(codec_pdev))
> +		return -EINVAL;

This doesn't seem like a good idea as I've pointed out above.

> +
> +	mutex_lock(&hdmi->mutex);
> +	hdmi->plugged_cb = fn;
> +	plugged = hdmi->last_connector_result == connector_status_connected;
> +	handle_plugged_change(hdmi, plugged);
> +	mutex_unlock(&hdmi->mutex);

Should be a blank line here for readability.

> +	return 0;
> +}
> +
>  static void hdmi_modb(struct dw_hdmi *hdmi, u8 data, u8 mask, unsigned reg)
>  {
>  	regmap_update_bits(hdmi->regm, reg << hdmi->reg_shift, mask, data);
> @@ -2044,6 +2083,7 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>  {
>  	struct dw_hdmi *hdmi = container_of(connector, struct dw_hdmi,
>  					     connector);
> +	enum drm_connector_status result;
>  
>  	mutex_lock(&hdmi->mutex);
>  	hdmi->force = DRM_FORCE_UNSPECIFIED;
> @@ -2051,7 +2091,18 @@ dw_hdmi_connector_detect(struct drm_connector *connector, bool force)
>  	dw_hdmi_update_phy_mask(hdmi);
>  	mutex_unlock(&hdmi->mutex);
>  
> -	return hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> +	result = hdmi->phy.ops->read_hpd(hdmi, hdmi->phy.data);
> +
> +	mutex_lock(&hdmi->mutex);
> +	if (result != hdmi->last_connector_result) {
> +		dev_dbg(hdmi->dev, "read_hpd result: %d", result);
> +		handle_plugged_change(hdmi,
> +				      result == connector_status_connected);
> +		hdmi->last_connector_result = result;
> +	}
> +	mutex_unlock(&hdmi->mutex);
> +
> +	return result;
>  }
>  
>  static int dw_hdmi_connector_get_modes(struct drm_connector *connector)
> @@ -2460,6 +2511,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  	hdmi->rxsense = true;
>  	hdmi->phy_mask = (u8)~(HDMI_PHY_HPD | HDMI_PHY_RX_SENSE);
>  	hdmi->mc_clkdis = 0x7f;
> +	hdmi->last_connector_result = connector_status_disconnected;
>  
>  	mutex_init(&hdmi->mutex);
>  	mutex_init(&hdmi->audio_mutex);
> @@ -2653,6 +2705,7 @@ __dw_hdmi_probe(struct platform_device *pdev,
>  		audio.hdmi	= hdmi;
>  		audio.write	= hdmi_writeb;
>  		audio.read	= hdmi_readb;
> +		audio.set_plugged_cb = hdmi_set_plugged_cb;

Why is this necessary?

The I2S audio driver already depends on the dw-hdmi module through its
use of functions already exported.  Indirecting this through the
platform data makes no sense.

Just rename hdmi_set_plugged_cb to dw_hdmi_set_plugged_cb() and export
it for dw-hdmi-i2s-audio.c to use.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
