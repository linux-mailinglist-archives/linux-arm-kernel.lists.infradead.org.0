Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE1818F853
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 16:13:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SzLwoj3JVVtCQXe2K+iYYi77kKnknq92aFFYdSQ9BAI=; b=tcWbCmgWZyNbUm0O0VEOh9fGh
	PIaazKdvNyg8MOcnqcEAq/2H3kWbQt+67aVpf6DD15OqtAUKQZP1345e3wDxjLl49TYlyd28HPhE1
	v88cuEPE4SUXmIyQfEX/edNDczDND3Wadayw607Dn49aYIKZOwc+AF2tFMCctc2lk8hFMtM+1vqIM
	/DpFeLi79ZgF+p/K8yP9242GaGKqktin+jEsOBUhw/O6y5cXbbOeKdboUdIK+qzIbh90GHkdmjwnf
	jITkvy/NjExJzApvi7Dm8OsVszLo8oN6Pw3bW4Ay/jPpuOyWwJr7N1VdP1ItOH71DLWaWX7LjqYxc
	BCQZi3Xfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOlP-0007Yf-F2; Mon, 23 Mar 2020 15:13:15 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOlH-0007YG-Ir; Mon, 23 Mar 2020 15:13:08 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 783A9580118;
 Mon, 23 Mar 2020 11:13:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 23 Mar 2020 11:13:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=GAe9evQKgPl6kCh0zfTEzT/CM76
 CMhkxj8qnRU/5u+0=; b=Gl69dg/KL0fB2QP1vl5cZ85/lT7aRrLjbJKGwt/RdTL
 /7jB+HgApPvKUMRoyb2Qt1EGvMIqDp/QjW+rSokBqQTEkyTuV3JUq/j7ZKA/Hrnp
 WlcEJzNWRJUmAwK6ntpcVTDG+Yz3lrG8AffcoAKC4GnpQM/TNe94/ZaZerhaN7RL
 oD6NmOGsQNPiiIhsunX/G3w/SNo4xJo+hpS73o9OIBXbuKZZ2KJWRMqfpzTUgGFN
 +k17QeS4Jt9vVw1hQ/4NL6mAC7YtiwHoKYTvz9MvfMS0IFxW0F/FMSB7KE8MACOf
 FnQb+9TNuNyLmR/GIFY5ihN7vA9o1sYXrSRbsr0rtWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=GAe9ev
 QKgPl6kCh0zfTEzT/CM76CMhkxj8qnRU/5u+0=; b=HN2Ugj01J2KGTv3SX8ynQn
 KNFCNrha666DIO28e6EycqxyieMUf9tx9eylhLd5vjqq/QEkNHUzspqXL2C6IkV8
 5SSiplNdrZ27rxu2kHw5R3tMD5KJjLWNaYPkg7SunLBjtYjwV3wefeCofWXliLfK
 onST2HlEBdMuB0HpRudemyOfssvewDt6XG6FH4Fa6yDxwAU2ZPlgSWNv6L+9WqTg
 MirRl1b64x1WKbxCel0c5MrB8oIR4XUPlSzb5tcxF2hGsXqzN+141nw7U3UjLsjn
 nguxZuWYQtUjeO0r/GUzgZy9uhxiejE29TNx5zYf4SikxOirwNncxLW64L4BfJ9A
 ==
X-ME-Sender: <xms:ANJ4XtJNo40pA1nqiNL8_aKRSu00TlMjV_QZsv9m3yClraBzeEdI5g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudegkedgjeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:ANJ4XgQAKlM8v0yTpNI5NFWm2IWzuF4DJ4QXOyL9VEnAN8bGknTD6A>
 <xmx:ANJ4XoEWcJDSOi546MJKkxfd3cdhgtd7uLKFtnvVUd-PeSfx0CC3fQ>
 <xmx:ANJ4XoFlPY5gSl3QM-_rjLR-tGIMoXFQ9ve6UUiiivHQXYGRSDiFDw>
 <xmx:AtJ4Xg3kdjwW1dkBLRNuaXG9Rrbo83yojgh7ddnJzZaUJam9ajIH8w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D7EF3328005A;
 Mon, 23 Mar 2020 11:13:03 -0400 (EDT)
Date: Mon, 23 Mar 2020 16:13:02 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: [PATCH 07/89] clk: bcm: rpi: Allow the driver to be probed by DT
Message-ID: <20200323151302.ckpvc4a7eiinnfbq@gilmour.lan>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <c358081207dcf4f320a6b7e2932f0d5365bf3242.1582533919.git-series.maxime@cerno.tech>
 <d793e358-32db-5fea-aac9-d06062918718@i2se.com>
MIME-Version: 1.0
In-Reply-To: <d793e358-32db-5fea-aac9-d06062918718@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_081307_759350_49196BA0 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============2148402645234399668=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2148402645234399668==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v5m5awxasxzcip5g"
Content-Disposition: inline


--v5m5awxasxzcip5g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stefan,

On Sun, Mar 01, 2020 at 01:16:28PM +0100, Stefan Wahren wrote:
> Hi Maxime,
>
> Am 24.02.20 um 10:06 schrieb Maxime Ripard:
> > The current firmware clock driver for the RaspberryPi can only be probed by
> > manually registering an associated platform_device.
> >
> > While this works fine for cpufreq where the device gets attached a clkdev
> > lookup, it would be tedious to maintain a table of all the devices using
> > one of the clocks exposed by the firmware.
> >
> > Since the DT on the other hand is the perfect place to store those
> > associations, make the firmware clocks driver probe-able through the device
> > tree so that we can represent it as a node.
> >
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: linux-clk@vger.kernel.org
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> FWIW i want to mention that starting with this commit, X doesn't start
> on my Raspberry Pi 3A (applied on top of linux-next using
> multi_v7_defconfig).

Was this the same issue you reported with the HSM clock rate, or truly
an issue with my series?

Maxime

--v5m5awxasxzcip5g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnjR/gAKCRDj7w1vZxhR
xWCaAQCLY6mdJ+pXqjn7wvV8WOobxLaPy0P6y1ZPPf/arV8g9AEAnOxapP+tmnzB
zJdBac5cosAeX20cT1zCpqqzz1jHQQE=
=7v4z
-----END PGP SIGNATURE-----

--v5m5awxasxzcip5g--


--===============2148402645234399668==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2148402645234399668==--

