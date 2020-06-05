Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D9C1F00C1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 22:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fQM/C06H1tixaxsDfL7r3mrZVOwibAEhziZqcV+IAgY=; b=KohM0SamXRyF4iDjC0btNDevD
	rmpLyroZNuioVIa9us9jSkYrNSb1ay8MK4u/LPEP4EJmMDOqxTQLZeytsdzzoWpXWysZwY6RY+Ooc
	7yTKQifItyDfzOOFlzzRhuh21LWi2+b4Vpx9r7QtJGaRaOWdj0xBMbBioqHAK9+1TrJl7yueGgYWC
	YWiaveU9WejIjN5e+PbJAq8UcYmxAQ4wobp/EPkW0ibEmUX49tU8pQzbJXApunBp7spIY4xpR46n9
	AsqWflz9xBP1QH96l51j0MTTDV4AexJ2BURr+Rwa/L4opnX+gwbDntfniALgpQlAlp7YG87JUAjqD
	JW+0CBXqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhId0-0005zu-FC; Fri, 05 Jun 2020 20:07:46 +0000
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhIct-0005z4-OF
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 20:07:41 +0000
Received: from ssl.serverraum.org (web.serverraum.org [172.16.0.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id C7B7222FEB;
 Fri,  5 Jun 2020 22:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1591387657;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=A4yi/Grhaf0w4jjGNDMnsTZ5HJKkIfL4Ymq6vlFIb8I=;
 b=OuBQyumVx9fvWq152YNCm2zk5nOR6UzVoQFWmfvSoHap0daT70FokziRiSbd6uS36mmPq6
 G+e8cV1FzWm9bwj7zpeF8fVaVmGgJnv9KD/GT5DtDfSlaIe9MSW8xvNitMyQkuNc0sFibr
 gIo1iXnMpABriffMl0K69T6+nevu00I=
MIME-Version: 1.0
Date: Fri, 05 Jun 2020 22:07:36 +0200
From: Michael Walle <michael@walle.cc>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v4 02/11] mfd: Add support for Kontron sl28cpld management
 controller
In-Reply-To: <20200605105026.GC5413@sirena.org.uk>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-3-michael@walle.cc> <20200605065709.GD3714@dell>
 <20200605105026.GC5413@sirena.org.uk>
User-Agent: Roundcube Webmail/1.4.4
Message-ID: <c5632bfab3956265e90fc2fb6c0b3cae@walle.cc>
X-Sender: michael@walle.cc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_130739_950235_0123A869 
X-CRM114-Status: GOOD (  19.49  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Marc Zyngier <maz@kernel.org>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 linux-gpio@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Am 2020-06-05 12:50, schrieb Mark Brown:
> On Fri, Jun 05, 2020 at 07:57:09AM +0100, Lee Jones wrote:
>> On Thu, 04 Jun 2020, Michael Walle wrote:
> 
>> > +	sl28cpld->regmap = devm_regmap_init_i2c(i2c, &sl28cpld_regmap_config);
>> > +	if (IS_ERR(sl28cpld->regmap))
>> > +		return PTR_ERR(sl28cpld->regmap);
> 
>> This is now a shared memory allocator and not an MFD at all.
> 
>> I'm clamping down on these type of drivers!
> 
>> Please find a better way to accomplish this.
> 
> What is the concern with this?  Looking at the patch I'm guessing the
> concern would be that the driver isn't instantiating any MFD children
> and instead requiring them to be put in the DT?
> 
>> Potentially using "simple-mfd" and "simple-regmap".
> 
>> The former already exists and does what you want.  The latter doesn't
>> yet exist, but could solve your and lots of other contributor's
>> issues.
> 
> I have no idea what you are thinking of when you say "simple-regmap" so
> it is difficult to comment.

I guess, Lee is suggesting to be able to create a regmap instance via
device tree (and populate its child nodes?). Like
   compatible = "syscon", "simple-mfd";
but for any regmap, not just MMIO.

But, there is more in my driver:
  (1) there is a version check
  (2) there is another function for which there is no suitable linux
      subsystem I'm aware of and thus which I'd like to us sysfs
      attributes for: This controller supports 16 non-volatile
      configuration bits. (this is still TBD)

I don't see what is different between this driver and for example the
gateworks-gsc.c. Just that mine doesn't use a global register set, but
local offsets and a base for each component. From a hardware
perspective its one device behind an I2C address providing different
functions across multiple driver subsystems.

Actually, I've tried to remove the devm_of_platform_populate() and
instead added the "simple-mfd" to my mfd node:
  compatible = "kontron,sl28cpld-r1", "simple-mfd";

I guess that doesn't work because the device is below the i2c bus?

-- 
-michael

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
