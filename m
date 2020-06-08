Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A18F41F214F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 23:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kmujb4BS2pd0NTic+0QZZSkbrzVx5NcHPB0AsKjWV/k=; b=P65TqUPhCebH73yOQw1xkOgEg
	GsKwaZRZJe10msM7bDo1A9bN24BmgchRboyqzRxVlJkdV8DCCN5d1IdCE17da+vWdJURWmIdSipOu
	O0v36Fic4mK8QweDamOIPokDbRW9RnDSxfZTOUzqHAL9y9AbeDND4s/hp1XllX6h7/TLVf/v6Zj4H
	8/v4J36OM0SoAhlnbP14+PLCOFRZWe542OgS7slkpjc3EcGQjcSAzWC+/BGoziIMwZAoOXZPG1U9G
	d+U+HQq/B2aVjJQoW1A/aWukwCA6LcrdJbEHHMMbl+CZGgs0MkEM1nrg1ap7qCTzWfCH9YHazWTWV
	r4XKTacHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiP19-0004gH-DI; Mon, 08 Jun 2020 21:09:15 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiP10-0004e4-VR
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 21:09:09 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 3DA9322EE4;
 Mon,  8 Jun 2020 23:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591650543;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=2o+gSIhCA0jJNy2hw5k+4oXmbqw0ZtEPZKBPuFUvEFQ=;
 b=fAUewLH+4d6OiOYXWhfJBtFX0y8jTLo61f7QVJVPY5w3zbVLy6w8N0q47/HwuL6JeT5Cwb
 jdzU0mv2Z36vbI9tUGCmrDNWaQN67/ZcVBodL1hm/WCnRQBJ5dfS8s6gWbpYPAclh3wi6r
 +U2nnX3dLFvpKaYmQH72ZqqNv0hmuts=
MIME-Version: 1.0
Date: Mon, 08 Jun 2020 23:09:01 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <20200608185651.GD4106@dell>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc> <20200605065709.GD3714@dell>
 <20200605105026.GC5413@sirena.org.uk>
 <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc> <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc> <20200608185651.GD4106@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <32231f26f7028d62aeda8fdb3364faf1@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_140907_311815_8875832F 
X-CRM114-Status: GOOD (  38.55  )
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

Am 2020-06-08 20:56, schrieb Lee Jones:
> On Mon, 08 Jun 2020, Michael Walle wrote:
> 
>> Am 2020-06-08 12:02, schrieb Andy Shevchenko:
>> > +Cc: some Intel people WRT our internal discussion about similar
>> > problem and solutions.
>> >
>> > On Mon, Jun 8, 2020 at 11:30 AM Lee Jones <lee.jones@linaro.org> wrote:
>> > > On Sat, 06 Jun 2020, Michael Walle wrote:
>> > > > Am 2020-06-06 13:46, schrieb Mark Brown:
>> > > > > On Fri, Jun 05, 2020 at 10:07:36PM +0200, Michael Walle wrote:
>> > > > > > Am 2020-06-05 12:50, schrieb Mark Brown:
>> >
>> > ...
>> >
>> > > Right.  I'm suggesting a means to extrapolate complex shared and
>> > > sometimes intertwined batches of register sets to be consumed by
>> > > multiple (sub-)devices spanning different subsystems.
>> > >
>> > > Actually scrap that.  The most common case I see is a single Regmap
>> > > covering all child-devices.
>> >
>> > Yes, because often we need a synchronization across the entire address
>> > space of the (parent) device in question.
>> >
>> > >  It would be great if there was a way in
>> > > which we could make an assumption that the entire register address
>> > > space for a 'tagged' (MFD) device is to be shared (via Regmap) between
>> > > each of the devices described by its child-nodes.  Probably by picking
>> > > up on the 'simple-mfd' compatible string in the first instance.
>> > >
>> > > Rob, is the above something you would contemplate?
>> > >
>> > > Michael, do your register addresses overlap i.e. are they intermingled
>> > > with one another?  Do multiple child devices need access to the same
>> > > registers i.e. are they shared?
>> 
>> No they don't overlap, expect for maybe the version register, which is
>> just there once and not per function block.
> 
> Then what's stopping you having each device Regmap their own space?

