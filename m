Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABC31F7AFF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 17:36:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yk1aPtJrCloksAhWwh4QpkuykiVtLmSYIsHWtnpKRhE=; b=QrlgzvkvPqyH7+PTY+p2lm3K8
	1sZrJBlw416R0+azcvSGQifISIzPedkf89WF2BpFz21EV8+qOenrIqvadvnV8QOO69tahkt2ranJn
	n7AfaMN5rweQvUMjvKps620haRPWXoqGdWteO5i3j97CP/NrK5JaIrGixfbGRmwgm5/+R4J95+pwa
	YawP2JEVamFMuGjj4ezVhp5KqvTAGerdBV/Cv5zqxgu+ZgHRfrtZo55t3WvytNPAAkNwqJYgqfLWc
	it1Rs9MRJ5qYq4zOFvMPFl0EsaEa8mXDg33oHARoV4k5JSQv2pGWUnKbn59WOMH3DaXUvPQkxrIFp
	xsfy/8f4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjlj3-0003uo-00; Fri, 12 Jun 2020 15:36:13 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjliu-0003tl-Hv; Fri, 12 Jun 2020 15:36:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 938105C01A5;
 Fri, 12 Jun 2020 11:36:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 12 Jun 2020 11:36:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=i46wPfrcUIR0bEAZlAykfvGtcc2
 1AKB8ziEcZQaaqkw=; b=BnwR7wP2lY41wkLEtaL3I1g01xCASKpwAAI7z2XF24F
 rNBvnzNRsYm2jdjA32TOQelLkZd9bPZ2PHiC5tU/o4VqgpnjIytRWO1aKF4gK2y8
 UZuY9GiJEfq041OS0ipEUk8lRFc8yNBEPbwRY/SNZlWvxPtCY38pcojsDRiX1Bio
 uiNxXDU0e5KPmslLxHvGhKr6mAuqCNm/JR0gGm8PHzV3IDMHKrs1xNJYppql9XRw
 NlpZ/zNQhojPrcwRsWkuaKbpHw2sXnZ1PIBCnIEgqz1RAIly95UXujl5xPquwj26
 unquYGFtTijdtxd/vw/sOU81LST4Cl190fxQVyxrSbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=i46wPf
 rcUIR0bEAZlAykfvGtcc21AKB8ziEcZQaaqkw=; b=X5b6o91SO/aDmqT6iWePhe
 lDkgjaJJ59dVQoB8qP/jnAvNqt4nMhengMrO1EPhIDRmaMRDz28TslaqLtbvJyKL
 bD02iLd6HyakJTRgqTQJIn2yVeXWGgg/8vOlqgP4oXL/Em4oRT4E4p6LZ2DUrEQP
 I6b8+fvFWqEIgTuf3nMgUOujxY8RsRSAGNdwvQYTtj6mdNuDoyYzwGpQmnTLGehY
 n0f4O4EMaVgFOql3ddH4OWcJj5a1X1q0N+OfSMx7o3orjB+UijQqLAF0gl+Fabkd
 P1ttHEs3RJFFqgdkkY8mX51LkXJSmviMOOmm8XZaBKXBi2TWJbnEczTgwGsQk3kQ
 ==
X-ME-Sender: <xms:4KDjXgEg8GE_QHnW5MKlqja3GyOfCe6e_8Bj77QSByNcAeZzVBhgSQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeiuddgledvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:4KDjXpWi4BZThfNVw3Rs8D334SYqOA4xl4d-LVhhW44eH2YMNT4SPg>
 <xmx:4KDjXqJvc54evPMOFJFdT7NaOmc0h7U4-1RFN73w6WgXtKEo7Dss_w>
 <xmx:4KDjXiGArdcVByWkVn_aveCfrcZ33-GZihId-VHUAbG6ZeTOT7b5sQ>
 <xmx:4KDjXoKHGUr-bt_Qs5S2k8v2ixtTNUqdfGgeFB9v9ItkIvAPvv5iiw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C39BA30614FA;
 Fri, 12 Jun 2020 11:35:59 -0400 (EDT)
Date: Fri, 12 Jun 2020 17:35:58 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Eric Anholt <eric@anholt.net>
Subject: Re: [PATCH v3 032/105] drm/vc4: crtc: Enable and disable the PV in
 atomic_enable / disable
