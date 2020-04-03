Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40BAD19D597
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f//agpBNQp0EF99XO+F1n8WOSF/XhNefpiIONM9n3Yg=; b=cGiIJgxY5emlmH
	nfH9S1qsRbxb6UKWB1ubu2iKD/TIRrwgEiccKN4wpz4NQHhsTPDZakdIAGLsLjV0c7+ao/ixRLoJQ
	P7NRc63aZT/AwKC8Nq30lkXHQY0373j4i9sIjYyonN5gMPXMXnHWe1qaE+FHsvactffQW0GV2jxVE
	MeM7hF5f4KsaPAifX6x/Oz4tuV2RISm13IkJZMrKbpMDOfjDQKqzaCvzEQ0meX84SDXfX+kW5SlZJ
	Q6yvmWftXTawAjPUzdhrEAwjGnLAU9nXOdBG6ujSw25jgQidO+YhtQNBuI6N0DLGDnxZJ3AYHdRxZ
	g5dvJ+8ZuBpN3lQLWKDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKH6-0004dR-OW; Fri, 03 Apr 2020 11:14:12 +0000
Received: from mailgate1.rohmeurope.com ([87.129.152.131])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKGz-0004c8-1w; Fri, 03 Apr 2020 11:14:06 +0000
X-AuditID: c0a8fbf4-473ff70000004419-62-5e871a786b18
Received: from smtp.reu.rohmeu.com (will-cas001.reu.rohmeu.com
 [192.168.251.177])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 8B.C9.17433.87A178E5; Fri,  3 Apr 2020 13:14:01 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS001.REu.RohmEu.com ([fe80::d57e:33d0:7a5d:f0a6%16]) with mapi id
 14.03.0487.000; Fri, 3 Apr 2020 13:13:55 +0200
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Thread-Topic: [PATCH v8 00/10] Support ROHM BD99954 charger IC
Thread-Index: AQHWCZNurrjQpdjIqkyw5OgYXk7rkqhnCsKAgAAPNACAAANNgA==
Date: Fri, 3 Apr 2020 11:13:54 +0000
Message-ID: <8007dadb0b3a13934f2a950204506a156cb2e65e.camel@fi.rohmeurope.com>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <50797a6ac6cda4647f9a396dab0ad08017e3138b.camel@fi.rohmeurope.com>
 <20200403110210.GO1922688@smile.fi.intel.com>
In-Reply-To: <20200403110210.GO1922688@smile.fi.intel.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.78.225.252]
Content-ID: <CA804C40FABB9248AC03DE48631B5E4D@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02TbVBUVRjHO/dl7wXcvCwIx42acbVppBFicppnGkDqi9eacWSaaRqboIvc
 WAoWunsxyGncgTaBxDQFlhWIyNUNCWRxlDeDmJ0EBTbGbaXCUcBpAmpRXiSipHtdFT6d/3n+
 z//5nQ/PYUndNKNnM02yKJmELIMmmOpxLrdsK9AfSnlhxUuDY8ZBwtDEMgX2AQcFR2brSSgr
 rCTAXb1AQoutmYZZi5eE+ZorFFzt9lMwPHKchPKx2xrwWl0IvnIP0VD0TbMGqp0FsDI+TUNV
 8UHonG4gwOM5x8A9bzEBJ/49Q4BrwkfDse5BBq51VGvgWtEwgpOnvqBgrsyNwOb5noBJ998I
 HNeHCSj89EWodvQp5kw3DTXz5ST8NVqp4G0eEqyX3AwMO+cJuNopwyXrMAmtLqWj2/satI/2
 kbDU6yGStvGNtY2Iv7fwJcXPjFgZvrbxAH9u/CzNO2dj+V9HD/Lt9hsMX+fK41ud0fxnS/v5
 PxpdDO9qKNHwo74uDe8fGlJS/cl78N6Q+DRB3v9GZoYpNvHdEKPtO68m17Il/3i9j7Gg4s2l
 KIjF3Hbc4L5Ll6JgVsf5EO6yNj28XEb4wrejTCliWQ0Xj0t/YdRAOPc6/sc/glRNcuNhuKRP
 UHUYl4D9rRVkoCcRW+/MadRoOPcqbrCZ1TLFbcF3Kq8/iGq53fh+3TgRQHUi7J1ueWAEcS9j
 V4+FVjXinsYlFj8RYEVi1++LdODRHD7V5SEDegOenLj/sL4JX1xsolQuyW3FzR2xAZmE6/7k
 A1M24ROfjzGBJ4Ti/qrb1FEUYV8DsK+G7ath+5qwfU24DtENCGcLmVkZgizGxUhiXoyUY8xW
 jn052S4UWN75NrTSu6sXESzqRRtZwrBB+2H4oRTdk2k56QVGwWxMlfKyRHMvwixpCNe+YrOm
 6LTpQsHHopTzyHqKpQyR2ufGjr2j41TWB6KYK0qP3CiWNWAtvVEZGiqJGWL+e5lZ8qpNsEHq
 8GB9uFk0pYuSkCcbU9XlSDUr26Fa6xRuW6QS15pzhWylGoheQc+zRydr6knWXeOoJ3WUKcck
 6iO1ezmllVNbjXmmx6ApFMkiQ5g2LUJx1yk/+PGcKQVBKIif84tUhCysWnoL2j0V1za+PTox
 rOujA4U/SvtmQm9+kqTJOBtR40t46cbOgfM7OrJP73lia0zPMxMV/62/WfX1+hD/b/1lg3Nn
 7p4/HbZ4uNYptLYvlF2+teNCcsIyz5+smEmLlkxv4aryjiV7sixz7w8OxP9w8QixS27avLNf
 /inqWfvbh29FtaT69H1vGiizUYiLJiWz8D9/oO1IfgQAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_041405_250395_1480E560 
