Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 145A31F3F99
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 17:40:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BBCAazRxfr2oGFQJedq+N+bTm8aZouyt41pCVXVhUJ4=; b=ILlwh+xvBgUumzZc6SvNOIJ47
	GPaTx9QaqAKKZeveibH9BmEsNk4kyO/YAZ9aBffI9bqT2wVOWDtTlUfckFCBI9erUxBDWUgWhw6r1
	BARwCwy/bb7FXxJqLdFmd0LBEnOGPQSZPfm8CU/wqwIle4EDa8ql/mJe+/B2DXgcTkpJF5hkwWrx3
	Sl2LYUBW9cgTYnIZo8H3qaPVoleN0zgsEqQnOwcxgwmTZsF0CS069UYfISOpIOLhkV5VdJkRlp6ua
	qHZXukriS1aeYtVVXrme4cF0TL1W5bImSA0bmCl6WUnHcfmgWoJ19OBZg1XOpF3ZOACaVikG9V0k8
	tgR88Wqcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jigMX-0004EW-9c; Tue, 09 Jun 2020 15:40:29 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jigMD-0001pw-Ld
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 15:40:12 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id C2CE522F54;
 Tue,  9 Jun 2020 17:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591716613;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5fW2eer9+yY8UigSBRZj7sU8vGtoK3CaYKgnjiJ9Ftc=;
 b=Jsr8QG9bQvMRxi+JC3zJF6oiNPIPFthDgRXmHE3KezcDNOYyGUNV5OAImGBlHMGL5NTMyg
 H61bpzBx9wXe1ekcEpZqZYGS5xGzM6j4pfJFpVrh2WZlKjhi6EkYz4iooa0zHfzpMmPgpi
 Bv61N/8jh4hOE6c5nIppCvTW9O67BKs=
MIME-Version: 1.0
Date: Tue, 09 Jun 2020 17:30:06 +0200
From: Michael Walle <michael@walle.cc>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <20200609151941.GM4106@dell>
References: <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
 <20200606114645.GB2055@sirena.org.uk>
 <dc052a5c77171014ecc465b1da8b7ef8@walle.cc> <20200608082827.GB3567@dell>
 <CAHp75VdiH=J-ovCdh1RFJDW_bJM8=pbXRaHmB691GLb-5oBmYQ@mail.gmail.com>
 <7d7feb374cbf5a587dc1ce65fc3ad672@walle.cc> <20200608185651.GD4106@dell>
 <32231f26f7028d62aeda8fdb3364faf1@walle.cc> <20200609064735.GH4106@dell>
 <32287ac0488f7cbd5a7d1259c284e554@walle.cc> <20200609151941.GM4106@dell>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <95e6ec9bbdf6af7a9ff9c31786f743f2@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_084010_085846_849076EA 
X-CRM114-Status: GOOD (  24.57  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
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

Am 2020-06-09 17:19, schrieb Lee Jones:
> On Tue, 09 Jun 2020, Michael Walle wrote:
> 
>> Am 2020-06-09 08:47, schrieb Lee Jones:
>> > On Mon, 08 Jun 2020, Michael Walle wrote:
>> >
>> > > Am 2020-06-08 20:56, schrieb Lee Jones:
>> > > > On Mon, 08 Jun 2020, Michael Walle wrote:
>> > > >
>> > > > > Am 2020-06-08 12:02, schrieb Andy Shevchenko:
>> > > > > > +Cc: some Intel people WRT our internal discussion about similar
>> > > > > > problem and solutions.
>> > > > > >
>> > > > > > On Mon, Jun 8, 2020 at 11:30 AM Lee Jones <lee.jones@linaro.org> wrote:
>> > > > > > > On Sat, 06 Jun 2020, Michael Walle wrote:
>> > > > > > > > Am 2020-06-06 13:46, schrieb Mark Brown:
>> > > > > > > > > On Fri, Jun 05, 2020 at 10:07:36PM +0200, Michael Walle wrote:
>> > > > > > > > > > Am 2020-06-05 12:50, schrieb Mark Brown:
>> > > > > >
>> > > > > > ...
>> > > > > >
>> > > > > > > Right.  I'm suggesting a means to extrapolate complex shared and
>> > > > > > > sometimes intertwined batches of register sets to be consumed by
>> > > > > > > multiple (sub-)devices spanning different subsystems.
>> > > > > > >
>> > > > > > > Actually scrap that.  The most common case I see is a single Regmap
>> > > > > > > covering all child-devices.
>> > > > > >
>> > > > > > Yes, because often we need a synchronization across the entire address
>> > > > > > space of the (parent) device in question.
>> > > > > >
>> > > > > > >  It would be great if there was a way in
>> > > > > > > which we could make an assumption that the entire register address
>> > > > > > > space for a 'tagged' (MFD) device is to be shared (via Regmap) between
>> > > > > > > each of the devices described by its child-nodes.  Probably by picking
>> > > > > > > up on the 'simple-mfd' compatible string in the first instance.
>> > > > > > >
>> > > > > > > Rob, is the above something you would contemplate?
>> > > > > > >
>> > > > > > > Michael, do your register addresses overlap i.e. are they intermingled
>> > > > > > > with one another?  Do multiple child devices need access to the same
>> > > > > > > registers i.e. are they shared?
>> > > > >
>> > > > > No they don't overlap, expect for maybe the version register, which is
>> > > > > just there once and not per function block.
>> > > >
>> > > > Then what's stopping you having each device Regmap their own space?
>> > >
>> > > Because its just one I2C device, AFAIK thats not possible, right?
>> >
>> > Not sure what (if any) the restrictions are.
>> 
>> You can only have one device per I2C address. Therefore, I need one 
>> device
>> which is enumerated by the I2C bus, which then enumerates its 
>> sub-devices.
>> I thought this was one of the use cases for MFD. (Regardless of how a
>> sub-device access its registers). So even in the "simple-regmap" case 
>> this
>> would need to be an i2c device.

Here (see below)

>> 
>> E.g.
>> 
>> &i2cbus {
>>   mfd-device@10 {
>>     compatible = "simple-regmap", "simple-mfd";
>>     reg = <10>;
>>     regmap,reg-bits = <8>;
>>     regmap,val-bits = <8>;
>>     sub-device@0 {
>>       compatible = "vendor,sub-device0";
>>       reg = <0>;
>>     };
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
> 
> We do not need a 'simple-regmap' solution for your use-case.
> 
> Since your device's registers are segregated, just split up the
> register map and allocate each sub-device with it's own slice.

I don't get it, could you make a device tree example for my
use-case? (see also above)

-michael

> 
>> > I can't think of any reasons why not, off the top of my head.
>> >
>> > Does Regmap only deal with shared accesses from multiple devices
>> > accessing a single register map, or can it also handle multiple
>> > devices communicating over a single I2C channel?
>> >
>> > One for Mark perhaps.

-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
