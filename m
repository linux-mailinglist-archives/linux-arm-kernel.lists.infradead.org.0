Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7731BC142
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 16:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dgyjstaI+Qmo9Z+QDvBvWCJ+7UkXwAIfZIqID3Uthg=; b=ZQeFdhW47WY/JK
	XTtXj0ZiCwPjujY4j7zuOQHJ9/WYhtadcgbqFEOvvc1Cn7NK+VPOguA0ojibGU9d+EPNRayqFufjo
	T5W5c4+rKTKNC7O5CdF/MEPokq+xttwjmJAlMMlWOM/c15G4qFgJI4lEWnpIKh2wOHtNNKYx6cIFe
	gCurgmSZ1omlDdiolBgagc8RUhyHovPiVTmLEqM8Wv2EZtvsMVQjUt4fBb0v8GnTV7Ymw8VTEeaci
	9/yJ72QJhrmpiXLseXR3nA7knj2o700mXNDBzCfVxiJIaFq5EJc4iRyY78ipVxbu0045oWdh1Le5h
	KBB4nAamCSMzj7xkrCIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRFF-0001FT-B7; Tue, 28 Apr 2020 14:29:57 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRF0-0001E4-LS
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 14:29:43 +0000
IronPort-SDR: TSPdJ6tTwBJj5gGaYlPexeVzE093ihX57plzsbv6pzAjVV2VUiCewaJfYF6uZTovJRFPjLoSGN
 b5n2d8la0udw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 07:29:42 -0700
IronPort-SDR: vGnHmY/BqlTIl3FGa5R64rDdkwKbnMHUnpT0wYGLkHb05hlF7l+pQ52NbGLIPzbFCXoyvBDAUH
 qkiQUfkvunvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="432201423"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga005.jf.intel.com with ESMTP; 28 Apr 2020 07:29:36 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jTREw-003ZVU-6Y; Tue, 28 Apr 2020 17:29:38 +0300
Date: Tue, 28 Apr 2020 17:29:38 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v3 02/16] mfd: mfd-core: Don't overwrite the dma_mask of
 the child device
Message-ID: <20200428142938.GX185537@smile.fi.intel.com>
References: <20200423174543.17161-1-michael@walle.cc>
 <20200423174543.17161-3-michael@walle.cc>
 <20200428124548.GS185537@smile.fi.intel.com>
 <3cd3705a-4f48-6a46-e869-3ee11dc17323@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3cd3705a-4f48-6a46-e869-3ee11dc17323@arm.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_072942_710612_9B3BA8CF 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Michael Walle <michael@walle.cc>,
 Mark Brown <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 28, 2020 at 02:06:20PM +0100, Robin Murphy wrote:
> On 2020-04-28 1:45 pm, Andy Shevchenko wrote:
> > On Thu, Apr 23, 2020 at 07:45:29PM +0200, Michael Walle wrote:
> > > Commit cdfee5623290 ("driver core: initialize a default DMA mask for
> > > platform device") initialize the DMA of a platform device. But if the
> > > parent doesn't have a dma_mask set, for example if it's an I2C device,
> > > the dma_mask of the child platform device will be set to zero again.
> > > Which leads to many "DMA mask not set" warnings, if the MFD cell has the
> > > of_compatible property set.
> > 
> > I'm wondering why parent doesn't have it.
> 
> Because the parent isn't on a DMA-capable bus, and thus really shouldn't
> have a valid DMA configuration ever.

Then how come a child is DMA capable? MFD takes a physical device node as a
parent and creates one of several children with that device as a parent. DMA
mask is a property of the device which *does DMA*. Obviously a child is not
correct device for that.

Where am I mistaken?

> > I remember we have explicit patches in the past for buses such as PCI and AMBA
> > to set default DMA mask for all physical devices on the respective bus, of
> > course they can individually override it later.
> > 
> > So, this seems to me a paper over the real issue (absence of default DMA mask
> > where it's needed) and devices should explicitly define it if they disagree
> > with default.
> > 
> > If I'm wrong, you really need elaborate commit message much better.
> 
> The problem here is that MFD children are created as platform devices
> (regardless of what their parent is) and assigned an of_node, at which point
> they look pretty much indistinguishable from SoC devices created by the
> of_platform code, that *do* have to be assumed to be DMA-capable to prevent
> ~90% of existing devicetrees from breaking.
> 
> Of course the real fundamental issue is the platform bus itself, but it's
> way too late to fix that :(

I don't think it's an issue, rather in model you are describing. Or I miss
something not so obvious.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
