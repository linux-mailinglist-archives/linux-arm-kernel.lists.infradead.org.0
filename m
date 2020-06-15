Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4DB1F971C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 14:53:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZOLnlPBb6PZ9BrCVu+tkC+kJa2WiuXOxGdoBmvKAaq4=; b=S8d8JV0+c/8dRS
	t8ZL725cY9TUertzZFXM3FiV0K1Nlp8tzVMW7DkV/reCcFrigOYef5F/xNzqaOj7VsUMh0mVB0Yek
	8wab1+lT8Gd6rKCDSp1OQ3eIXlUEyfzklz7Xv1Wga3KbxaWizMjMXQOu9DEyMrU3NnCLxmj5mnvmu
	AmTdccgtrJsnkPaR6fUCzsfAGngvE+3ggpFs6eqAjI3GbQ2BJ6vVxDcIjGP2YIvYsrX2ENn4Qwgg1
	tZNo6gjbMWmQk9ny1tFZ3m/FRBaNC8/qZTi7dHuIeRXYe81OC0pfessGRRAOviY8ZfS0T+7dAHeCk
	EqDEpx64CeQ9zQhkNE9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkocC-0000aP-50; Mon, 15 Jun 2020 12:53:28 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkoby-0000Xz-Fv
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 12:53:16 +0000
Received: by mail-ed1-x542.google.com with SMTP id o26so11419146edq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 05:53:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EAByj1ACF3eG5h2YQoy4Zv57kLAIJMEzK1yr/nWTV5c=;
 b=FiCQlYLTKWwhipqP9kqvJWv/A/Z+VNCbpv6u711mWSu7hINN75IBeaYV8OZikqRIEQ
 qS8wSh4Lo0ISen5u8EMoDK0Eplz1KkC3+tJaNOJKXYp2Xr39qDBp85rBkvC5EhiiCv72
 ZNgtiPOQgUSXebknUjgkXJbDKSR9U86BnGZkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EAByj1ACF3eG5h2YQoy4Zv57kLAIJMEzK1yr/nWTV5c=;
 b=i3saOphD0aMbiKmUG1En0pY7nl0QFqfyp/PE7ddUOje1RBLYTvRIGpjxEWFnDOQ1Y0
 wdrm5Q79HMaIkVz83fndt1XtN0DWad2eDr1eHFsxlmtQszNCj/37iOUQ/RSqpbTb7U8D
 hRewzx3idCBjNL3Zd3cO7kSqKsy44mdj3ihmzHT6BifG83kCJo0fRu29Qj62RuBkcBGn
 X5TKvhks9c3RTX92JQ39JCUex6vTfqCj8J76oRigRUdiihLvzrTJg74WGH6cQ2n+NYVg
 y6GpxBNS1z+oRGYy3sQ5mne3QaWg16EEkznMycsEOVhEggxhktdqqyH6tEB4hNiNR4Iq
 hb5g==
X-Gm-Message-State: AOAM5326v0gDaX1JMOyg1tS4EB8LMjXGwqgUXJOh686uiU6pXOBDrqpB
 2vEjO+JCXZaBlaRot8MRNa1afiw4MD7NLQ==
X-Google-Smtp-Source: ABdhPJymTqLNuloKihYrvtCisbM/7/YDRtK8ZicS5f/iUg+eZTZRl4jXvsATwXa2gGqPYsM9S+gAkQ==
X-Received: by 2002:a05:6402:b37:: with SMTP id
 bo23mr24234653edb.24.1592225592472; 
 Mon, 15 Jun 2020 05:53:12 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com.
 [209.85.128.45])
 by smtp.gmail.com with ESMTPSA id bz14sm9067613ejc.100.2020.06.15.05.53.12
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Jun 2020 05:53:12 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id r9so14528323wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 05:53:12 -0700 (PDT)
X-Received: by 2002:a7b:c2a9:: with SMTP id c9mr13160873wmk.11.1592225097322; 
 Mon, 15 Jun 2020 05:44:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
 <20200610194455.GK201868@chromium.org>
 <1591958798.8804.660.camel@mhfsdcap03>
 <CAAFQd5Bcb4A+HAivA-jrczK+OMxwZk3w0GYoh-DU=6gmTZBWnQ@mail.gmail.com>
 <1592200471.8804.681.camel@mhfsdcap03>
