Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C6DF19D566
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ASRe94EUcu30DKNGPzJW7Vci9AoES/3F7xGNm63A1VM=; b=JwT9RgN9S6s1Vl
	O+v73qf2zJYX0Je7KcIh7J7SO2Gro2ap6H5wkFkMctFAe8PlT0O1MEVE1k8OJMjPbRhajpjB2+b8C
	wsDx8YN8+qRWiLQRirwRTJcV7V0f0EIAzhRXfZMynl6X7Q2Y819aWOVWTexKcnldt0PPjZ0GR+GZl
	nI2CW4wHXkHXe82x0Xac4kcPUdIfUZpiwkEcm09CQlCDrZYb1/JWLk5xjCmvlU6EodikaGjm6Mq5f
	brJCRwvnsbHRlZSjyCRlYp+faLZJa1A5sngkp9cCCxh155/OpCulF45wEAvn+Ult7z/6Hku3YuCFn
	VQ4uf+56PvBs/y5Ic9DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKK5l-0006AB-Oi; Fri, 03 Apr 2020 11:02:29 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKK5e-00068u-5r; Fri, 03 Apr 2020 11:02:23 +0000
IronPort-SDR: OJ0hXsPasudUa58ohP1CzSjph7gqi8efePegcCmqhYKRXDJmN03sYgDSnWd9hLDaRheQVwMFOU
 9kbyrwBlovfA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2020 04:02:21 -0700
IronPort-SDR: 5a/olc0ACQqahkFQkQxRyVBNsCA4xCic/xEhfND7MJmYVdslUpbDkdLtGefMcO/KHcxgKc3A9/
 kvDVjv3BeWPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,339,1580803200"; d="scan'208";a="268327035"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by orsmga002.jf.intel.com with ESMTP; 03 Apr 2020 04:02:10 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jKK5S-00FPZD-Th; Fri, 03 Apr 2020 14:02:10 +0300
Date: Fri, 3 Apr 2020 14:02:10 +0300
From: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Message-ID: <20200403110210.GO1922688@smile.fi.intel.com>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <50797a6ac6cda4647f9a396dab0ad08017e3138b.camel@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50797a6ac6cda4647f9a396dab0ad08017e3138b.camel@fi.rohmeurope.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_040222_267495_E7B6A6A3 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.20 listed in wl.mailspike.net]
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
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, "krzk@kernel.org" <krzk@kernel.org>,
 "m.reichl@fivetechno.de" <m.reichl@fivetechno.de>,
 "bgolaszewski@baylibre.com" <bgolaszewski@baylibre.com>,
 "wens@csie.org" <wens@csie.org>, "andreas@kemnade.info" <andreas@kemnade.info>,
 "agross@kernel.org" <agross@kernel.org>, "Laine,
 Markus" <Markus.Laine@fi.rohmeurope.com>,
 "Adam.Thomson.Opensource@diasemi.com" <Adam.Thomson.Opensource@diasemi.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "ckeepax@opensource.cirrus.com" <ckeepax@opensource.cirrus.com>,
 "linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
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
 "b.zolnierkie@samsung.com" <b.zolnierkie@samsung.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 03, 2020 at 10:07:41AM +0000, Vaittinen, Matti wrote:
> On Fri, 2020-04-03 at 11:36 +0300, Matti Vaittinen wrote:
> > Support ROHM BD99954 Battery Management IC
> > 
> > ROHM BD99954 is a Battery Management IC for 1-4 cell Lithium-Ion
> > secondary battery. BD99954 is intended to be used in space-constraint
> > equipment such as Low profile Notebook PC, Tablets and other
> > applications.
> > 
> > Series extracts a "linear ranges" helper out of the regulator
> > framework. Linear ranges helper is intended to help converting
> > real-world values to register values when conversion is linear. I
> > suspect this is useful also for power subsystem and possibly for clk.
> 
> I see Mark has acked/reviewed both the regulator changes and
> linear_ranges code. Do you think Mark should take the linear_ranges and
> regulator changes in his tree? I don't know Sebastian's schedule or
> when the charger portion is good to go - but I know that each new
> regulator driver which is added to regulator tree has a chance of using
> the struct regulator_linear_range - which will break when this series
> is applied. Or what would be the best way to avoid breaking regulators?
> 
> OTOH, if Mark takes linear_ranges in his tree, then this power portion
> of the series will depend on linear_ranges stuff that is in regulator
> tree. I guess this must be pretty standard stuff for you and you
> probably know how to handle it but I just wanted to point out the risk
> of breaking regulator build without visible merge conflicts.
> 
> Please let me know if I should split the series and rebase
> linear_ranges / regulator stuff on top of regulator tree.

From my point of view, you need to wait till rc1 is out and rebase the series.
The cross-subsystem changes can be handled by maintainers in a form of
immutable branches / tags. On your side you may recommend them how to proceed,
but the final decision is by them.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
