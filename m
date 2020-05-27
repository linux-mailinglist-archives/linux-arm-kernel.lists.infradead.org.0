Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6AD31E4FDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 23:12:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8WsqxK3n/BjJ5JMWP0fbzVF9hZ34TJT/eMZWjugCHg=; b=KONYn0YmXwUKN8
	oMK4PtBIIw90B8zazG5AM7cyDyzCtpizVhMvZSXUDOCPHy1RYOinDk7UpvSPMsnjk8rHcuRK342E9
	zz2z9g9eXR/TOX9jORqnRmprEX3ezP54N9lLJbQ2XoqcFpdAXdp6ceK5bcDe7WX6P2H7BLxDq8jcb
	vy+RfZfHnCHo/B/PJah684XjgTuLmHyNlrGwknsvOgN3RteNzF1F+FopxE3JNepOdhgnvww3AzDJp
	6WXIPef1oYaU446YMBi0wbsTZW9FyPphF/rQVVTwl5tO5BhBECslVgu7qyHb/6KJ9aLMgGHubsXyo
	DlGYbRbeFABwAal3yw6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je3LM-000629-Op; Wed, 27 May 2020 21:12:08 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je3LE-00061m-C7; Wed, 27 May 2020 21:12:01 +0000
IronPort-SDR: sNnjk/yC9LnIXycVS4JxR9mjlC4LdkcTOD/G8eS5O+R6pLIP7k4iQ0sMsPu3ARqYghBO8ruetQ
 U+8edm5gp7ug==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 14:11:59 -0700
IronPort-SDR: ZCZn22c4t0Kf4WafHmfwy6fPyENsMjl0y7aCtmUolIaeqy5VZ3cwjdvpDtqwYxgHkLtyy1f9+6
 CeMReU8g/sPw==
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="284940319"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 14:11:55 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 0E362206EA; Thu, 28 May 2020 00:11:53 +0300 (EEST)
Date: Thu, 28 May 2020 00:11:53 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200527211152.GS7618@paasikivi.fi.intel.com>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
 <20200521195113.GC14214@chromium.org>
 <1590139561.8804.390.camel@mhfsdcap03>
 <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_141200_428957_9F190501 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 01:45:07PM +0200, Tomasz Figa wrote:
> On Fri, May 22, 2020 at 11:27 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > Thanks for the review. My replies are as below.
> >
> > On Thu, 2020-05-21 at 19:51 +0000, Tomasz Figa wrote:
> > > Hi Dongchun, Sakari,
> > >
> > > On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
> [snip]
> > > > +   pm_runtime_enable(dev);
> > > > +   if (!pm_runtime_enabled(dev)) {
> > > > +           ret = dw9768_runtime_resume(dev);
> > > > +           if (ret < 0) {
> > > > +                   dev_err(dev, "failed to power on: %d\n", ret);
> > > > +                   goto entity_cleanup;
> > > > +           }
> > > > +   }
> > > > +
> > > > +   ret = v4l2_async_register_subdev(&dw9768->sd);
> > > > +   if (ret < 0)
> > > > +           goto entity_cleanup;
> > > > +
> > > > +   return 0;
> > > > +
> > > > +entity_cleanup:
> > >
> > > Need to power off if the code above powered on.
> > >
> >
> > Thanks for the reminder.
> > If there is something wrong with runtime PM, actuator is to be powered
> > on via dw9768_runtime_resume() API.
> > When actuator sub-device is powered on completely and async registered
> > successfully, we shall power off it afterwards.
> >
> 
> The code above calls dw9768_runtime_resume() if
> !pm_runtime_enabled(dev), but the clean-up code below the
> entity_cleanup label doesn't have the corresponding
> dw9768_runtime_suspend() call.

Yes, an example on using runtime PM can be found in e.g. ov8856 driver.

The open / release callbacks seem fine though. Sensors just don't need
them as they have the streaming state (and s_stream).

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
