Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 756171A9BD3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:10:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Iw1IW/62AJBLg0xLCPCdJkkvAKJDW3x+gwTVl3I6xM4=; b=SCJ9HADNFwHNwt
	XIi40LzOsiTHogDh/TwjB0qBLTncShI0THQdwBW9jlKZnrw0V1nkVMue94mG9MSxqE1yFxxbnDPZU
	Qc78BDmjHpVESxIcPQxU90bEVREPWqz5EuqE6XPj40FrWY3qOLXlE2fBpYucsJyCPmSu0vEB3mfsu
	YaCFsNgcM4uP54JF6R7ZcR+ozCqlRfAcBbUTBYubq+RtzS9kEy5PbXC97Qp5k363p+PeVasbZxSWk
	EXZiHltYrfrFZt4Ee37HtnfxnsjjbJuQIHb7A35/lODvzscU3Anlf+fFnCZdrLvjejXZvMOv6VnDW
	zU2CNNn7MKNEtHTuZvKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfwJ-0005Fd-6v; Wed, 15 Apr 2020 11:10:43 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfw2-0005De-G3
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:10:28 +0000
Received: by mail-ot1-x344.google.com with SMTP id i27so2958734ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 04:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7VVkEWhFDrQp1FEX/xgl0zHsV0VTqPDsyKWDKAx8HhU=;
 b=qbZFV3BlewRqWWzxURbMbQyWSKBolKHBMmxFyRO94vFBV6mxHqqIfEqv7TQ+iFMsv1
 1nR6ZF1eviwKR/cFpxfubIZegHBYf5A9fKZpT/SD1eypiranG1RGxGa8bt/mztgvzH0O
 lRdJSE8wksvgW1oflK34Dfw86IJu+n2MDsOLG0TmbOw2qYhXqvI5YLUl90jjXi2+BoGD
 5Ut/KoR5fHbvxYX9jIBvCVED3OAVRGVpkDIiMqTnmGTVfvt3RHx9SzNS965hXOLgSJ6w
 c0FdkNtJt+PbSfJK0R4rHF+gUW0tMZYaPGv8NNqx/nUOY1FtoYN0ozthEOySpYMU6rY9
 K+6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7VVkEWhFDrQp1FEX/xgl0zHsV0VTqPDsyKWDKAx8HhU=;
 b=XyehIwcbeBK2lKXMc9OI3UsH43XmjSz0wLod8hfihWNAkXeBXbvLhWEfdZ/WjMfQ1G
 hVR23DtHUGJ2uCX4ZILMgDAhhJfvGSz6d0J8KkWNjYRuAwMFNVmT1jB4Zcyf+VEbzEvj
 5DvsoFuL7FzFD7BiLlXQbNxNRMVJgNLRatwTXfY0ILcNfaINo9xXScPZBMiHk8PY3x8W
 C6xjlBrJ4QbxtrEfs0f5wygOHUy9yJE+Jbz3FjL2C7Fx1jzJWV94/D3wnUSiA+6F+Xvr
 mjSGY3ETku8CiSzy8L2koS53AY4tPtW7GTkk8HYBUcVSQLKawADdzTEYaXPvi76SIFg3
 m/aQ==
X-Gm-Message-State: AGi0PuYHECQFGc7X9YLKqz1gY6N9DEF5tBGvaEKrmUMypJqGLpozbKtc
 n9JRskxStxWqS3KR262kENX2rp18rxS70/WeR9oK3A==
X-Google-Smtp-Source: APiQypKrS72Nlq041eBAW9UAVyqi65PxH6uWOvyYyKbEtQStukn4+Tv0Z3Kt2Jd1GG4lYlHXm0r71jFbO/ZLPXrEEI0=
X-Received: by 2002:a05:6830:1e4e:: with SMTP id
 e14mr3795854otj.91.1586949024721; 
 Wed, 15 Apr 2020 04:10:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
 <CAG3jFysSrZJRE2TvL0bWoRFNnscgDGj8yGr-iwWBm4=1wMbJ9A@mail.gmail.com>
 <20200407163916.GL6127@valkosipuli.retiisi.org.uk>
 <CAAFQd5BGFB5znb9QyyPVL47kc809Ktu33bssvqg5eA-WwvMgOw@mail.gmail.com>
 <20200407172035.GM6127@valkosipuli.retiisi.org.uk>
 <20200408122127.i27hrmjh3pbjeulk@gilmour.lan>
 <CAAFQd5DNyQra-XksVaSfT_FCkOHTzm9mbn+tMd1vACV=pb9_8g@mail.gmail.com>
 <20200408134315.a7cemmto6bi26arg@gilmour.lan>
 <20200408152857.GO6127@valkosipuli.retiisi.org.uk>
 <20200408153051.GP6127@valkosipuli.retiisi.org.uk>
 <20200415101827.owf5babnigev2vit@gilmour.lan>
In-Reply-To: <20200415101827.owf5babnigev2vit@gilmour.lan>
From: Robert Foss <robert.foss@linaro.org>
Date: Wed, 15 Apr 2020 13:10:13 +0200
Message-ID: <CAG3jFyuqjg5Hcj0ftANE5BzgfSpFKEgnq-AiuT1t=Y5k0AXtMg@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_041026_544531_2BC68CAC 
X-CRM114-Status: GOOD (  38.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-kernel <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 15 Apr 2020 at 12:18, Maxime Ripard <maxime@cerno.tech> wrote:
>
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

Alright, so since this is a new binding, let's aim for link-frequencies then.

I don't think I understand what they look like on the driver side.
Do you know an example of what a link-frequencies based driver would look like?

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
>
> Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
