Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72246353A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 13:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xN93O1G+v3mwCKaEzsFXa08uPn9bJUVgTFKAkhuQQpc=; b=az0xiy+mVL0vE3
	qZfqZO7d+t00YjTVyKJKnW5hftLK2zRxe+7uduHGS9FZEFsy+161S6cXmU3GSBmA4oVt3+al8bSJ6
	QFURVsiTZMCnkiwhndFAtwoaAQSm/YRLQlSR3Xq4KzmMceWU/+1XQBi8MKSpeeAAQWmzIRKtaKfJ7
	WgXN9FJo/KREIAcDogzWIk5Qqpuzx26Zrin15ffpks0eYMHaCL5qmHrOdhipzRehnrHZaoAa8LeTA
	L1VaoiDHETtYMlsmrxg7EJiJY3Eq9J+OntLwq9AhPN/QWavEjHl5+gknzitRDL3VQ7666RLgvaoTP
	zyPGSBTll/e9Oixq2LgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkojI-0004E2-L9; Tue, 09 Jul 2019 11:56:16 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkoj3-0004Bo-Ev
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 11:56:02 +0000
Received: by mail-vs1-xe41.google.com with SMTP id a186so10432324vsd.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 04:55:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BVsg21whGsT0nCQujzZPC48g95cuUgQWLBZNQAx+pZc=;
 b=Hif8gvZ34qKJMh958dAAJSHO70lREX96FjBgtOfqYNFJyuQpBMR0C1BjfHgf8lDQ92
 sADjoOm6BOziZ8iFV4rfX/D+8PH0/e3yQd9VX01BYzeP27ufOcJLZvyArqht8aRbI3eJ
 IS7yqBpL3VKcMJ1o6/XM6Re5YNCRXm029XCfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BVsg21whGsT0nCQujzZPC48g95cuUgQWLBZNQAx+pZc=;
 b=JPYXfmU+TvzsyS9RiOdb2/u9B4ugAOPhsVRO0jy9uut/btXJb2l+wWZJyHokLPoVK9
 DssF6Rdlq5Gvju4Yu8xqRb1F4tcqYgipQb6SWRDFHM8JNjy0kykFkUm03AcRROL7F42q
 fvUgCcXBXyScCA+oRFUwN38oep8l6+1W7BxIa5C/LgCv5m0R3YLqAaD6WZnO8Ftebk7O
 0b35RkEf+wtXnZyUBgAad4qbIOsGDhy3Da5/XrRbt2pWWgaZBpxRWg+wSYFoQsyDznRU
 n3XmAKnEGgnPxzjx+RhfjRCQTYfF5gYiQMfTFB6I7+jgX5n1T+II0vxKTdcawSEptoFV
 B0nQ==
X-Gm-Message-State: APjAAAVv8usUJjK1hvmzKVLPFi78kr0dtuHssEQ2RCHsdNiZkPEedwqe
 /TN3fryP7EYGblYJrd/+2LE6S6BLhqeefDO+YnkNjQ==
X-Google-Smtp-Source: APXvYqzIvsL1PEG4x0OPfoI+B4eR1OeQ7eQJVZ/D8bs1VUH/IGuRilDy9DOu2h4I32heosv7RyuyXtXOhjY3Ym1TCUo=
X-Received: by 2002:a67:ebcb:: with SMTP id y11mr13483911vso.138.1562673356146; 
 Tue, 09 Jul 2019 04:55:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-2-cychiang@chromium.org>
 <3d5755cf-34e9-44f7-3b03-6bdfca84ff95@intel.com>
In-Reply-To: <3d5755cf-34e9-44f7-3b03-6bdfca84ff95@intel.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Tue, 9 Jul 2019 19:55:29 +0800
Message-ID: <CAFv8NwLos-XcB9K8315vmmfKn+z0XaBph3QxSwrmqhfYqoju2Q@mail.gmail.com>
Subject: Re: [PATCH 1/4] ASoC: hdmi-codec: Add an op to set callback function
 for plug event
To: Cezary Rojewski <cezary.rojewski@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_045601_506942_07C98E95 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -6.1 (------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-6.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Doug Anderson <dianders@chromium.org>,
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 9, 2019 at 7:47 PM Cezary Rojewski
<cezary.rojewski@intel.com> wrote:
>
> On 2019-07-05 06:26, Cheng-Yi Chiang wrote:
> > +static void hdmi_codec_jack_report(struct hdmi_codec_priv *hcp,
> > +                                unsigned int jack_status)
> > +{
> > +     if (!hcp->jack)
> > +             return;
> > +
> > +     if (jack_status != hcp->jack_status) {
> > +             snd_soc_jack_report(hcp->jack, jack_status, SND_JACK_LINEOUT);
> > +             hcp->jack_status = jack_status;
> > +     }
> > +}
>
> Single "if" statement instead? The first "if" does not even cover all
> cases - if the secondary check fails, you'll "return;" too.
>
ACK.
I will fix in v2.
> > +/**
> > + * hdmi_codec_set_jack_detect - register HDMI plugged callback
> > + * @component: the hdmi-codec instance
> > + * @jack: ASoC jack to report (dis)connection events on
> > + */
> > +int hdmi_codec_set_jack_detect(struct snd_soc_component *component,
> > +                            struct snd_soc_jack *jack)
> > +{
> > +     struct hdmi_codec_priv *hcp = snd_soc_component_get_drvdata(component);
> > +     int ret;
> > +
> > +     if (hcp->hcd.ops->hook_plugged_cb) {
> > +             hcp->jack = jack;
> > +             ret = hcp->hcd.ops->hook_plugged_cb(component->dev->parent,
> > +                                                 hcp->hcd.data,
> > +                                                 plugged_cb);
> > +             if (ret) {
> > +                     hcp->jack = NULL;
> > +                     return ret;
> > +             }
> > +             return 0;
> > +     }
> > +     return -EOPNOTSUPP;
> > +}
> > +EXPORT_SYMBOL_GPL(hdmi_codec_set_jack_detect);
>
> int ret = -EOPNOTSUPP;
> (...)
>
> return ret;
>
> In consequence, you can reduce the number of "return(s)" and also remove
> the redundant parenthesis for the if-statement used to set jack to NULL.
>
> Czarek
ACK
will fix in v2.

Thanks a lot for the review!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
