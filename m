Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E329663544
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 13:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VmjS7y80iKKJ/pnLUw6ETQ5hiBXCFbDF9C/wjsf9mjQ=; b=pYP8dQ42HpLMiX
	YVsGVqD09o7uCd7TwEsN6uQgyT3ETpPzGRkD5AkOFpyNDzZf2ujdaLdUtp8fVtCcWWQib/haoNswV
	2uNrgWPUZogYESZV5qIF6h+9j+AsBqm8dcO+E+x+al/GPgDFGTCdaAVicyzykBx2kATwHbM2hhFXN
	iYeuvh75i81qfGgTu9fXrlW8BOAzeLsul9dwSy3uyQa1V3oKImebXje9yCyytP9dUx2QrST5lMhLx
	H8hCXt1+SrEMKEZql1cxCXNhok3txbq3ZLwdXc1JxCSKLbRivyA5arqC9UoAn8cDDJMCl05uaKwYj
	2cE2WyXVpaARXdMjuQbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkomZ-0004bI-1i; Tue, 09 Jul 2019 11:59:39 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkomL-0004aN-3t
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 11:59:26 +0000
Received: by mail-vs1-xe41.google.com with SMTP id h28so10446556vsl.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 04:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RiTv9D9r+HWewv08+uDjzds8jJ160NpsMW3nG+2KdoY=;
 b=b6eUu3HOZ32VMVxihS1TEiZDDJGMWpTKkUmCzgDy0Wn1UIqQ2Hg/sRGYSq7RTss8Dt
 EUsDIbda6QYf9S42qsjMSo76RaQmk/AXAegCp/GvMR+GeNmoH1GewBpHbDxaucdsY43j
 Ic831T+DuHkmI1k4SYW5LLWcFpi0VyYWE6dxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RiTv9D9r+HWewv08+uDjzds8jJ160NpsMW3nG+2KdoY=;
 b=phCCWSXmAmd/9vYBQt8vOArLNvV0i8IZLMoWlNIb1Q1C8NJt3s9pjhOeZ46DR220oV
 ohE47Hhn9/BzJkt1PZXeDc4qyraUDQg5xXZB04bIAKWjxKD9i2IyZmi207M88u9GRsOl
 mYv3nMjlBukq5rHgn7i8BvJTlxMMZOmPiNcLgDf2rCz0Po5vkJDkUi7b5hPIktpnY9Z2
 RShhsJovdlFnv+14rgGM1Tt758f7n2YHeAKbB+WYgz+wKlASNQRMUugsSpWRkA4QBE1z
 IerURk8f02bi3A+K0vZHlwMWPtKVTvq4w+1MUCZHIw+pEVyDe2241IzJmDzpRtD+SfvE
 xHbg==
X-Gm-Message-State: APjAAAUQtoLQhFBFtWtBq1jm8kxMgOxG/lHsnDwwikXc8BbjcG2HNbj5
 BKoS0a6hVZ3jb/4nJpSj33PrxTJZBecjVJ4kU6WxvA==
X-Google-Smtp-Source: APXvYqyNbkbPQt5s+GfBLT3QI7iGlZiQWtRzOE3HxXG0lIDjqNAi3SYslwEYCGrQlbUmVYhU38as6OOl9n5yJb/dYW4=
X-Received: by 2002:a67:d386:: with SMTP id b6mr14020005vsj.170.1562673563188; 
 Tue, 09 Jul 2019 04:59:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190705042623.129541-1-cychiang@chromium.org>
 <20190705042623.129541-2-cychiang@chromium.org>
 <CA+Px+wXtmf9dQQP7ywPLp7Qbbvqau=WnO3qhZ8+qmbJD1gjx+A@mail.gmail.com>
 <20190705121240.GA20625@sirena.org.uk>
 <CAFv8NwLP-hUBW8FZW5kooaggeNRG7LAEd2pd_-70YBrVMY-+CQ@mail.gmail.com>
In-Reply-To: <CAFv8NwLP-hUBW8FZW5kooaggeNRG7LAEd2pd_-70YBrVMY-+CQ@mail.gmail.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Tue, 9 Jul 2019 19:58:56 +0800
Message-ID: <CAFv8NwJHpY+ptc+WbeRhsKB8wGnt08r38GG7WUYTrt=wZaGqqA@mail.gmail.com>
Subject: Re: [PATCH 1/4] ASoC: hdmi-codec: Add an op to set callback function
 for plug event
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_045925_165112_C81B8684 
X-CRM114-Status: GOOD (  16.29  )
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Takashi Iwai <tiwai@suse.com>, tzungbi@chromium.org,
 Jaroslav Kysela <perex@perex.cz>, Hans Verkuil <hverkuil@xs4all.nl>,
 Tzung-Bi Shih <tzungbi@google.com>, Russell King <rmk+kernel@armlinux.org.uk>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jul 8, 2019 at 1:03 PM Cheng-yi Chiang <cychiang@chromium.org> wrote:
>
> On Fri, Jul 5, 2019 at 8:12 PM Mark Brown <broonie@kernel.org> wrote:
> >
> > On Fri, Jul 05, 2019 at 03:08:37PM +0800, Tzung-Bi Shih wrote:
> > > On Fri, Jul 5, 2019 at 12:26 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> >
> > > > +typedef void (*hdmi_codec_plugged_cb)(struct platform_device *dev,
> > > > +                                     bool plugged);
> > > > +
> >
> > > The callback prototype is "weird" by struct platform_device.  Is it
> > > possible to having snd_soc_component instead of platform_device?
> >
> > Or if it's got to be a device why not just a generic device so
> > we're not tied to a particular bus here?
>
> My intention was to invoke the call in dw-hdmi.c like this:
>
>     hdmi->plugged_cb(hdmi->audio,
>                                    result == connector_status_connected);
>
> Here hdmi->audio is a platform_device.
> I think dw-hdmi can not get  snd_soc_component easily.
> I can use a generic device here so the ops is more general.
> The calling will be like
>     hdmi->plugged_cb(&hdmi->audio->dev,
>                                    result == connector_status_connected);
> I will update this in v2.
> Thanks!

I have thought about this a bit more. And I think the more proper
interface is to pass in a generic struct device* for codec.
This way, the user of hdmi-codec driver on the DRM side is not limited
to the relation chain of
audio platform device -> codec platform device, which is just a
special case in dw-hdmi driver.
As long as DRM side can get hdmi-codec device pointer through
drv_data, it can use this callback.
Hope this makes the interface more generic.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
