Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC5C32A2F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 09:59:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJVi8/nbrFQDdrJt8oHUqqqxvBGntxYFFpzunUzgdw4=; b=oz7lA8oSHCP/mf
	+O1HbyYpLzPFnpDh7CRvkn+nb+T1pwAlqsUTKGcAcaQjGUfnoK2Lc7sv87Xk2m0WKu2eTZvxBWlBv
	BM+tQZDydVcvRuOxEhmAi866946jbQlXD9NV78fuLXnvM85KG2iPHnUoljOwVE+ubHn5Hz9okMJr5
	ClAM26wg+vkzcnMH9VVTNBwMltk+2bfbIA7PuvJtWtc0f7mCIQdT5tY4oLjIQGHX67tsg3ASZv5D2
	2QapfqpmZ2Q452zzIHLeONfLYY1ejKKGhe3KMrfM96dYk1LsR7tmXtImS7AAa14PPwP8VVsRw7ttl
	l6UXt0FrDcRaBu6BK/+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhsM-00048Y-Bh; Mon, 03 Jun 2019 07:59:26 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhsE-00047Q-DY; Mon, 03 Jun 2019 07:59:20 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 00:59:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,546,1549958400"; d="scan'208";a="181072014"
Received: from xxx.igk.intel.com (HELO xxx) ([10.237.93.170])
 by fmsmga002.fm.intel.com with ESMTP; 03 Jun 2019 00:59:10 -0700
Date: Mon, 3 Jun 2019 10:03:01 +0200
From: Amadeusz =?UTF-8?B?U8WCYXdpxYRza2k=?=
 <amadeuszx.slawinski@linux.intel.com>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [alsa-devel] [PATCH 2/7] ASoC: hdmi-codec: use HDMI state
 notifier to add jack support
Message-ID: <20190603100301.00d68690@xxx>
In-Reply-To: <20190603043251.226549-3-cychiang@chromium.org>
References: <20190603043251.226549-1-cychiang@chromium.org>
 <20190603043251.226549-3-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_005918_475533_97F78337 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -4.9 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, tzungbi@chromium.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, dianders@chromium.org,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon,  3 Jun 2019 12:32:46 +0800
Cheng-Yi Chiang <cychiang@chromium.org> wrote:

