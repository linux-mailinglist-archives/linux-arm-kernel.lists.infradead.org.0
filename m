Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1EA91CE2C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 20:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezHM7OqqTUEjgcNeeEqU298fj4xmXx7HwReFnJfFywA=; b=LGYbmD/zBBQWZ3
	aMulQNGm1TOKMv3uIKQEeUqZLuN8tB02JxyPVHOFsJiSoR2tGwHJ4nyU4ULJsvOBXaJG2vgKgVyT6
	RSzSHooRRYPLplOfGv0uBy3LzStmtXv7gYC8zpoSda0AHP4OHuiIdbYWRWUdZwgi1B5g/81PfaSAB
	BKDy8Ay0LxvqIqq4lXI2a8nDc4IfMnCrBJ55EAbH/vzTpauRcnkIcymMoFmXu+92sPSHiZL2CcoTa
	EXTvYg/KsDNraAa6nGV8MbyyXaQzfdh9kpvEPqJqpnv+AC19Yeb1aE+1gCJekxAAmJV/QvS7Yz56t
	PvIx9uJBlizlfJoCMFhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYDBB-0000Ff-RL; Mon, 11 May 2020 18:29:29 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYDAu-0000Ec-Vu
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 18:29:16 +0000
Received: by mail-ej1-x643.google.com with SMTP id nv1so8793010ejb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 11:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OlqMdCMv0t/jRFbvfx2oiVLxVGugmb8g6QsmrVI+x40=;
 b=hIfm5XW0NJEV60vNfF8m9alVsS2fZRz6bIMQxJc9+l0ft7pd3yuzq7Ggag4EvcoDjF
 uivi1BEPMuakJuVa1qTd6SM7jnMbr/A1mNEALhgep3z68K+eiXFsIbgL+g1SubhgV8LU
 jm7+kTa2GUdeE/H112fn0XfelirZ8uoNHW36A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OlqMdCMv0t/jRFbvfx2oiVLxVGugmb8g6QsmrVI+x40=;
 b=e/5Qfrmfs3Db0LHGiQjMY3UAvojDvXto8/bO3IBNlSEQAq+CwROdh5HPAp5+f75CTF
 XAWYxV+zSkLdCTrXriboNRgoJ6G2PWXrzbCbjdaD3e9Gn5+rS6T0GNbVqLNlkjSb49AZ
 aWCD4UKINlDhALXYwuj6KkEr925ELKKL6pFcFMA/3axewKoMIJifh4aJfY5udEX/q8W7
 E1belEezU0gLdLdJk7bjT4gIIwruwkqim99ZUo8RhXGNU3OORVi+ohhM4OlYCNwpMA9h
 g8/8wzTZHiF04tXJZp2W4fvvqOQrYbDX3Tu7GVHTddnY2Hiz21zaxqJiplOcjF75OgW5
 kAFg==
X-Gm-Message-State: AGi0PuaE2Zi77k/Oj1/bRA2WC8CF61qweK4x/eMB9Yogy+0N8JERdnpx
 X1qb/ejNmgVYnKeRVQ7BelWZ5WNPS0EW2g==
X-Google-Smtp-Source: APiQypIHCr7Cdj7BuoKF2GEEej6NXWK45p8RPKPeDWLB+oR58ze/4DxDIsFfFVaB5DYuqt0kux+YHQ==
X-Received: by 2002:a17:907:214f:: with SMTP id
 rk15mr14817955ejb.301.1589221751046; 
 Mon, 11 May 2020 11:29:11 -0700 (PDT)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com.
 [209.85.218.48])
 by smtp.gmail.com with ESMTPSA id c15sm642399ejx.62.2020.05.11.11.29.10
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 May 2020 11:29:10 -0700 (PDT)
Received: by mail-ej1-f48.google.com with SMTP id s21so662809ejd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 May 2020 11:29:10 -0700 (PDT)
X-Received: by 2002:adf:e543:: with SMTP id z3mr18352165wrm.385.1589221272587; 
 Mon, 11 May 2020 11:21:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200502161727.30463-1-dongchun.zhu@mediatek.com>
 <20200502161727.30463-3-dongchun.zhu@mediatek.com>
 <20200506151352.GZ9190@paasikivi.fi.intel.com>
 <1588855524.8804.168.camel@mhfsdcap03>
 <20200507131220.GC9190@paasikivi.fi.intel.com>
 <CAAFQd5DO9FGx9OF2RpcSprg0oLiVuS90w2qLAHCOSc3w6tKUWw@mail.gmail.com>
 <1588907288.8804.188.camel@mhfsdcap03>
 <20200508211319.GJ9190@paasikivi.fi.intel.com>
 <1588991026.8804.235.camel@mhfsdcap03>
