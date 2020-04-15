Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6651A9A43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:18:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pW3SJsDw94Wp9j9fJFM7mNP+i/DJEwOo27XGvwiZ9a0=; b=p+hudrZrc+RPTNrU5Vh68dJQX
	rUcIDiHhjF19H2vq3mblzSNn3+3K3Bfnn2f1IU23aPKTIKwLgiuUzT7c5k9844rOeVg1gAHYC+Zob
	D7pGTpi9kQ9BB6TttpAlO90hKM+nEhrVa7ARPvIc5HK9xgnbzxCgibVDtnzgC1nj5kQ9gO5RogBl1
	6zHHwxFciXkw+iMCOrH/2tCH/S0BAGiGAsuNYdKfb2UE7QmGMoybUYPoVZoa1Xzl010npchuYf2ta
	8QsVRqdCYu/L6Am9eqy5+y9j91+YA8quloLygcFgnzgxk7RQuFUBQeGk/TIDjknwX4VtH/oeHXPsK
	5obOp3fcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOf7x-0007FR-Oy; Wed, 15 Apr 2020 10:18:41 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOf7o-0007Eh-To
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:18:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id D4FD480E;
 Wed, 15 Apr 2020 06:18:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 06:18:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=pC7yvVnFLmc0WK4x+uGmYIrKhsS
 Qyhagqa5MEVVJuoE=; b=ULLZm674TrlR00qFVGl4UlTEmZkUgylnKVthGaTwAt0
 DjCOV7pktVOwSCzccxqAKhsjAMNEyhl3ZUQY9wkJRR5fFE2wH6rpi3vVxN0yax8r
 J34iuBfFBm5RCqGrCGH/59Ephj0/pLXLV9oMFclYOkyiJo4dEiw0IXS98WXIQ+j6
 8/xfq5kJiMuYB/aLM+9K5oYe+v0bbOL5ye7EPrBT6oP1AZTc6zKcVBck/6m6QAvA
 Ez069ZLmwWtxJmMOsDQ4fGtGw3MAAl+QhgHuPK9R/rRdAgQF0VhRhsXFdUSVoWjl
 R053DN1zTZiVVFZ7y9WvjG6jRpR5NiZfYuGfOm5AwzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=pC7yvV
 nFLmc0WK4x+uGmYIrKhsSQyhagqa5MEVVJuoE=; b=2jLE8cSCrndRhcMyJRIXYp
 9Oqd15rB9A0XWXRXxdEUp36YNtwFQXYHhvl4Nit0Xk78Snox4o/fQF+3XKbburhn
 BbkQh9y749aEtBdxBqdTfXl33zcnUiybiT/rTxpdJFLskuJAk1pUEnVkVqnUgn03
 5OmLhqa2VsruiBMa3wUxSLkzi4UY2RbvsG4FcEy73xU3lLQeC9obXvRVLRdouFs1
 mWeQvdr7PEym6V4fTfveDGtFdMwHSDl+9iLydtprk6lpg667oMzq6HfOXQWLiMyO
 8+cuAY3UgashB0XuFL3iJp6uT7lTu0V68b7xIQ33RD/Mxpkhkx1qsqizEkx1lM2g
 ==
X-ME-Sender: <xms:dN-WXr5B5g0dJB_qAIyr1diBMMPEgyFJ_6wSII99rhOVgSkdA3pArw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgdduhecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinh
 epkhgvrhhnvghlrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgv
 rhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnh
 hordhtvggthh
X-ME-Proxy: <xmx:dN-WXkC0Zvx98MDbKBdxtP2zHAMkk-q9FYjODdbx8wCX20I-xrmZaQ>
 <xmx:dN-WXv7Q7Iwc7NK9EuaSlDOcHTP2JjeTeU_n7aJZVKYwlGnELXVdjw>
 <xmx:dN-WXguv48EFFIy6BmZGzToHbI_Hm9DapW3UIcc5xIVQql0HH677qw>
 <xmx:dt-WXsqvYP13Ihx95XMcjVpZCS6uesVoG67QodBrI8siSl_pevgH4cx-Ogs>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A651E3280067;
 Wed, 15 Apr 2020 06:18:28 -0400 (EDT)