> From: Philipp Zabel <p.zabel@pengutronix.de>
> 
> Use HDMI connection / disconnection notifications to update an ALSA
> jack object. Also make a copy of the ELD block after every change.
> 
> This was posted by Philipp Zabel at
> 
> https://patchwork.kernel.org/patch/9430747/
> 
> Modified by Cheng-Yi Chiang:
> - Fix the conflict of removed hdmi_codec_remove ops.
> - Other minor fix for the conflict with latest hdmi-codec on ASoC
>   for-next tree.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
> The original patch is at https://patchwork.kernel.org/patch/9430747/
> I could not find the LKML link for the patch.
> 
>  include/sound/hdmi-codec.h    |   7 +++
>  sound/soc/codecs/Kconfig      |   1 +
>  sound/soc/codecs/hdmi-codec.c | 104
> +++++++++++++++++++++++++++++++++- 3 files changed, 110
> insertions(+), 2 deletions(-)
> 
> diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
> index 9483c55f871b..4fa39c93363f 100644
> --- a/include/sound/hdmi-codec.h
> +++ b/include/sound/hdmi-codec.h
> @@ -107,6 +107,13 @@ struct hdmi_codec_pdata {
>  	void *data;
>  };
>  
> +struct snd_soc_component;
> +struct snd_soc_jack;
> +
> +int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
> +			       struct snd_soc_jack *jack,
> +			       struct device *dev);
> +
>  #define HDMI_CODEC_DRV_NAME "hdmi-audio-codec"
>  
>  #endif /* __HDMI_CODEC_H__ */
> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
> index 8f577258080b..f5f6dd04234c 100644
> --- a/sound/soc/codecs/Kconfig
> +++ b/sound/soc/codecs/Kconfig
> @@ -639,6 +639,7 @@ config SND_SOC_HDMI_CODEC
>  	select SND_PCM_ELD
>  	select SND_PCM_IEC958
>  	select HDMI
> +	select HDMI_NOTIFIERS
>  
>  config SND_SOC_ES7134
>         tristate "Everest Semi ES7134 CODEC"
> diff --git a/sound/soc/codecs/hdmi-codec.c
> b/sound/soc/codecs/hdmi-codec.c index 6a0cc8d7e141..fe796a7475a5
> 100644 --- a/sound/soc/codecs/hdmi-codec.c
> +++ b/sound/soc/codecs/hdmi-codec.c
> @@ -12,9 +12,12 @@
>   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See
> the GNU
>   * General Public License for more details.
>   */
> +#include <linux/hdmi-notifier.h>
>  #include <linux/module.h>
> +#include <linux/notifier.h>
>  #include <linux/string.h>
>  #include <sound/core.h>
> +#include <sound/jack.h>
>  #include <sound/pcm.h>
>  #include <sound/pcm_params.h>
>  #include <sound/soc.h>
> @@ -282,6 +285,13 @@ struct hdmi_codec_priv {
>  	struct snd_pcm_chmap *chmap_info;
>  	unsigned int chmap_idx;
>  	struct mutex lock;
> +	struct snd_soc_jack *jack;
> +	/* Lock to protect setting and getting eld. */
> +	struct mutex eld_lock;
> +	struct device *dev;
> +	struct hdmi_notifier *notifier;
> +	struct notifier_block nb;
> +	unsigned int jack_status;
>  };
>  
>  static const struct snd_soc_dapm_widget hdmi_widgets[] = {
> @@ -308,7 +318,9 @@ static int hdmi_eld_ctl_get(struct snd_kcontrol
> *kcontrol, struct snd_soc_component *component =
> snd_kcontrol_chip(kcontrol); struct hdmi_codec_priv *hcp =
> snd_soc_component_get_drvdata(component); 
> +	mutex_lock(&hcp->eld_lock);
>  	memcpy(ucontrol->value.bytes.data, hcp->eld,
> sizeof(hcp->eld));
> +	mutex_unlock(&hcp->eld_lock);
>  
>  	return 0;
>  }
> @@ -393,7 +405,7 @@ static int hdmi_codec_startup(struct
> snd_pcm_substream *substream, struct snd_soc_dai *dai)
>  {
>  	struct hdmi_codec_priv *hcp = snd_soc_dai_get_drvdata(dai);
> -	int ret = 0;
> +	int ret;
>  
>  	ret = mutex_trylock(&hcp->lock);
>  	if (!ret) {
> @@ -408,9 +420,9 @@ static int hdmi_codec_startup(struct
> snd_pcm_substream *substream, }
>  
>  	if (hcp->hcd.ops->get_eld) {
> +		mutex_lock(&hcp->eld_lock);
>  		ret = hcp->hcd.ops->get_eld(dai->dev->parent,
> hcp->hcd.data, hcp->eld, sizeof(hcp->eld));
> -
>  		if (!ret) {
>  			ret =
> snd_pcm_hw_constraint_eld(substream->runtime, hcp->eld);

Seems to me like you missed unlock here. There is return inside this
if().

> @@ -419,6 +431,7 @@ static int hdmi_codec_startup(struct
> snd_pcm_substream *substream, }
>  		/* Select chmap supported */
>  		hdmi_codec_eld_chmap(hcp);
> +		mutex_unlock(&hcp->eld_lock);
>  	}
>  	return 0;
>  
> @@ -747,6 +760,77 @@ static const struct snd_soc_component_driver
> hdmi_driver = { .non_legacy_dai_naming	= 1,
>  };
>  
> +static void hdmi_codec_jack_report(struct hdmi_codec_priv *hcp,
> +				   unsigned int jack_status)
> +{
> +	if (!hcp->jack)
> +		return;
> +
> +	if (jack_status != hcp->jack_status) {
> +		snd_soc_jack_report(hcp->jack, jack_status,
> SND_JACK_LINEOUT);
> +		hcp->jack_status = jack_status;
> +	}
> +}
> +
> +static int hdmi_codec_notify(struct notifier_block *nb, unsigned
> long event,
> +			     void *data)
> +{
> +	struct hdmi_codec_priv *hcp = container_of(nb, struct
> hdmi_codec_priv,
> +						   nb);
> +	struct hdmi_notifier *n = data;
> +
> +	if (!hcp->jack)
> +		return NOTIFY_OK;
> +
> +	switch (event) {
> +	case HDMI_NEW_ELD:
> +		mutex_lock(&hcp->eld_lock);
> +		memcpy(hcp->eld, n->eld, sizeof(hcp->eld));
> +		mutex_unlock(&hcp->eld_lock);
> +		/* fall through */
> +	case HDMI_CONNECTED:
> +		hdmi_codec_jack_report(hcp, SND_JACK_LINEOUT);
> +		break;
> +	case HDMI_DISCONNECTED:
> +		hdmi_codec_jack_report(hcp, 0);
> +		break;
> +	}
> +
> +	return NOTIFY_OK;
> +}
> +
> +/**
> + * hdmi_codec_set_jack_detect - register HDMI state notifier callback
> + * @component: the hdmi-codec instance
> + * @jack: ASoC jack to report (dis)connection events on
> + * @dev: hdmi_notifier device, usually HDMI_TX or CEC device
> + */
> +int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
> +			       struct snd_soc_jack *jack,
> +			       struct device *dev)
> +{
> +	struct hdmi_codec_priv *hcp =
> snd_soc_component_get_drvdata(component);
> +	int ret;
> +
> +	hcp->notifier = hdmi_notifier_get(dev);
> +	if (!hcp->notifier)
> +		return -ENOMEM;
> +
> +	hcp->jack = jack;
> +	hcp->nb.notifier_call = hdmi_codec_notify;
> +	ret = hdmi_notifier_register(hcp->notifier, &hcp->nb);
> +	if (ret)
> +		goto err_notifier_put;
> +
> +	return 0;
> +
> +err_notifier_put:
> +	hdmi_notifier_put(hcp->notifier);
> +	hcp->notifier = NULL;
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(hdmi_codec_set_jack_detect);
> +
>  static int hdmi_codec_probe(struct platform_device *pdev)
>  {
>  	struct hdmi_codec_pdata *hcd = pdev->dev.platform_data;
> @@ -774,6 +858,7 @@ static int hdmi_codec_probe(struct
> platform_device *pdev) 
>  	hcp->hcd = *hcd;
>  	mutex_init(&hcp->lock);
> +	mutex_init(&hcp->eld_lock);
>  
>  	daidrv = devm_kcalloc(dev, dai_count, sizeof(*daidrv),
> GFP_KERNEL); if (!daidrv)
> @@ -797,6 +882,20 @@ static int hdmi_codec_probe(struct
> platform_device *pdev) __func__, ret);
>  		return ret;
>  	}
> +
> +	hcp->dev = dev;
> +
> +	return 0;
> +}
> +
> +static int hdmi_codec_remove(struct platform_device *pdev)
> +{
> +	struct hdmi_codec_priv *hcp = platform_get_drvdata(pdev);
> +
> +	if (hcp->notifier) {
> +		hdmi_notifier_unregister(hcp->notifier, &hcp->nb);
> +		hdmi_notifier_put(hcp->notifier);
> +	}
>  	return 0;
>  }
>  
> @@ -805,6 +904,7 @@ static struct platform_driver hdmi_codec_driver =
> { .name = HDMI_CODEC_DRV_NAME,
>  	},
>  	.probe = hdmi_codec_probe,
> +	.remove = hdmi_codec_remove,
>  };
>  
>  module_platform_driver(hdmi_codec_driver);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
