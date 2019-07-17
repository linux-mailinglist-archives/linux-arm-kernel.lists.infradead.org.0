Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B636BA24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 12:28:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ahf9MIxbLTYy/Z4Nzcbr/6oMnKAG0DG3sSZTtWmfgBE=; b=Neplo10kZmNN6j
	INcM1YPcvlAp6pIXkfD+scFsRFVdh43J0ytK4PNz0m6gY2HRiHS6T9e1Nu4Y92yay3p93EJ3JMJ+W
	bfva4EurHTIGkCNMVCdCXvkvbSjwsYZMciN2+ktocfgadDJUkl0WrM7fWQ1gGaW+tFZ9Vh4TtZ0IL
	QWKgKD7KobccBRwy2ICfh9zFJFsTlZzRlt+WUbFySnwvfGsbjiwZG9OVEVkFjGemkzhHVLWTf09z3
	VK8K70yotaKIBmZVnPrHlIR9575/wHdM8OGAg3mcf1QmNZNf5ztm7Clz5kXUlsf2iZFumgkKxGCCH
	oT+90Tp0AXtKCaNeLa0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnhB5-0000kW-S4; Wed, 17 Jul 2019 10:28:52 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnhAm-0000hz-TH
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 10:28:34 +0000
Received: by mail-oi1-x244.google.com with SMTP id 65so18060305oid.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 03:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3OqUE647HuitrzeN56x9jTuLb2Ydo4APiMUt/N1U1gk=;
 b=JDhYZ/XLSp5p+uzs8xtZ+lDFSxyDX6a3a83vp7yY0oH7QR/JUG3nl7G/bfr2BVUVVt
 AT9BWdwzjWgFGhHaPLqfM2IfAKu5tUziTQa2yq6iXjC1JXAIXDIL1bnk3A60xCcqM8v1
 iHXfabVCBA+o6US93D2wHx2oKFBhG9ostlX0XsIagP4+oak+j0c4An6AaDbPkN0LuELE
 sbSIgxgH+PAC7n3MJ4/wXWHhsuSGKXPdLnObSXx350+qAr5xmhsnP0WJC6CsTXqWdSD+
 HwOrD5rSZE1vq3fGbC6Ihq5Zkdwq7tmp9dJjt8JIhcj2TFk/S5P93TXmZQmTmaWwZ/NV
 JatA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3OqUE647HuitrzeN56x9jTuLb2Ydo4APiMUt/N1U1gk=;
 b=CKWDG+gfv0SlL7qkCslva5iutl4cBRZbtvfFRuSyEJlaICSlKRCYG3ruyidM4RHrt3
 YyzzudkO5K0wZu+CSRzKSN+l+ENpRI7VQkmNjcc7XSQ2a44o7UFvXrzAcgRnYoam1Fun
 IWQ7tc7WOKjE96N3sA7ImpukeGBLODCsyL6EXFOLYTCGFY9Llv35EDUOSgs8BefcM1LC
 FiQM5IiemnWPK74AGO7imuaU5tsHjheGvIeh7S0cg7jtyutXfGmPRQ3k7NsuGsdVoruU
 UelaONAhvi13Kl0Xi9fdKNnoH78+xhs2f+82OGISpM9C9cq293v0zQqVg+JohzWqiH3t
 eBNA==
X-Gm-Message-State: APjAAAWt/ykiJVvztJd9x8zdq2whQyWMV+MtJaVKpgOf6w1dMkt625rv
 /6BSeRNJV1Hl8MTFpTOGXI8wPt9wY2406oi4mJIZJw==
X-Google-Smtp-Source: APXvYqwWwXVZ/BZHTjaG86aX6+cX+YF7cjf0miBCE15x0Nd7s4TeCOAZk+HlSzO1mf3x+jEgUAq8Br9lxzMLzaRz5tc=
X-Received: by 2002:aca:544b:: with SMTP id i72mr20169753oib.174.1563359308762; 
 Wed, 17 Jul 2019 03:28:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190717083327.47646-1-cychiang@chromium.org>
In-Reply-To: <20190717083327.47646-1-cychiang@chromium.org>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 17 Jul 2019 18:28:17 +0800
Message-ID: <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
To: Cheng-Yi Chiang <cychiang@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_032832_969853_93626E46 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Takashi Iwai <tiwai@suse.com>,
 tzungbi@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 4:33 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
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
>
> Changes from v4 to v5:
> - synopsys/Kconfig: Remove the incorrect dependency change in v4.
> - rockchip/Kconfig: Add dependency of hdmi-codec when it is really need
>   for jack support.
>
> Cheng-Yi Chiang (5):
>   ASoC: hdmi-codec: Add an op to set callback function for plug event
>   drm: bridge: dw-hdmi: Report connector status using callback
>   drm: dw-hdmi-i2s: Use fixed id for codec device
>   ASoC: rockchip_max98090: Add dai_link for HDMI
>   ASoC: rockchip_max98090: Add HDMI jack support
>
LGTM.

Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
