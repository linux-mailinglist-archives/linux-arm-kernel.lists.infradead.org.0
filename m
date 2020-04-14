Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0484E1A782F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/JoIStrLzfaM5lfScfdU11m7dUHDDQ8xJ01uxJYrUw=; b=EGKwyy2+vMlCHp
	2gpQO0yOxXJUS3rFgaW6QNQyqYVEh8MDpfFXnB8GJ7EqM5SHi4OsqEUVWgGOz0Cg/bkOyP5N1P3V6
	sIDoDoE0o7dTxose0h4lK1Yk3O1XK0jaYurpzn0FKYj/SjpL894Q31jz9NTTzQXbsOcq9Rgs55sKh
	tE8f4vUY2GnpUVPaiaou9w6LWJxMuwsi+XjrBe8Zl8nBUzE0VqxDc4c+WXG1lNfehDcGQLlv1sD2/
	NAaJRxh1UWSvwhWfiOvY4tdXJzqyYwaOyJ5GCFeZXYZ1WsOqwVlnn1PfPYg75VXdOZrzHyBPlAX+Q
	lT4JEtZp23poVi+LY62g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOIYA-0003Mc-Nc; Tue, 14 Apr 2020 10:12:14 +0000
Received: from mailgate1.rohmeurope.com ([87.129.152.131])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIY2-0003L0-Nl; Tue, 14 Apr 2020 10:12:08 +0000
X-AuditID: c0a8fbf4-473ff70000004419-ef-5e958c71640c
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com
 [192.168.251.178])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 C2.CC.17433.17C859E5; Tue, 14 Apr 2020 12:12:01 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0487.000; Tue, 14 Apr 2020 12:11:55 +0200
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v9 05/10] power: supply: bd70528: use linear ranges
Thread-Topic: [PATCH v9 05/10] power: supply: bd70528: use linear ranges
Thread-Index: AQHWEjNQTfvYVFoaLE6wmcOy1koGYKh4OV6AgAAK9QA=
Date: Tue, 14 Apr 2020 10:11:52 +0000
Message-ID: <2a3084ea1e7ec6a2328a2e79a31654e0cbb5c5b5.camel@fi.rohmeurope.com>
References: <cover.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
 <8dcf498134adb09d88bd16138cdce65e9ffa0bb6.1586849281.git.matti.vaittinen@fi.rohmeurope.com>
 <20200414093243.GI34613@smile.fi.intel.com>
In-Reply-To: <20200414093243.GI34613@smile.fi.intel.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.78.225.252]
Content-ID: <6417553A40A7734CAA6C938ED739F6BB@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02TbUxTZxTH89x7215eulwKrs/qNLGJmy8TJNuHE2aY2T54nWTZ4pJlJhMu
 4442oy3rC5Htg40OB3U4UAila9GAnRU7q+XDBMWargmFAl2VMUYwC7Q6kAAGEGU63L2rCp+e
 k/P//8/vfDgPTSpmZCpaqzfzRj1XppamUjc8j/07vvq+8eDOc3fSwD3nJmEw/pgCR7+bghPz
 rSTUHmkiIOR8QMJlu08C89YhEhZdfRREArMUxEZOkdA4npDCUJUfwenQoASOtvmk4PRUwtOJ
 aQk0Vx+Gq9PtBESjl2SwNFRNQMOTcwT448MSqA8MyOBWl1MKt47GEPx49gcKFmpDCOzR6wRM
 hR4hcP8RI+DIt2+C0x0WxLmABFyLjSTMjDUJeHuUhKrukAxinkUCIlfN0F0VI6HDLzgCQ+9D
 51iYhOVglNi9g/W2eBG79OAkxc6NVMnYFu837KWJCxLWM5/Djo4dZjsdt2XsGb+F7fBsY48t
 V7CTXr+M9bfXSNmx4WtSdnZwUEj1fvQhPpC2q5gzV+zXlupz8ovSNOM1bUR5S8ahkz0RiRUl
 GBtKoTHzFr7z9xPKhlJpBTOMcO+VCUIUFEwYYVdngQ3RtJTZhW1/ysR2FrMP/zM7gkQ/ySQy
 8aOFE5QoZDJ7sGN+lkiaWDwd6H8WyMPxXt//HorZjH9PeKViLWc+wGP+AUkSfBPhkZoeUoSl
 MICdNzaIHsRswDXW5EySUWL/3YeS5NIMPnstSibrdXgqvvKsvwn/8vAiJY4hma3Y15WTjO7G
 t4/5ZMl6E244Pi5LrpCBe5sTVB162bGG4FhNO9akHWvSjjXpM0jSjrCO05aVcmY+N9vIW7KN
 Bo1OeD436Pwoeb6LV9DT4N4gImgURK/QhHqdPM/UeFDxUrGhpFLDmTSFRksZbwoiTJPqLLlP
 J2jyEq7ya95oeC6tpym1Uv76eP1nCkZkfcnz5bzxufoqTauxfNkmBDOMfCl/6AttmXlVJugU
 cXiqKsvE60t4I2cxawrF8yg0CfchSukCt+k7kWsq53RCNxntQ9vpuilXK0mHXO5WUkHpDXpe
 pZTvPy5YGdGqsehfgO4hJY3UmXIkqunCH34x556AIAREecEpEWHmViWVFRW98fP9i5GCFRQy
 b/mpvvbfyrte0748uwN9MpQ70Le3Jy882pF9MzRpj4cXfnNpizYXj/91nr7e1Z8eXNi+Z7mk
 ztrdFrDlTakmlhomP86I/XohNWIzbky8q56o/nTLTCdMb1Va8omKsoKpxOn5ndrLDRtXRpW2
 997Of823vvmd+2rKpOFyt5FGE/cfJ6IrMYAEAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_031206_926949_614BA71E 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hello Andy,

I do agree with everything except perhaps the necessity of leading zero
in .min_sel initialization :) And I will fix these if I need to change
something else in these files. Thanks.

Best Regards,
    --Matti

On Tue, 2020-04-14 at 12:32 +0300, Andy Shevchenko wrote:
> On Tue, Apr 14, 2020 at 11:04:21AM +0300, Matti Vaittinen wrote:
> > Change the bd70528 to use common linear_range code instead of
> > implementing a copy of it in this driver.
> 
> Couple of nits below which you can take as TODO items for the future.
> (Because maintainer is fine with it according to the tags)
> 
> ...
> 
> >  config CHARGER_BD70528
> >  	tristate "ROHM bd70528 charger driver"
> >  	depends on MFD_ROHM_BD70528
> > +	select LINEAR_RANGES
> >  	default n
> 
> At some point you can remove this kind of defaults (see [1] for the
> details).
> 
> ...
> 
> > +static const struct linear_range current_limit_ranges[] = {
> >  	{
> >  		.min = 5,
> >  		.step = 1,
> > -		.vals = 36,
> > -		.low_sel = 0,
> > +		.min_sel = 0,
> 
> Perhaps it's better to have it aligned with max_sel, i.e. be 0x00.
> Same applies to the rest of a such.
> 
> > +		.max_sel = 0x22,
> >  	},
> 
> ...
> 
> > +static const struct linear_range warm_charge_curr[] = {
> >  	{
> >  		.min = 10,
> >  		.step = 10,
> > -		.vals = 20,
> > -		.low_sel = 0,
> > +		.min_sel = 0,
> > +		.max_sel = 0x12
> 
> Perhaps leaving comma is a good thing to avoid potential churn in the
> future
> (if any of fields will be added here). Same applies to the reset of a
> such.
> 
> >  	},

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
