Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF7319F31B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XzwaOie11aJ7oGruS557ZFVEqz/ZDMZjuUyJL8ZsKg8=; b=XUPs9X2ZCXp3JX
	dDqFC7SVMbs1U36wem2pPCbbO05mnx9KsqmDPVe7NJDR/Rh4GWJyBYWJP/1x+ZCsgu6z7JZbYJmLC
	3F5gApa3H/Bhd7Sj4/lqpaOp9Duv49sdqk6XJgggWhSQYJNwhOV5aRhOYGRUSJWSeKYeU/L/5545N
	RtLmGZ8uJsHU6m1ibHXfiOGHsAsxfEFTfVnk8vbMPhpD7FgKaMqWS/p0CAUAICWg8rF0jl0tEmzZ9
	7BpHEs6rAlA22KeE4eJw6FBJeC5kMBBBzuSweNUi1N4nbj2QwqKG1rY6FGsfF5A0wm3DKM/rbMkvO
	4MH86tx0ykEWyjFiqmlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLOXR-0005vt-Sw; Mon, 06 Apr 2020 09:59:29 +0000
Received: from mailgate1.rohmeurope.com ([87.129.152.131])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLOXI-0005uZ-Lk; Mon, 06 Apr 2020 09:59:22 +0000
X-AuditID: c0a8fbf4-473ff70000004419-d0-5e8afd75cde5
Received: from smtp.reu.rohmeu.com (will-cas001.reu.rohmeu.com
 [192.168.251.177])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 27.3D.17433.57DFA8E5; Mon,  6 Apr 2020 11:59:17 +0200 (CEST)
Received: from WILL-MAIL001.REu.RohmEu.com ([fe80::2915:304f:d22c:c6ba]) by
 WILL-CAS001.REu.RohmEu.com ([fe80::d57e:33d0:7a5d:f0a6%16]) with mapi id
 14.03.0487.000; Mon, 6 Apr 2020 11:59:05 +0200
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "sebastian.reichel@collabora.com" <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v8 09/10] power: supply: Support ROHM bd99954 charger
Thread-Topic: [PATCH v8 09/10] power: supply: Support ROHM bd99954 charger
Thread-Index: AQHWCZSbKj2cmrJL+U+GBPNSQgTBAqhpvjOAgAIBK4A=
Date: Mon, 6 Apr 2020 09:59:04 +0000
Message-ID: <334ae92d62a32675bc18f331c9981e169e33e5e0.camel@fi.rohmeurope.com>
References: <cover.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <10b40f9bca727e790d891f6442a879bfeca68624.1585902279.git.matti.vaittinen@fi.rohmeurope.com>
 <20200405032233.btlwo5wvzmrrw65k@earth.universe>