X-CRM114-Status: GOOD (  23.31  )
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
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "support.opensource@diasemi.com" <support.opensource@diasemi.com>,
 "baolin.wang@linaro.org" <baolin.wang@linaro.org>,
 "sbkim73@samsung.com" <sbkim73@samsung.com>,
 "patches@opensource.cirrus.com" <patches@opensource.cirrus.com>,
 "rdunlap@infradead.org" <rdunlap@infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Mutanen, 
 Mikko" <Mikko.Mutanen@fi.rohmeurope.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Andy & All,

On Fri, 2020-04-03 at 14:02 +0300, andriy.shevchenko@linux.intel.com
wrote:
> On Fri, Apr 03, 2020 at 10:07:41AM +0000, Vaittinen, Matti wrote:
> > On Fri, 2020-04-03 at 11:36 +0300, Matti Vaittinen wrote:
> > > Support ROHM BD99954 Battery Management IC
> > > 
> > > ROHM BD99954 is a Battery Management IC for 1-4 cell Lithium-Ion
> > > secondary battery. BD99954 is intended to be used in space-
> > > constraint
> > > equipment such as Low profile Notebook PC, Tablets and other
> > > applications.
> > > 
> > > Series extracts a "linear ranges" helper out of the regulator
> > > framework. Linear ranges helper is intended to help converting
> > > real-world values to register values when conversion is linear. I
> > > suspect this is useful also for power subsystem and possibly for
> > > clk.
> > 
> > I see Mark has acked/reviewed both the regulator changes and
> > linear_ranges code. Do you think Mark should take the linear_ranges
> > and
> > regulator changes in his tree? I don't know Sebastian's schedule or
> > when the charger portion is good to go - but I know that each new
> > regulator driver which is added to regulator tree has a chance of
> > using
> > the struct regulator_linear_range - which will break when this
> > series
> > is applied. Or what would be the best way to avoid breaking
> > regulators?
> > 
> > OTOH, if Mark takes linear_ranges in his tree, then this power
> > portion
> > of the series will depend on linear_ranges stuff that is in
> > regulator
> > tree. I guess this must be pretty standard stuff for you and you
> > probably know how to handle it but I just wanted to point out the
> > risk
> > of breaking regulator build without visible merge conflicts.
> > 
> > Please let me know if I should split the series and rebase
> > linear_ranges / regulator stuff on top of regulator tree.
> 
> From my point of view, you need to wait till rc1 is out and rebase
> the series.
> The cross-subsystem changes can be handled by maintainers in a form
> of
> immutable branches / tags. On your side you may recommend them how to
> proceed,
> but the final decision is by them.
> 

Thanks Andy. I re-read what I wrote and I see it can be interpreted as
if I was trying to tell how things should be done. That was my
intention. My intention was to point out that my patches will break
regulator tree builds if new drivers are added.

> From my point of view, you need to wait till rc1 is out and rebase
> the series.

Does this mean that there is no new regulator drivers expected to be
added after rc1 is out? If this is the case, the rebasing this series
on top of rc1 should work as then I get all new drivers (for a release)
converted. This is of course fine by me - but again we will risk of
breaking regulators if the series slips to next release. Thus I thought
that perhaps we should try getting the regulators stuff in Marks tree
so that further reguator drivers wouldn't be broken.

But as I said, my intention is not to claim I know how to do this. On
the contrary - I have _never_ participated in maintaining a tree that
will be merged by others. So, please just let me know what you see the
best. I can do splitting the series or rebasing to regulator tree or
rebase to rc1 when it is out if required :)

Br,
	Matti

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
