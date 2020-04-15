Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 469421AAD39
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 18:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5K2CHASj/gxYJV6j35dTsqJB9y2nA0hzwcjzncX1fk=; b=tFIsQ/NvZueMo0
	7fI1boT1vlVVxaGqhyDfGsBpd/Wl3raX6Cd1/9gRrfG1KTk2JUvWyGp3pMZZElC5IZnbuPpGhcUqV
	FUcwQoaisfBw5O+hHAwHG/sR1rq2++IlJbGoDqhJ3eoLLP6qGC3i6hr2iNN2pWxDLmR7gDLwVKKg5
	n89LDJyOfIrLg0ZhsbbGKDpOKIlhXEgJqWOMCKYf4G5nOhEyZUDw5rPMnNQpAor5XtRaqN2P5KO9O
	As1QFwm/+tjxnj5Lc/b/yPgLRmIIrllVpvKq2Byhff9UxJJ9EMrirBbIms9DzGNz26cKnzv5PizGM
	ew+ri8r7cI7sHqd7GZAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOkiH-0003iZ-Ep; Wed, 15 Apr 2020 16:16:33 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOki7-0003hF-LV
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 16:16:26 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 04747634C8B;
 Wed, 15 Apr 2020 19:16:17 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jOki0-0000Gx-Cm; Wed, 15 Apr 2020 19:16:16 +0300
Date: Wed, 15 Apr 2020 19:16:16 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200415161616.GA934@valkosipuli.retiisi.org.uk>
References: <CAG3jFysSrZJRE2TvL0bWoRFNnscgDGj8yGr-iwWBm4=1wMbJ9A@mail.gmail.com>
 <20200407163916.GL6127@valkosipuli.retiisi.org.uk>
 <CAAFQd5BGFB5znb9QyyPVL47kc809Ktu33bssvqg5eA-WwvMgOw@mail.gmail.com>
 <20200407172035.GM6127@valkosipuli.retiisi.org.uk>
 <20200408122127.i27hrmjh3pbjeulk@gilmour.lan>
 <CAAFQd5DNyQra-XksVaSfT_FCkOHTzm9mbn+tMd1vACV=pb9_8g@mail.gmail.com>
 <20200408134315.a7cemmto6bi26arg@gilmour.lan>
 <20200408152857.GO6127@valkosipuli.retiisi.org.uk>
 <20200408153051.GP6127@valkosipuli.retiisi.org.uk>
 <20200415101827.owf5babnigev2vit@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415101827.owf5babnigev2vit@gilmour.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_091624_065505_238CA07E 
