Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A931A30FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 10:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q0oYXL2PsMI0fJnyvfr44+w+9vfh+iurry+AMXIwrpg=; b=Ntso5wzPyG39Qc
	r7ixjr/MMnp8OQE+XS2so949VN1kf9IpoRAtyjds6suiaaIw6QYbhjRr2a5YTyeauiwJtc42i2/gf
	2P7s5Z/tRb0MvIbvGSFf024qR3ALmeQp751GBhXO3+ccrBv4RuLWNeW12RRdh3w5XYGnLONQIzhSO
	mW0npPOkdnv9YZ7gLY5hWoAWjhn68/3pBJfirfYMSI6CjEy6vTlR9e2lSaqb8zfm80ajsQGBSM1kg
	2MhsWYTEmIJDGD1uRq0nfpFjrMn4dHmRTMKhB5gRUJOKLb3FOhM60LKjxYTMutcTdEXRVdutihhUq
	D/hskFFbHmxKLKVjyf9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMScH-00080A-LI; Thu, 09 Apr 2020 08:32:53 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMSc7-0007zC-8Y
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 08:32:45 +0000
Received: by mail-oi1-x243.google.com with SMTP id u20so2567460oic.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 01:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pJpaYFDjfzzvcvYVsv7tnkT+Uj3FaSt07vFYzfz/iJE=;
 b=y0lpZy9Dn6HsYQW/+bGMmTHdYtRzhyYKpkKEVlw4ttxb1YjqAn353GchUiwQqtO/EL
 6+ZGCSUEGq04ULviclGbHXMWU4iV7AjTXHEhFAhi6t653pJCMfiwEYprh2qzxvg3w52e
 wy/OiRaLOOtVaOTvskYDf8feBuCfg2xgdkal+97vZZU5SBLeu6VUTqbqmihtcejVUIYx
 pz1/V2epnMRkqO9Yckb4KMGUczc0rSsEiUC5Tn6SK85DeX2GVecrDe4h4AcEAxgI4Qjb
 MhQjaENopxf0du5w78dYrzw5o/G5H+r2fwZt8l/oE5/Lt9z9SKPJxOcWmb0L/4Gx7zM/
 tE7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pJpaYFDjfzzvcvYVsv7tnkT+Uj3FaSt07vFYzfz/iJE=;
 b=aNlYLSYvpR622i10mPmb5JXreWw3KSqZkSk8IMEuPp4Nkjpw1XhteyGTVCYA6Wvqrk
 XJUpJR1foThDWqF6EWn4qYP/RmQhfSWZNJLNf+2IpqyP0OuEaoMJQC8wXrp3LxY9BkP/
 PmsT4htb17LFwDx4jH+d7LJns/NAqAIDT/UNs23BRMDCRq54ZjZv5cjiowWTUTNovFoh
 y2KEtQJg6G7ooJm5r6aoCMT/dSoaaboMLOGWNWLhAZW6flDpeJchtuG90hhECDlrRR/F
 BW665iy5L6X6zpj5sotM07gUz0SVaOD1VzN7RiKopVzcSCKe44BZ7eU2hEWyTbivFpDi
 iD4w==
X-Gm-Message-State: AGi0PuYv5e7nLKg7XcXF6gmEVeY1grfAqXPfZ3mVn10/Gc9LhHTiA8Pv
 DuMKhSwH+DhexzmR0aaF5kIR8RBmY++omYZibH/Emw==
