Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014F11EBC18
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hVvuHP9wG8+Y1dgeHxL38+BxiHhE6DZe7cwAaejyEdc=; b=auq1PLkzBjg7tLyrQNvbu0qaV
	jChaUD2JOyJzB6scxDNoC91GQt5uBtJbAMZ6qQ1JRjbItnleXpGEfljyUWdZyqIRctnk/gkLbqWof
	HVkJenYY4F2N99bhyCsFvBv2b1w+Uhs8didtTXY5jCrGGXnF9Lry3X+j59IeLUq/Y0/8wsh5BIEXA
	JoqWnpNHhKiwuQYEtqxRwAuBV4mrdmiRVKerg9fA0OXnGe0PVeJrAfof89rcFtVrhaIvpgH3dWuqe
	aZMog9VYhZfwDucjPcKcuIfHVCgJH85LDyiQrML/K3CiB4WuH64AgIhKTOWljFatzsiQ0ojRIbWVy
	q8aqNC0Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6PO-0003t1-24; Tue, 02 Jun 2020 12:52:46 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6PG-0003rx-Ae; Tue, 02 Jun 2020 12:52:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 333E85C0060;
 Tue,  2 Jun 2020 08:52:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 02 Jun 2020 08:52:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm3; bh=WDq+umCpTeMy9k3W0/Wp/zsjIGB
 wGG2fZVoUDuvc/6I=; b=f45OZi6d+1yiR3+fuUjVx/OffyBQzXpKlPQbYfJ2G3K
 JbM0gya4DR68naiFqT2uxODNVG5DStLzdE0iZ0Hnzxalrq2wgoa/aOXT4CymRy1o
 wmlS4dGmwPT3KP/RICQd1ql2qMZepWk1XPNZ3QnD7p3P5wzq618XIg9N+hZsTfNA
 /Pr3d6A/XzFKIFLxaADMbIIVVCjUC1SV0wuzNUvMN40DDoDN1UIfl07lvtYIpqbC
 m9WK5McK+v9DLGrh7eQaiL4t8K0EVgAUPABhuctzK69htNR4z3RvbvlyQrKNenkX
 sshBlFSNkun213PiCHeWnXf9bfPEEPiexjX5dOiOeng==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=WDq+um
 CpTeMy9k3W0/Wp/zsjIGBwGG2fZVoUDuvc/6I=; b=BV685FeEEZTDO3F+XTXwxI
 2oE5GEcg0f7mM0Xy3W9x6iJ4YgMAPeOCwXEhZ/oAKIBLr7G5KoT9O8zlYS/+IX/C
 njwsrJSZ1aofL9UDyXcM7T69/UBQRoRRoHvgqDD/ZX4m1YMiYQZl8J+97TvvNgXE
 Wcb5s8xAA3VM25x17aAKG6VCjAKSefFKXAFpdSYYRjFJ7pR8CHGDlz/wlIij4kVP
 q0nF2WqzdaUFSgDw6+li7l1wnI4tsCwQ34Z3bZ8eCI7d7VaumCmJWJvVZqB5TY0I
 y31iE0eqEk6RLDbCFQucAqdpR0agta7mzml3QMtrfToY9xQ7uoR8rS9yzzl/YSRA
 ==
X-ME-Sender: <xms:jUvWXlA1A9BMkxHHPwcc4ETwV_7JdBoR9eKiZ9o_AMY6HEPeZ-Rh-w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudefjedggeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
 gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:jUvWXjiv-UD_m6bSp3Zfr5gqBGrPqSSjyQ89beHJzdhD2j5TIEm8qA>
 <xmx:jUvWXglDvAwYaWpwOw29Sv3u9zzRIvPIAewbDVQzL1JdcawX4c04PQ>
 <xmx:jUvWXvwMkm_EFZZphIf5wSyET12pg7TUa6yfCaKQsK8SWPpaq4NAXw>
 <xmx:jkvWXpGO6Kobml1_RcWM6NdXzzn1A0uJKD9e7b3bY8-0559rrtABfA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 027DA3060FE7;
 Tue,  2 Jun 2020 08:52:29 -0400 (EDT)
Date: Tue, 2 Jun 2020 14:52:27 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Eric Anholt <eric@anholt.net>
Subject: Re: [PATCH v3 015/105] drm/vc4: hvs: Boost the core clock during
 modeset
Message-ID: <20200602125227.fe3mt5jnqd6u4pft@gilmour>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <1aaadf9a5176591c891622cb00b0c50f42e569dc.1590594512.git-series.maxime@cerno.tech>
 <CADaigPWQdeTd2CGCK-yxq+TAU6xKMVsdZfhSVptn4RSENxpdxg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADaigPWQdeTd2CGCK-yxq+TAU6xKMVsdZfhSVptn4RSENxpdxg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_055238_503618_125EA222 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
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
Content-Type: multipart/mixed; boundary="===============0443497554330074745=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0443497554330074745==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ne6yctwhuf4mmo4i"
Content-Disposition: inline


--ne6yctwhuf4mmo4i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Eric,

On Wed, May 27, 2020 at 09:33:44AM -0700, Eric Anholt wrote:
> On Wed, May 27, 2020 at 8:49 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > In order to prevent timeouts and stalls in the pipeline, the core clock
> > needs to be maxed at 500MHz during a modeset on the BCM2711.
>=20
> Like, the whole system's core clock?

Yep, unfortunately...

> How is it reasonable for some device driver to crank the system's core
> clock up and back down to some fixed-in-the-driver frequency? Sounds
> like you need some sort of opp thing here.

That frequency is the minimum rate of that clock. However, since other
devices have similar requirements (unicam in particular) with different
minimum requirements, we will switch to setting a minimum rate instead
of enforcing a particular rate, so that patch would be essentially
s/clk_set_rate/clk_set_min_rate/.

Would that work for you?

>=20
> Patch 13,14 r-b.

Thanks!
Maxime

--ne6yctwhuf4mmo4i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXtZLiwAKCRDj7w1vZxhR
xVPmAP45n0n/bXaKZ1yE75klsmfyLSQrkPVnggB8TOLcoVWvXgEAoQBVPj7GmkAB
XoSEMSgX4zgK/n0fW6bptMqt4QaM1gc=
=P3EF
-----END PGP SIGNATURE-----

--ne6yctwhuf4mmo4i--


--===============0443497554330074745==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0443497554330074745==--

