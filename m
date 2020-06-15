Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D71F1F8D7A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 08:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zj84LGHXt5TEUTk6Khc0YEaQVK9FEnfv+r2WGs8IC5s=; b=Vdohp8drNnpoha
	LUWqhuMAY4hYAZ/ZKVfaL+V7UAux9bkHXsuRfRNHy7CozJ/OqsFoIZr/tGCZzzch3/xNMSUSsGRdm
	ApFTp8nZyz0ju2gnmnCjarV8X9bhREvN9iB8dkfGQpXZkHHaGue5cudHiQGaDWtn6nB5K3GRlVNSM
	Zi+Q1lZ5RaQDZTjRtwUgWn/a25hkWIOym2Zatfmzc/4jOGjlIlC/zfMIiMsRXRDWyeq7FJ+pHTIe+
	CG+qdUR7H1mKzPJczbi7hXM8FuaBvye+jkiOnl7UuoTwNolw8M9UEDgXfUnSeJzNmem37OuzVdgCn
	YfitkeNeG2vG+ZObkv+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkiDA-0007XP-IF; Mon, 15 Jun 2020 06:03:12 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCb-0007KC-0t; Mon, 15 Jun 2020 06:02:40 +0000
X-UUID: 8b5a6460b39c4466a6cd639c400fcaa8-20200614
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=fnDevRc5gzT9pEFX+fLR5VMrjoY4YqsLtT0zU0Ke8Vo=; 
 b=HYbN0mFli9pFHjzfVPtWFdBpE6Uum9IVibhYDTcZzYFFY+iaS42bn24Oalc84YJGI7r0SAt65iRby/MK7jcfYSR7C/XMLOi9rkkNB//Jd0hxCRBkGI/T2G947yHztReHKT3FMRPCo8gtbDsznehDOM6OoELspzcvHgBhkwbLMMA=;
X-UUID: 8b5a6460b39c4466a6cd639c400fcaa8-20200614
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1812739201; Sun, 14 Jun 2020 22:02:27 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 14 Jun 2020 22:57:00 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 15 Jun 2020 13:56:55 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 13:56:54 +0800
Message-ID: <1592200471.8804.681.camel@mhfsdcap03>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 15 Jun 2020 13:54:31 +0800
In-Reply-To: <CAAFQd5Bcb4A+HAivA-jrczK+OMxwZk3w0GYoh-DU=6gmTZBWnQ@mail.gmail.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
 <20200610194455.GK201868@chromium.org>
 <1591958798.8804.660.camel@mhfsdcap03>
 <CAAFQd5Bcb4A+HAivA-jrczK+OMxwZk3w0GYoh-DU=6gmTZBWnQ@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 05083A7EAA71BA34896525D44F4E88087FD14958F89E60E60F8969B81D033BF72000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_230237_067279_8EA574FC 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Linus Walleij <linus.walleij@linaro.org>, Shengnan
 Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dongchun.zhu@mediatek.com, Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Fri, 2020-06-12 at 20:39 +0200, Tomasz Figa wrote:
> On Fri, Jun 12, 2020 at 12:49 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Wed, 2020-06-10 at 19:44 +0000, Tomasz Figa wrote:
> > > Hi Dongchun,
> > >
> > > On Sat, May 23, 2020 at 04:41:03PM +0800, Dongchun Zhu wrote:
> > > > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > > >
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > ---
> > > >  MAINTAINERS                 |    1 +
> > > >  drivers/media/i2c/Kconfig   |   13 +
> > > >  drivers/media/i2c/Makefile  |    1 +
> > > >  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
> > > >  4 files changed, 1040 insertions(+)
> > > >  create mode 100644 drivers/media/i2c/ov02a10.c
> > > >
> > >
> > > Thank you for the patch. Please see my comments inline.
> > >
> > > [snip]
> > > > diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> > > > new file mode 100644
> > > > index 0000000..160a0b5
> > > > --- /dev/null
> > > > +++ b/drivers/media/i2c/ov02a10.c
> > > [snip]
> > > > +static const char * const ov02a10_test_pattern_menu[] = {
> > > > +   "Disabled",
> > > > +   "Color Bar",
> > >
> > > nit: We should normalize this to one of the standard names. What is the
> > > pattern on this sensor? Is it perhaps "Eight Vertical Colour Bars"?
> > >
> >
> > Yes. It is one kind of 'Eight Vertical Colour Bars'.
> > This pattern is called as 'MIPI color bar' per the datasheet.
> > Can we here use 'Vertical Color Bar' or 'MIPI Color Bar'?
> >
> 
> We should try to stick to the names as exposed by existing drivers.
> There was an attempt to unify the naming of some Sony sensors some
> time ago [1]. Perhaps one of the names there matches the pattern of
> this sensor?
> 
> [1] https://patchwork.kernel.org/patch/10711777/
> 

Sounds great.
It is one good idea to summarize test patterns from various sensors.
But one question plaguing me is that it seems even for the same "Eight
Vertical Colour Bars", different sensors may have different RGB color
map.

Moreover, definition standards of color bar style may differ among
different sensor chip vendors.
For instance, Sony often uses "Solid Color", "Color Bars With Fade to
Grey", "PN9" to abstract test pattern output type; while OmniVision
adopts color bar type 1, 2, 3, 4 or "MIPI Color Bar", "ISP Color Bar"
instead.

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