X-CRM114-Status: GOOD (  38.35  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 <devicetree@vger.kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>,
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

On Wed, Apr 15, 2020 at 12:18:27PM +0200, Maxime Ripard wrote:
> On Wed, Apr 08, 2020 at 06:30:51PM +0300, Sakari Ailus wrote:
> > Cc'ing Laurent as well.
> >
> > On Wed, Apr 08, 2020 at 06:28:57PM +0300, Sakari Ailus wrote:
> > > Hi Maxime,
> > >
> > > On Wed, Apr 08, 2020 at 03:43:15PM +0200, Maxime Ripard wrote:
> > > > On Wed, Apr 08, 2020 at 02:35:28PM +0200, Tomasz Figa wrote:
> > > > > On Wed, Apr 8, 2020 at 2:21 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > On Tue, Apr 07, 2020 at 08:20:35PM +0300, Sakari Ailus wrote:
> > > > > > > On Tue, Apr 07, 2020 at 06:46:06PM +0200, Tomasz Figa wrote:
> > > > > > > > On Tue, Apr 7, 2020 at 6:40 PM Sakari Ailus <sakari.ailus@iki.fi> wrote:
> > > > > > > > >
> > > > > > > > > On Tue, Apr 07, 2020 at 05:47:41PM +0200, Robert Foss wrote:
> > > > > > > > > > On Tue, 7 Apr 2020 at 14:32, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > > > > > >
> > > > > > > > > > > Hi Robert,
> > > > > > > > > > >
> > > > > > > > > > > On Tue, Apr 07, 2020 at 01:29:05PM +0200, Robert Foss wrote:
> > > > > > > > > > > > On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > > > > > > > > On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > > > > > > > > > > > > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > > > > > > > > > > > > > limitation of our implementation, so we can instead implement
> > > > > > > > > > > > > > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > > > > > > > > > > > > > sure that our parent clock is configured at the right rate) and the
> > > > > > > > > > > > > > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > > > > > > > > > > > > > been rounded too far apart from the frequency we expect).
> > > > > > > > > > > > > > >
> > > > > > > > > > > > > > > This is doing exactly the same thing, except that we don't encode our
> > > > > > > > > > > > > > > implementation limitations in the DT, but in the driver instead.
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > What I really wanted to say that a driver that doesn't get the clock
> > > > > > > > > > > > > > frequency from DT but still sets that frequency is broken.
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > This frequency is highly system specific, and in many cases only a certain
> > > > > > > > > > > > > > frequency is usable, for a few reasons: On many SoCs, not all common
> > > > > > > > > > > > > > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > > > > > > > > > > > > > are being used as well), and then that frequency affects the usable CSI-2
> > > > > > > > > > > > > > bus frequencies directly --- and of those, only safe, known-good ones
> > > > > > > > > > > > > > should be used. IOW, getting the external clock frequency wrong typically
> > > > > > > > > > > > > > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > > > > > > > > > > > > > are available.
> > > > > > > > > > > > >
> > > > > > > > > > > > > So clock-frequency is not about the "Frequency of the xvclk clock in
> > > > > > > > > > > > > Hertz", but the frequency at which that clock must run on this
> > > > > > > > > > > > > particular SoC / board to be functional?
> > > > > > > > > > > > >
> > > > > > > > > > > > > If so, then yeah, we should definitely keep it, but the documentation
> > > > > > > > > > > > > of the binding should be made clearer as well.
> > > > > > > > > > > >
> > > > > > > > > > > > Alright so, let me summarise the desired approach then.
> > > > > > > > > > >
> > > > > > > > > > > There's a separate discussion on the same topic here:
> > > > > > > > > > > https://lore.kernel.org/linux-media/20200407122106.GD4751@pendragon.ideasonboard.com/
> > > > > > > > > >
> > > > > > > > > > Thanks for the link.
> > > > > > > > > >
> > > > > > > > > > >
> > > > > > > > > > > > ACPI:
> > > > > > > > > > > >   - Fetch the "clock-frequency" property
> > > > > > > > > > > >   - Verify it to be 19.2Mhz
> > > > > > > > > > > >
> > > > > > > > > > > > DT:
> > > > > > > > > > > >   - Fetch the "clock-frequency" property
> > > > > > > > > > > >   - Verify it to be 19.2Mhz
> > > > > > > > > > > >   - Get xvclk clock
> > > > > > > > > > > >   - Get xvclk clock rate
> > > > > > > > > > > >   - Verify xvclk clock rate to be 19.2Mhz
> > > > > > > > > > >
> > > > > > > > > > > The current status is that you should
> > > > > > > > > > > 's/clock-frequency/link-frequencies/', and in order to replace
> > > > > > > > > > > assigned-clock-rates, you'll want to have a clk_set_rate to 19.2MHz
> > > > > > > > > > > between steps 3 and 4
> > > > > > > > > >
> > > > > > > > > > Would we want to 's/clock-frequency/link-frequencies/' for ACPI too?
> > > > > > > > > > I imagine that would cause some breakage.
> > > > > > > > >
> > > > > > > > > It would, yes, and it would be no more correct on DT either.
> > > > > > > > >
> > > > > > > > > There are basically two possibilities here; either use the clock-frequency
> > > > > > > > > property and set the frequency, or rely on assigned-clock-rates, and get
> > > > > > > > > the frequency instead.
> > > > > > > > >
> > > > > > > > > The latter, while I understand it is generally preferred, comes with having
> > > > > > > > > to figure out the register list set that closest matches the frequency
> > > > > > > > > obtained. The former generally gets around this silently by the clock
> > > > > > > > > driver setting the closest frequency it can support.
> > > > > > > >
> > > > > > > > Wouldn't the former actually cause problems, because the closest
> > > > > > > > frequency the clock driver can support could be pretty far from the
> > > > > > > > one requested? (E.g. 19.2 MHz vs 24 MHz) The driver needs to check the
> > > > > > > > resulting frequency anyway.
> > > > > > >
> > > > > > > That's possible, yes; in this case there wouldn't be a guarantee the
> > > > > > > frequency wouldn't be far off.
> > > > > >
> > > > > > assigned-clock-rates is really fragile... There's zero guarantee on
> > > > > > how far the actual rate is going to be from the asked one, but more
> > > > > > importantly you have zero guarantee on the time frame that rate is
> > > > > > going to be enforced for.
> > > > >
> > > > > Is there such a guarantee if clk_set_rate() is called?
> > > >
> > > > with clk_set_rate itself, no, but...
> > > >
> > > > > > It's simply going to change the rate as a one-off thing, and if
> > > > > > there's the next millisecond someone else is going to change its rate
> > > > > > one way or another, it's going to do so and you won't have any
> > > > > > notification.
> > > >
> > > > You can get notified, and you can use clk_set_rate_exclusive if you
> > > > *really* want to enforce it.
> > >
> > > Is the conclusion then we should go back to relying on the clock-frequency
> > > property?
> 
> clock-frequency or link-frequencies. link-frequencies seems to be a
> better fit here, but we don't really have the choice for older
> bindings.

You can't replace one with the other as the two are different things. The
clock-frequency refers to the external clock frequency whereas the
link-frequencies refers to the frequencies allowed on the CSI-2 bus.

> 
> > > This has been discussed multiple times over the years, and I don't really
> > > disagree with the above. The frequency is typically indeed hand-picked for
> > > the hardware, and no other frequency should be used in any circumstances.
> > >
> > > No sensor driver I've seen has used clk_set_rate_exclusive() but I guess
> > > they should. The absence of practical problems has been probably because of
> > > two factors; firstly, these are typically clocks dedicated to the sensors
> > > and secondly, good luck.
> 
> My point was that at least with handling the clock rate within the
> driver (as opposed to assigned-clock-rates) you have multiple options
> in dealing with changing colck rates / parents (Modelling the sensor
> clock as a clock itself, using clk_set_rate_exclusive, using a
> notifier, etc).. Some are more intrusive to the rest of the system
> than others (especially clk_set_rate_exclusive), so I'm not really
> advocating for any here, but we should make sure we have them in the
> first place.

Using a different frequency really should not be allowed. It may be
possible on a development system, hobbyist platform, but never in
production. Therefore the exclusive variant sounds like the right one to
me.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
