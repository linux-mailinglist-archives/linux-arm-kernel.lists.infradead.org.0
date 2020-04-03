Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9945019D49E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 12:08:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHl3IS1CxcUa8FLWXWL6drLFCotLkKsiKsCBuRy1H4U=; b=nFnmGmEKxImoVX
	zYhLrqQenQCE0MempbWy2idvXl3B912JCAVczDuh9ZMoUkHH6Xh1ThWTRTWDy9jR4PaIeQakzgE+s
	X9V3gOlLh3oF431H20+KhS05VffW0yLgAyJTnIxHChq24Oex2D//Q213guw8U8dYfOOhNko1cJOI5
	VEO4/m8J+FrqvpuPq62y9UkXONBd5B/4p1BuZ+2xJhLin07kIUWuNjXDJPXDh2IcccRib52BKKfpZ
	tdqpfUBLJtecIzmd0M2O2fCEVbax605S/CFo48zqSAarTHl0O+fOHKin7RLyqyRYlqLtIz7hZDrMm
	FQfRDLgmdoRiXKR6m9UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJF2-0004Wd-Ln; Fri, 03 Apr 2020 10:08:00 +0000
Received: from mailgate1.rohmeurope.com ([87.129.152.131])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJEu-0004VL-DY; Fri, 03 Apr 2020 10:07:54 +0000
X-AuditID: c0a8fbf4-473ff70000004419-a9-5e870af26a1f
Received: from smtp.reu.rohmeu.com (will-cas001.reu.rohmeu.com
 [192.168.251.177])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 F4.89.17433.2FA078E5; Fri,  3 Apr 2020 12:07:46 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS001.REu.RohmEu.com ([fe80::d57e:33d0:7a5d:f0a6%16]) with mapi id
 14.03.0487.000; Fri, 3 Apr 2020 12:07:41 +0200
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>
Subject: Re: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Thread-Topic: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Thread-Index: AQHWCZNurrjQpdjIqkyw5OgYXk7rkqhnCsKA
Date: Fri, 3 Apr 2020 10:07:41 +0000
Message-ID: <50797a6ac6cda4647f9a396dab0ad08017e3138b.camel@fi.rohmeurope.com>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
In-Reply-To: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.78.225.252]
Content-ID: <10842057F286414A8DA405585B16E10C@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Tf1CTdRzH7/s8z/Y8gKuHge0b1R/sKi4LCfG6j3dKeFk+ZHZ5XX9oBT6L
 R0bCRtswqLtcoyniYZAYsAYZulqwwI3LVCRstwg1t9uxQLp1J6BeYDKa/Miw6HlYCv98v+/v
 9/15fd7fPz5fhlT+SacwRTqTYNDxxWp5PHXOOe9Oj8bvz3u6e2EtOCIOEvxj8xTYfnZQcCja
 SkKNpYEAn32GBHdjpwyi5hAJ080XKLjYO0lB8PJhEo6MXJVDyOpB8LnPL4PKY51ysDsrYGH0
 hgyaqvZC9402AgKBEzTMhqoIqL/zFQGesUEZ1PVeomHgjF0OA5VBBJ8d/5iCWzU+BI2B7wkY
 9/2FwDEUJMDyURbYHf2iGemVQfP0ERJuhhvE+MYACdYeHw1B5zQBF7tN0GMNktDlESt6Qy/C
 6XA/Cbe9ASInnXO1uBA3O/MJxUUuW2muxfU+d2K0XcY5oxncr+G93GnbbzR31FPGdTlXcftu
 7+F+d3loztN2QM6FB8/KuUm/X6TOb3sF70hYr+FNe14tKtRlZO9M0FqiFrq0LbH85MIfcjOa
 YqsRw2B2LW45l1qN4hklO4iwN9JHxw4/ITw3doWWiuTselw9vCiT2XXYHUysRnEMyc4m4aZ5
 RtJJ7AY82fUpKelkNhtbp27JY3oNvhauR5Km2Efxh319lKQV7Mu4/9K+xRoluwlHqtyLbBz7
 PPaH79CSRuwj+IB5kohlqbDn+pxM0phl8fGzATKmV+LxsX//v0/F3811UNIzSfYJ3HkmI4bm
 4FZ3Fx3Tqbj+4Agde0IiPt90lapFD9iWJdiWaNsy2raMti2jjyJZG8IlfFFxIW8SMlcbhLLV
 Br22RNze0pd4UGx4p0+hBW+uFxEM8qIHGUK9UvENsz9PeZ9GX1Ch5Y3afENZsWD0IsyQ6mTF
 xkZrnlJRwFe8Jxj0d62HGEqtUqSN1L2pZKWs3YJQKhjuug8zjBornhW/iDLRIBQK5buKik1L
 NsHESc3jU5KNgq5AMPBlJm2+NBz5RnE6JGuFmPtanIgrjKV8iXgbQy+gTKZ2vLmVZHzNDnEd
 ivQ4SCWl0+uEFJWiQwJYCdCW6e7FTSAVg9RJCo3krhD/8b1uE2IQIQb9Ul4pBZn4JSvFjN54
 qeNdd/tTkWcK75ePeks39dcOa6gtV3bd/OH69vr2LG2C5lhBrnddqPOD9G1TO0NtJ6dyaiuH
 iLQdXz+++cl+TdWa58ZT/FvTDlqorTPvRDnXhhd6c1Nlm9WPZR1K2gK73x7YGJf3Zd3gtR/9
 X7w+/Pep7No8zl6zfbThn29V7foJxqymjFo+cxVpMPL/AaeUx0+EBAAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_030752_608802_26ED4C4E 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
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
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Mark, Sebastian, All,

On Fri, 2020-04-03 at 11:36 +0300, Matti Vaittinen wrote:
> Support ROHM BD99954 Battery Management IC
> 
> ROHM BD99954 is a Battery Management IC for 1-4 cell Lithium-Ion
> secondary battery. BD99954 is intended to be used in space-constraint
> equipment such as Low profile Notebook PC, Tablets and other
> applications.
> 
> Series extracts a "linear ranges" helper out of the regulator
> framework. Linear ranges helper is intended to help converting
> real-world values to register values when conversion is linear. I
> suspect this is useful also for power subsystem and possibly for clk.

I see Mark has acked/reviewed both the regulator changes and
linear_ranges code. Do you think Mark should take the linear_ranges and
regulator changes in his tree? I don't know Sebastian's schedule or
when the charger portion is good to go - but I know that each new
regulator driver which is added to regulator tree has a chance of using
the struct regulator_linear_range - which will break when this series
is applied. Or what would be the best way to avoid breaking regulators?

OTOH, if Mark takes linear_ranges in his tree, then this power portion
of the series will depend on linear_ranges stuff that is in regulator
tree. I guess this must be pretty standard stuff for you and you
probably know how to handle it but I just wanted to point out the risk
of breaking regulator build without visible merge conflicts.

Please let me know if I should split the series and rebase
linear_ranges / regulator stuff on top of regulator tree.

Br,
	Matti Vaittinen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
