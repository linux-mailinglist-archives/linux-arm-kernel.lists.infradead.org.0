Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7458AFADA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 10:54:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cL8mkmvymcvJfRTlFP8jD6ZajoPVhhR3n5a1IWJ5PIQ=; b=d8iYslKtz8bk+5
	y6Li3J4xnOp0MHZm6ZeiBH7OSZr7sHJ0Trjs0ZoYBVXuEYs74VvQuyK4UAIyA2ym8r1NoGOfcWcng
	oJD4iPF9V6nuRoRG3iV60umXRxTnwceMCcHg5nmg5cGN1xhyKVW3350mZxr7etbO3GIbX6lrvXTZt
	ikN+K0XEqLjBNv8Op0jvWUwkD6wvEpH/6/rNz7OLMecvZmtqB1wGm047djMM8zcHXUEB1c/vY0Y61
	eoZGGsyZ3VJad19Cx7ZaXhhwR1OhQ97UtoAJb8z76DTD68V7XIwL2Za9JyYa3SjG0lJm9BWYBljjA
	Hcl5IqstxmZ4OrwtZKCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpLR-0005k3-Ob; Wed, 13 Nov 2019 09:53:49 +0000
Received: from mailgate1.rohmeurope.com ([178.15.145.194])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpLI-0005jF-7H; Wed, 13 Nov 2019 09:53:41 +0000
X-AuditID: c0a8fbf4-199ff70000001fa6-4f-5dcbd29e1ef3
Received: from smtp.reu.rohmeu.com (will-cas002.reu.rohmeu.com
 [192.168.251.178])
 by mailgate1.rohmeurope.com (Symantec Messaging Gateway) with SMTP id
 AB.1A.08102.E92DBCD5; Wed, 13 Nov 2019 10:53:35 +0100 (CET)
Received: from WILL-MAIL002.REu.RohmEu.com ([fe80::e0c3:e88c:5f22:d174]) by
 WILL-CAS002.REu.RohmEu.com ([fe80::fc24:4cbc:e287:8659%12]) with mapi id
 14.03.0439.000; Wed, 13 Nov 2019 10:53:30 +0100
From: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
To: "linus.walleij@linaro.org" <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Thread-Topic: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
Thread-Index: AQHVmWQOgs5cHlsmlU+Vdtkf5ZbC06eIlAaAgAAGWoCAAC7LgIAAA7CA
Date: Wed, 13 Nov 2019 09:53:29 +0000
Message-ID: <dbe9aee7fba2b1745cb09c8aa998c875f38b0f36.camel@fi.rohmeurope.com>
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
 <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
 <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
