Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525A11A1292
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 19:22:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YvU6zQJUbimeaEJGoEr0/gz0PFg3LMRApt/upKskU0w=; b=b9DF/QITn54xXh
	p8b4efo2rq1ud7mo8pKVJQ4FlD8rhhB9qzz2xalnms8epq4ecCdWcppxeL0vQ387vuaBkdMDzPgpS
	Uq2WTXMoKiV1G8mRNxcr4P6diyECUCrVjY5J5ppWO/qSMpKv/50Orh/OMUOCKfh3hlPYqiGskNHEn
	bqWCtZRDO00y0AQBHfedKhqXbAgy3xWJcybkcHruX+VVYbKFi545RhVE+nZofpR1ZvPRF1piaOM89
	/IQUrsSCsZj+J8HK35hXshLUU+wa6RXAMT4hkz4cSQN+jAkhHX7s7ZtMmPP/XCpKGurgJs8T3+Ex5
	Gtcv5CfQLqZ890vBj+zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLrvB-0001Lm-Qh; Tue, 07 Apr 2020 17:21:57 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLrv4-0001Kd-4O
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 17:21:52 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id 35970634C89;
 Tue,  7 Apr 2020 20:20:36 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1jLrtr-0002Ma-BQ; Tue, 07 Apr 2020 20:20:35 +0300
Date: Tue, 7 Apr 2020 20:20:35 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200407172035.GM6127@valkosipuli.retiisi.org.uk>
References: <CAG3jFyvUd08U9yNVPUD9Y=nd5Xpcx34GcHJRhtvAAycoq3qimg@mail.gmail.com>
 <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
 <20200404093446.vuvwrhn5436h4d3s@gilmour.lan>
 <20200406083506.GE6127@valkosipuli.retiisi.org.uk>
 <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
 <CAG3jFyvd32pWppubMoOoyH9eO2XLjwUXMC7p4xtv8m+JkPv6vw@mail.gmail.com>
 <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
 <CAG3jFysSrZJRE2TvL0bWoRFNnscgDGj8yGr-iwWBm4=1wMbJ9A@mail.gmail.com>
 <20200407163916.GL6127@valkosipuli.retiisi.org.uk>
 <CAAFQd5BGFB5znb9QyyPVL47kc809Ktu33bssvqg5eA-WwvMgOw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5BGFB5znb9QyyPVL47kc809Ktu33bssvqg5eA-WwvMgOw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_102150_536515_7F92754B 
X-CRM114-Status: GOOD (  29.96  )
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
 <devicetree@vger.kernel.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Robert Foss <robert.foss@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Tue, Apr 07, 2020 at 06:46:06PM +0200, Tomasz Figa wrote:
> On Tue, Apr 7, 2020 at 6:40 PM Sakari Ailus <sakari.ailus@iki.fi> wrote:
> >
> > On Tue, Apr 07, 2020 at 05:47:41PM +0200, Robert Foss wrote:
> > > On Tue, 7 Apr 2020 at 14:32, Maxime Ripard <maxime@cerno.tech> wrote:
> > > >
> > > > Hi Robert,
> > > >
> > > > On Tue, Apr 07, 2020 at 01:29:05PM +0200, Robert Foss wrote:
> > > > > On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > > > > > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > > > > > > limitation of our implementation, so we can instead implement
> > > > > > > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > > > > > > sure that our parent clock is configured at the right rate) and the
> > > > > > > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > > > > > > been rounded too far apart from the frequency we expect).
> > > > > > > >
> > > > > > > > This is doing exactly the same thing, except that we don't encode our
> > > > > > > > implementation limitations in the DT, but in the driver instead.
> > > > > > >
> > > > > > > What I really wanted to say that a driver that doesn't get the clock
> > > > > > > frequency from DT but still sets that frequency is broken.
> > > > > > >
> > > > > > > This frequency is highly system specific, and in many cases only a certain
> > > > > > > frequency is usable, for a few reasons: On many SoCs, not all common
> > > > > > > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > > > > > > are being used as well), and then that frequency affects the usable CSI-2
> > > > > > > bus frequencies directly --- and of those, only safe, known-good ones
> > > > > > > should be used. IOW, getting the external clock frequency wrong typically
> > > > > > > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > > > > > > are available.
> > > > > >
> > > > > > So clock-frequency is not about the "Frequency of the xvclk clock in
> > > > > > Hertz", but the frequency at which that clock must run on this
> > > > > > particular SoC / board to be functional?
> > > > > >
> > > > > > If so, then yeah, we should definitely keep it, but the documentation
> > > > > > of the binding should be made clearer as well.
> > > > >
> > > > > Alright so, let me summarise the desired approach then.
> > > >
> > > > There's a separate discussion on the same topic here:
> > > > https://lore.kernel.org/linux-media/20200407122106.GD4751@pendragon.ideasonboard.com/
> > >
> > > Thanks for the link.
> > >
> > > >
> > > > > ACPI:
> > > > >   - Fetch the "clock-frequency" property
> > > > >   - Verify it to be 19.2Mhz
> > > > >
> > > > > DT:
> > > > >   - Fetch the "clock-frequency" property
> > > > >   - Verify it to be 19.2Mhz
> > > > >   - Get xvclk clock
> > > > >   - Get xvclk clock rate
> > > > >   - Verify xvclk clock rate to be 19.2Mhz
> > > >
> > > > The current status is that you should
> > > > 's/clock-frequency/link-frequencies/', and in order to replace
> > > > assigned-clock-rates, you'll want to have a clk_set_rate to 19.2MHz
> > > > between steps 3 and 4
> > >
> > > Would we want to 's/clock-frequency/link-frequencies/' for ACPI too?
> > > I imagine that would cause some breakage.
> >
> > It would, yes, and it would be no more correct on DT either.
> >
> > There are basically two possibilities here; either use the clock-frequency
> > property and set the frequency, or rely on assigned-clock-rates, and get
> > the frequency instead.
> >
> > The latter, while I understand it is generally preferred, comes with having
> > to figure out the register list set that closest matches the frequency
> > obtained. The former generally gets around this silently by the clock
> > driver setting the closest frequency it can support.
> 
> Wouldn't the former actually cause problems, because the closest
> frequency the clock driver can support could be pretty far from the
> one requested? (E.g. 19.2 MHz vs 24 MHz) The driver needs to check the
> resulting frequency anyway.

That's possible, yes; in this case there wouldn't be a guarantee the
frequency wouldn't be far off.

> 
> Perhaps a simplified approach of rounding the result of clk_get_rate()
> to a multiple of 100 KHz and comparing it to the hardcoded value would
> be enough in practice?

Then the question is: how much deviation from the expected value is
allowed? I think there was another case where such range was checked and
because the clock was just slightly more off, the probe failed because of
that.

I'd in that case check some fairly wide range, and print a warning if the
frequency isn't in that range, but still proceed. It's generally impossible
to set a precise limit on the tolerance.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
