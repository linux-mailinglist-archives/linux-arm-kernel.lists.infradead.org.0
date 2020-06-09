Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128E51F3E65
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:38:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=L0UdHkzNIZ7K+0SfvRsVhA0VbXzlPjuMMKZ6HWDTUcQ=; b=j0FDx8pG80nFePuD9KXarPuYJ
	W3oWIkjP0kN7uzrJ9lMRtL5Jtm/WTcS9+hwY3mifQ3jALtYgXgyfojeW6viiAVjuW+3x/6rimzXsP
	EtT8VR+Zn8/vyq4bmGfwThaO42Q71NNg+Ek8w1BNXFLFnL8Ke+dd+LE4RaRpBJt/QsO+ulAZsApKm
	8P3itSamjh7BG6l61aLPaRyd3pldpaelEq6dMYmqnQW9ndaOZjCjb9RxzPhzq80NOZ5uRx8DRuOSK
	/dC6QFL9199PFih5lhYMEAHD4QcOku1V1VTSzy0qdo2UA2psV23lzkLutdW6dEzANWKXO24CFC1vY
	GEKhPxIrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifOp-0002sY-Iy; Tue, 09 Jun 2020 14:38:47 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifOd-0002s4-RR
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:38:38 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 1B4C422F2D;
 Tue,  9 Jun 2020 16:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591713512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3ZPJRQPjyIuPfU5SHFsD+L8Q03R3+eZsQvqJ5K0dqDQ=;
 b=cEH2mdWXJgiXk5AYmdHK2ORPPLW0kmX5gHUPbeGjN4COswBGwClKjt2xvIVY37IpTQHWrV
 5w99q1qD+cl6dn+sw3zbCeKnqavpkSE/lERuAHNegK905kSkxRCahqrr4BxkdtV93EcvCO
 sDDLQ2q+b/rGGOqSyyduIDIYa9RDBo8=
MIME-Version: 1.0
Date: Tue, 09 Jun 2020 16:38:31 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <20200609064735.GH4106@dell>
References: <20200605065709.GD3714@dell> <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc> <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc> <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc> <20200609064735.GH4106@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <32287ac0488f7cbd5a7d1259c284e554@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_073836_187834_74939B99 
X-CRM114-Status: GOOD (  27.92  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Thierry Reding <thierry.reding@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine-K?= =?UTF-8?Q?=C3=B6nig?=
 <u.kleine-koenig@pengutronix.de>, david.m.ertman@intel.com,
 Guenter Roeck <linux@roeck-us.net>, devicetree <devicetree@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, shiraz.saleem@intel.com,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 2020-06-09 08:47, schrieb Lee Jones:
> On Mon, 08 Jun 2020, Michael Walle wrote:
> 
>> Am 2020-06-08 20:56, schrieb Lee Jones:
>> > On Mon, 08 Jun 2020, Michael Walle wrote:
>> >
>> > > Am 2020-06-08 12:02, schrieb Andy Shevchenko:
>> > > > +Cc: some Intel people WRT our internal discussion about similar
>> > > > problem and solutions.
>> > > >
>> > > > On Mon, Jun 8, 2020 at 11:30 AM Lee Jones <lee.jones@linaro.org> wrote:
>> > > > > On Sat, 06 Jun 2020, Michael Walle wrote:
>> > > > > > Am 2020-06-06 13:46, schrieb Mark Brown:
>> > > > > > > On Fri, Jun 05, 2020 at 10:07:36PM +0200, Michael Walle wrote:
>> > > > > > > > Am 2020-06-05 12:50, schrieb Mark Brown:
>> > > >
>> > > > ...
>> > > >
>> > > > > Right.  I'm suggesting a means to extrapolate complex shared and
>> > > > > sometimes intertwined batches of register sets to be consumed by
>> > > > > multiple (sub-)devices spanning different subsystems.
>> > > > >
>> > > > > Actually scrap that.  The most common case I see is a single Regmap
>> > > > > covering all child-devices.
>> > > >
>> > > > Yes, because often we need a synchronization across the entire address
>> > > > space of the (parent) device in question.
>> > > >
>> > > > >  It would be great if there was a way in
>> > > > > which we could make an assumption that the entire register address
>> > > > > space for a 'tagged' (MFD) device is to be shared (via Regmap) between
>> > > > > each of the devices described by its child-nodes.  Probably by picking
>> > > > > up on the 'simple-mfd' compatible string in the first instance.
>> > > > >
>> > > > > Rob, is the above something you would contemplate?
>> > > > >
>> > > > > Michael, do your register addresses overlap i.e. are they intermingled
>> > > > > with one another?  Do multiple child devices need access to the same
>> > > > > registers i.e. are they shared?
>> > >
>> > > No they don't overlap, expect for maybe the version register, which is
>> > > just there once and not per function block.
>> >
>> > Then what's stopping you having each device Regmap their own space?
>> 
>> Because its just one I2C device, AFAIK thats not possible, right?
> 
> Not sure what (if any) the restrictions are.

You can only have one device per I2C address. Therefore, I need one 
device
which is enumerated by the I2C bus, which then enumerates its 
sub-devices.
I thought this was one of the use cases for MFD. (Regardless of how a
sub-device access its registers). So even in the "simple-regmap" case 
this
would need to be an i2c device.

E.g.

&i2cbus {
   mfd-device@10 {
     compatible = "simple-regmap", "simple-mfd";
     reg = <10>;
     regmap,reg-bits = <8>;
     regmap,val-bits = <8>;
     sub-device@0 {
       compatible = "vendor,sub-device0";
       reg = <0>;
     };
     ...
};

Or if you just want the regmap:

&soc {
   regmap: regmap@fff0000 {
     compatible = "simple-regmap";
     reg = <0xfff0000>;
     regmap,reg-bits = <16>;
     regmap,val-bits = <32>;
   };

   enet-which-needs-syscon-too@1000000 {
     vendor,ctrl-regmap = <&regmap>;
   };
};

Similar to the current syscon (which is MMIO only..).

-michael

> 
> I can't think of any reasons why not, off the top of my head.
> 
> Does Regmap only deal with shared accesses from multiple devices
> accessing a single register map, or can it also handle multiple
> devices communicating over a single I2C channel?
> 
> One for Mark perhaps.
> 
>> > The issues I wish to resolve using 'simple-mfd' are when sub-devices
>> > register maps overlap and intertwine.
> 
> [...]
> 
>> > > > > What do these bits configure?
>> > >
>> > > - hardware strappings which have to be there before the board powers
>> > > up,
>> > >   like clocking mode for different SerDes settings
>> > > - "keep-in-reset" bits for onboard peripherals if you want to save
>> > > power
>> > > - disable watchdog bits (there is a watchdog which is active right
>> > > from
>> > >   the start and supervises the bootloader start and switches to
>> > > failsafe
>> > >   mode if it wasn't successfully started)
>> > > - special boot modes, like eMMC, etc.
>> > >
>> > > Think of it as a 16bit configuration word.
>> >
>> > And you wish for users to be able to view these at run-time?
>> 
>> And esp. change them.
>> 
>> > Can they adapt any of them on-the-fly or will the be RO?
>> 
>> They are R/W but only will only affect the board behavior after a 
>> reset.
> 
> I see.  Makes sense.  This is board controller territory.  Perhaps
> suitable for inclusion into drivers/soc or drivers/platform.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
