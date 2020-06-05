Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A80481EF96A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:38:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLgQlfldB4G2OAbiqhvthPweFKdSeFSCDyxlNw+rCEs=; b=GFNwc7QkizVetc
	rFDiH1ha2ISX63eu9dZN9UQQNQ9OBxUF93sLLMrEa6Xfb0+AAE2ZEupDXE6+oV0xN2BC1WUd/fJpZ
	KfhCezIiW70Fhm+C333VeOVHqQRWE7XtFYiA8V7Zy647ZAKm9RVuyIS5C+19PPtfCuVo1CRG4tsHL
	dG0YKHiNvSnGGjSqOhTgwRERayyEmWMMlTPvI2fGlRiPDwn+LCjshXctRsgmpBB8TzAX1aCum7Cec
	iulriezKewiYV1lbabCcFv5rRlAD/ulIoGOSpmEOMY0zH8LMJg4PscrjdCO+KK7mlwja8rZEZpWxL
	8cDNu0/vIOcexpaUL5Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCY9-00025w-8j; Fri, 05 Jun 2020 13:38:21 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCXj-0001sw-QG; Fri, 05 Jun 2020 13:37:57 +0000
IronPort-SDR: A4Pr9ha1bVg4jvim7c69tE4dbAFfRpj9hiWapMrGazrBQd/27un9biOmNYwnf7ocw+e60JoHea
 95nXL8bkskFw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 06:37:54 -0700
IronPort-SDR: sEuqSwtS1beAn9U/dor4KFif5mC7H1OQoHPNSGTgH1eIhuIxgbPQgzhOO1jlDprNegKarlDQyT
 nnX93WLEycyA==
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="445895020"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 06:37:50 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 0C3BC205D2; Fri,  5 Jun 2020 16:37:48 +0300 (EEST)
Date: Fri, 5 Jun 2020 16:37:47 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V7, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200605133747.GU16711@paasikivi.fi.intel.com>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-3-dongchun.zhu@mediatek.com>
 <20200605121459.GS16711@paasikivi.fi.intel.com>
 <20200605130212.GA6303@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605130212.GA6303@chromium.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_063755_913579_0FC8ECDA 
X-CRM114-Status: GOOD (  16.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, drinkcat@chromium.org,
 andriy.shevchenko@linux.intel.com, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, linus.walleij@linaro.org,
 shengnan.wang@mediatek.com, bgolaszewski@baylibre.com, sj.huang@mediatek.com,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, louis.kuo@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 01:02:12PM +0000, Tomasz Figa wrote:
> On Fri, Jun 05, 2020 at 03:14:59PM +0300, Sakari Ailus wrote:
> > Hi Dongchun,
> > 
> > Thank you for the update.
> > 
> > On Fri, Jun 05, 2020 at 06:54:12PM +0800, Dongchun Zhu wrote:
> > > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > > control to set the desired focus via IIC serial interface.
> > > 
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  MAINTAINERS                |   1 +
> > >  drivers/media/i2c/Kconfig  |  13 ++
> > >  drivers/media/i2c/Makefile |   1 +
> > >  drivers/media/i2c/dw9768.c | 566 +++++++++++++++++++++++++++++++++++++++++++++
> > >  4 files changed, 581 insertions(+)
> > >  create mode 100644 drivers/media/i2c/dw9768.c
> [snip]
> > > +static int dw9768_runtime_suspend(struct device *dev)
> > > +{
> > > +	struct i2c_client *client = to_i2c_client(dev);
> > > +	struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > > +	struct dw9768 *dw9768 = sd_to_dw9768(sd);
> > > +
> > > +	dw9768_release(dw9768);
> > > +	regulator_bulk_disable(ARRAY_SIZE(dw9768_supply_names),
> > > +			       dw9768->supplies);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int dw9768_runtime_resume(struct device *dev)
> > 
> > __maybe_unused for this and the suspend callback.
> >
> 
> These are always used. If runtime PM is disabled, they are called
> explicitly in probe and remove.

Ah, right. Thanks for pointing that out.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
