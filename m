Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69781C7041
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:26:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECWI3yiYRl2xEKh/Bd16tPfCT2p+6HclQLk87dT20KM=; b=jUT4W/sZ4VRGB2
	bekNfeDCHVPQvxzFkAVJXkCTQjkMUAu3jZ6dht7rXpA4tmWChtCEsHRQEjpjxL4NvdF+MDg1gxNNa
	XobteyikjgrTuIvcacj6YMwDj4USxZRh+QnZd0vVk+M7Lq2WhtdBtrJlVYf1+dOHap4sZu3md3Vmk
	OeKWknlxfW4Pf3lC0YMnN8Dm8tuFOmmzJmn2yZBmxjSj5kMc/6KGlZgXW3Tn50m9ttgWeOnb9O3Jf
	KPxkcJhuuvIRO5U4MiDjym+9EqpeIzHm6qKYh39X6PWnBhp5UnBYIENXVFuQpn5h3JSJNk1XjyGm4
	5Wc+lR7UyLmpxckwndCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJ8R-0005PF-UK; Wed, 06 May 2020 12:26:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJ8I-0005OE-G8
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:26:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jWJ84-0004dl-4N; Wed, 06 May 2020 14:26:24 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jWJ80-0008SB-9H; Wed, 06 May 2020 14:26:20 +0200
Date: Wed, 6 May 2020 14:26:20 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v10 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200506122620.GN18755@pengutronix.de>
References: <20200505100129.104673-1-robert.foss@linaro.org>
 <20200505100129.104673-2-robert.foss@linaro.org>
 <1588679279.8804.133.camel@mhfsdcap03>
 <CAG3jFyvo3gmO3zLRUKQEdgRkmzvvvMTzDKV-LZAeKYFdOfCnEw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFyvo3gmO3zLRUKQEdgRkmzvvvMTzDKV-LZAeKYFdOfCnEw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:15:18 up 74 days, 23:32, 107 users,  load average: 0.43, 0.98,
 4.24
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_052638_536238_BFF70892 
X-CRM114-Status: GOOD (  25.93  )
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Ben Kao <ben.kao@intel.com>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-05-06 13:29, Robert Foss wrote:
> Hey Dongchun,
> 
> Thanks for having a look at this series.
> 
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +
> > > +    i2c {
> > > +        #address-cells = <1>;
> > > +        #size-cells = <0>;
> > > +
> > > +        ov8856: camera@10 {
> > > +            compatible = "ovti,ov8856";
> > > +            reg = <0x10>;
> > > +
> > > +            reset-gpios = <&pio 111 GPIO_ACTIVE_LOW>;
> >
> > Apologies for missing to follow the earlier discussion related to this.
> > I noticed the GPIO flag para and __ov8856_power_on() are aligned using
> > ACTIVE_LOW.
> >
> > But from the datasheet, XSHUTDN pin is active-high for OV8856.
> > It means devm_gpiod_get API (in probe func) should use GPIOD_OUT_LOW to
> > initialize the GPIO as output with a value of 0.
> > Otherwise it should use GPIOD_OUT_HIGH.
> >
> > There is one case for GPIO_ACTIVE_LOW setting:
> > https://patchwork.linuxtv.org/patch/63460/
> > https://patchwork.linuxtv.org/patch/63461/
> 
> We went back and forth about this a few times, and I switched to this
> gpio setting after having worked through the device probing reset gpio
> toggling. Semantically it seemed easier to understand in the driver,
> since the gpio is called reset and not !shutdown.

IMHO you can keep your version. DTs are part of the system integration.
What if one system has a invert logic infront of the gpio input.. The
system integrator needs to read and to understand the schematic
correctly to pick the correct value.

> Looking into devm_gpiod_get_optional(), the flag argument
> GPIOD_OUT_LOW or HIGH for that matter is actually not used initialize

The good think about gpiod is that it care about logic values not
physical/electrical values. If you set GPIOD_OUT_HIGH then the reset is
asserted, whatever asserted means electrical.

Regards,
  Marco

> the output, but only used for an exclusivity check.
> https://elixir.bootlin.com/linux/latest/source/drivers/gpio/gpiolib-devres.c#L109
> 
> If you prefer, I can invert the logic again. To me making the reset
> gpio active resulting in the device being actually reset seems like
> the most intuitive and easy to understand option.
> The different OmniVision drivers seem to have different approaches to
> this. The ov9640 driver for example is doing what this series
> currently is doing.
> 
> >
> > Sakari, Tomasz, am I right?
> >
> > > +            pinctrl-names = "default";
> > > +            pinctrl-0 = <&clk_24m_cam>;
> > > +
> > > +            clocks = <&cam_osc>;
> > > +            clock-names = "xvclk";
> > > +            clock-frequency = <19200000>;
> > > +
> > > +            avdd-supply = <&mt6358_vcama2_reg>;
> > > +            dvdd-supply = <&mt6358_vcamd_reg>;
> > > +            dovdd-supply = <&mt6358_vcamio_reg>;
> > > +
> > > +            port {
> > > +                wcam_out: endpoint {
> > > +                    remote-endpoint = <&mipi_in_wcam>;
> > > +                    data-lanes = <1 2 3 4>;
> > > +                    link-frequencies = /bits/ 64 <360000000>;
> > > +                };
> > > +            };
> > > +        };
> > > +    };
> > > +...
> > > \ No newline at end of file
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 26f281d9f32a..84b262afd13d 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -12489,6 +12489,7 @@ L:    linux-media@vger.kernel.org
> > >  S:   Maintained
> > >  T:   git git://linuxtv.org/media_tree.git
> > >  F:   drivers/media/i2c/ov8856.c
> > > +F:   Documentation/devicetree/bindings/media/i2c/ov8856.yaml
> > >
> >
> > Had you run parse-maintainers.pl?
> > The new item is supposed to be arranged in alphabetical order.
> 
> No, I have not. But upon running it now, it doesn't make suggest any
> changes. But let me order the files manually in the next revision.
> 
> However, I noticed I removed the wrong person from the maintainers
> file in this revision.
> So, I'll correct that and add you Dongchun as the maintainer if that's ok.
> 
> >
> > >  OMNIVISION OV9640 SENSOR DRIVER
> > >  M:   Petr Cvek <petrcvekcz@gmail.com>
> >
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