In-Reply-To: <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.255.186.46]
Content-ID: <8D9C4E9DDE4F5A4F822964BEFBCFD58A@de.rohmeurope.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Tf0wbVRzPu7tejx9HjlLggc7EJjrdwubijG/JtkD8dTNmGS7GOK14kxsl
 9gdpiykaYxmbpCVuA4mGrgxdgZF16NYyYQQHtMjqaq1rpYiUbAU2KWYlMyqpQ/BuZYO/3ue9
 z6/vH99H4bJr0kKqUmvk9VpOrSDTiaGuu66itpBf+VTITaCfZu4SqD7RKUUXZv0ABac8OOr+
 9HsC+QcTBBqqDQP0b2JEilpPNgFk76pBK9N/SFBte5hAgYYIQM1LZzDkmolIUONgQIrcbUsA
 hfvtJArXXQPIn3Ti6GI8gaE/b6zgqHHyvBRZI7MSNF83TaK57nEJOnzkaWTv8BHo1H/dEuQ5
 9ibqdX+FI7tvDKDjjhCBbra4SZRwzgL02dd70EKyBF3xWXCU9ASx4o3s4YVRkl349aiUPXXu
 Q9Z2PUCyzlA9yZ6fdkrYxkARe8k2JWUdrkGSbbMsYqxjII6xrrMWkjUPBQk2Ghkg2YaTywTr
 bv94X96BjJ0HOeP7+ysrtFt3v5OhCnsvkFXRXFP41gJuBs25VpBGQWY7XL4RwKwgnZIxYwC6
 I52rFx+ArZ1uYAUURTI7oXVCKhrkzA7o9dkJEeNMUzac9z4h4hxmF5z8JESKcjmzG7p7MlLy
 F2FzkwUTMcE8BtvPJO7F0Mxe2OYYlaSq7gA4PncTiEQaUwq/tZvv5QNmA7SYE1iqKx+6bi1K
 UkMzsH0giKdwLozPLK++K+B3yRghzoAzT8Jv+remYDH83AFTKY/C5obY6gjZ8IeWWeIEyLOt
 K7CtmW1rZts6s22d+UsgOQughqtUV3BGftsWPV+9Ra9TaYTjXZ3GBVIr+lcfWPHs8QCMAh5Q
 QGGKXLq3zq+UZR3UldeoOIOqTF+t5g0eAClcIaf7TD6ljC7naj7g9br71EMUocinN8YalTJG
 7HqP56t4/X32YYpSQPqFESE0W89X8KZDlWrjGo1RaWJ4eqHcwGvLeT1XbVSVictRZhC2Q6Qy
 hd6JnwU7bajiNMJrynoVbKZOxFtP49RIa8dpXEZodVq+MJ8uFaWMKFVVax8UzYN8Cihy6O6g
 wGYK//RBzrxQgQkVR7xXxQojt0YVmkHWI75XN/32z2uFw8+WevYnc+Z+p3+JXZ45Gl0aL4km
 zT9qPzKNqt/qTy8nlDvennzl+ERM/1LDF8NO9+X+kucUB5r6ZNc3345SFwfleduvPNPz8uPF
 BWneiZzhor1jmcOu1y/1ZD0/ZDr0RkHvbY1uV0d9X+056bE7yrhnQ9dUy9+L9UkFYVBx2zbh
 egP3P0by8N9kBAAA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_015340_415003_897A1C8A 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.15.145.194 listed in list.dnswl.org]
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>,
 "paul@crapouillou.net" <paul@crapouillou.net>,
 "eric@anholt.net" <eric@anholt.net>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>, "lkp@intel.com" <lkp@intel.com>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "sean.wang@kernel.org" <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "wahrenst@gmx.net" <wahrenst@gmx.net>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Linus,

On Wed, 2019-11-13 at 10:40 +0100, Linus Walleij wrote:
> On Wed, Nov 13, 2019 at 7:52 AM Vaittinen, Matti
> <Matti.Vaittinen@fi.rohmeurope.com> wrote:
> > On Wed, 2019-11-13 at 14:30 +0800, kbuild test robot wrote:
> > > Hi Matti,
> > > 
> > > Thank you for the patch! Perhaps something to improve:
> > > 
> > > [auto build test WARNING on
> > > 70d97e099bb426ecb3ad4bf31e88dbf2ef4b2e4c]
> > > 
> > >    480        static int wmt_gpio_get_direction(struct gpio_chip
> > > *chip, unsigned offset)
> > >    481        {
> > >    482                struct wmt_pinctrl_data *data =
> > > gpiochip_get_data(chip);
> > >    483                u32 bank = WMT_BANK_FROM_PIN(offset);
> > >    484                u32 bit = WMT_BIT_FROM_PIN(offset);
> > >    485                u32 reg_dir = data->banks[bank].reg_dir;
> > >    486                u32 val;
> > >    487
> > >    488                val = readl_relaxed(data->base + reg_dir);
> > >    489                if (val & BIT(bit))
> > >  > 490                        GPIO_LINE_DIRECTION_OUT;
> > 
> > Right. Return is missing. I think I already fixed this - I guess I
> > sent
> > wrong version... Sorry guys. I'll do v3 with only this return added

It appears I didn't send wrong patch. The whole wmt was left uncompiled
as the folder was excluded from my build by arch and I didn't spot
that. So I'll humbly raise my arm as a sign of an error ;)

> > -
> > and I'll send it to limited amount of recipients as I think most of
> > you
> > guys may not be interested. Probably to Linus W, Geert and GPIO
> > list
> > only. Let me know if you want to see the v3 (or other subsequent
> > patches)
> 
> I think I already merged it, just send a new patch on top fixing the
> problem.

Hmmm. I don't think I received notification about the patch being
applied... But in that case, please ignore v2 I sent some time ago -
I'll do a fix patch on top of the already applied one then. I'll send
it out soon(ish).

Br,
	Matti
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