X-Google-Smtp-Source: APiQypL7QT1RUQBYoH3bLNuwPgd/B7JhqceE4pniefZZAH9pLmRzac2Q3zEsxVxL3WB/dAAULbryVBhT6MLCad7jBRA=
X-Received: by 2002:aca:fcd8:: with SMTP id a207mr5694824oii.56.1586421162212; 
 Thu, 09 Apr 2020 01:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
 <CAG3jFyvd32pWppubMoOoyH9eO2XLjwUXMC7p4xtv8m+JkPv6vw@mail.gmail.com>
 <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
 <CAG3jFysSrZJRE2TvL0bWoRFNnscgDGj8yGr-iwWBm4=1wMbJ9A@mail.gmail.com>
 <20200407163916.GL6127@valkosipuli.retiisi.org.uk>
 <CAAFQd5BGFB5znb9QyyPVL47kc809Ktu33bssvqg5eA-WwvMgOw@mail.gmail.com>
 <20200407172035.GM6127@valkosipuli.retiisi.org.uk>
 <20200408122127.i27hrmjh3pbjeulk@gilmour.lan>
 <CAAFQd5DNyQra-XksVaSfT_FCkOHTzm9mbn+tMd1vACV=pb9_8g@mail.gmail.com>
 <20200408134315.a7cemmto6bi26arg@gilmour.lan>
 <20200408152857.GO6127@valkosipuli.retiisi.org.uk>
