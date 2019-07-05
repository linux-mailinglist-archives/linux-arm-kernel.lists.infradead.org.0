Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D85607D6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ye88PaI6aWV1v7MwtAdBYIQ8X8i/46/1oI68BkmzyAg=; b=rj4wb65333CZ4L
	poXaxMO3/mTAMLhLIH3yIqHQ52sUe0FsmBZpGGpKTLvcqeq20sKyZzXbweVMJuDmTVw6TASVLIjp+
	PiHegJmjV55MBc/hjmbg/WaDywEwWlt72VhrdQf5C4O62GZUiPSKAcrsplFo+dIJWkwIeiGwRzSo2
	+r3ApWW6jFItiba/bJpydeCWi0agC6g/yfWrdyqpb0bp3Grol3V1jk28iQRa5VEfVnkObB+z3l+pe
	HU+QVcedPUu/uDqymnrQsL/zwIZdu4csmbm7vZIZU2mvNwn+gqqdc2djs+2ofCQv7BnAj1qxxx3MJ
	RugFEao/SSFx0MH2K6eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPBu-0001MD-TQ; Fri, 05 Jul 2019 14:27:58 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPBL-0000yi-CA
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:27:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QbM44vAJoF7F4CJFe8D/rdMDdvpEwrpfX/ASCNMAqXA=; b=pjxMB0d3kGYHlsq0Jlsy+DBYz
 Byg5C/YMvrSQ93T9kNITeGuMxymiSbCyEbpYRXvSoG7JMDuzDSgjfONlAh4Pel04spU6PoBQWe9eU
 a5LAFcHRPS7xCtByNqSSzDZATVKmkLWX9/liP6TpkNJkZi/Ilslh6zfJ1asZisHfMwF9h6xY1oWNf
 YwDlBlS4wtsyewP65ZRQTHCiB9CZOXRgot46b5xX230GxiBrFwcPcHtOOyENUFtu9I1L6pfBG92+0
 Dud8HTB3rFRvkhbiQ6OpQVsS1KHAzMLNtFxRjxQD7YKwJkrdkioNm24X7gcj09z9mGRsdDUGXbvxo
 0YzdA+3Ew==;
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJdy-0005co-LW
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 08:32:36 +0000
Received: by mail-ed1-x544.google.com with SMTP id i11so7524072edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jul 2019 01:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=QbM44vAJoF7F4CJFe8D/rdMDdvpEwrpfX/ASCNMAqXA=;
 b=AI94tmMhDWpYtJmSG9OE2YtmGF4jgP603p1zLogEX94WNdxqWXxqEwxrlkap0wV7Yl
 ZZRrsbZx4mmXa6AJ4tYAh2jqBqJjFu9u5l/agQqdcx6lc9fHqFA0EU/eN4baePIRYs0K
 ZXYrsPW7Y5tzH4uUsUdwjuKhodl8pkaIRj+10=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=QbM44vAJoF7F4CJFe8D/rdMDdvpEwrpfX/ASCNMAqXA=;
 b=gsZ72vJsKO4uxH2Fqz5XeedoNgt/NtNffb3sPjnbhJangF8ko0NSFed0gxdzrktOj+
 ffw3ZEtQuXHm/ea6b2ms7MaD2gwCwYVyuVYjC0aB7WtSgJZyDmlDOKqrKeWV5onXx8VC
 EREjSkKopIdnWjwJ4IdAEEhYDaqcf7M9Lk5pEMjzR/JGlN2pPfXsnLmrEMjR5294wBkZ
 icsuf6v0M3Bb90E3NgObKkDx2FeG5MO9HP+jz6W9Ub6Cg4wFxRCrUxTg80WkESppLTao
 qm03naiyLVPn/nZWPe/qhMMEhF+18sutnoVkyJqtj2qvDQb+MM9Fbv5FV/gRV8QLgr+R
 LxHw==
X-Gm-Message-State: APjAAAUEEG7H2kU80gS1b2c+CaPehi3IcuNOwiiVibFfnPSsc+sxt2XT
 jAkBuiisnMtZgvwn6GrPcxWzHw==
X-Google-Smtp-Source: APXvYqwxQTfCTwjg1Nv3JLxxlgEvpmawVRx0vKkBJIxGnG7RJ1+MqMHZ1WkVfQw3vC+4ikaheGDsmw==
X-Received: by 2002:a17:906:ce21:: with SMTP id
 sd1mr2339496ejb.189.1562315425410; 
 Fri, 05 Jul 2019 01:30:25 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id j16sm481089ejq.66.2019.07.05.01.30.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 01:30:24 -0700 (PDT)
Date: Fri, 5 Jul 2019 10:30:22 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH 0/4] Add HDMI jack support on RK3288
Message-ID: <20190705083022.GM15868@phenom.ffwll.local>
Mail-Followup-To: Cheng-Yi Chiang <cychiang@chromium.org>,
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>,
 Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>,
 dianders@chromium.org, dgreid@chromium.org, tzungbi@chromium.org,
 alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20190705042623.129541-1-cychiang@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705042623.129541-1-cychiang@chromium.org>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_093234_731331_AA929E2F 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jul 05, 2019 at 12:26:19PM +0800, Cheng-Yi Chiang wrote:
> This patch series supports HDMI jack reporting on RK3288, which uses
> DRM dw-hdmi driver and hdmi-codec codec driver.
> 
> The previous discussion about reporting jack status using hdmi-notifier
> and drm_audio_component is at
> 
> https://lore.kernel.org/patchwork/patch/1083027/
> 
> The new approach is to use a callback mechanism that is
> specific to hdmi-codec.

I think this looks reasonable. There's the entire question of getting rid
of the platform_device in hdmi_codec an roll our own devices (so that it
all looks a bit cleaner, like e.g. the cec stuff does). But that can also
be done in a follow-up (if you can convince reviewers of that).
-Daniel

> Cheng-Yi Chiang (4):
>   ASoC: hdmi-codec: Add an op to set callback function for plug event
>   drm: bridge: dw-hdmi: Report connector status using callback
>   ASoC: rockchip_max98090: Add dai_link for HDMI
>   ASoC: rockchip_max98090: Add HDMI jack support
> 
>  .../gpu/drm/bridge/synopsys/dw-hdmi-audio.h   |   3 +
>  .../drm/bridge/synopsys/dw-hdmi-i2s-audio.c   |  10 ++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c     |  32 ++++-
>  include/sound/hdmi-codec.h                    |  16 +++
>  sound/soc/codecs/hdmi-codec.c                 |  52 ++++++++
>  sound/soc/rockchip/rockchip_max98090.c        | 112 ++++++++++++++----
>  6 files changed, 201 insertions(+), 24 deletions(-)
> 
> -- 
> 2.22.0.410.gd8fdbe21b5-goog
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