Because its just one I2C device, AFAIK thats not possible, right?

> The issues I wish to resolve using 'simple-mfd' are when sub-devices
> register maps overlap and intertwine.
> 
>> > > > > > But, there is more in my driver:
>> > > > > >  (1) there is a version check
>> > >
>> > > If we can rid the Regmap dependency, then creating an entire driver to
>> > > conduct a version check is unjustifiable.  This could become an inline
>> > > function which is called by each of the sub-devices instead, for
>> > > example.
>> 
>> sounds good to me. (although there would then be a probe fail per 
>> sub-device
>> if the version is not supported)
> 
> I don't see an issue with that.  I would put that check inside a
> shared call though, complete with support for locking.
> 
>> > > > > >  (2) there is another function for which there is no suitable linux
>> > > > > >      subsystem I'm aware of and thus which I'd like to us sysfs
>> > > > > >      attributes for: This controller supports 16 non-volatile
>> > > > > >      configuration bits. (this is still TBD)
>> > >
>> > > There is a place for everything in Linux.
>> > >
>> > > What do these bits configure?
>> 
>> - hardware strappings which have to be there before the board powers 
>> up,
>>   like clocking mode for different SerDes settings
>> - "keep-in-reset" bits for onboard peripherals if you want to save 
>> power
>> - disable watchdog bits (there is a watchdog which is active right 
>> from
>>   the start and supervises the bootloader start and switches to 
>> failsafe
>>   mode if it wasn't successfully started)
>> - special boot modes, like eMMC, etc.
>> 
>> Think of it as a 16bit configuration word.
> 
> And you wish for users to be able to view these at run-time?

And esp. change them.

> Can they adapt any of them on-the-fly or will the be RO?

They are R/W but only will only affect the board behavior after a reset.

-michael

> 
>> > > > > TBH I'd also say that the enumeration of the subdevices for this
>> > > > > device should be in the device rather than the DT, they don't
>> > > > > seem to be things that exist outside of this one device.
>> > > >
>> > > > We're going circles here, formerly they were enumerated in the MFD.
>> > > > Yes, they are devices which aren't likely be used outside a
>> > > > "sl28cpld", but there might there might be other versions of the
>> > > > sl28cpld with other components on different base addresses. I
>> > > > don't care if they are enumerated in DT or MFD, actually, I'd
>> > > > prefer the latter. _But_ I would like to have the device tree
>> > > > properties for its subdevices, e.g. the ones for the watchdog or
>> > > > whatever components there might be in the future.
>> > >
>> > > [...]
>> > >
>> > > > MFD core can
>> > > > match a device tree node today; but only one per unique compatible
>> > > > string. So what should I use to differentiate the different
>> > > > subdevices?
>> > >
>> > > Right.  I have been aware of this issue.  The only suitable solution
>> > > to this would be to match on 'reg'.
>> 
>> see below (1)
>> 
>> > >
>> > > FYI: I plan to fix this.
>> > >
>> > > If your register map needs to change, then I suggest that this is
>> > > either a new device or at least a different version of the device and
>> > > would also have to be represented as different (sub-)mfd_cell.
>> > >
>> > > > Rob suggested the internal offset, which I did here.
>> > >
>> > > FWIW, I don't like this idea.  DTs should not have to be modified
>> > > (either in the first instance or subsequently) or specifically
>> > > designed to patch inadequacies in any given OS.
>> 
>> How does (1) play together with this? What do you propose the "reg"
>> property should contain?
> 
> Whatever is in the 'reg' property contained in the Device Tree node.
> Either the full address or an offset would be suitable.
> 
> Caveat: All this thinking has been done on-the-fly.  I would need to
> look at some examples of existing devices and start coding before I
> could really think the solution through.
> 
> Happy to discuss and/or take recommendations though.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
