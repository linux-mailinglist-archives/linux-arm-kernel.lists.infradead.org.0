Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D14831EDF17
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 10:10:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K1e3zPqP7D/d3g+sOLJTg4DMPqB8dI9jqxv/TBlEcT8=; b=qM7v9kLoqHB7eW
	wja4cxxcunfN7dbpdiy8oWP9eD9sbh8fVg6g8pHxVlfLq/o1WT4NtN11o4wAf3X2KCLbt+Zz1bGsl
	Phm8vYjbkYWVP4DBIcO2rgHDDfhAq1lkgIX72lD2oR+3IZdAFTKXAL8DXreB0sgATWbcUb40pVsGF
	rnaKP1T5lcI6HUeQ6DpA82zeBsIjRNSVIEzVlnrGx1WU6ch8hWvhKIsjwjkGN2vix7K/lRX/H4/Xw
	gHjhQxC82Tgw7R7cunB61GLISdYN1BY17cKzmnm2KSGYDPg8qixbmFYtXMnAT/jFrK5K4B5+JIdLK
	B0fP2PStBaviakyhdeog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkxi-0004Mu-W6; Thu, 04 Jun 2020 08:10:55 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkxb-0004JZ-NR; Thu, 04 Jun 2020 08:10:49 +0000
IronPort-SDR: /OIjXEdv5KD8CZSryucZmIOm0NEMEppaEFHn2FkvPVWhO1xCQk0oyTamPpNW5P3tRjutj9FxY6
 lUuasQH+7NcQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 01:10:39 -0700
IronPort-SDR: CbG8SA9IhTmLTH3EL+wOoj7Z+e/tx6p7eh+kvesL/bCsdRHwoUHbG9MoFKrrpylBG1+ENZXDTC
 ZYuSLrwBrVXA==
X-IronPort-AV: E=Sophos;i="5.73,471,1583222400"; d="scan'208";a="294250715"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 01:10:34 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id D771F20859; Thu,  4 Jun 2020 11:10:32 +0300 (EEST)
Date: Thu, 4 Jun 2020 11:10:32 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200604081032.GG16711@paasikivi.fi.intel.com>
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
 <20200521195113.GC14214@chromium.org>
 <1590139561.8804.390.camel@mhfsdcap03>
 <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
 <1590570089.8804.453.camel@mhfsdcap03>
 <CAAFQd5Dgboh8om68546ADELX3g-0y40rdBxY+H3WsX5xAD1_FQ@mail.gmail.com>
 <1591238018.8804.555.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1591238018.8804.555.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_011047_776564_E1235C10 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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

On Thu, Jun 04, 2020 at 10:33:38AM +0800, Dongchun Zhu wrote:
> Hi Tomasz,
> 
> On Mon, 2020-06-01 at 20:47 +0200, Tomasz Figa wrote:
> > On Wed, May 27, 2020 at 11:03 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Mon, 2020-05-25 at 13:45 +0200, Tomasz Figa wrote:
> > > > On Fri, May 22, 2020 at 11:27 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> > > > >
> > > > > Hi Tomasz,
> > > > >
> > > > > Thanks for the review. My replies are as below.
> > > > >
> > > > > On Thu, 2020-05-21 at 19:51 +0000, Tomasz Figa wrote:
> > > > > > Hi Dongchun, Sakari,
> > > > > >
> > > > > > On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
> > > > [snip]
> > > > > > > +   pm_runtime_enable(dev);
> > > > > > > +   if (!pm_runtime_enabled(dev)) {
> > > > > > > +           ret = dw9768_runtime_resume(dev);
> > > > > > > +           if (ret < 0) {
> > > > > > > +                   dev_err(dev, "failed to power on: %d\n", ret);
> > > > > > > +                   goto entity_cleanup;
> > > > > > > +           }
> > > > > > > +   }
> > > > > > > +
> > > > > > > +   ret = v4l2_async_register_subdev(&dw9768->sd);
> > > > > > > +   if (ret < 0)
> > > > > > > +           goto entity_cleanup;
> > > > > > > +
> > > > > > > +   return 0;
> > > > > > > +
> > > > > > > +entity_cleanup:
> > > > > >
> > > > > > Need to power off if the code above powered on.
> > > > > >
> > > > >
> > > > > Thanks for the reminder.
> > > > > If there is something wrong with runtime PM, actuator is to be powered
> > > > > on via dw9768_runtime_resume() API.
> > > > > When actuator sub-device is powered on completely and async registered
> > > > > successfully, we shall power off it afterwards.
> > > > >
> > > >
> > > > The code above calls dw9768_runtime_resume() if
> > > > !pm_runtime_enabled(dev), but the clean-up code below the
> > > > entity_cleanup label doesn't have the corresponding
> > > > dw9768_runtime_suspend() call.
> > > >
> > >
> > > Did you mean the 'entity_cleanup' after v4l2_async_register_subdev()?
> > 
> > Yes.
> > 
> > > Actually I made some changes for OV02A V9, according to this comment.
> > > Could you help review that change? Thanks.
> > 
> > Sure, I will take a look.
> > 
> 
> Thanks.
> Sorry, I just wanna make sure the change is okay for next release.
> May we use the check like OV02A V9 did?
> ret = v4l2_async_register_subdev(&dw9768->sd);
> if (ret < 0) {
> 	if (!pm_runtime_enabled(dev))
> 		dw9768_runtime_suspend(dev);

Please do this part where you're jumping to, if possible.

> 	goto entity_cleanup;
> }
> 

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