In-Reply-To: <20200408152857.GO6127@valkosipuli.retiisi.org.uk>
From: Robert Foss <robert.foss@linaro.org>
Date: Thu, 9 Apr 2020 10:32:26 +0200
Message-ID: <CAG3jFyvf=uUSsswY66mgB4yBuddFEmNGn2sCiT6zSHwO=2hodA@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Sakari Ailus <sakari.ailus@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_013243_819933_976F19BA 
X-CRM114-Status: GOOD (  36.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 linux-media <linux-media@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Wed, 8 Apr 2020 at 17:30, Sakari Ailus <sakari.ailus@iki.fi> wrote:
>
> Hi Maxime,
>
> On Wed, Apr 08, 2020 at 03:43:15PM +0200, Maxime Ripard wrote:
> > On Wed, Apr 08, 2020 at 02:35:28PM +0200, Tomasz Figa wrote:
> > > On Wed, Apr 8, 2020 at 2:21 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > > On Tue, Apr 07, 2020 at 08:20:35PM +0300, Sakari Ailus wrote:
> > > > > On Tue, Apr 07, 2020 at 06:46:06PM +0200, Tomasz Figa wrote:
> > > > > > On Tue, Apr 7, 2020 at 6:40 PM Sakari Ailus <sakari.ailus@iki.fi> wrote:
> > > > > > >
> > > > > > > On Tue, Apr 07, 2020 at 05:47:41PM +0200, Robert Foss wrote:
> > > > > > > > On Tue, 7 Apr 2020 at 14:32, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > > > >
> > > > > > > > > Hi Robert,
> > > > > > > > >
> > > > > > > > > On Tue, Apr 07, 2020 at 01:29:05PM +0200, Robert Foss wrote:
> > > > > > > > > > On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > > > > > > On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > > > > > > > > > > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > > > > > > > > > > > limitation of our implementation, so we can instead implement
> > > > > > > > > > > > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > > > > > > > > > > > sure that our parent clock is configured at the right rate) and the
> > > > > > > > > > > > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > > > > > > > > > > > been rounded too far apart from the frequency we expect).
> > > > > > > > > > > > >
> > > > > > > > > > > > > This is doing exactly the same thing, except that we don't encode our
> > > > > > > > > > > > > implementation limitations in the DT, but in the driver instead.
> > > > > > > > > > > >
> > > > > > > > > > > > What I really wanted to say that a driver that doesn't get the clock
> > > > > > > > > > > > frequency from DT but still sets that frequency is broken.
> > > > > > > > > > > >
> > > > > > > > > > > > This frequency is highly system specific, and in many cases only a certain
> > > > > > > > > > > > frequency is usable, for a few reasons: On many SoCs, not all common
> > > > > > > > > > > > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > > > > > > > > > > > are being used as well), and then that frequency affects the usable CSI-2
> > > > > > > > > > > > bus frequencies directly --- and of those, only safe, known-good ones
> > > > > > > > > > > > should be used. IOW, getting the external clock frequency wrong typically
> > > > > > > > > > > > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > > > > > > > > > > > are available.
> > > > > > > > > > >
> > > > > > > > > > > So clock-frequency is not about the "Frequency of the xvclk clock in
> > > > > > > > > > > Hertz", but the frequency at which that clock must run on this
> > > > > > > > > > > particular SoC / board to be functional?
> > > > > > > > > > >
> > > > > > > > > > > If so, then yeah, we should definitely keep it, but the documentation
> > > > > > > > > > > of the binding should be made clearer as well.
> > > > > > > > > >
> > > > > > > > > > Alright so, let me summarise the desired approach then.
> > > > > > > > >
> > > > > > > > > There's a separate discussion on the same topic here:
> > > > > > > > > https://lore.kernel.org/linux-media/20200407122106.GD4751@pendragon.ideasonboard.com/
> > > > > > > >
> > > > > > > > Thanks for the link.
> > > > > > > >
> > > > > > > > >
> > > > > > > > > > ACPI:
> > > > > > > > > >   - Fetch the "clock-frequency" property
> > > > > > > > > >   - Verify it to be 19.2Mhz
> > > > > > > > > >
> > > > > > > > > > DT:
> > > > > > > > > >   - Fetch the "clock-frequency" property
> > > > > > > > > >   - Verify it to be 19.2Mhz
> > > > > > > > > >   - Get xvclk clock
> > > > > > > > > >   - Get xvclk clock rate
> > > > > > > > > >   - Verify xvclk clock rate to be 19.2Mhz
> > > > > > > > >
> > > > > > > > > The current status is that you should
> > > > > > > > > 's/clock-frequency/link-frequencies/', and in order to replace
> > > > > > > > > assigned-clock-rates, you'll want to have a clk_set_rate to 19.2MHz
> > > > > > > > > between steps 3 and 4
> > > > > > > >
> > > > > > > > Would we want to 's/clock-frequency/link-frequencies/' for ACPI too?
> > > > > > > > I imagine that would cause some breakage.
> > > > > > >
> > > > > > > It would, yes, and it would be no more correct on DT either.
> > > > > > >
> > > > > > > There are basically two possibilities here; either use the clock-frequency
> > > > > > > property and set the frequency, or rely on assigned-clock-rates, and get
> > > > > > > the frequency instead.
> > > > > > >
> > > > > > > The latter, while I understand it is generally preferred, comes with having
> > > > > > > to figure out the register list set that closest matches the frequency
> > > > > > > obtained. The former generally gets around this silently by the clock
> > > > > > > driver setting the closest frequency it can support.
> > > > > >
> > > > > > Wouldn't the former actually cause problems, because the closest
> > > > > > frequency the clock driver can support could be pretty far from the
> > > > > > one requested? (E.g. 19.2 MHz vs 24 MHz) The driver needs to check the
> > > > > > resulting frequency anyway.
> > > > >
> > > > > That's possible, yes; in this case there wouldn't be a guarantee the
> > > > > frequency wouldn't be far off.
> > > >
> > > > assigned-clock-rates is really fragile... There's zero guarantee on
> > > > how far the actual rate is going to be from the asked one, but more
> > > > importantly you have zero guarantee on the time frame that rate is
> > > > going to be enforced for.
> > >
> > > Is there such a guarantee if clk_set_rate() is called?
> >
> > with clk_set_rate itself, no, but...
> >
> > > > It's simply going to change the rate as a one-off thing, and if
> > > > there's the next millisecond someone else is going to change its rate
> > > > one way or another, it's going to do so and you won't have any
> > > > notification.
> >
> > You can get notified, and you can use clk_set_rate_exclusive if you
> > *really* want to enforce it.
>
> Is the conclusion then we should go back to relying on the clock-frequency
> property?

I too am curious about the conclusion, if we have arrived at one yet.

I sent out v4 of this series yesterday, which used the
'assigned-clock-rates' approach but I would like update the series
with whatever is deemed the best approach.

>
> This has been discussed multiple times over the years, and I don't really
> disagree with the above. The frequency is typically indeed hand-picked for
> the hardware, and no other frequency should be used in any circumstances.
>
> No sensor driver I've seen has used clk_set_rate_exclusive() but I guess
> they should. The absence of practical problems has been probably because of
> two factors; firstly, these are typically clocks dedicated to the sensors
> and secondly, good luck.
>
> --
> Regards,
>
> Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
