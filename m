Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1E51C32B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 08:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHb4LLW9O1P1MudK/OovT3lBaB2+PWv2p2I1QW7/nBU=; b=FeRHUX2+cH29bO
	JvCnAyjJxzGA8dopUtD0CHIRwecokWE2r62sRJeePaLjwd45+H5Ty+YykD2CBa91Abg0vURdG08UZ
	G8SG7uLDmNbUfZmlqq7qWh8nz2Nyh6UzigxJ6l0w9YB4TvLP8TssMSXQ5b2cfV9kbA4JwrL3t+rue
	qJtskQloUl2frWg901FyDKFBMnCA7i4zOFxBxEvu4WvsOgDYq84nNdTs77skyX6MZE21jKfhVX6RB
	qCiNG3410DKZmwy7bcExLf0j9zACP/UORE2dutbo41JqxCf5MRUnG4MAujBXFBH3VQ4S2RyyZOVEL
	zsKnf1UPcKSeF3xA4ncg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVUXT-0002r8-Tj; Mon, 04 May 2020 06:25:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVUXG-0001ns-Lm
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 06:25:04 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1jVUX7-0004OA-T3; Mon, 04 May 2020 08:24:53 +0200
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1jVUWx-0000TK-96; Mon, 04 May 2020 08:24:43 +0200
Date: Mon, 4 May 2020 08:24:43 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Robert Foss <robert.foss@linaro.org>
Subject: Re: [PATCH v6 2/3] media: ov8856: Add devicetree support
Message-ID: <20200504062443.qgme3pnhzugqeqhk@pengutronix.de>
References: <20200429162437.2025699-1-robert.foss@linaro.org>
 <20200429162437.2025699-3-robert.foss@linaro.org>
 <20200430093524.GB2188@pengutronix.de>
 <20200430094549.GF867@valkosipuli.retiisi.org.uk>
 <20200430095332.GC2188@pengutronix.de>
 <20200430095907.GG867@valkosipuli.retiisi.org.uk>
 <20200430101157.GD2188@pengutronix.de>
 <20200430102018.GI867@valkosipuli.retiisi.org.uk>
 <20200430120740.GG2188@pengutronix.de>
 <CAG3jFytP9=pL=9Qh64BKqQchs7J7E45USfirK_SnGn3NMeCdcg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAG3jFytP9=pL=9Qh64BKqQchs7J7E45USfirK_SnGn3NMeCdcg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:13:17 up 170 days, 21:31, 171 users,  load average: 0.06, 0.04,
 0.05
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_232502_732021_6773D2FE 
X-CRM114-Status: GOOD (  29.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-kernel <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Sakari Ailus <sakari.ailus@iki.fi>, Maxime Ripard <maxime@cerno.tech>,
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

On 20-04-30 18:11, Robert Foss wrote:
> Hey Marco,
> 
> On Thu, 30 Apr 2020 at 14:07, Marco Felsch <m.felsch@pengutronix.de> wrote:
> >
> > On 20-04-30 13:20, Sakari Ailus wrote:
> > > On Thu, Apr 30, 2020 at 12:11:57PM +0200, Marco Felsch wrote:
> > > > On 20-04-30 12:59, Sakari Ailus wrote:
> > > > > Hi Marco,
> > > > >
> > > > > On Thu, Apr 30, 2020 at 11:53:32AM +0200, Marco Felsch wrote:
> > > > > > Hi Sakari,
> > > > > >
> > > > > > On 20-04-30 12:45, Sakari Ailus wrote:
> > > > > > > Hi Marco,
> > > > > > >
> > > > > > > On Thu, Apr 30, 2020 at 11:35:24AM +0200, Marco Felsch wrote:
> > > >
> > > > ...
> > > >
> > > > > > > > > - if (mclk != OV8856_MCLK) {
> > > > > > > > > -         dev_err(dev, "external clock %d is not supported", mclk);
> > > > > > > > > -         return -EINVAL;
> > > > > > > > > + if (!is_acpi_node(fwnode)) {
> > > > > > > > > +         ov8856->xvclk = devm_clk_get(dev, "xvclk");
> > > > > > > > > +         if (IS_ERR(ov8856->xvclk)) {
> > > > > > > > > +                 dev_err(dev, "could not get xvclk clock (%pe)\n",
> > > > > > > > > +                                 ov8856->xvclk);
> > > > > > > > > +                 return PTR_ERR(ov8856->xvclk);
> > > > > > > > > +         }
> > > > > > > > > +
> > > > > > > > > +         clk_set_rate(ov8856->xvclk, xvclk_rate);
> > > > > > > > > +         xvclk_rate = clk_get_rate(ov8856->xvclk);
> > > > > > > > >   }
> > > > > > > >
> > > > > > > > Why do we handle the clock only in DT case? Is there a problem with the
> > > > > > > > clock handling and ACPI?
> > > > > > >
> > > > > > > Not really, it's just that ACPI does not provide an interface to the clocks
> > > > > > > as such.
> > > > > >
> > > > > > But you will get a clk by devm_clk_get()?
> > > > >
> > > > > No, because ACPI does not expose one to drivers. Effectively the entire
> > > > > power sequences are implemented in ACPI, not in the driver.
> > > > >
> > > >
> > > > Ah okay, thanks for the explanation. I'm really not into the ACPI
> > > > stuff.. So this means the __power_off / power_on should only be done if
> > > > we are using DT's?
> > >
> > > Correct. That's why it bails out early. It could be yet earlier though,
> > > without doing anything.
> >
> > Yes I see. For easier and error less prone handling I would prefer:
> >
> > if (is_acpi_node())
> >         return 0;
> >
> > as first instruction for __power_off/on().
> 
> __ov8856_power_on() does make a check like that, albeit only after
> having run clk_prepare_enable() which won't do anything due to
> ov8856->xvclk==NULL. So this should be fixed and be moved to after the
> ACPI check.

Yep, I saw that. I didn't checked the clk_prepare_enable() function and
just saw that we don't request the clk for the acpi case and enable it
in both cases. This doesn't sound right to me.

> __ov8856_power_off() has no ACPI check, but all of the calls it makes
> are going to do nothing due to v8856->reset_gpio / v8856->reset_gpio /
> ov8856->xvclk all being NULL or dummies. For the sake of clarity an
> early ACPI check+return could be added, but if clarity is the goal a
> comment would work too.

Thanks god that most of the library functions taking NULL into account
=) But I think we have to take the regulator count into account. Again I
don't know how the ACPI part is working. What happens if we request
regulators which aren't listed within the ACPI table? In case of DT
there will be added dummy-regulator. If this is the case for ACPI too we
are ending in an unbalanced regulator enable/disable count since you
enable it for the DT case and disable it in both cases.

> >
> > Also I would refactor the ov8856_check_hwcfg() so the common part can be
> > used by this function and by a ov8856_parse_of() function. But thats
> > only my opinion.
> 
> I'm trying to grok the above paragraph. You'd like to see something in
> the style of tc358743_probe_of()?

You don't have to if Saki is fine with the current patch. Just saying
that it would be a bit easier for the patch review.

Regards,
  Marco

> >
> > Regards,
> >   Marco
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