In-Reply-To: <1592200471.8804.681.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 15 Jun 2020 14:44:46 +0200
X-Gmail-Original-Message-ID: <CAAFQd5DvPcH-1jeeXaQ=qfxVHr82F8FBberF=QzLW4p49PZ2PA@mail.gmail.com>
Message-ID: <CAAFQd5DvPcH-1jeeXaQ=qfxVHr82F8FBberF=QzLW4p49PZ2PA@mail.gmail.com>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_055314_535539_0E0B24EA 
X-CRM114-Status: GOOD (  27.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Louis Kuo <louis.kuo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Mon, Jun 15, 2020 at 7:57 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Fri, 2020-06-12 at 20:39 +0200, Tomasz Figa wrote:
> > On Fri, Jun 12, 2020 at 12:49 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Wed, 2020-06-10 at 19:44 +0000, Tomasz Figa wrote:
> > > > Hi Dongchun,
> > > >
> > > > On Sat, May 23, 2020 at 04:41:03PM +0800, Dongchun Zhu wrote:
> > > > > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > > > >
> > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > ---
> > > > >  MAINTAINERS                 |    1 +
> > > > >  drivers/media/i2c/Kconfig   |   13 +
> > > > >  drivers/media/i2c/Makefile  |    1 +
> > > > >  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
> > > > >  4 files changed, 1040 insertions(+)
> > > > >  create mode 100644 drivers/media/i2c/ov02a10.c
> > > > >
> > > >
> > > > Thank you for the patch. Please see my comments inline.
> > > >
> > > > [snip]
> > > > > diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> > > > > new file mode 100644
> > > > > index 0000000..160a0b5
> > > > > --- /dev/null
> > > > > +++ b/drivers/media/i2c/ov02a10.c
> > > > [snip]
> > > > > +static const char * const ov02a10_test_pattern_menu[] = {
> > > > > +   "Disabled",
> > > > > +   "Color Bar",
> > > >
> > > > nit: We should normalize this to one of the standard names. What is the
> > > > pattern on this sensor? Is it perhaps "Eight Vertical Colour Bars"?
> > > >
> > >
> > > Yes. It is one kind of 'Eight Vertical Colour Bars'.
> > > This pattern is called as 'MIPI color bar' per the datasheet.
> > > Can we here use 'Vertical Color Bar' or 'MIPI Color Bar'?
> > >
> >
> > We should try to stick to the names as exposed by existing drivers.
> > There was an attempt to unify the naming of some Sony sensors some
> > time ago [1]. Perhaps one of the names there matches the pattern of
> > this sensor?
> >
> > [1] https://patchwork.kernel.org/patch/10711777/
> >
>
> Sounds great.
> It is one good idea to summarize test patterns from various sensors.
> But one question plaguing me is that it seems even for the same "Eight
> Vertical Colour Bars", different sensors may have different RGB color
> map.
>
> Moreover, definition standards of color bar style may differ among
> different sensor chip vendors.
> For instance, Sony often uses "Solid Color", "Color Bars With Fade to
> Grey", "PN9" to abstract test pattern output type; while OmniVision
> adopts color bar type 1, 2, 3, 4 or "MIPI Color Bar", "ISP Color Bar"
> instead.

The test patterns are commonly very similar, just different vendors
call them with different names. There is actually a specification
called MIPI CCS [1], which standardizes many aspects of sensor
programming, including test patterns. Most of the sensors don't really
follow the entire specification yet, but often some aspects happen to
match.

In the copy of the specification that I have, the test patterns are
described in section 10 (Test modes), page 203, with pictures on
following pages. Perhaps we could standardize the names based on that,
when the pattern matches?

Sakari, what do you think?

[1] http://resources.mipi.org/camera-command-set-v1-1-download

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
