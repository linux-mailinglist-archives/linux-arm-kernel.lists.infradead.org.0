Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E091F3ED0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bO0EgJUhiTyruu/tHfRdkQE+C6n1p3dT2bTQQzY9wgQ=; b=i99nxq3qDbGIjBoZe0NNIMArX
	xpwE4/SQL95Ju9skkRVHStL1oG/QxvM6EPvyvEVLEsyIegY37U9elT0xA0RKOp/FA9AJktN2wxjJE
	ftCpeM1mcmvSQ/2lxSV2ElXgGr4ffqj/7b9t12nw0tPwH6QCVeTx9HEwhbfX8AEEYtRw2W0J6L8Mu
	HR2AJhtPKlD/NBtvMArr0zkCqHbPvqVvpcotv8v/QEyKxqyd0OCb44LT3yAKhfdhA2W1uWYFlxQm8
	Dgvwuq8aixTFVmOX/62DIPzALnbkyhonSnWBasjrP5ovq3FWUdtwGIY1ZtN90hzFnb1wZ2WWcCYut
	e6jy1LtaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifm8-00023g-Pr; Tue, 09 Jun 2020 15:02:52 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifkg-0001s5-Ch
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:01:25 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id ECD3222F2D;
 Tue,  9 Jun 2020 17:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591714878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aMjIHhTy6QW0P3MAj5LndzKCaO3yMkaVaezROboWYDQ=;
 b=euAsn1+18dDVaj3N75vATYwEPsegHDppC2VkD83JeqzT2R996iBd9IREmPEKKWtU3l6Y87
 FIevxYAgjKLBLJOEfvarLgLrdMoq2oGSqGMdyVuvbdXSk4KVSd+kZBW/cn+mGMxySwB626
 jCO4U5VjZWc1OyJMGDZeHKyJ7fca1Ik=
MIME-Version: 1.0
Date: Tue, 09 Jun 2020 17:01:17 +0200
From: Michael Walle <michael@walle.cc>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <20200609144201.GK4583@sirena.org.uk>
References: <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc> <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc> <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc> <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
 <20200609144201.GK4583@sirena.org.uk>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <a2bae71634fe288f067d5e92090b7561@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_080123_549113_87E58503 
X-CRM114-Status: GOOD (  23.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K?= =?UTF-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, david.m.ertman@intel.com,
 Guenter Roeck <linux@roeck-us.net>, devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 "open list:GPIO
 SUBSYSTEM" <linux-gpio@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-09 16:42, schrieb Mark Brown:
> On Tue, Jun 09, 2020 at 04:38:31PM +0200, Michael Walle wrote:
> 
>>   mfd-device@10 {
>>     compatible = "simple-regmap", "simple-mfd";
>>     reg = <10>;
>>     regmap,reg-bits = <8>;
>>     regmap,val-bits = <8>;
>>     sub-device@0 {
>>       compatible = "vendor,sub-device0";
>>       reg = <0>;
>>     };
> 
> A DT binding like this is not a good idea, encoding the details of the
> register map into the DT binding makes it an ABI which is begging for
> trouble.  I'd also suggest that any device using a generic driver like
> this should have a specific compatible string for the device so we can
> go back and add quirks later if we need them.

Like in the spidev case, yes. But OTOH if I _just_ encode the parameters
for the regmap a MFD, Lee don't agree because its just a shim. So either
way I seem to be stuck here.

Where should I put the code to create an i2c driver, init a regmap and
populate its childen?

-michael

> 
>>     ...
>> };
>> 
>> Or if you just want the regmap:
>> 
>> &soc {
>>   regmap: regmap@fff0000 {
>>     compatible = "simple-regmap";
>>     reg = <0xfff0000>;
>>     regmap,reg-bits = <16>;
>>     regmap,val-bits = <32>;
>>   };
>> 
>>   enet-which-needs-syscon-too@1000000 {
>>     vendor,ctrl-regmap = <&regmap>;
>>   };
>> };
>> 
>> Similar to the current syscon (which is MMIO only..).
>> 
>> -michael
>> 
>> >
>> > I can't think of any reasons why not, off the top of my head.
>> >
>> > Does Regmap only deal with shared accesses from multiple devices
>> > accessing a single register map, or can it also handle multiple
>> > devices communicating over a single I2C channel?
>> >
>> > One for Mark perhaps.
>> >
>> > > > The issues I wish to resolve using 'simple-mfd' are when sub-devices
>> > > > register maps overlap and intertwine.
>> >
>> > [...]
>> >
>> > > > > > > What do these bits configure?
>> > > > >
>> > > > > - hardware strappings which have to be there before the board powers
>> > > > > up,
>> > > > >   like clocking mode for different SerDes settings
>> > > > > - "keep-in-reset" bits for onboard peripherals if you want to save
>> > > > > power
>> > > > > - disable watchdog bits (there is a watchdog which is active right
>> > > > > from
>> > > > >   the start and supervises the bootloader start and switches to
>> > > > > failsafe
>> > > > >   mode if it wasn't successfully started)
>> > > > > - special boot modes, like eMMC, etc.
>> > > > >
>> > > > > Think of it as a 16bit configuration word.
>> > > >
>> > > > And you wish for users to be able to view these at run-time?
>> > >
>> > > And esp. change them.
>> > >
>> > > > Can they adapt any of them on-the-fly or will the be RO?
>> > >
>> > > They are R/W but only will only affect the board behavior after a
>> > > reset.
>> >
>> > I see.  Makes sense.  This is board controller territory.  Perhaps
>> > suitable for inclusion into drivers/soc or drivers/platform.

-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
