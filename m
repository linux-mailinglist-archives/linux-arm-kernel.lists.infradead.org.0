Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A920A5321
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:43:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2wEOGxRnT66fPAR0KrpE+JAW89TsS09J+XGf1xFW6w=; b=VDV3D+KEWwCbVX
	vcNzG6BN77nlxxINNTHdp0Ujq3hIeSFwSYp4HxJ0dqI+bNDy/p0tLvfVNobaTVqi4Wyvy5pIST5JO
	IV7hn5HfxzAKdLzGgTfBbcdQuqehbgXJtNPb5YiQOqmRTT6iXFfda+Mk5TMM34SfyYQMD7UKeji22
	T4AiyL66XDbCm/2Vz3WZcg2FlF0PuYV7a2npNoycmPtbk3TAd1F3it0/Kgy2g8s4Ku0ECuay37pWF
	EtKm36baZ+lEpfKr9Zn5BQYkuFtXiWgi6fIN6PbmkW4q/JDsD2SBMr4+xHBgv9gW8w7iBPYd0gs+6
	Ru4bdtN4eqJlVuA8FhZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4irR-0005v1-TR; Mon, 02 Sep 2019 09:42:57 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4irB-0005uG-3c
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:42:42 +0000
Received: by mail-wm1-x341.google.com with SMTP id k1so13799062wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zF4AO/85szZSoAS5TjK4OSgeMooVOP2OGN/ZLZMPGT0=;
 b=XA1e5GIOUu2NUFJwmZhtAyhgQbW4RnV4Cak9Wb1tvGNRavvX2OVfo4Wj6PjsKwYc9y
 SMqgbDiL0ZMvYUk9mqm8mm4ul2rnEtRihnth4hGJsf01+WUlgnjiVwTkNkWPrKqPnbqm
 +NZX3waL3ubKr8DPw/WI8fEk600Pcr60vdeo6oM2NHu6/CemjeVkww8coHvgYxHgkE1o
 PEQ6qdfnTHmq7l+MCFZfH46C/CI508AGKfvwzd8wBIRZXmKRyl8sqsxvjzWyj58/zUeb
 KJX5ECGWZbyc9RMbMcvOK2km1EzDx4IlXpExnFceVKJOv3en0+0XIA3+Q2zt5DtKCZeU
 Ti9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=zF4AO/85szZSoAS5TjK4OSgeMooVOP2OGN/ZLZMPGT0=;
 b=M0F8Lycmjp9ACkYm2Gj7G7PRXBSvluU/exgu3tWy3W+YXrjlDT+5ZEmkcbQYyTpsn7
 tZ5sllB00gW8yOj4gIMQib+BLV59ZzZOOuT3ZtDAfSdfyQ56LNDq2HKVa3ZNG2lQ5jEb
 q/TW1sZmwvvqwOjIhQlcjdSVnopIcpYIj9bmw6EMgXMl+v4NCj/L0QKK/LX7XWOpqbgB
 hqyCZlSe7UEqASuFpB9Q/hmWI0RbK4kBZJYMbk000ItXFJTc2ritsCVcWPtNKIPqtrPX
 RUgtYqmuA9MgnFAni534bBGwvw0ngOWbEvn91JwsC1wbYgXb3eKG0tBpQqEd5HLYl8cG
 1lNA==
X-Gm-Message-State: APjAAAX7GJ9u5K+0xBN6optRS8ZoTU6T2bz3P38t0cOdGWakmfTHRAyb
 D4KozxG/TH3hBQWrMh/wghbze8NFl6I=
X-Google-Smtp-Source: APXvYqwJIsPbaROmt1d3bnUfs9QkxuhxmuyWN7kAJPOe5L4lfPhETft0BsyWy1zD9RpGeiRNvjmIdA==
X-Received: by 2002:a05:600c:305:: with SMTP id
 q5mr20158489wmd.141.1567417359306; 
 Mon, 02 Sep 2019 02:42:39 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id w13sm33209651wre.44.2019.09.02.02.42.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 02 Sep 2019 02:42:38 -0700 (PDT)
Subject: Re: [PATCH v2] drm: dw-hdmi-i2s: enable audio clock in audio_startup
To: Cheng-Yi Chiang <cychiang@chromium.org>, linux-kernel@vger.kernel.org
References: <20190902035435.44463-1-cychiang@chromium.org>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <241fd791-3792-34c8-ac35-a81a0a41070c@baylibre.com>
Date: Mon, 2 Sep 2019 11:42:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190902035435.44463-1-cychiang@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_024241_197026_43B19459 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alsa-devel@alsa-project.org, tzungbi@chromium.org, zhengxing@rock-chips.com,
 kuninori.morimoto.gx@renesas.com, linux-rockchip@lists.infradead.org,
 airlied@linux.ie, jeffy.chen@rock-chips.com, dianders@chromium.org,
 dri-devel@lists.freedesktop.org, cain.cai@rock-chips.com, a.hajda@samsung.com,
 Jonas Karlman <jonas@kwiboo.se>, eddie.cai@rock-chips.com,
 Laurent.pinchart@ideasonboard.com, daniel@ffwll.ch,
 enric.balletbo@collabora.com, dgreid@chromium.org, sam@ravnborg.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 02/09/2019 05:54, Cheng-Yi Chiang wrote:
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
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Jonas Karlman <jonas@kwiboo.se>
> Tested-by: Douglas Anderson <dianders@chromium.org>
> ---
>  Changes from v1:
>  1. Move audio_startup to the front of audio_shutdown.
>  2. Fix the indentation of audio_startup equal sign using tab.
>  3. Rebase the patch on linux-next/master.
>  4. Add Reviewed-by and Tested-by fields from dianders@chromium.org.
>  5. Add Reviewed-by field from jonas@kwiboo.se.
> 
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> index 1d15cf9b6821..34d8e837555f 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> @@ -109,6 +109,14 @@ static int dw_hdmi_i2s_hw_params(struct device *dev, void *data,
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
> @@ -153,6 +161,7 @@ static int dw_hdmi_i2s_get_dai_id(struct snd_soc_component *component,
>  
>  static struct hdmi_codec_ops dw_hdmi_i2s_ops = {
>  	.hw_params	= dw_hdmi_i2s_hw_params,
> +	.audio_startup  = dw_hdmi_i2s_audio_startup,
>  	.audio_shutdown	= dw_hdmi_i2s_audio_shutdown,
>  	.get_eld	= dw_hdmi_i2s_get_eld,
>  	.get_dai_id	= dw_hdmi_i2s_get_dai_id,
> 
Looks sane, Jonas should I apply it now it's rebased ?

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
