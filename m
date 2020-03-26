Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3E51941E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 15:48:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e8FcJ9a7BEYA7dYz2MvLTI2Ix9O00AZmViXHcN3AmP4=; b=XfQKO7jMXpD3fc
	41qF84ByilYs2oBBvifh1ELsMOC5FcJscwWQIRCN5jqFnMFgVcUDNP9w9PnLng5ktebwUxuuIlEtU
	EtsXUTWGIlRwP0l2NQTEPyj6fi4sjXCXnqSfS1QmHLTbOLT2bcu88sCSKlPmXC9HSVdMn572Me3+B
	fmc4jEyEN9adCo0zFMzc30k7aH0rgbOvLFwmbVD7jbBVCSjJRYEtMJo25Sr9WVXv9MyAkms9acKbi
	UPi0yMgxkIhARvCv4o2Xbdx+E/fc4ssuo5RqbzCvLcgczgXYrT+qla7mdpBIb6jtIvgyEoTltcVAY
	DYP+I1dDAfdQNHfQfOBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHTni-0002sO-FA; Thu, 26 Mar 2020 14:48:06 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHTnU-0002pZ-Uu
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 14:47:54 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id EA1C4634C90;
 Thu, 26 Mar 2020 16:47:26 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jHTn4-0000iB-0A; Thu, 26 Mar 2020 16:47:26 +0200
Date: Thu, 26 Mar 2020 16:47:25 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v2 2/3] media: ov8856: Add devicetree support
Message-ID: <20200326144725.GA2394@valkosipuli.retiisi.org.uk>
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-3-robert.foss@linaro.org>
 <20200313121746.GC5730@valkosipuli.retiisi.org.uk>
 <CAG3jFytpx8_+DKhUVZnUFeMYK82Z1hFWcEnbyD0=4a8p3ojteg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFytpx8_+DKhUVZnUFeMYK82Z1hFWcEnbyD0=4a8p3ojteg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_074753_183797_6535E036 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robert,

On Thu, Mar 26, 2020 at 12:56:37PM +0100, Robert Foss wrote:
...
> > > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > > +{
> > > +     struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > > +     int ret;
> > > +
> > > +     ret = clk_prepare_enable(ov8856->xvclk);
> > > +     if (ret < 0) {
> > > +             dev_err(&client->dev, "failed to enable xvclk\n");
> > > +             return ret;
> > > +     }
> > > +
> > > +     gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
> > > +
> > > +     ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> > > +                                 ov8856->supplies);
> > > +     if (ret < 0) {
> > > +             dev_err(&client->dev, "failed to enable regulators\n");
> > > +             goto disable_clk;
> > > +     }
> > > +
> > > +     gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);
> > > +
> > > +     usleep_range(1500, 1800);
> >
> > I think you could omit the delay on ACPI based systems. Or just bail out
> > early in that case.
> 
> I'll add a check for reset_gpio being NULL, and skip the sleep for that case.

There could also be a regulator but no GPIO.

I think if you don't have either, then certainly there's no need for a
delay.

...

> > > +             ov8856->xvclk = NULL;
> > > +     } else if (IS_ERR(ov8856->xvclk)) {
> > > +             dev_err(&client->dev, "could not get xvclk clock (%ld)\n",
> > > +                     PTR_ERR(ov8856->xvclk));
> > > +             return PTR_ERR(ov8856->xvclk);
> > > +     }
> > > +
> > > +     ret = clk_set_rate(ov8856->xvclk, OV8856_XVCLK_24);
> >
> > This should either come from platform data, or perhaps it'd be even better
> > to get the clock rate and use assigned-clock-rates. I guess that's
> > preferred nowadays.
> 
> I'm a bit unsure about what this would look like.
> 
> Are you thinking something like the way ext_clk is used in smiapp_core.c?
> I went ahead and implemented support for retrieving and storing
> 'clock-rates' during the ov8856_check_hwcfg() call, and then setting
> the rate to the configured rate during probing.

With assigned-clock-rates, you can simply use clk_get_rate().

As you get the actual rate, it could be somewhat off of the intended one.

-- 
Kind regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