In-Reply-To: <20200405032233.btlwo5wvzmrrw65k@earth.universe>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [62.78.225.252]
Content-ID: <6785965BAD2C094A829E9DBBECE6AE2E@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01TbUwTZxzPc3ftHehtZ8XxULclNDOoG6CRuH8Wt5jMzZMoIyFxycxgxzha
 MmhJX4xsWSAqU0pA0IJQCyNIZ0UEKdGhQzGkCS9DOiby4toPvGQT2CBjgAgydken8On5Pf/f
 2/Ph/zCk6k9azaTpzaJRL6RrlMHUfddSY6Rl2Zq4q8GrBOe0k4Se0SUK7N1OCgpnqkkoOHmR
 AI9jjoTGsgYFzOT0kTBb0UXBz61TFPQOXiChZHhMCX25bgTfe3oUcOpygxIcrixYGZlUQPnZ
 bPhpspYAr/cGDfN9ZwmwPb9CgHu0XwHFrQ9oeHjHoYSHp3oRXKo5R8E/BR4EZd57BIx7FhA4
 B3oJOHl6DzicHRI53aqAitkSEv7yXZTqy7wk5N710NDrmiXAPxkHd3N7SWhyS4rWvli47esg
 4Vmbl9gfyddV1iF+fu48xU8P5tJ8Zd03fLO/BvE3Rq4peNdMNP/Yl83ftvtpvspt4ZtcO/nv
 nh3nn9S5ad5dm6fkff0tSn6qp4eOD/tsw75kwXw8IU2rj/7giw06Z/68ItOBT3jODRM5qDvU
 ioIYzMVgj99PW1Ewo+L6Eb7W94AIXNoRXiyclhiGUXL7sHVoFYZwB3G5jZclJGcNwc1jjwh5
 vpk7hG1/GAOSWGzrOijHh3DvYVvneULGFPcWHqwpJWUJy8XhujxtoGgA4SZ/MS1rgrj3cf2F
 9lWMuDdwXs7UqpfkQrH796eKwJM5XNPiJQN4Cx4f/ff/eTj+8Wk9JeeT3A7ccCc6YN2Pf/NV
 0gEcjm35w6uY5TbhzvIxqgi9Zl/XYF9z29e57evc9nXuKqSoRThDSEvXCmZxd5RRtEQZDboM
 6fjSkOFGge2dbUYrbYfaEMGgNhTGEJotbMkTa6LqlWRDSpZOMOmSjJZ00dSGMENqQlh1QV6i
 ik0Rsr4WjYYX1FaG0oSyEcPFn6s4uesrUcwUjS/Y1xlGg9nmJSl0k1HUiidS09LNazTBBMnh
 weoQk6hPEY2CxaxLkpcjySRth0xtlHpNi5KdNWUKGdI0YO1CbzNF4xXVJOOpcFaTKkpv0Ivq
 UPbN55KUk6U6i/5l0QQKZZBmM5stv2Oj9IVf5kxIFYRUodSfkSvMwhqlzkFV9Z27oqYmRtJi
 mhpHtiYh7aOFiANHt+mv3tt7xT9w89OuqyX5qR2lmbFTo77Cv8/YEzKOXdoedjNmqJVdiDR1
 F7WrPy69PlYfv3RkuWWx9LI/anvcragfEva+azlyeujAh5OfRBQN7Pnol3dSV8LjH1+/n334
 Vd2vy8mDsKPC+e2xW2hOQ5l0wu6dpNEk/AeeDufYfwQAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_025920_862385_54F34B03 
X-CRM114-Status: GOOD (  16.59  )
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
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Sun, 2020-04-05 at 05:22 +0200, Sebastian Reichel wrote:
> Hi,
> 
> On Fri, Apr 03, 2020 at 11:48:05AM +0300, Matti Vaittinen wrote:
> > The ROHM BD99954 is a Battery Management LSI for 1-4 cell Lithium-
> > Ion
> > secondary battery intended to be used in space-constraint equipment
> > such
> > as Low profile Notebook PC, Tablets and other applications. BD99954
> > provides a Dual-source Battery Charger, two port BC1.2 detection
> > and a
> > Battery Monitor.
> > 
> > Support ROHM BD99954 Charger IC.
> > 
> > Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> > ---
> > 
> > No changes since v7
> 
> Thanks, the drivers looks mostly good to me, I found some minor
> things. Please fix before sending the next (and hopefully final)
> revision.

I will :) Thanks for all the effort when doing the review. Much
appreciated! And I'll rebase and send the next version after v5.7-rc1
gets tagged. I'll fix these at that version.

> 
> >  drivers/power/supply/Kconfig           |    9 +
> >  drivers/power/supply/Makefile          |    1 +
> >  drivers/power/supply/bd99954-charger.c | 1149
> > ++++++++++++++++++++++++
> >  include/linux/power/bd99954-charger.h  | 1075
> > ++++++++++++++++++++++
> 
> Please move this header to drivers/power/supply/, the public
> include directory is only needed for platform_data and MFD.
> 
 
Makes sense.

> > +	dev_info(bd->dev, "Found DB99954 chip rev %d\n", bd->chip_rev);
> 
> DB -> BD?

Right. Well spotted :)

> > +
> > +static int bd9995x_remove(struct i2c_client *client)
> > +{
> > +	int ret;
> > +	struct bd9995x_device *bd = i2c_get_clientdata(client);
> > +
> > +	disable_irq(client->irq);
> > +
> > +	/*
> > +	 * Reset all registers to default values. This should also
> > disable
> > +	 * CHG_EN bit. If this is not required we can get rid of the
> > remove.
> > +	 */
> > +	ret = bd9995x_chip_reset(bd);
> 
> You can register this using devm_add_action_or_reset() before the
> devm_request_threaded_irq() call in probe and get rid of the remove
> function :)

Yep! That was a good point! I think I had never used
devm_add_action_or_reset() - this is a handy thing for my toolbox! :)

Best Regards
	Matti Vaittinen
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
