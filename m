Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8341EF8C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 15:15:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0lfwX4I08eZMgcJN0uq66KC6GYBsbqRApJXaMWDsgjQ=; b=cuES9XaQRvzFHW
	tr+Oc0YWBPR9EJ4GfY1mflLSvbOMZ0VPTiiHD1kqjLQwNTUq8iiO2FopviBMA7rzxUeJACmJVBUAr
	A/cL84ftEpm52jNz6WnkWrOrlio7elhGCaNoxXjPrH78iPshObA27JausoY53jkkk6qsWTFKcaWI7
	Kah5aMfJKzo1Oz2rZrHj6KdexcuJpSp5Ua+CU3FHx0NgUEZVngwOS+k6PoJTKJ3mA3iPUrj7LZGO0
	TXEThUixKdQjwru7/QEpjp6aVCPoP9nLhuwOZzIIS37hQnsmG2aIf+RNy82Q91FDwSDbsYE3YPv7T
	DiXQxA00H1RH8TGbsLVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhCCC-0001UY-T6; Fri, 05 Jun 2020 13:15:40 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhCC3-0001Tf-Pk
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 13:15:33 +0000
IronPort-SDR: EeFZ8ejZxIhE3bOR8BjdTNvPVVY4TGZ55Zb8OL1pjObwt2PU1Bq6h1S0i1aMltMUAWBW31a3Ay
 t5vRHndsZKgw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2020 06:15:28 -0700
IronPort-SDR: 8z64UIpITHvnMyk+hpzKUgfEq+GlBhraZiuh97RJehWFeDVXSXsoR2BA/l3B/XSSk2a/rUPVZY
 91vGmgg9lXIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,476,1583222400"; d="scan'208";a="258028176"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga007.fm.intel.com with ESMTP; 05 Jun 2020 06:15:23 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andy.shevchenko@gmail.com>)
 id 1jhCBx-00B2CL-6c; Fri, 05 Jun 2020 16:15:25 +0300
Date: Fri, 5 Jun 2020 16:15:25 +0300
From: Andy Shevchenko <andy.shevchenko@gmail.com>
To: Michael Walle <michael@walle.cc>
Subject: Re: [PATCH v4 06/11] gpio: add support for the sl28cpld GPIO
 controller
Message-ID: <20200605131525.GK2428291@smile.fi.intel.com>
References: <20200604211039.12689-1-michael@walle.cc>
 <20200604211039.12689-7-michael@walle.cc>
 <CAHp75VfRhL1f-XD=PMbqd3BLeJQzQMFAupSzqAvx0g7-X_2VhQ@mail.gmail.com>
 <216db3154b46bd80202873df055bb3f3@walle.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <216db3154b46bd80202873df055bb3f3@walle.cc>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_061531_874169_5B0B3CD4 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
 headers
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Guenter Roeck <linux@roeck-us.net>, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, linux-watchdog@vger.kernel.org,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 linux-hwmon@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 05, 2020 at 02:42:53PM +0200, Michael Walle wrote:
> Am 2020-06-05 14:00, schrieb Andy Shevchenko:
> > On Fri, Jun 5, 2020 at 12:14 AM Michael Walle <michael@walle.cc> wrote:

> > > +       return devm_regmap_add_irq_chip_np(dev, dev_of_node(dev),
> > > regmap,
> > 
> > It seems regmap needs to be converted to use fwnode.
> 
> Mhh, this _np functions was actually part of this series in the
> beginning.

Then, please, make them fwnode aware rather than OF centric.

> > > IRQF_ONESHOT, 0,
> > > +                                          irq_chip, &gpio->irq_data);

...

> > > +       dev_id = platform_get_device_id(pdev);
> > > +       if (dev_id)
> > > +               type = dev_id->driver_data;
> > 
> > Oh, no. In new code we don't need this. We have facilities to provide
> > platform data in a form of fwnode.
> 
> Ok I'll look into that.
> 
> But I already have a question, so there are of_property_read_xx(), which
> seems to be the old functions, then there is device_property_read_xx() and
> fwnode_property_read_xx(). What is the difference between the latter two?

It's easy. device_*() requires struct device to be established for this, so,
operates only against devices, while the fwnode_*() operates on pure data which
might or might not be related to any devices. If you understand OF examples
better, consider device node vs. child of such node.

...

> > > +       if (irq_support &&
> > 
> > Why do you need this flag? Can't simple IRQ number be sufficient?
> 
> I want to make sure, the is no misconfiguration. Eg. only GPIO
> flavors which has irq_support set, have the additional interrupt
> registers.

In gpio-dwapb, for example, we simple check two things: a) hardware limitation
(if IRQ is assigned to a proper port) and b) if there is any IRQ comes from DT,
ACPI, etc.

> > > +           device_property_read_bool(&pdev->dev,
> > > "interrupt-controller")) {
> > > +               irq = platform_get_irq(pdev, 0);
> > > +               if (irq < 0)
> > > +                       return irq;
> > > +
> > > +               ret = sl28cpld_gpio_irq_init(&pdev->dev, gpio, regmap,
> > > +                                            base, irq);
> > > +               if (ret)
> > > +                       return ret;
> > > +
> > > +               config.irq_domain =
> > > regmap_irq_get_domain(gpio->irq_data);
> > > +       }

...

> > > +       { .compatible = "kontron,sl28cpld-gpio",
> > > +         .data = (void *)SL28CPLD_GPIO },
> > > +       { .compatible = "kontron,sl28cpld-gpi",
> > > +         .data = (void *)SL28CPLD_GPI },
> > > +       { .compatible = "kontron,sl28cpld-gpo",
> > > +         .data = (void *)SL28CPLD_GPO },
> > 
> > All above can be twice less LOCs.
> 
> They are longer than 80 chars. Or do I miss something?

We have 100 :-)

...

> > > +               .name = KBUILD_MODNAME,
> > 
> > This actually not good idea in long term. File name can change and break
> > an ABI.
> 
> Ahh an explanation, why this is bad. Ok makes sense, although to be fair,
> .id_table should be used for the driver name matching. I'm not sure if
> this is used somewhere else, though.

I saw in my practice chain of renames for a driver. Now, if somebody
somewhere would like to instantiate a platform driver by its name...
Oops, ABI breakage.

And of course using platform data for such device makes less sense.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
