Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9542DACF1B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 15:51:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXBHnzhJEs9CRmrXZBlEggVSC+O+FLpcMCAo8c5TnU8=; b=XFdogjRqaFt45k
	xZCEP2SN8BWU1Jnn6EK7gznKbCEkic1pyKER/nw9Lt6vk55WezfQeK4/M3H2WyP2l1yyDtLeLOvsk
	9Bpk8055gnxoKJNDKC1UCkgj+8vYto1GEEpqLt4fFmQzKKFYqLF71OGo6sLjSIrDLUdW+sYrNhbfi
	T6ndG7J+H8X3UxlAb8przAFxkerMdXgDu0/bqFMaPOpPJD66qzYZf+caszmMwWyR1257tJ6c544q3
	7McyNcfeWxF6+aJCumPh6mmPA++OhYcxh6iZ4m0xABjmXLo2DlNLHa75AUWi4fdGhGyin1v5b7PTw
	gucUVcYFbsVsmF/M7Y7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6xbR-0001Hv-DL; Sun, 08 Sep 2019 13:51:41 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6xbK-0001Gv-Gk
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 13:51:36 +0000
Received: by mail-ua1-x944.google.com with SMTP id i17so3454714ual.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Sep 2019 06:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/OjUEd4QSp7PdF6VW4aQrBE3Z+/uVpO6ArZ5TFedKOc=;
 b=gVLsd+T0GXYo4KXD8R+kiCVmUyc3iXlvJ5SL3N90TjeV223lfZq0lpVImmm1TQPLvr
 biVG3B/n3OMziPN/L+IVvhgX7Ge1Bk7hcW/JG/CkZ9zrfy4+DonIP5+MTrsf/9lW9zj+
 GDyNN76Ur/2fW2BBK/M7SqE9yXZfqSEsSHkh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/OjUEd4QSp7PdF6VW4aQrBE3Z+/uVpO6ArZ5TFedKOc=;
 b=MKWMciA6GCGp75+KiBjx/kiV/Tq04DI1qgk8IGj7OLpRvbFFVcFQ/7Rd8k8j8CE0kA
 eTdE+kMx6G/Ry44jqbqIb/Wb9RAnWYV0wJI8BLl69AUVffxfS2vCN5K5K3x5F5SI98Dh
 RkNYWo1ml2rGr4wndrFhsHhpKjntPepxZePoHNYd2xIm2HP/zd97ZljQ23sO+i5co9Yu
 oreuRtH6iHHSWilZsMkJlj8l+gt746DPr3580WO8TBlhq5rjDi2R2Mi3J3J7IyeOsv5/
 P6f7Dw2ZC76qhco+tH2vKzaWdeRG9Sf2U5tkzwtYegTBWF4ux+aiDIysBS2/K0v752Va
 NrcQ==
X-Gm-Message-State: APjAAAWMbDSTGKH0yoYLupo+bgVQVrQFPx9HB2XydWIrkzfp+nTSUpt8
 pYv9nwRfU27/QElqYa7gV0PJUobl3yKybvjW+CTywA==
X-Google-Smtp-Source: APXvYqz0WcmHMeiK6IT+v7kmZTAGTgr1Hd/fvxS4YbL4elq2hJMpg584VDsJiFFWnsbRAAo6uqeDZQp5p3+XGhBLzrU=
X-Received: by 2002:ab0:7c3:: with SMTP id d3mr8981573uaf.131.1567950687342;
 Sun, 08 Sep 2019 06:51:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190717083327.47646-1-cychiang@chromium.org>
 <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
In-Reply-To: <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Sun, 8 Sep 2019 21:51:01 +0800
Message-ID: <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
To: Tzung-Bi Shih <tzungbi@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_065134_560076_80242D3E 
X-CRM114-Status: GOOD (  21.48  )
X-Spam-Score: -7.6 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Neil Armstrong <narmstrong@baylibre.com>,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 10:55 AM Cheng-yi Chiang <cychiang@chromium.org> wrote:
>
> On Wed, Jul 17, 2019 at 6:28 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
> >
> > On Wed, Jul 17, 2019 at 4:33 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> > >
> > > This patch series supports HDMI jack reporting on RK3288, which uses
> > > DRM dw-hdmi driver and hdmi-codec codec driver.
> > >
> > > The previous discussion about reporting jack status using hdmi-notifier
> > > and drm_audio_component is at
> > >
> > > https://lore.kernel.org/patchwork/patch/1083027/
> > >
> > > The new approach is to use a callback mechanism that is
> > > specific to hdmi-codec.
> > >
> > > Changes from v4 to v5:
> > > - synopsys/Kconfig: Remove the incorrect dependency change in v4.
> > > - rockchip/Kconfig: Add dependency of hdmi-codec when it is really need
> > >   for jack support.
> > >
> > > Cheng-Yi Chiang (5):
> > >   ASoC: hdmi-codec: Add an op to set callback function for plug event
> > >   drm: bridge: dw-hdmi: Report connector status using callback
> > >   drm: dw-hdmi-i2s: Use fixed id for codec device
> > >   ASoC: rockchip_max98090: Add dai_link for HDMI
> > >   ASoC: rockchip_max98090: Add HDMI jack support
> > >
> > LGTM.
> >
> > Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
>
> Hi Daniel,
> Do you have further concern on this patch series related to hdmi-codec
> and drm part ?
> We would like to merge this patch series if possible.
> They will be needed in many future chrome projects for HDMI audio jack
> detection.
> Thanks a lot!

Hi Neil,
I am not sure if this patch series is under your radar.
Would you mind taking a look ?
This patch series has been following great suggestions from various
reviewers, so I hope it is fine now.

Audio jack reporting for HDMI might not be needed for other OS, but it
is a must on ChromeOS.
We have many previous projects using different local patch sets to
achieve HDMI jack reporting.
I hope that we can achieve a proper way and really get the patches
merged to mainline.
Thanks a lot!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
