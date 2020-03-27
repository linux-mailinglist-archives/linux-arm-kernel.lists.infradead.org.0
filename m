Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93684195824
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:37:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=znyZ8T/JB4fcBGmG2Q+ayuMmL7pVGZrXeh/bGadJeRk=; b=sNakNYe3wey8jk
	Wx2/bBLglZY7NuMNS2TJDA6qvTb1VXmbOvncKDIWlLbK+ennqWjzgrLT2H0mUC8h0DSmk2QUYHzQf
	p3+MNbXPyqiUyv5cYAWB80k/xaTbfbqzfRq806D4VctlqSsNj2UnFa9rga/h5PkM2lW2rSuLXSSDR
	VbSF2M2R24jWUQxIDC68E3+urTw9A2PyHMH9OXIexxl79PctJIFIPb9LLQzqdb3u6BftnM1nBgGmX
	/dqJmQc7BjLG8xeV1nld7rxT0T7ZtlT7uHf710tIidIT1STOwZcor4FLzdLkGkQ1nKE5j6w97FHAm
	wZiLMaSgkbWV6pL72LVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpB5-0006BA-Nc; Fri, 27 Mar 2020 13:37:39 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpAv-0006AY-Rw
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:37:32 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 14E41634C90;
 Fri, 27 Mar 2020 15:37:06 +0200 (EET)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jHpAX-0000og-4s; Fri, 27 Mar 2020 15:37:05 +0200
Date: Fri, 27 Mar 2020 15:37:05 +0200
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [v2 2/3] media: ov8856: Add devicetree support
Message-ID: <20200327133705.GC2394@valkosipuli.retiisi.org.uk>
References: <20200313110350.10864-1-robert.foss@linaro.org>
 <20200313110350.10864-3-robert.foss@linaro.org>
 <20200313121746.GC5730@valkosipuli.retiisi.org.uk>
 <CAG3jFytpx8_+DKhUVZnUFeMYK82Z1hFWcEnbyD0=4a8p3ojteg@mail.gmail.com>
 <20200326144725.GA2394@valkosipuli.retiisi.org.uk>
 <CAG3jFyu=HOsWNeRFC2t4HjzYrFrLjsbXzAm4+zD50Xq48mqzcw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFyu=HOsWNeRFC2t4HjzYrFrLjsbXzAm4+zD50Xq48mqzcw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_063730_094664_F654FD13 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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

On Fri, Mar 27, 2020 at 11:32:29AM +0100, Robert Foss wrote:
> On Thu, 26 Mar 2020 at 15:47, Sakari Ailus <sakari.ailus@iki.fi> wrote:
> >
> > Hi Robert,
> >
> > On Thu, Mar 26, 2020 at 12:56:37PM +0100, Robert Foss wrote:
> > ...
> > > > > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > > > > +{
> > > > > +     struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > > > > +     int ret;
> > > > > +
> > > > > +     ret = clk_prepare_enable(ov8856->xvclk);
> > > > > +     if (ret < 0) {
> > > > > +             dev_err(&client->dev, "failed to enable xvclk\n");
> > > > > +             return ret;
> > > > > +     }
> > > > > +
> > > > > +     gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
> > > > > +
> > > > > +     ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> > > > > +                                 ov8856->supplies);
> > > > > +     if (ret < 0) {
> > > > > +             dev_err(&client->dev, "failed to enable regulators\n");
> > > > > +             goto disable_clk;
> > > > > +     }
> > > > > +
> > > > > +     gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);
> > > > > +
> > > > > +     usleep_range(1500, 1800);
> > > >
> > > > I think you could omit the delay on ACPI based systems. Or just bail out
> > > > early in that case.
> > >
> > > I'll add a check for reset_gpio being NULL, and skip the sleep for that case.
> >
> > There could also be a regulator but no GPIO.
> >
> > I think if you don't have either, then certainly there's no need for a
> > delay.
> 
> Removing the delay if no action is taken makes sense, but I'm not sure
> how best to do it.
> If there are no regulators dummy ones are created automatically, which
> makes distinguishing between a little bit cumbersome. The regulator
> structs could of course all be inspected, and if all are dummy ones,
> the delay could be skipped. But is there a neater way of doing this?
> Manually inspecting the regs strikes me as a bit inelegant.

I guess the cleanest, easy way to make this right, albeit slightly
unoptimal in very rare cases where you have none of the above resources in
a DT system, is to bail out if you're running on an ACPI based system.

I.e. checking for e.g. is_acpi_node(dev->fwnode).

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