In-Reply-To: <1588991026.8804.235.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 11 May 2020 20:20:59 +0200
X-Gmail-Original-Message-ID: <CAAFQd5DZBEUJUq65WT7i_QjAtgxjhxmfdsjQoyG2UZy8zBih+A@mail.gmail.com>
Message-ID: <CAAFQd5DZBEUJUq65WT7i_QjAtgxjhxmfdsjQoyG2UZy8zBih+A@mail.gmail.com>
Subject: Re: [V5, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_112913_055901_3C6BE2D8 
X-CRM114-Status: GOOD (  35.75  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

Hi Dongchun,

On Sat, May 9, 2020 at 4:25 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Sakari,
>
> On Sat, 2020-05-09 at 00:13 +0300, Sakari Ailus wrote:
> > Hi Dongchun,
> >
> > On Fri, May 08, 2020 at 11:08:08AM +0800, Dongchun Zhu wrote:
> > > Hi Sakari, Tomasz,
> > >
> > > Thanks for the review.
> > >
> > > On Thu, 2020-05-07 at 15:46 +0200, Tomasz Figa wrote:
> > > > Hi Sakari, Dongchun,
> > > >
> > > > On Thu, May 7, 2020 at 3:12 PM Sakari Ailus
> > > > <sakari.ailus@linux.intel.com> wrote:
> > > > >
> > > > > HI Dongchun,
> > > > >
> > > > > On Thu, May 07, 2020 at 08:45:24PM +0800, Dongchun Zhu wrote:
> > > > > > Hi Sakari,
> > > > > >
> > > > > > Thanks for the review.
> > > > > >
> > > > > > On Wed, 2020-05-06 at 18:13 +0300, Sakari Ailus wrote:
> > > > > > > Hi Dongchun,
> > > > > > >
> > > > > > > On Sun, May 03, 2020 at 12:17:27AM +0800, Dongchun Zhu wrote:
> > > > > > > > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > > > > > > > control to set the desired focus via IIC serial interface.
> > > > > > > >
> > > > > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > > > ---
> > > > > > > >  MAINTAINERS                |   1 +
> > > > > > > >  drivers/media/i2c/Kconfig  |  11 ++
> > > > > > > >  drivers/media/i2c/Makefile |   1 +
> > > > > > > >  drivers/media/i2c/dw9768.c | 440 +++++++++++++++++++++++++++++++++++++++++++++
> > > > > > > >  4 files changed, 453 insertions(+)
> > > > > > > >  create mode 100644 drivers/media/i2c/dw9768.c
> > > > > > > >
> > > > > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > > > > index 8d72c41..c92dc99 100644
> > > > > > > > --- a/MAINTAINERS
> > > > > > > > +++ b/MAINTAINERS
> > > > > > > > @@ -5157,6 +5157,7 @@ L:  linux-media@vger.kernel.org
> > > > > > > >  S:       Maintained
> > > > > > > >  T:       git git://linuxtv.org/media_tree.git
> > > > > > > >  F:       Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > > > > > > > +F:       drivers/media/i2c/dw9768.c
> > > > > > > >
> > > > > > > >  DONGWOON DW9807 LENS VOICE COIL DRIVER
> > > > > > > >  M:       Sakari Ailus <sakari.ailus@linux.intel.com>
> > > > > > > > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > > > > > > > index 125d596..6a3f9da 100644
> > > > > > > > --- a/drivers/media/i2c/Kconfig
> > > > > > > > +++ b/drivers/media/i2c/Kconfig
> > > > > > > > @@ -1040,6 +1040,17 @@ config VIDEO_DW9714
> > > > > > > >     capability. This is designed for linear control of
> > > > > > > >     voice coil motors, controlled via I2C serial interface.
> > > > > > > >
> > > > > > > > +config VIDEO_DW9768
> > > > > > > > + tristate "DW9768 lens voice coil support"
> > > > > > > > + depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > > > > > > + depends on VIDEO_V4L2_SUBDEV_API
> > > > > > >
> > > > > > > Please check how this works in the media tree master branch now --- it's
> > > > > > > largely select based.
> > > > > > >
> > > > > >
> > > > > > The actuator driver uses some structures that require the
> > > > > > VIDEO_V4L2_SUBDEV_API code, so here we add VIDEO_V4L2_SUBDEV_API
> > > > > > dependency to avoid possible build error when it's not enabled.
> > > > >
> > > > > Please make sure this works with current media tree master. Right now it
> > > > > does not.
> > > > >
> > > >
> > > > Dongchun, as Sakari said, please make sure to base the patches on the
> > > > master branch of the media tree.
> > > > (https://git.linuxtv.org/media_tree.git/). The approach for Kconfig
> > > > dependency selection there seems to have changed recently.
> > > >
> > >
> > > I searched the patches on the media tree master branch.
> > > It seems that we need to remove the VIDEO_V4L2_SUBDEV_API dependency in
> > > Kconfig, and add #ifdef CONFIG_VIDEO_V4L2_SUBDEV_API to include
> > > v4l2-subdev code.
> > > The change mainly is to make build pass, and don't return ENOTTY if
> > > SUBDEV_API is not set.
> > > Am I right?
> >
> > Please see Kconfig entries for other similar drivers from Dongwoon.
> >
>
> Sorry for the mistake :-)
> Just found the current media tree master branch code...
> I would update Kconfig entries in next release by referring to:
> https://git.linuxtv.org/media_tree.git/tree/drivers/media/i2c/Kconfig

Sorry for last minute comments again. We had a short discussion
offline with Sakari and we think there are some changes needed to this
driver, namely:

1) The hardware being driven in our case is a gt9769, which could be
compatible with dw9768, but it's still a different implementation and
could have slightly different characteristics. Thus we think the
driver name and compatible strings should be renamed from
dongwoon,dw9768 to giantec,gt9769. In the future, if there is a device
with exactly a dw9768 chip, the same driver could be reused by adding
a dongwoon,dw9768 compatible string.

2) The chip has some default configuration, which is lost because the
driver overrides it with its own values. For use cases where one would
want to keep the default values, we should make it possible to prevent
the driver from overriding them. We could achieve this by adding
optional DT properties for the custom parameters and if they are not
present, defaults would be used.

Do you think that is doable? Thanks!

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
