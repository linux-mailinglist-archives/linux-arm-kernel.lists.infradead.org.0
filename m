Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C0B15A31F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 09:19:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9Ka3am0fsBz67YyKoHaG6caOy1FpVaGO0asL4EuvgU=; b=lVfXPzawDCZ5U1
	CGU1Xz0BnCq3t97+3dSVEjZOGSo9AkMhDffw0rBTMBcc9LtUSzVdUb0mLAdQ3LVavFDHtswPaDf0A
	ccg71eIbj0oZY/z+xL/hjcm3khA92ISK6u9vpjf2jmdr0evhDp6n9F3EHsG7XlyYl8T4z70XeC+O7
	7hePZYluo+xvUvuUmw94PHK1Icrv02pWkjYOVH1V1XMHMEwmRuTSREZOkvWMkGy1tTNbR4X62//x2
	Ru3yNg3JT8LuJeyQ4ehq2wZWGWuJI9AfvHGhLs8pyZVfDtc4qSAoABHgXXfSPPCGrXxsNTBMGkTfp
	fCXItz53MF5ka+A9r4gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1nFE-0007Gx-Ri; Wed, 12 Feb 2020 08:19:40 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1nF3-0007Fi-6S; Wed, 12 Feb 2020 08:19:30 +0000
X-UUID: 1177e930cf794b7484d5f6296ab89741-20200212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WTR3IyGTtiHoAq1wxcteE4V4GBjK4qM6cnQ1Vs7Y5e4=; 
 b=oLhNGi+I+Rma92S81fCP0y77PVdsTJDZmWur1Ou+uMLG7m1Jjf1OSTtFg9/apKKesd4YcQWwFvOEniTA4bZZ191ouvazyElHbawHgrd0FLQ1m5aWyVC4I88H8cZNSGOVi3Fy7+iJ+qyGp4Lll98mWkoZZFKurC+uXxqF3kTA6+4=;
X-UUID: 1177e930cf794b7484d5f6296ab89741-20200212
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1332018070; Wed, 12 Feb 2020 00:19:17 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 00:19:25 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 16:17:37 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Feb 2020 16:19:42 +0800
Message-ID: <1581495554.22603.2.camel@mtksdaap41>
Subject: Re: [PATCH v2 2/3] drm/mediatek: support HDMI jack status reporting
From: CK Hu <ck.hu@mediatek.com>
To: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 12 Feb 2020 16:19:14 +0800
In-Reply-To: <20200206102509.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid>
References: <20200206031752.193298-1-tzungbi@google.com>
 <20200206102509.2.I230fd59de28e73934a91cb01424e25b9e84727f4@changeid>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_001929_248736_5688E53B 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: alsa-devel@alsa-project.org, cychiang@google.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, broonie@kernel.org,
 linux-mediatek@lists.infradead.org, daniel@ffwll.ch, matthias.bgg@gmail.com,
 p.zabel@pengutronix.de, dgreid@google.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Tzung-Bi:

On Thu, 2020-02-06 at 11:17 +0800, Tzung-Bi Shih wrote:
> 1.
> Provides a callback (i.e. mtk_hdmi_audio_hook_plugged_cb) to hdmi-codec.
> When ASoC machine driver calls hdmi_codec_set_jack_detect(), the
> callback will be invoked to save plugged_cb and codec_dev parameters.
> 
> +---------+  set_jack_  +------------+ plugged_cb  +----------+
> | machine | ----------> | hdmi-codec | ----------> | mtk-hdmi |
> +---------+  detect()   +------------+ codec_dev   +----------+
> 
> 2.
> When there is any jack status changes, mtk-hdmi will call the
> plugged_cb() to notify hdmi-codec.  And then hdmi-codec will call
> snd_soc_jack_report().
> 
> +----------+ plugged_cb  +------------+
> | mtk-hdmi | ----------> | hdmi-codec | -> snd_soc_jack_report()
> +----------+ codec_dev   +------------+
>              connector_status
> 
> Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_hdmi.c | 34 ++++++++++++++++++++++++++---
>  1 file changed, 31 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> index 23c2b0e8693d..fccdd975947d 100644
> --- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
> @@ -169,6 +169,8 @@ struct mtk_hdmi {
>  	bool audio_enable;
>  	bool powered;
>  	bool enabled;
> +	hdmi_codec_plugged_cb plugged_cb;
> +	struct device *codec_dev;
>  };
>  
>  static inline struct mtk_hdmi *hdmi_ctx_from_bridge(struct drm_bridge *b)
> @@ -1194,13 +1196,23 @@ static void mtk_hdmi_clk_disable_audio(struct mtk_hdmi *hdmi)
>  	clk_disable_unprepare(hdmi->clk[MTK_HDMI_CLK_AUD_SPDIF]);
>  }
>  
> +static enum drm_connector_status
> +mtk_hdmi_update_plugged_status(struct mtk_hdmi *hdmi)
> +{
> +	bool connected = mtk_cec_hpd_high(hdmi->cec_dev);
> +
> +	if (hdmi->plugged_cb && hdmi->codec_dev)
> +		hdmi->plugged_cb(hdmi->codec_dev, connected);
> +
> +	return connected ?
> +	       connector_status_connected : connector_status_disconnected;
> +}
> +
>  static enum drm_connector_status hdmi_conn_detect(struct drm_connector *conn,
>  						  bool force)
>  {
>  	struct mtk_hdmi *hdmi = hdmi_ctx_from_conn(conn);
> -
> -	return mtk_cec_hpd_high(hdmi->cec_dev) ?
> -	       connector_status_connected : connector_status_disconnected;
> +	return mtk_hdmi_update_plugged_status(hdmi);
>  }
>  
>  static void hdmi_conn_destroy(struct drm_connector *conn)
> @@ -1648,20 +1660,36 @@ static int mtk_hdmi_audio_get_eld(struct device *dev, void *data, uint8_t *buf,
>  	return 0;
>  }
>  
> +static int mtk_hdmi_audio_hook_plugged_cb(struct device *dev, void *data,
> +					  hdmi_codec_plugged_cb fn,
> +					  struct device *codec_dev)
> +{
> +	struct mtk_hdmi *hdmi = data;
> +
> +	hdmi->plugged_cb = fn;
> +	hdmi->codec_dev = codec_dev;
> +	mtk_hdmi_update_plugged_status(hdmi);

I think hdmi_conn_detect() and mtk_hdmi_audio_hook_plugged_cb() would be
called in different thread. So it's necessary to use a mutex to protect
this.

Regards,
CK

> +
> +	return 0;
> +}
> +
>  static const struct hdmi_codec_ops mtk_hdmi_audio_codec_ops = {
>  	.hw_params = mtk_hdmi_audio_hw_params,
>  	.audio_startup = mtk_hdmi_audio_startup,
>  	.audio_shutdown = mtk_hdmi_audio_shutdown,
>  	.digital_mute = mtk_hdmi_audio_digital_mute,
>  	.get_eld = mtk_hdmi_audio_get_eld,
> +	.hook_plugged_cb = mtk_hdmi_audio_hook_plugged_cb,
>  };
>  
>  static int mtk_hdmi_register_audio_driver(struct device *dev)
>  {
> +	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
>  	struct hdmi_codec_pdata codec_data = {
>  		.ops = &mtk_hdmi_audio_codec_ops,
>  		.max_i2s_channels = 2,
>  		.i2s = 1,
> +		.data = hdmi,
>  	};
>  	struct platform_device *pdev;
>  

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
