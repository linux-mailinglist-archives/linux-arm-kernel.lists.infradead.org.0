Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C81703B5B9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 15:04:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4d48YQ9ylGYb/THUcCq2uyB/OULkMDvmzv9YFZfbDE=; b=Eo8cgBORFx7OrZ
	kJ5f1Gdy+f07GGs6YPsq4O3JhlzFiXWgPcMaBhh5dcA9v57plGVAVy/LvqR/ZC7rk25cFmaGG7pEE
	3RZ/f/2gevUs5RO2f0iErbHbTE3D/VKgsiutiESyi5bALavZyQpgiVpiFvFpNNNZ42/HXcRx7J5ng
	srkOnaCEy8p6kP+i/zzBsaU+vC9zy8EZ+sJeBKQSAXqW0btK2mWeDBi7JenVCFqEDoGxXWnkl+uqq
	jWjoCFHOmtElQOjYaegVRvYaX4KfXxbS8oHbcTd138ipelGpeQEIZKZUTIKy88kTZxOkoHF182mLG
	5gfc2ZKpsp0e3xQfHSQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJyF-0001zb-9W; Mon, 10 Jun 2019 13:04:19 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJy0-0001yy-P3
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 13:04:06 +0000
Received: by mail-lf1-x144.google.com with SMTP id r15so6561816lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Jun 2019 06:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WcJ8L2VIZpozOUCxmAIAp8kABMEhkWByzfpSGr3ZIIo=;
 b=lo0a8oKwwI2k/gAiDktR2QOF6rFcxgeFG/RSLWlqrjAPY3hFnEkgRMGUp0oFBhtm2A
 nVrhhjaXFqDUC1zwdRa4lAaDYf4gxp5jSyH7j+0DiTbweuTovBS0I743+wsnXtz5uHfd
 EfCxY4Uctl1YmOcTq2BIYllN0gL4R8ov1RJxCavY80DwpQJ+3sK0MSc4IaonvDebWRuu
 y9Aw24jPK7gQaFHtuTeuki9lIbuEj7a4WF4h0m6bZklZ1bX0W7j18+AHc0Aj9q+PiHO0
 W7Nf262vjP33Pp4dDm5MFNOiLhXgoX6lkMfm365V586L4kBGbCtDbbb/xd4uWw+mCbjG
 R++A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WcJ8L2VIZpozOUCxmAIAp8kABMEhkWByzfpSGr3ZIIo=;
 b=rjqCqhvHm7Zmd4FcE0AQiAzLFfNlTJnJYgqvPWEKexkbDftAjWSfpi8QIaUfTL2ZVL
 S3omfCAdZHMcxCHLur7Ka4UIf6IUBC3/UQtp3Q4BgOf33IWKUDyjgdNojXla7ZSRQmBg
 F+kTJDzskIUI+tKjr3uJowM06DTaL4JRWeqHh2kfcN224sfP7wOViPPZND/I1jyoDzjV
 BrBsEXFG3yjQz3+7mK1efeYF6GkP3odr1eEOrobEtJUhtaQpeL/AMd/BneqnhDqo/AQU
 AT1AUC3F4fkOtQvXdPYvYkAl/Eu5weNcZ8mzk5szT73H2O5nmafIA9fzA5FGmwbv0691
 O5OQ==
X-Gm-Message-State: APjAAAWhQ03UB7bwmixeeZATBxDNDReF1BMk0M7LmEfcrYqNbKBpqGWy
 jhUGDG1HOnr3uWrDmMwzoPCe/BD7C2UexfM9X4AU6Q==
X-Google-Smtp-Source: APXvYqzM5swNZJ4w1rVu6nw3oQdiqx3Km/1wZnjPG7wePICVaK1Y/o7E/3VRoxqpRWAudLGWuSAHSADwVXTzzfRVtds=
X-Received: by 2002:a19:c383:: with SMTP id t125mr27992403lff.89.1560171843304; 
 Mon, 10 Jun 2019 06:04:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190606094722.23816-1-anders.roxell@linaro.org>
 <d6b79ee0-07c6-ad81-16b0-8cf929cc214d@xs4all.nl>
In-Reply-To: <d6b79ee0-07c6-ad81-16b0-8cf929cc214d@xs4all.nl>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Mon, 10 Jun 2019 15:03:52 +0200
Message-ID: <CADYN=9KY5=FzrkC7MKj9QnG-eM1NVuL00w8Xv4yU2r05rhr7WQ@mail.gmail.com>
Subject: Re: [PATCH 5/8] drivers: media: coda: fix warning same module names
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_060404_819742_C0A83974 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andrew@lunn.ch, linux-fbdev@vger.kernel.org,
 David Airlie <airlied@linux.ie>, stefan@agner.ch,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, a.hajda@samsung.com,
 Lee Jones <lee.jones@linaro.org>, marex@denx.de, f.fainelli@gmail.com,
 vivien.didelot@gmail.com, linux-media@vger.kernel.org, p.zabel@pengutronix.de,
 b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 Mark Brown <broonie@kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Networking <netdev@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 6 Jun 2019 at 12:13, Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 6/6/19 11:47 AM, Anders Roxell wrote:
> > When building with CONFIG_VIDEO_CODA and CONFIG_CODA_FS enabled as
> > loadable modules, we see the following warning:
> >
> > warning: same module names found:
> >   fs/coda/coda.ko
> >   drivers/media/platform/coda/coda.ko
> >
> > Rework so media coda matches the config fragment. Leaving CODA_FS as is
> > since thats a well known module.
> >
> > Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
> > ---
> >  drivers/media/platform/coda/Makefile | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/media/platform/coda/Makefile b/drivers/media/platform/coda/Makefile
> > index 54e9a73a92ab..588e6bf7c190 100644
> > --- a/drivers/media/platform/coda/Makefile
> > +++ b/drivers/media/platform/coda/Makefile
> > @@ -1,6 +1,6 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >
> > -coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
> > +video-coda-objs := coda-common.o coda-bit.o coda-gdi.o coda-h264.o coda-mpeg2.o coda-mpeg4.o coda-jpeg.o
> >
> > -obj-$(CONFIG_VIDEO_CODA) += coda.o
> > +obj-$(CONFIG_VIDEO_CODA) += video-coda.o
>
> How about imx-coda? video-coda suggests it is part of the video subsystem,
> which it isn't.

I'll resend a v2 shortly with imx-coda instead.


Cheers,
Anders

>
> Regards,
>
>         Hans
>
> >  obj-$(CONFIG_VIDEO_IMX_VDOA) += imx-vdoa.o
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
