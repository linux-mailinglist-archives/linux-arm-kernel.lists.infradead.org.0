Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5161360823
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:43:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7kI68GbwW8hGwerqqIREbzK+CTTEawMwlZQ6zdf0m0=; b=K/8LyUmF6GfYKv
	B7WoO7l8QLw7h4uYoRJnC4OF2Zzp2r3RyCT9J/T4i2fikt7sJiGUAeLnXK1cgv1X3OTv24sB3DZc2
	vdeLjblk326dA89h2rGywUHS8qmbKdtjKUuouBdjDbl95OsqkLkw9JUFCj9+k8cq0rKLXevBKK5d/
	PX+RmdWsVI0PNfKRMP7eFbAzdj5670KQXj6seC20cVKKmpvRgWRGKIjVrqZy27ePopj6oi2UtKxBW
	6pXDYva1+YqsfrECsUj8Xs7ajEfGo9Y2S0XKg5VHpnp6yzxU4c1xrzlB+kiIp0V+dnPtJD3kWkbd+
	tJwvX7C9tb63pAaTgHvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPR0-0005Gl-K8; Fri, 05 Jul 2019 14:43:34 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPQs-0005Gc-Iy
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:43:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:Cc:To:Subject:Message-ID:
 Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0IIqKWzRaNse3XXjc9VJC174hdKsP3di+1IIb5DajLs=; b=ALxSx43bpQ3iGOJx38rnKwjcs
 NRhlgsejKwBlzpsi1b/1+y8Ws+Vcs0/pnwAielQQhDDD2HoUFTs52jpKeHbOIbiUxMORxLikkMs18
 rooCl2GJNykt9H5f24n8XRMCAe07j9D+O2ns7237w/vD50RmLDtZH2sFIF7IiurEyXrvcyJHE2/fy
 vleX3wQwqNJe//CF4eHQ2sp+qZVrwHydv/seMrP4UIurjErnsjJyBr2h2V2ZXyM9qyBRDDkUMLYPp
 h7RDxK247NgnSQp3dkEP/JJcgr/q/BYXfy4jy0yENp3h6EIzN8EpkN9rZwjg4C+GgkUwhagiiAWaR
 EcbSYTVNQ==;
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIMy-0008Qg-1l
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:10:57 +0000
Received: by mail-ot1-x341.google.com with SMTP id x21so8078170otq.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 00:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0IIqKWzRaNse3XXjc9VJC174hdKsP3di+1IIb5DajLs=;
 b=gh/Toz6V7CixdKGLGkGy9rPXkrdYpbSEI9toJWHRYaf4kHmQ/0QfMBxGBHsJtDl9i9
 ZwjZg2XdbTSBvk5L41Rc7GwtWbT43JorS2dYawqFZq0UF8xiHjUn30KcpEdiKuzYv91k
 2BB6vbDpC26WiSr5OAiV+1AjkluoSR+vFoFQMvBNdGLTUnZXsqoqP7zX8GOOFaR7IoFU
 P+hfc0NAZuTMJOgudDmWkfHCqRRGjxoW92AgSBMRCJlCTYcgBMm4iLSXUKDrvBhMNGUj
 kOa6/YuH0gC2IBEeHA1yriXC0QfOWUIpElqf+l3HO/EvIv3/ubknXhnXBQU+SJadHsUV
 kP2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0IIqKWzRaNse3XXjc9VJC174hdKsP3di+1IIb5DajLs=;
 b=fMB3/EqUTmnP/DP9GWafJ1EuG5rWoVP5ujHKj1J/9zwEcTJ+7roDRByA3t8swC8RBU
 GA5B8terOZjFqnHjzUE6KBWQkJhodYNzzkYAJukMfsnuNokBfe1gm6if8RowIysp18UB
 OOlgFGxixh6g/PW0ii8D6MJmF37rwGfLL8cZ9iW0DcVrTfMteHKU5XRA1z9Qt3PlpnGD
 V2FSTGC8h4eUBcjQrBYJItAqwCLK6hMpQk8F8g4q4dkvik7HJsZMzxPXQffib394jqRX
 afKBwkhL+Xm07OC6CLmf8gjVK8RCMLoGoKDUETCZL/HvgjlGGt4TugiNe0xI3gkCRQeP
 e03Q==
X-Gm-Message-State: APjAAAUdJ8tRQwW7KF6ic+rLInXz5wV4Ymmx7NNdMW4YJrl4hgeiKr4X
 lsm1P7p1/l4TmhBnV7cvLcpX695HJAsK9ceGp772pg==
X-Google-Smtp-Source: APXvYqzldGMEKIRPPEJ0vaUfI2lFQ29kQgI2QwiHDaDqpSbGSw2Xx3CIMBQjB6qsF1gXZ8S1OcSQCm9TeiE6wueHYB4=
X-Received: by 2002:a9d:4f02:: with SMTP id d2mr1738812otl.328.1562310528818; 
 Fri, 05 Jul 2019 00:08:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-2-cychiang@chromium.org>
In-Reply-To: <20190705042623.129541-2-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 5 Jul 2019 15:08:37 +0800
Message-ID: <CA+Px+wXtmf9dQQP7ywPLp7Qbbvqau=WnO3qhZ8+qmbJD1gjx+A@mail.gmail.com>
Subject: Re: [PATCH 1/4] ASoC: hdmi-codec: Add an op to set callback function
 for plug event
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>, dianders@chromium.org,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 5, 2019 at 12:26 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> diff --git a/include/sound/hdmi-codec.h b/include/sound/hdmi-codec.h
> index 7fea496f1f34..26c02abb8eba 100644
> --- a/include/sound/hdmi-codec.h
> +++ b/include/sound/hdmi-codec.h
> @@ -47,6 +47,9 @@ struct hdmi_codec_params {
>         int channels;
>  };
>
> +typedef void (*hdmi_codec_plugged_cb)(struct platform_device *dev,
> +                                     bool plugged);
> +
The callback prototype is "weird" by struct platform_device.  Is it
possible to having snd_soc_component instead of platform_device?

>  struct hdmi_codec_pdata;
>  struct hdmi_codec_ops {
>         /*
> @@ -88,6 +91,13 @@ struct hdmi_codec_ops {
>          */
>         int (*get_dai_id)(struct snd_soc_component *comment,
>                           struct device_node *endpoint);
> +
> +       /*
> +        * Hook callback function to handle connector plug event.
> +        * Optional
> +        */
> +       int (*hook_plugged_cb)(struct device *dev, void *data,
> +                              hdmi_codec_plugged_cb fn);
>  };
The first parameter dev could be removed.  Not used.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
