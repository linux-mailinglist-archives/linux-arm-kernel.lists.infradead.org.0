Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8381CEFDA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 10:59:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nzQqfJ+EF2XSnkY9GE8aWjuvtSOJfFf2xmVQ8YIMq/A=; b=Z1ST/MPPeiGD7G
	BccRqycRIIUCkbDIfruP8ZHqD/TieAq0zk1i94SIARFqGFP5Qru8E9Vz1KtnGnX9WgWv5tidn/qvL
	xdB4p96AoW7KM1d34PpOfCRvr/06QxKGRnolu8Zbl0SnIYBr9v5VF2XiBU6vP0rvNgghGAxG8llQu
	PBoXuRfMhLirlZvM82YhvbejE41eo9y98MgE+vw9hE8YTWEwzHvtg+eV4dSyjNrkzekOT/5FrzRkT
	8v1qm9Pki4fS7PethPtSP4KupOAA6h0aBE+UpgFLWDXDO4CIT/ufaW6Nxfd9mTjcgIB7P7cZ+Zi3J
	pRhYL4irj1+7ldwK3qUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYQkb-00075f-R1; Tue, 12 May 2020 08:58:57 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYQkI-000755-Nk; Tue, 12 May 2020 08:58:40 +0000
IronPort-SDR: LQ4sHSm8FKFYIrjdoZVfJaZxnLO49Edq8N3MBAjb3A+LMswU4OoNvxeVb3DfX1PUaFc+96jLGc
 vXv9JCEXDk5w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 01:58:38 -0700
IronPort-SDR: mbALTggVDa0a39QMG47umt49d2JUpyQD+6z3TyGCkjFdzl22VLsup2cGbdp5ICq/recQnaKmNS
 JN5exQ5tdubw==
X-IronPort-AV: E=Sophos;i="5.73,383,1583222400"; d="scan'208";a="286578828"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 01:58:34 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 44834205FC; Tue, 12 May 2020 11:58:32 +0300 (EEST)
Date: Tue, 12 May 2020 11:58:32 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V5, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200512085832.GI11272@paasikivi.fi.intel.com>
References: <20200502161727.30463-3-dongchun.zhu@mediatek.com>
 <20200506151352.GZ9190@paasikivi.fi.intel.com>
 <1588855524.8804.168.camel@mhfsdcap03>
 <20200507131220.GC9190@paasikivi.fi.intel.com>
 <CAAFQd5DO9FGx9OF2RpcSprg0oLiVuS90w2qLAHCOSc3w6tKUWw@mail.gmail.com>
 <1588907288.8804.188.camel@mhfsdcap03>
 <20200508211319.GJ9190@paasikivi.fi.intel.com>
 <1588991026.8804.235.camel@mhfsdcap03>
 <CAAFQd5DZBEUJUq65WT7i_QjAtgxjhxmfdsjQoyG2UZy8zBih+A@mail.gmail.com>
 <1589254403.8804.306.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589254403.8804.306.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_015838_787482_9CF05304 