Date: Wed, 15 Apr 2020 12:18:27 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Sakari Ailus <sakari.ailus@iki.fi>
Subject: Re: [PATCH v6 1/3] media: dt-bindings: ov8856: Document YAML bindings
Message-ID: <20200415101827.owf5babnigev2vit@gilmour.lan>
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
MIME-Version: 1.0
In-Reply-To: <20200408153051.GP6127@valkosipuli.retiisi.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_031833_003667_5319CCC6 
X-CRM114-Status: GOOD (  35.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 Robert Foss <robert.foss@linaro.org>, Tomasz Figa <tfiga@chromium.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1679850745512385503=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1679850745512385503==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nyrshlxfcxcrev3h"
Content-Disposition: inline


--nyrshlxfcxcrev3h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 08, 2020 at 06:30:51PM +0300, Sakari Ailus wrote:
> Cc'ing Laurent as well.
>
> On Wed, Apr 08, 2020 at 06:28:57PM +0300, Sakari Ailus wrote:
> > Hi Maxime,
> >
> > On Wed, Apr 08, 2020 at 03:43:15PM +0200, Maxime Ripard wrote:
> > > On Wed, Apr 08, 2020 at 02:35:28PM +0200, Tomasz Figa wrote:
> > > > On Wed, Apr 8, 2020 at 2:21 PM Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > On Tue, Apr 07, 2020 at 08:20:35PM +0300, Sakari Ailus wrote:
> > > > > > On Tue, Apr 07, 2020 at 06:46:06PM +0200, Tomasz Figa wrote:
> > > > > > > On Tue, Apr 7, 2020 at 6:40 PM Sakari Ailus <sakari.ailus@iki.fi> wrote:
> > > > > > > >
> > > > > > > > On Tue, Apr 07, 2020 at 05:47:41PM +0200, Robert Foss wrote:
> > > > > > > > > On Tue, 7 Apr 2020 at 14:32, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > > > > >
> > > > > > > > > > Hi Robert,
> > > > > > > > > >
> > > > > > > > > > On Tue, Apr 07, 2020 at 01:29:05PM +0200, Robert Foss wrote:
> > > > > > > > > > > On Tue, 7 Apr 2020 at 10:36, Maxime Ripard <maxime@cerno.tech> wrote:
> > > > > > > > > > > > On Mon, Apr 06, 2020 at 11:35:07AM +0300, Sakari Ailus wrote:
> > > > > > > > > > > > > > But that 19.2MHz is not a limitation of the device itself, it's a
> > > > > > > > > > > > > > limitation of our implementation, so we can instead implement
> > > > > > > > > > > > > > something equivalent in Linux using a clk_set_rate to 19.2MHz (to make
> > > > > > > > > > > > > > sure that our parent clock is configured at the right rate) and the
> > > > > > > > > > > > > > clk_get_rate and compare that to 19.2MHz (to make sure that it's not
> > > > > > > > > > > > > > been rounded too far apart from the frequency we expect).
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > This is doing exactly the same thing, except that we don't encode our
> > > > > > > > > > > > > > implementation limitations in the DT, but in the driver instead.
> > > > > > > > > > > > >
> > > > > > > > > > > > > What I really wanted to say that a driver that doesn't get the clock
> > > > > > > > > > > > > frequency from DT but still sets that frequency is broken.
> > > > > > > > > > > > >
> > > > > > > > > > > > > This frequency is highly system specific, and in many cases only a certain
> > > > > > > > > > > > > frequency is usable, for a few reasons: On many SoCs, not all common
> > > > > > > > > > > > > frequencies can be used (e.g. 9,6 MHz, 19,2 MHz and 24 MHz; while others
> > > > > > > > > > > > > are being used as well), and then that frequency affects the usable CSI-2
> > > > > > > > > > > > > bus frequencies directly --- and of those, only safe, known-good ones
> > > > > > > > > > > > > should be used. IOW, getting the external clock frequency wrong typically
> > > > > > > > > > > > > has an effect that that none of the known-good CSI-2 bus clock frequencies
> > > > > > > > > > > > > are available.
> > > > > > > > > > > >
> > > > > > > > > > > > So clock-frequency is not about the "Frequency of the xvclk clock in
> > > > > > > > > > > > Hertz", but the frequency at which that clock must run on this
> > > > > > > > > > > > particular SoC / board to be functional?
> > > > > > > > > > > >
> > > > > > > > > > > > If so, then yeah, we should definitely keep it, but the documentation
> > > > > > > > > > > > of the binding should be made clearer as well.
> > > > > > > > > > >
> > > > > > > > > > > Alright so, let me summarise the desired approach then.
> > > > > > > > > >
> > > > > > > > > > There's a separate discussion on the same topic here:
> > > > > > > > > > https://lore.kernel.org/linux-media/20200407122106.GD4751@pendragon.ideasonboard.com/
> > > > > > > > >
> > > > > > > > > Thanks for the link.
> > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > > ACPI:
> > > > > > > > > > >   - Fetch the "clock-frequency" property
> > > > > > > > > > >   - Verify it to be 19.2Mhz
> > > > > > > > > > >
> > > > > > > > > > > DT:
> > > > > > > > > > >   - Fetch the "clock-frequency" property
> > > > > > > > > > >   - Verify it to be 19.2Mhz
> > > > > > > > > > >   - Get xvclk clock
> > > > > > > > > > >   - Get xvclk clock rate
> > > > > > > > > > >   - Verify xvclk clock rate to be 19.2Mhz
> > > > > > > > > >
> > > > > > > > > > The current status is that you should
> > > > > > > > > > 's/clock-frequency/link-frequencies/', and in order to replace
> > > > > > > > > > assigned-clock-rates, you'll want to have a clk_set_rate to 19.2MHz
> > > > > > > > > > between steps 3 and 4
> > > > > > > > >
> > > > > > > > > Would we want to 's/clock-frequency/link-frequencies/' for ACPI too?
> > > > > > > > > I imagine that would cause some breakage.
> > > > > > > >
> > > > > > > > It would, yes, and it would be no more correct on DT either.
> > > > > > > >
> > > > > > > > There are basically two possibilities here; either use the clock-frequency
> > > > > > > > property and set the frequency, or rely on assigned-clock-rates, and get
> > > > > > > > the frequency instead.
> > > > > > > >
> > > > > > > > The latter, while I understand it is generally preferred, comes with having
> > > > > > > > to figure out the register list set that closest matches the frequency
> > > > > > > > obtained. The former generally gets around this silently by the clock
> > > > > > > > driver setting the closest frequency it can support.
> > > > > > >
> > > > > > > Wouldn't the former actually cause problems, because the closest
> > > > > > > frequency the clock driver can support could be pretty far from the
> > > > > > > one requested? (E.g. 19.2 MHz vs 24 MHz) The driver needs to check the
> > > > > > > resulting frequency anyway.
> > > > > >
> > > > > > That's possible, yes; in this case there wouldn't be a guarantee the
> > > > > > frequency wouldn't be far off.
> > > > >
> > > > > assigned-clock-rates is really fragile... There's zero guarantee on
> > > > > how far the actual rate is going to be from the asked one, but more
> > > > > importantly you have zero guarantee on the time frame that rate is
> > > > > going to be enforced for.
> > > >
> > > > Is there such a guarantee if clk_set_rate() is called?
> > >
> > > with clk_set_rate itself, no, but...
> > >
> > > > > It's simply going to change the rate as a one-off thing, and if
> > > > > there's the next millisecond someone else is going to change its rate
> > > > > one way or another, it's going to do so and you won't have any
> > > > > notification.
> > >
> > > You can get notified, and you can use clk_set_rate_exclusive if you
> > > *really* want to enforce it.
> >
> > Is the conclusion then we should go back to relying on the clock-frequency
> > property?

clock-frequency or link-frequencies. link-frequencies seems to be a
better fit here, but we don't really have the choice for older
bindings.

> > This has been discussed multiple times over the years, and I don't really
> > disagree with the above. The frequency is typically indeed hand-picked for
> > the hardware, and no other frequency should be used in any circumstances.
> >
> > No sensor driver I've seen has used clk_set_rate_exclusive() but I guess
> > they should. The absence of practical problems has been probably because of
> > two factors; firstly, these are typically clocks dedicated to the sensors
> > and secondly, good luck.

My point was that at least with handling the clock rate within the
driver (as opposed to assigned-clock-rates) you have multiple options
in dealing with changing colck rates / parents (Modelling the sensor
clock as a clock itself, using clk_set_rate_exclusive, using a
notifier, etc).. Some are more intrusive to the rest of the system
than others (especially clk_set_rate_exclusive), so I'm not really
advocating for any here, but we should make sure we have them in the
first place.

Maxime

--nyrshlxfcxcrev3h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpbfcwAKCRDj7w1vZxhR
xZr+AQDkW0ChusXkCuuZ1ekMimOwuNYowZ2jcYuxc4OvYyQLEQEAm7ZbuCemshiW
pfvKQV+PU9QKzQ9cuhAar07m8yiUfwI=
=+VzY
-----END PGP SIGNATURE-----

--nyrshlxfcxcrev3h--


--===============1679850745512385503==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1679850745512385503==--

