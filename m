Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07181F7D1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 20:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yy/YLM7EzOty2l/pnKP//+bMFuvvcvkjsOhaizVAvMM=; b=OCuLCiTKcFPmFD
	mdZHGUL+VuZNTPY/JcOgQp8sXIGSlqV7rA6vDhXZqNPvwt2lWW2juZ0LfJX5Zv9Y7sW5FKeoB6Ctn
	tRmQ+Lq/1gESEmGTMMe81G+u9WRALGOJYqlp0jH+0bBEnMXsnuMitxxTu9eaerVVH2sJywthAH6Po
	YatMg6QtQqS4fCKo7lwZxzV2yrhy08mR7Jlt7VISepcMOo1hONVGEx2mfI6TahYr/w30EvxralH/U
	8e4FwuQlloEWkKSq/X5v/Yo/pDsqj0YyKRuljP4CtktRgtakQWUONKZgmr3IMtASE8SXGIKZoHc3k
	ojZJ34LZxRHd/PH8mvlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjoiK-0002k6-RW; Fri, 12 Jun 2020 18:47:40 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjoiB-0002jU-6q
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 18:47:32 +0000
Received: by mail-ej1-x641.google.com with SMTP id o15so11055842ejm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 11:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P8sNBYcte/zk1gJm2YzOJRDjejnEUqN/A2ieuNyUweg=;
 b=bRJxS+Q2KQuM54a8erBJ8qt32TXVRsXhyMB8WWOq3eNmxwrN4tec98hY1I3dgRAadb
 ts7ymaPP/cxcISqUJMVR1rg0hvz0g6hLj31QBZ2Q4wp8U7XtRblQESknjGvBDfox0Z06
 uKeyun3azaUw4eFf03EUYyLAv5q0HMR3PsF8E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P8sNBYcte/zk1gJm2YzOJRDjejnEUqN/A2ieuNyUweg=;
 b=Z2roHrNAK5ceIKnjRMsHn2bfM98JH3Q1psV/reSM3rf17c3a0rogXJG/hfQsIzHNKR
 2TU1WRXPI3MoUfbLacmd3N5q74zqL4CTgDTRN/zAV6PzYs6hkSebF8Z40a7+WGarT/QN
 Np+zvBiPa6kzeukzrhD+mgT8qDh1lWSpvY4v69sRhmXQDycxCOCbIlfSEl/TSZUlcM/v
 orW3aZw9e4OQ7oLNJkqrRyH0BQaEcoHWlj/kecb4M8lyO574lzG6wj8t3fjGGtA7twTn
 ehcuC+XInZN6GFF/dZEOaxVmeK0aK1mGcUbuvOzyXuS/ts44LIon6zWDaf/rKDzZ5BZo
 MgbQ==
X-Gm-Message-State: AOAM530tvYioPkqYsYxT+vEtDVTJwc/aWaul5JHuQ674RzV4fL4zBkHU
 9zwsu+T1xNr5BwqMMbgZkBOhfTktcWrWcg==
X-Google-Smtp-Source: ABdhPJyxjplpxD4fPRHT5sl4pcDckBif+FfIj3Yrm87VlgQZtl9n27Q0lMzAQ68S8xUd8YZ8ikzG3g==
X-Received: by 2002:a17:906:e47:: with SMTP id
 q7mr14541704eji.279.1591987649285; 
 Fri, 12 Jun 2020 11:47:29 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id t20sm4023270ejx.27.2020.06.12.11.47.28
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 11:47:29 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id x6so10686876wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 11:47:28 -0700 (PDT)
X-Received: by 2002:a1c:2e0e:: with SMTP id u14mr257126wmu.55.1591987183150;
 Fri, 12 Jun 2020 11:39:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
 <20200610194455.GK201868@chromium.org>
 <1591958798.8804.660.camel@mhfsdcap03>
In-Reply-To: <1591958798.8804.660.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 12 Jun 2020 20:39:30 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Bcb4A+HAivA-jrczK+OMxwZk3w0GYoh-DU=6gmTZBWnQ@mail.gmail.com>
Message-ID: <CAAFQd5Bcb4A+HAivA-jrczK+OMxwZk3w0GYoh-DU=6gmTZBWnQ@mail.gmail.com>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_114731_266084_4E7E23D4 
X-CRM114-Status: GOOD (  21.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 12:49 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Wed, 2020-06-10 at 19:44 +0000, Tomasz Figa wrote:
> > Hi Dongchun,
> >
> > On Sat, May 23, 2020 at 04:41:03PM +0800, Dongchun Zhu wrote:
> > > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > >
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  MAINTAINERS                 |    1 +
> > >  drivers/media/i2c/Kconfig   |   13 +
> > >  drivers/media/i2c/Makefile  |    1 +
> > >  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
> > >  4 files changed, 1040 insertions(+)
> > >  create mode 100644 drivers/media/i2c/ov02a10.c
> > >
> >
> > Thank you for the patch. Please see my comments inline.
> >
> > [snip]
> > > diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> > > new file mode 100644
> > > index 0000000..160a0b5
> > > --- /dev/null
> > > +++ b/drivers/media/i2c/ov02a10.c
> > [snip]
> > > +static const char * const ov02a10_test_pattern_menu[] = {
> > > +   "Disabled",
> > > +   "Color Bar",
> >
> > nit: We should normalize this to one of the standard names. What is the
> > pattern on this sensor? Is it perhaps "Eight Vertical Colour Bars"?
> >
>
> Yes. It is one kind of 'Eight Vertical Colour Bars'.
> This pattern is called as 'MIPI color bar' per the datasheet.
> Can we here use 'Vertical Color Bar' or 'MIPI Color Bar'?
>

We should try to stick to the names as exposed by existing drivers.
There was an attempt to unify the naming of some Sony sensors some
time ago [1]. Perhaps one of the names there matches the pattern of
this sensor?

[1] https://patchwork.kernel.org/patch/10711777/

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