X-CRM114-Status: GOOD (  35.91  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Louis Kuo <louis.kuo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg  Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

On Tue, May 12, 2020 at 11:33:23AM +0800, Dongchun Zhu wrote:
> Hi Tomasz,
> 
> On Mon, 2020-05-11 at 20:20 +0200, Tomasz Figa wrote:
> > Hi Dongchun,
> > 
> > On Sat, May 9, 2020 at 4:25 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > >
> > > Hi Sakari,
> > >
> > > On Sat, 2020-05-09 at 00:13 +0300, Sakari Ailus wrote:
> > > > Hi Dongchun,
> > > >
> > > > On Fri, May 08, 2020 at 11:08:08AM +0800, Dongchun Zhu wrote:
> > > > > Hi Sakari, Tomasz,
> > > > >
> > > > > Thanks for the review.
> > > > >
> > > > > On Thu, 2020-05-07 at 15:46 +0200, Tomasz Figa wrote:
> > > > > > Hi Sakari, Dongchun,
> > > > > >
> > > > > > On Thu, May 7, 2020 at 3:12 PM Sakari Ailus
> > > > > > <sakari.ailus@linux.intel.com> wrote:
> > > > > > >
> > > > > > > HI Dongchun,
> > > > > > >
> > > > > > > On Thu, May 07, 2020 at 08:45:24PM +0800, Dongchun Zhu wrote:
> > > > > > > > Hi Sakari,
> > > > > > > >
> > > > > > > > Thanks for the review.
> > > > > > > >
> > > > > > > > On Wed, 2020-05-06 at 18:13 +0300, Sakari Ailus wrote:
> > > > > > > > > Hi Dongchun,
> > > > > > > > >
> > > > > > > > > On Sun, May 03, 2020 at 12:17:27AM +0800, Dongchun Zhu wrote:
> > > > > > > > > > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > > > > > > > > > control to set the desired focus via IIC serial interface.
> > > > > > > > > >
> > > > > > > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > > > > > ---
> > > > > > > > > >  MAINTAINERS                |   1 +
> > > > > > > > > >  drivers/media/i2c/Kconfig  |  11 ++
> > > > > > > > > >  drivers/media/i2c/Makefile |   1 +
> > > > > > > > > >  drivers/media/i2c/dw9768.c | 440 +++++++++++++++++++++++++++++++++++++++++++++
> > > > > > > > > >  4 files changed, 453 insertions(+)
> > > > > > > > > >  create mode 100644 drivers/media/i2c/dw9768.c
> > > > > > > > > >
> > > > > > > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > > > > > > index 8d72c41..c92dc99 100644
> > > > > > > > > > --- a/MAINTAINERS
> > > > > > > > > > +++ b/MAINTAINERS
> > > > > > > > > > @@ -5157,6 +5157,7 @@ L:  linux-media@vger.kernel.org
> > > > > > > > > >  S:       Maintained
> > > > > > > > > >  T:       git git://linuxtv.org/media_tree.git
> > > > > > > > > >  F:       Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > > > > > > > > > +F:       drivers/media/i2c/dw9768.c
> > > > > > > > > >
> > > > > > > > > >  DONGWOON DW9807 LENS VOICE COIL DRIVER
> > > > > > > > > >  M:       Sakari Ailus <sakari.ailus@linux.intel.com>
> > > > > > > > > > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > > > > > > > > > index 125d596..6a3f9da 100644
> > > > > > > > > > --- a/drivers/media/i2c/Kconfig
> > > > > > > > > > +++ b/drivers/media/i2c/Kconfig
> > > > > > > > > > @@ -1040,6 +1040,17 @@ config VIDEO_DW9714
> > > > > > > > > >     capability. This is designed for linear control of
> > > > > > > > > >     voice coil motors, controlled via I2C serial interface.
> > > > > > > > > >
> > > > > > > > > > +config VIDEO_DW9768
> > > > > > > > > > + tristate "DW9768 lens voice coil support"
> > > > > > > > > > + depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > > > > > > > > + depends on VIDEO_V4L2_SUBDEV_API
> > > > > > > > >
> > > > > > > > > Please check how this works in the media tree master branch now --- it's
> > > > > > > > > largely select based.
> > > > > > > > >
> > > > > > > >
> > > > > > > > The actuator driver uses some structures that require the
> > > > > > > > VIDEO_V4L2_SUBDEV_API code, so here we add VIDEO_V4L2_SUBDEV_API
> > > > > > > > dependency to avoid possible build error when it's not enabled.
> > > > > > >
> > > > > > > Please make sure this works with current media tree master. Right now it
> > > > > > > does not.
> > > > > > >
> > > > > >
> > > > > > Dongchun, as Sakari said, please make sure to base the patches on the
> > > > > > master branch of the media tree.
> > > > > > (https://git.linuxtv.org/media_tree.git/). The approach for Kconfig
> > > > > > dependency selection there seems to have changed recently.
> > > > > >
> > > > >
> > > > > I searched the patches on the media tree master branch.
> > > > > It seems that we need to remove the VIDEO_V4L2_SUBDEV_API dependency in
> > > > > Kconfig, and add #ifdef CONFIG_VIDEO_V4L2_SUBDEV_API to include
> > > > > v4l2-subdev code.
> > > > > The change mainly is to make build pass, and don't return ENOTTY if
> > > > > SUBDEV_API is not set.
> > > > > Am I right?
> > > >
> > > > Please see Kconfig entries for other similar drivers from Dongwoon.
> > > >
> > >
> > > Sorry for the mistake :-)
> > > Just found the current media tree master branch code...
> > > I would update Kconfig entries in next release by referring to:
> > > https://git.linuxtv.org/media_tree.git/tree/drivers/media/i2c/Kconfig
> > 
> > Sorry for last minute comments again. We had a short discussion
> > offline with Sakari and we think there are some changes needed to this
> > driver, namely:
> > 
> > 1) The hardware being driven in our case is a gt9769, which could be
> > compatible with dw9768, but it's still a different implementation and
> > could have slightly different characteristics. Thus we think the
> > driver name and compatible strings should be renamed from
> > dongwoon,dw9768 to giantec,gt9769. In the future, if there is a device

Sorry, I actually meant just the compatible string --- Dongwoon is likely
the original manufacturer. Therefore I'd name the driver according to that,
and just add a second compatible string for the Giantec device.

Either works for me though.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