Message-ID: <20200612153558.3ekadlu3e2qctvf6@gilmour.lan>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <d2c1850e38e14f3def4c0307240e6826e296c14b.1590594512.git-series.maxime@cerno.tech>
 <CADaigPU7c=1u47R9GzvGCH_Z2fywY1foGYEy=KbBikjUQpwUFg@mail.gmail.com>
 <20200602141228.7zbkob7bw3owajsq@gilmour>
 <CAPY8ntDZWJeu14mL5a0jqUWHFOEWm2OOBBkh4yjjP0oLU83UCQ@mail.gmail.com>
 <CADaigPUHPhdrt9JkTfaw0iT7Z8z3Si-v2VJ-s+dhnFQaDNkAaA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADaigPUHPhdrt9JkTfaw0iT7Z8z3Si-v2VJ-s+dhnFQaDNkAaA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_083604_995388_A57557F8 
X-CRM114-Status: GOOD (  22.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0324460164536213760=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0324460164536213760==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kjenvng7r4phiuyn"
Content-Disposition: inline


--kjenvng7r4phiuyn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Eric,

On Tue, Jun 02, 2020 at 12:31:37PM -0700, Eric Anholt wrote:
> On Tue, Jun 2, 2020 at 8:02 AM Dave Stevenson
> <dave.stevenson@raspberrypi.com> wrote:
> >
> > Hi Maxime and Eric
> >
> > On Tue, 2 Jun 2020 at 15:12, Maxime Ripard <maxime@cerno.tech> wrote:
> > >
> > > Hi Eric
> > >
> > > On Wed, May 27, 2020 at 09:54:44AM -0700, Eric Anholt wrote:
> > > > On Wed, May 27, 2020 at 8:50 AM Maxime Ripard <maxime@cerno.tech> w=
rote:
> > > > >
> > > > > The VIDEN bit in the pixelvalve currently being used to enable or=
 disable
> > > > > the pixelvalve seems to not be enough in some situations, which w=
hill end
> > > > > up with the pixelvalve stalling.
> > > > >
> > > > > In such a case, even re-enabling VIDEN doesn't bring it back and =
we need to
> > > > > clear the FIFO. This can only be done if the pixelvalve is disabl=
ed though.
> > > > >
> > > > > In order to overcome this, we can configure the pixelvalve during
> > > > > mode_set_no_fb, but only enable it in atomic_enable and flush the=
 FIFO
> > > > > there, and in atomic_disable disable the pixelvalve again.
> > > >
> > > > What displays has this been tested with?  Getting this sequencing
> > > > right is so painful, and things like DSI are tricky to get to light
> > > > up.
> > >
> > > That FIFO is between the HVS and the HDMI PVs, so this was obviously
> > > tested against that. Dave also tested the DSI output IIRC, so we shou=
ld
> > > be covered here.
> >
> > DSI wasn't working on the first patch set that Maxime sent - I haven't
> > tested this one as yet but will do so.
> > DPI was working early on to both an Adafruit 800x480 DPI panel, and
> > via a VGA666 as VGA.
> > HDMI is obviously working.
> > VEC is being ignored now. The clock structure is more restricted than
> > earlier chips, so to get the required clocks for the VEC without using
> > fractional divides it compromises the clock that other parts of the
> > system can run at (IIRC including the ARM). That's why the VEC has to
> > be explicitly enabled for the firmware to enable it as the only
> > output. It's annoying, but that's just a restriction of the chip.
>=20
> I'm more concerned with "make sure we don't regress pre-pi4 with this
> series" than "pi4 displays all work from the beginning"

I tested the DSI today on an RPI3, and I had to fix an issue with the
HVS-PV muxing, but otherwise it works with this series. Otherwise, the
HDMI and TXP work on the Pi3 too, I'll give a try to the VGA adapter on
it next week to test DPI too.

As a side note, my DSI display without my patches gives DSI transfer
timeouts at boot, since at least (mainline) 5.4, I haven't tested
further back. It just stalls the modeset for a while, but the display
works fine after that.

Does that ring any bell?

Maxime

--kjenvng7r4phiuyn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXuOg3gAKCRDj7w1vZxhR
xRIVAQCQ9i9hYXPvUtEka4284eq9v67Twhyjfiex//nc2r4PIAD7BvQEVc4JW4id
g0nVDJpdj1tkhinSfTe+fu1vNaG1fgU=
=qQpW
-----END PGP SIGNATURE-----

--kjenvng7r4phiuyn--


--===============0324460164536213760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0324460164536213760==--

