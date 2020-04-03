Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F3519D60D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TcCIbpewSNXgIRUUq4FZ4VbL/8f4giHyLD5iwR5uXI=; b=mWGwCAnr7gSZ+G
	FbZvmpXZHtGa4Q+TRJbDZbm8rrAKU4InFPThWIuhsVleMLJUkExiAVGBl/updRwaUYOwFveu90wqG
	Md+/6vF+x2c8B2XJl8n4NRVQ1/YutC1LI03EYKgkfqelhTeH/YQAQC1tmcDyHNpb4imVMdDbfPVpI
	+XxqhUQ3h1cqHUKq5Ca8M+oLT3rHO4SLnYBl+j2v4VHa0KsYCvGiCIhoTHh/RU3MUViPkz4m+2yg7
	aW9CwL/Ejpslpn1jP5Q8XozfYrsI4ZAWIMIwt1Dq8EH0V5JpmC9BKADZjC6EFD3jev8ehl4mKhJB4
	H8hTpI2Ds8ObTOWIMO8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKqI-0004aN-NI; Fri, 03 Apr 2020 11:50:34 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKqA-0004Z5-RJ; Fri, 03 Apr 2020 11:50:28 +0000
IronPort-SDR: 8PD3NoibRLWeA+vP2o/YFy4nYayiGxXaIPSB6AbFw38VZwCxJVRgv/O+pw6xCQzZ5wu3ll4Muf
 KB/+iGeMtaPw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 04:50:24 -0700
IronPort-SDR: AJrYqR1DIxlh7ttJSHBKS3dnWZVMhuNVUURxvAfZkMQKKhUnLqF1WKjm8eZLVPAlPQBWG6anqj
 v4nRpxUKxgxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,339,1580803200"; d="scan'208";a="273922409"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga004.fm.intel.com with ESMTP; 03 Apr 2020 04:50:15 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jKKq0-00FQB4-Ei; Fri, 03 Apr 2020 14:50:16 +0300
Date: Fri, 3 Apr 2020 14:50:16 +0300
From: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Message-ID: <20200403115016.GW1922688@smile.fi.intel.com>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <50797a6ac6cda4647f9a396dab0ad08017e3138b.camel@fi.rohmeurope.com>
 <20200403110210.GO1922688@smile.fi.intel.com>
 <8007dadb0b3a13934f2a950204506a156cb2e65e.camel@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8007dadb0b3a13934f2a950204506a156cb2e65e.camel@fi.rohmeurope.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_045026_896987_D5E1737F 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "andrei.stefanescu@microchip.com" <andrei.stefanescu@microchip.com>,
 "heiko@sntech.de" <heiko@sntech.de>, "rafael@kernel.org" <rafael@kernel.org>,
 "tony@atomide.com" <tony@atomide.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "brendanhiggins@google.com" <brendanhiggins@google.com>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 "kholk11@gmail.com" <kholk11@gmail.com>,
 "hsin-hsiung.wang@mediatek.com" <hsin-hsiung.wang@mediatek.com>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "axel.lin@ingics.com" <axel.lin@ingics.com>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "krzk@kernel.org" <krzk@kernel.org>,
 "m.reichl@fivetechno.de" <m.reichl@fivetechno.de>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "wens@csie.org" <wens@csie.org>, "andreas@kemnade.info" <andreas@kemnade.info>,
 "agross@kernel.org" <agross@kernel.org>, "Laine,
 Markus" <Markus.Laine@fi.rohmeurope.com>,
 "Adam.Thomson.Opensource@diasemi.com" <Adam.Thomson.Opensource@diasemi.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ckeepax@opensource.cirrus.com" <ckeepax@opensource.cirrus.com>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "rf@opensource.cirrus.com" <rf@opensource.cirrus.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "sre@kernel.org" <sre@kernel.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "support.opensource@diasemi.com" <support.opensource@diasemi.com>,
 "baolin.wang@linaro.org" <baolin.wang@linaro.org>,
 "sbkim73@samsung.com" <sbkim73@samsung.com>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Mutanen,
 Mikko" <Mikko.Mutanen@fi.rohmeurope.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 11:13:54AM +0000, Vaittinen, Matti wrote:
> On Fri, 2020-04-03 at 14:02 +0300, andriy.shevchenko@linux.intel.com
> wrote:
> > On Fri, Apr 03, 2020 at 10:07:41AM +0000, Vaittinen, Matti wrote:
> > > On Fri, 2020-04-03 at 11:36 +0300, Matti Vaittinen wrote:

...

> > From my point of view, you need to wait till rc1 is out and rebase
> > the series.
> 
> Does this mean that there is no new regulator drivers expected to be
> added after rc1 is out? If this is the case, the rebasing this series
> on top of rc1 should work as then I get all new drivers (for a release)
> converted. This is of course fine by me - but again we will risk of
> breaking regulators if the series slips to next release. Thus I thought
> that perhaps we should try getting the regulators stuff in Marks tree
> so that further reguator drivers wouldn't be broken.

We already almost in the middle of merge window. With such a change I believe
there is no room for testing it, so, it will be quite unlikely it makes v5.7
release.

That is, you have approximately 6 more weeks to polish this code.

> But as I said, my intention is not to claim I know how to do this. On
> the contrary - I have _never_ participated in maintaining a tree that
> will be merged by others. So, please just let me know what you see the
> best. I can do splitting the series or rebasing to regulator tree or
> rebase to rc1 when it is out if required :)

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
