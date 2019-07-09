Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACC963529
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 13:47:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RFvH9UlY19LCZBoKm3hszA0njBTLJqMjDsWss1FfW/Y=; b=O4cMl3QVBnQuba3njVrvoKUHj
	SbEBjNVyZ8PWCwKrLWafBIPVBjvlh0EuIVMDhvXK5G8XZ8yWqsAuU/pepF9AVm7ZoBBVWsF2Oxd29
	0CS936d0DI/OSDDBlxtbbp2Wzv6briGsb8iOE+XWZb0jrBeSjez+YiHl1Qh87dnyrMGYVKjmscMVn
	LqQdv3se/mgP/8pBnY0lQ5O18A7+QTiR/9IR/8plLFbciS5k9YfW0bWMoq0lnREiAbI93cEPdqBfc
	L7ZMFF3O7DjNmpJKAH7sMxlYE5fmQNKRXgHpWW+DUUpYdCAsF5Yy6Kof2vastx3J9KncZ+U28MwbB
	qMgpFlUPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkoau-00011s-4y; Tue, 09 Jul 2019 11:47:36 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkoab-00010G-Rz; Tue, 09 Jul 2019 11:47:19 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jul 2019 04:47:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,470,1557212400"; d="scan'208";a="167964894"
Received: from crojewsk-mobl1.ger.corp.intel.com (HELO [172.28.182.92])
 ([172.28.182.92])
 by orsmga003.jf.intel.com with ESMTP; 09 Jul 2019 04:47:10 -0700
Subject: Re: [PATCH 1/4] ASoC: hdmi-codec: Add an op to set callback function
 for plug event
To: Cheng-Yi Chiang <cychiang@chromium.org>
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-2-cychiang@chromium.org>
From: Cezary Rojewski <cezary.rojewski@intel.com>
Message-ID: <3d5755cf-34e9-44f7-3b03-6bdfca84ff95@intel.com>
Date: Tue, 9 Jul 2019 13:47:10 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190705042623.129541-2-cychiang@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_044717_916522_EA30681F 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, dianders@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-07-05 06:26, Cheng-Yi Chiang wrote:
> +static void hdmi_codec_jack_report(struct hdmi_codec_priv *hcp,
> +				   unsigned int jack_status)
> +{
> +	if (!hcp->jack)
> +		return;
> +
> +	if (jack_status != hcp->jack_status) {
> +		snd_soc_jack_report(hcp->jack, jack_status, SND_JACK_LINEOUT);
> +		hcp->jack_status = jack_status;
> +	}
> +}

Single "if" statement instead? The first "if" does not even cover all 
cases - if the secondary check fails, you'll "return;" too.

> +/**
> + * hdmi_codec_set_jack_detect - register HDMI plugged callback
> + * @component: the hdmi-codec instance
> + * @jack: ASoC jack to report (dis)connection events on
> + */
> +int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
> +			       struct snd_soc_jack *jack)
> +{
> +	struct hdmi_codec_priv *hcp = snd_soc_component_get_drvdata(component);
> +	int ret;
> +
> +	if (hcp->hcd.ops->hook_plugged_cb) {
> +		hcp->jack = jack;
> +		ret = hcp->hcd.ops->hook_plugged_cb(component->dev->parent,
> +						    hcp->hcd.data,
> +						    plugged_cb);
> +		if (ret) {
> +			hcp->jack = NULL;
> +			return ret;
> +		}
> +		return 0;
> +	}
> +	return -EOPNOTSUPP;
> +}
> +EXPORT_SYMBOL_GPL(hdmi_codec_set_jack_detect);

int ret = -EOPNOTSUPP;
(...)

return ret;

In consequence, you can reduce the number of "return(s)" and also remove 
the redundant parenthesis for the if-statement used to set jack to NULL.

Czarek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
