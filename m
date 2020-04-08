Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C0C1A21D3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J22XcZeoHNneT/V48nCgBTL++4EqplYMtxa0LJXKmWU=; b=I/87S15LeArsqVmE4ER7Rw4eE
	yZ6+ybSszSZx/14sJn8V0EOMmFQr3kAG+haEgA3dPHQeVcdDf4h+/Fyl5m+baESFHbeOJOzFG6rvs
	c9qJxU3eljCSOTwYA+A6uq67wpyQSQnAu4wZJmuD7UO5l+q7rwQpNf/4off7O2JqdQ2k6QUcsEuxd
	WknwAODn4pVeyqjitoK0lQ9TBFsgkx24KMCgO6/MGXU6yDbGoYPey+xciukH4UopUHIFFuR83WJ7Q
	YHcL+1Uo69aXxl1Q7HIsw5kPv+5N0vhOVZycpelMNCNm2uMzzegYNeo+IxIsCkYChqAu6d5mp9ULe
	e3BEh+NNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9iB-00008y-Ft; Wed, 08 Apr 2020 12:21:43 +0000
Received: from wout3-smtp.messagingengine.com ([64.147.123.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9i2-00007L-8f
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 12:21:36 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id B437763A;
 Wed,  8 Apr 2020 08:21:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 08 Apr 2020 08:21:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=eKznV0EiL5YFZpOgXi3T6SWekp5
 tEc/i2dZyn4lI7YQ=; b=y3G6SnJRMJ7Tk4hZZx8sIMN5la8gvlHS+CaUAFWbE3X
 /Vb1XWbWYfkKhtxebVqYJ28/vxzsg9bDLTHLMF5NNUEchjO6ds+4093X8CA1fUOE
 EHR+572XFc7A0MXPnVB3u86Tkz+wG2W5XTYU7WYQw8gF0voKc8ZpjzwTbChCTWTK
 C6xQaYhb9zlPXoFQkR2UvLJgiiH4vt/8Pk06capoTJbfCKcmhGpJGLTSIuMZinxt
 OGisGKVFqkNAooHR5EpCgsJMCT0uzr2qWH02sjI5fSX+6h06V2Qxu1K0EZibOult
 bM2Evg+B1ocQxjnBZbuV3oFN0owIz3CIDriO4IQWFOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=eKznV0
 EiL5YFZpOgXi3T6SWekp5tEc/i2dZyn4lI7YQ=; b=TQl2L42OzyQBtTjJNcWyY+
 6qxikGDjDfVNQeb+XwsoquQq8fWGCGjYNLNl6PKednklRaBcGAyDfZCkOy9ztUrW
 YcP3egDOwtqd16/APpKmN0q30nLytvNlrW0HCgll5rw23Om7DBUC6IGg1wC0N8zP
 bCBhKW9Ce1cjW0HhMGBG74BTC+ciyyFMyFzVf0NRg5TM1/AoK0ygYwPVJaCy4tJl
 BCjfVPqjCqIuMrhbEQvikJvhUa50KcdEPNROeQfLMn+sjTXCqzhm4k4eqHZr3M6X
 i0vY9VY8D2pgkRW6E43i18wE1dkrze4/pPlO/9hlgWfim2yw2j8z6h/nDW9k6akA
 ==
X-ME-Sender: <xms:ycGNXtk1MzxgRg_KwThRKNaXvYijIRp1Zw8jodCfG5omNEiJ_ZkO1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudejgdehudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epkhgvrhhnvghlrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:ycGNXiXGq7FhPt5qpuT2E7PiP8wjLoHZh8iRn3_qd8v_U-emvXZPiQ>
 <xmx:ycGNXn7I9-wlrv7qgD9ALd8iWNxZl1FRz0VnrEpLVUH-HpaEY5aEPQ>
 <xmx:ycGNXlLcRgosgpvrJyurZmT3IKu8F0Nkr6FbI1qfigopqq7VvZTW8A>
 <xmx:ysGNXk8puO2wGE6Qy3VjvwYey2vezEq3FSeB8yA2jO-2-GP_bCsHVg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4EDE33280070;
 Wed,  8 Apr 2020 08:21:29 -0400 (EDT)
Date: Wed, 8 Apr 2020 14:21:27 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200408122127.i27hrmjh3pbjeulk@gilmour.lan>
References: <20200403232736.GA6127@valkosipuli.retiisi.org.uk>
 <20200404093446.vuvwrhn5436h4d3s@gilmour.lan>
 <20200406083506.GE6127@valkosipuli.retiisi.org.uk>
 <20200407083647.4mocdl7aqa3x737q@gilmour.lan>
 <CAG3jFyvd32pWppubMoOoyH9eO2XLjwUXMC7p4xtv8m+JkPv6vw@mail.gmail.com>
 <20200407123232.ktvaifhqntgzvkap@gilmour.lan>
 <CAG3jFysSrZJRE2TvL0bWoRFNnscgDGj8yGr-iwWBm4=1wMbJ9A@mail.gmail.com>
 <20200407163916.GL6127@valkosipuli.retiisi.org.uk>
 <CAAFQd5BGFB5znb9QyyPVL47kc809Ktu33bssvqg5eA-WwvMgOw@mail.gmail.com>
 <20200407172035.GM6127@valkosipuli.retiisi.org.uk>
MIME-Version: 1.0
In-Reply-To: <20200407172035.GM6127@valkosipuli.retiisi.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_052134_623925_6DBDDD99 
X-CRM114-Status: GOOD (  29.27  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.19 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============3929995060205434999=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3929995060205434999==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kc7rymy56ghls6sm"
Content-Disposition: inline


--kc7rymy56ghls6sm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 07, 2020 at 08:20:35PM +0300, Sakari Ailus wrote:
> On Tue, Apr 07, 2020 at 06:46:06PM +0200, Tomasz Figa wrote:
> > On Tue, Apr 7, 2020 at 6:40 PM Sakari Ailus <sakari.ailus@iki.fi> wrote:
> > >
> > > On Tue, Apr 07, 2020 at 05:47:41PM +0200, Robert Foss wrote:
> > > > On Tue, 7 Apr 2020 at 14:32, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > >
> > > > > Hi Robert,
> > > > >
> > > > > On Tue, Apr 07, 2020 at 01:29:05PM +0200, Robert Foss wrote:
> > > > > > On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > > On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > > > > > > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > > > > > > > limitation of our implementation, so we can instead implement
> > > > > > > > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > > > > > > > sure that our parent clock is configured at the right rate) and the
> > > > > > > > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > > > > > > > been rounded too far apart from the frequency we expect).
> > > > > > > > >
> > > > > > > > > This is doing exactly the same thing, except that we don't encode our
> > > > > > > > > implementation limitations in the DT, but in the driver instead.
> > > > > > > >
> > > > > > > > What I really wanted to say that a driver that doesn't get the clock
> > > > > > > > frequency from DT but still sets that frequency is broken.
> > > > > > > >
> > > > > > > > This frequency is highly system specific, and in many cases only a certain
> > > > > > > > frequency is usable, for a few reasons: On many SoCs, not all common
> > > > > > > > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > > > > > > > are being used as well), and then that frequency affects the usable CSI-2
> > > > > > > > bus frequencies directly --- and of those, only safe, known-good ones
> > > > > > > > should be used. IOW, getting the external clock frequency wrong typically
> > > > > > > > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > > > > > > > are available.
> > > > > > >
> > > > > > > So clock-frequency is not about the "Frequency of the xvclk clock in
> > > > > > > Hertz", but the frequency at which that clock must run on this
> > > > > > > particular SoC / board to be functional?
> > > > > > >
> > > > > > > If so, then yeah, we should definitely keep it, but the documentation
> > > > > > > of the binding should be made clearer as well.
> > > > > >
> > > > > > Alright so, let me summarise the desired approach then.
> > > > >
> > > > > There's a separate discussion on the same topic here:
> > > > > https://lore.kernel.org/linux-media/20200407122106.GD4751@pendragon.ideasonboard.com/
> > > >
> > > > Thanks for the link.
> > > >
> > > > >
> > > > > > ACPI:
> > > > > >   - Fetch the "clock-frequency" property
> > > > > >   - Verify it to be 19.2Mhz
> > > > > >
> > > > > > DT:
> > > > > >   - Fetch the "clock-frequency" property
> > > > > >   - Verify it to be 19.2Mhz
> > > > > >   - Get xvclk clock
> > > > > >   - Get xvclk clock rate
> > > > > >   - Verify xvclk clock rate to be 19.2Mhz
> > > > >
> > > > > The current status is that you should
> > > > > 's/clock-frequency/link-frequencies/', and in order to replace
> > > > > assigned-clock-rates, you'll want to have a clk_set_rate to 19.2MHz
> > > > > between steps 3 and 4
> > > >
> > > > Would we want to 's/clock-frequency/link-frequencies/' for ACPI too?
> > > > I imagine that would cause some breakage.
> > >
> > > It would, yes, and it would be no more correct on DT either.
> > >
> > > There are basically two possibilities here; either use the clock-frequency
> > > property and set the frequency, or rely on assigned-clock-rates, and get
> > > the frequency instead.
> > >
> > > The latter, while I understand it is generally preferred, comes with having
> > > to figure out the register list set that closest matches the frequency
> > > obtained. The former generally gets around this silently by the clock
> > > driver setting the closest frequency it can support.
> >
> > Wouldn't the former actually cause problems, because the closest
> > frequency the clock driver can support could be pretty far from the
> > one requested? (E.g. 19.2 MHz vs 24 MHz) The driver needs to check the
> > resulting frequency anyway.
>
> That's possible, yes; in this case there wouldn't be a guarantee the
> frequency wouldn't be far off.

assigned-clock-rates is really fragile... There's zero guarantee on
how far the actual rate is going to be from the asked one, but more
importantly you have zero guarantee on the time frame that rate is
going to be enforced for.

It's simply going to change the rate as a one-off thing, and if
there's the next millisecond someone else is going to change its rate
one way or another, it's going to do so and you won't have any
notification.

And even semantically, they do not share the same meaning at all, so
we should really stop using assigned-clock-rates if we can, instead of
pushing it.

Maxime

--kc7rymy56ghls6sm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXo3BxwAKCRDj7w1vZxhR
xWhbAP9X25KKaNSaUW1/Jij1L0q+JM7MlxgflP4JGoAWoYhzEwEA0p3y5pIaWdWz
0+7krLCpqDit6ypGh6H5SOeFZ2zpgAw=
=IwZI
-----END PGP SIGNATURE-----

--kc7rymy56ghls6sm--


--===============3929995060205434999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3929995060205434999==--

