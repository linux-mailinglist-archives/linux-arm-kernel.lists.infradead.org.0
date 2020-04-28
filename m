Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E19641BC595
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 18:45:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=40wgMU4PN2H7V77ps/iCTVe4KYPzpHOEb1glGnC0q1Q=; b=gx2gG6Di33QQAlWlMjwus8JDS
	Qx/og5oe+xqZgPGL22SiumWtizluVnps4Ysj4+cnb9IZ9sAULu2CGQgQcDNZL+K9yj0qdykGN/JVk
	HpilKnS6DMsIJUi2407mW0T6TCjYIY0VMVOm/hP2SP7Lq+228ySpSBFl4AZU9DezBrUUS7VYrvED0
	kpeV93sdABtSIJCBIpPCAWk11IMu25nyogbpY5/0gj3LXvpxRv+I/HtwGsGJP2j03WselKmyj4RiB
	ufU7bGtC+bdwlH/iwQ/lujtYA2mcJhn5tekFIFKpi2kVMUtWDeV1QfgHaEvxTkHchZCvWEFi85nnv
	6JcnA3reg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTTMa-0007n5-HW; Tue, 28 Apr 2020 16:45:40 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTTMO-0007mU-OU
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 16:45:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id A942B5C00ED;
 Tue, 28 Apr 2020 12:45:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 28 Apr 2020 12:45:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=S+DukyifHC2vsrH7Z+Bw4PDmgSK
 o2q4QVE9pfyHeloc=; b=o/zLeawy0XQRg1eQ7+597/fdWE/olg18atu9Wo9OpAV
 qzO2RXEsn8o6ljpJCmcHtU3aSPv8TGrdRsl3C/di7b6qEVeuxn++mSeRZJUIp8Q0
 VuIaPoYH/IqD7GHhKdZWddRa4sVZR4nlrzdkOlVmTxn0n264NaAyWmqKlWUEKxCn
 yh/sgs4yR53G17xdi+bSLGHGBtSeqL1knY4u70hTGH1JP4nL6yv6GM2qogkN1O8c
 J3245jYrz9gp0GTvqjJkuTDsSgCXECue0dmOsZKFgPbXAMKTFbDlP2Tcpm76UWZj
 gxaONyZPXsd6+I5GDkWhO84dpc9daW0yT8vfxKAVilA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=S+Duky
 ifHC2vsrH7Z+Bw4PDmgSKo2q4QVE9pfyHeloc=; b=plxc6RQUfAVXjjOqju4TEk
 p87bIvcNyBu/Oy2aIbCzsLzgKQbl1Joq1ZXevIR3YiEbg51CvULI62q8NcFHbpK9
 jaMKj9+Jjmd4LGLLje5rNhbeTT/xEfGyW9CG/wa/V7N4YSRgqEFn8OGkJmypQ9N6
 0aeYbI5LaGFw8Efc/psgzzWILoJ77Gt/ITRR7VBh/m2AC4FfcSRMjWwW70Qgry8n
 9rQZhr8htYwKizqSiDtXu66fCRB9F+yGtpVqEhEcEZC0bPCZEcj2iCMb0QEG1PpI
 trihGpHK0Ozvl7BDXAdP1Gm0lHDbM3k12EoCOtWaaVK3Qmmd8TBTj+vQ+rJB0C3Q
 ==
X-ME-Sender: <xms:pF2oXpnWDItsLSB1PqG7oa1lq9AlwFoCa-vwz5IQl3xjBQNi-BJvJA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedriedugddutdegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddunecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:pF2oXidgBl28_W9q_r39J5Gz9hOsjAmhKRbR8RsLmONfdxOOMUALdA>
 <xmx:pF2oXlPAhCNv08hbAdBrrxQieLsf0xwGIamgkJrrSdDdK8Wr0MNu6w>
 <xmx:pF2oXtOIsWGSMIntahD8XJCDI99GsCuImlHHCdMry537_ogbB-v5HA>
 <xmx:p12oXmy8Q_Vesgwl9mt6FFYzJ-tX4A6A5Ifj1l4w4eR3eW18vRMs1Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 125803280059;
 Tue, 28 Apr 2020 12:45:23 -0400 (EDT)
Date: Tue, 28 Apr 2020 18:45:22 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2] arm64: dts: allwinner: h6: Use
 dummy regulator for Tanix TX6
Message-ID: <20200428164522.p7ypca7zwocc7alq@gilmour.lan>
References: <20200428142629.8950-1-peron.clem@gmail.com>
 <98246e5d-ebef-bcb5-f0b8-d74b3834b835@arm.com>
 <CAJiuCcco0d_UoWeHqh6oc0rFNAMFynXjLRQ6APsT0WBh7m+GQg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcco0d_UoWeHqh6oc0rFNAMFynXjLRQ6APsT0WBh7m+GQg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_094528_931899_A5C4A268 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Piotr Oniszczuk <warpme@o2.pl>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7223843537166720765=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7223843537166720765==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cbn7zzdgl2fsor3b"
Content-Disposition: inline


--cbn7zzdgl2fsor3b
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2020 at 06:23:35PM +0200, Cl=E9ment P=E9ron wrote:
> Hi Robin,
>=20
> On Tue, 28 Apr 2020 at 17:21, Robin Murphy <robin.murphy@arm.com> wrote:
> >
> > On 2020-04-28 3:26 pm, Cl=E9ment P=E9ron wrote:
> > > Tanix TX6 has a fixed regulator. As DVFS is instructed to change
> > > voltage to meet OPP table, the DVFS is not working as expected.
> >
> > Hmm, isn't that really a bug in the DVFS code? I guess it's just blindly
> > propagating -EINVAL from the fixed regulators not implementing
> > set_voltage, but AFAICS it has no real excuse not to be cleverer and
> > still allow switching frequency as long as the voltage *is* high enough
> > for the given OPP. I wonder how well it works if the regulator is
> > programmable but shared with other consumers... that case probably can't
> > be hacked around in DT.
>=20
> Like you, I thought that the DVFS was clever enough to understand this
> but guess not..
>=20
> Maybe they are some cases where you don't want to leave the voltage high =
and
> reduce the frequency. But I don't know such case.

I assume the intent was to prevent a regulator driver to overshoot and end =
up
over-volting the CPU which would be pretty bad.

I guess we could check that the voltage is in the range opp < actual voltag=
e <
max opp voltage ?

Maxime

--cbn7zzdgl2fsor3b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXqhdogAKCRDj7w1vZxhR
xf6IAP9w+DY1O6bT4B3lg/+eirUFYM1skafnWKyx1f2y49KdYQEA2gJSF//W+64e
k+em/HwQHNH7fcP/zuv+U6G30n1Ocgs=
=CEt2
-----END PGP SIGNATURE-----

--cbn7zzdgl2fsor3b--


--===============7223843537166720765==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7223843537166720765==--

