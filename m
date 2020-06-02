Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9452C1EBDB4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 16:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bo4ctyrvCeAxPqtOaEz90NtiOXSU04F5dZ5p83SpkwY=; b=eseervpIpq4LPBUPnI4x7HGdp
	ugDaogp7ECUMGU9B7sJ9CEtI+Y4tOfGtW7r7t4zhFpWFd18aejBErPmvUoBEa5Uv2fXw8JmLETxVg
	NrzpFzt2TlkwwWTGCA2flKaXYISqWgTstr/s9BZfkK3EHesVGfdK0By0IgWR94fRjHpETiC+r/hgj
	tzW5iAXKYIckD9+3njDIHYzXbzBha31tT+gCa8BYG1T09QQGPBYcLca2aEVU3BH/4I6Mvh2u1cqLR
	8cicepSMRARUYpv7FEMlAGt+LyR41COBKLcETXwbUU4vgBo1lp/6V+oiEmqZVxTY9MsHYKVvQ2u+Z
	HMILmQkBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg7eq-0004ms-HI; Tue, 02 Jun 2020 14:12:48 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg7ek-0004mJ-8c; Tue, 02 Jun 2020 14:12:43 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id DF8795C00B9;
 Tue,  2 Jun 2020 10:12:31 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 02 Jun 2020 10:12:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=6nfNzIAdvv+2u2nlDiEbeWjNRvu
 HHWtTui6XJIgYRnc=; b=jAUnEuWco8XlUL2BK4xM3qarlYtcrL+3VZ0Ym1RM8WD
 5b5AAbDS7DVtJLbQknXzWWrhrpvUmpN+U91zfJ/soaK39ndvePIEKUYrmuaYORGT
 4x4KrUOhaCRClx3KNGcWEfuICJLq4t/tib5EP7eCG2goCt9YRerKedfW13jepPtt
 gQfFqQdfKJECr7Ryku8u4/aj91qVPIWaanSp5Lf6hJ9DyGbX3AlSGd6xbVjW8cKl
 1YYlss8WlFoEHFBdGOQIyJU95rSRjeLHy9WnuIQ0/RukKbrtbo/BcUFoTVAo47LU
 RCDQDZR3nu5zpnpUyMOWUI2krXgijryDKSx0XSSXa+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=6nfNzI
 Advv+2u2nlDiEbeWjNRvuHHWtTui6XJIgYRnc=; b=Hu4oqsVsaTtiSj5i7jvC4r
 NsH/ZN/D2lCDRDqGz7TrWtTeQC8EuTYqs8G+Ezfb2mLymz9Xa/BzSxNEG9ZJ/gkl
 aM4h2IdDYABb7EuvQadKyThkjSB7SWHRbP7hEXazK9mRUBdqlSu9S/LCB9qu/1uE
 cc7vfIdIqQ9TBsQB47COChmIFjY4vopQ9L7wsIbPBJyzNRq84CIRqr0yf4Z2SekP
 KnWNl28M5SNbFUF8ctmDHpeEgz8cJIN06TajSckWZuIWNk+TkiOD49pxb2TyMkQz
 z2IAUcviiPttjrseNGyOyJGVGz00DUZASBdrdOIzjfR1tBqNBwXhPMzrz2dCQdpw
 ==
X-ME-Sender: <xms:TV7WXo9CO17tSpLgPFR7ZfnEb5jzmTgd-KulMWm5-4SGMKqS_moV-A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefjedgheegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:TV7WXgvt0QITr9I9KP7DC0J-r-wx8Bobhwlhcl2qoc1fCp_MLUuhNw>
 <xmx:TV7WXuAn3tU1N1MDvgwI8oOe8_do1iKiV-M_RsYxFV3cGLgaFV615w>
 <xmx:TV7WXoemze4jGbSqKicPDyTImtFDo5iRHqfM-rDJbUfwYHOtOgIAiA>
 <xmx:T17WXpBpyteFSyJTeWMejXCyGZvzmoEFEMDuFNQBphC0Xg8f1UGoZQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 725C43280066;
 Tue,  2 Jun 2020 10:12:29 -0400 (EDT)
Date: Tue, 2 Jun 2020 16:12:28 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Eric Anholt <eric@anholt.net>
Subject: Re: [PATCH v3 032/105] drm/vc4: crtc: Enable and disable the PV in
 atomic_enable / disable
Message-ID: <20200602141228.7zbkob7bw3owajsq@gilmour>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <d2c1850e38e14f3def4c0307240e6826e296c14b.1590594512.git-series.maxime@cerno.tech>
 <CADaigPU7c=1u47R9GzvGCH_Z2fywY1foGYEy=KbBikjUQpwUFg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADaigPU7c=1u47R9GzvGCH_Z2fywY1foGYEy=KbBikjUQpwUFg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_071242_441768_1736E172 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3902730978337574479=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3902730978337574479==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6jdhhfajj55wnhto"
Content-Disposition: inline


--6jdhhfajj55wnhto
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Eric

On Wed, May 27, 2020 at 09:54:44AM -0700, Eric Anholt wrote:
> On Wed, May 27, 2020 at 8:50 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The VIDEN bit in the pixelvalve currently being used to enable or disab=
le
> > the pixelvalve seems to not be enough in some situations, which whill e=
nd
> > up with the pixelvalve stalling.
> >
> > In such a case, even re-enabling VIDEN doesn't bring it back and we nee=
d to
> > clear the FIFO. This can only be done if the pixelvalve is disabled tho=
ugh.
> >
> > In order to overcome this, we can configure the pixelvalve during
> > mode_set_no_fb, but only enable it in atomic_enable and flush the FIFO
> > there, and in atomic_disable disable the pixelvalve again.
>=20
> What displays has this been tested with?  Getting this sequencing
> right is so painful, and things like DSI are tricky to get to light
> up.

That FIFO is between the HVS and the HDMI PVs, so this was obviously
tested against that. Dave also tested the DSI output IIRC, so we should
be covered here.

Maxime

--6jdhhfajj55wnhto
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXtZeTAAKCRDj7w1vZxhR
xVJqAQCUmpR8JL8pnnKjcPFlmgxyfzwLZXpVwBbL1P2+kZmIMAEAtrzlIP25oS5g
9aixg7Ifrmc88nWmBcIbxDH1tuDcFAs=
=Ak49
-----END PGP SIGNATURE-----

--6jdhhfajj55wnhto--


--===============3902730978337574479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3902730978337574479==--

