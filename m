Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 894571C404A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 18:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZKFZbUkwmHoBrq8ECKTIblI5haEgaQP3Th7Dsc4HrPY=; b=fAjvXo1UewcgVemQPDM/SjC11
	oBk/+amTMdwMOlBFBNL1QQXvLyH19NcrxS2RTt1arZrZFRMy/YFviFRxq/Tv5tGOD1hWkOu9nfc5O
	MpilP9faa9PZVh2HyyY/AsgFVInx6lxNT9S9SN5F4Qep9t+0TXnBg214URO9IeCr56Q2fQVIWpt9i
	orcz5PVI7TtsN3L7RAGlK/i0qGgaKSAxo7o2AhsNRECyd6ggPd/rfnvWPbRJUhbW/GIP1x/a/AB+K
	Zi6Wdbvz2BGHYawYRj3XobsRP+mcdt7ffEMnFyzWuG6U9FgBje1mfcMOoLGx/3qKPcPCe/XfhvK1p
	QLPVoQRDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeBK-00061v-R2; Mon, 04 May 2020 16:43:02 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVe8w-0003zV-6w
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 16:40:36 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 7B6705C012C;
 Mon,  4 May 2020 12:40:30 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 04 May 2020 12:40:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=vdg1rkzemmkCMJ7/0H2GFUcV8lx
 jS65Px6J0j+PovYg=; b=Y/aTiaTTCbUEqHfBZSwZqiKXNNL2FArO54/ZQMuMG0r
 7qtCc7ho8YP4X+ye6cRZinCsk66zG7VqfuYaPPZms2PVkbC96ErrZX5dygRoaELW
 aiSqDzSWQYW/BK0c11HWyEE2D4LeVnEDbCIimDlt02tVF2pml4YRFqRHEASmQyYO
 56N6HjPQq57hnf41vAC81IArxfV+GrZiYJlLbzkNaRFJYJ1yztOc1usxYBkAyZZV
 66s8KrGjnhAeiwsARNuj52vrgcQSpq0P/VT/Fj8tAJC42/iKcA36dRVL80j0+6Yc
 n4piP5Uo4vwMzK6Gt7/yOB/BeSmFlpYapSniuW/Sg9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=vdg1rk
 zemmkCMJ7/0H2GFUcV8lxjS65Px6J0j+PovYg=; b=cm9vUxZgSj8xrHFvxxmOzq
 IJ2j6pduJTzKjWN3uQ0bvn1W2MyQiSXXZ2PL1zQz1/rrXJrRLNveKsk3Wzp3t5ZT
 EiOXtsQzbGrALLR9P2Jeelh4TWatBOvqgmasmkCDYMupZDGWnDe7sETdMgzAL2Qs
 99nTioh79KMcdPYo0DBjYXwu14buskO81171EFz74VVQqKTjt4agAvfA3SNZWgwf
 sfNQ034Gtjy/rFl2TOKcxI2RGDC6E9beHe2Vag03UYcMvkWJV81jc7KabB2DrHrj
 5nro+w52i6l3Va5yw03TkJYm+JOoSFchh3tajxRb6cRhRAuglNlGmPG5+eL10ytg
 ==
X-ME-Sender: <xms:fUWwXtIxpP7Z6BWd5TBOc0GPf4E3C0H1kc18UMkU-StANVS9Frsk0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeggdeliecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeduvdduhfekkeehgffftefflefgffdtheffudffgeevteffheeuiedvvdejvdfg
 veenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:fUWwXgijMEiIURioYaNGaWvlFrwoefPOJqIOpzmFiNKHsEoUYX0xeg>
 <xmx:fUWwXgDCftHLtOo3xW01oGUqFQmFQk-W0_BQIL9iGGuIuqFxTh6AOg>
 <xmx:fUWwXkbXsAriOKdJj1Qm5quahlM6XVzafmgUAEfUcjoDwsWMw7D8gg>
 <xmx:fkWwXuSseolPyCy4avuYkdADC-K5I3gogAImbNr52YNelYXAF2_dLg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 397F13066016;
 Mon,  4 May 2020 12:40:29 -0400 (EDT)
Date: Mon, 4 May 2020 18:40:27 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2] arm64: dts: allwinner: h6: Use
 dummy regulator for Tanix TX6
Message-ID: <20200504164027.tvlkcbfoz3igeh6x@gilmour.lan>
References: <20200428142629.8950-1-peron.clem@gmail.com>
 <98246e5d-ebef-bcb5-f0b8-d74b3834b835@arm.com>
 <CAJiuCcco0d_UoWeHqh6oc0rFNAMFynXjLRQ6APsT0WBh7m+GQg@mail.gmail.com>
 <20200428164522.p7ypca7zwocc7alq@gilmour.lan>
 <CAJiuCce9UDp--XQ=rXPZ5cZyNDMFC3zyq7pnw3ETXkR3=zMWaQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCce9UDp--XQ=rXPZ5cZyNDMFC3zyq7pnw3ETXkR3=zMWaQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_094034_626695_0B86792C 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Piotr Oniszczuk <warpme@o2.pl>,
 Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7316395816198758566=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7316395816198758566==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pwelueerzpkvwdem"
Content-Disposition: inline


--pwelueerzpkvwdem
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Apr 30, 2020 at 03:48:04PM +0200, Cl=E9ment P=E9ron wrote:
> On Tue, 28 Apr 2020 at 18:45, Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > On Tue, Apr 28, 2020 at 06:23:35PM +0200, Cl=E9ment P=E9ron wrote:
> > > Hi Robin,
> > >
> > > On Tue, 28 Apr 2020 at 17:21, Robin Murphy <robin.murphy@arm.com> wro=
te:
> > > >
> > > > On 2020-04-28 3:26 pm, Cl=E9ment P=E9ron wrote:
> > > > > Tanix TX6 has a fixed regulator. As DVFS is instructed to change
> > > > > voltage to meet OPP table, the DVFS is not working as expected.
> > > >
> > > > Hmm, isn't that really a bug in the DVFS code? I guess it's just bl=
indly
> > > > propagating -EINVAL from the fixed regulators not implementing
> > > > set_voltage, but AFAICS it has no real excuse not to be cleverer and
> > > > still allow switching frequency as long as the voltage *is* high en=
ough
> > > > for the given OPP. I wonder how well it works if the regulator is
> > > > programmable but shared with other consumers... that case probably =
can't
> > > > be hacked around in DT.
> > >
> > > Like you, I thought that the DVFS was clever enough to understand this
> > > but guess not..
> > >
> > > Maybe they are some cases where you don't want to leave the voltage h=
igh and
> > > reduce the frequency. But I don't know such case.
> >
> > I assume the intent was to prevent a regulator driver to overshoot and =
end up
> > over-volting the CPU which would be pretty bad.
> >
> > I guess we could check that the voltage is in the range opp < actual vo=
ltage <
> > max opp voltage ?
>=20
> As this could take more time than expected,
>=20
> Could you drop the commit :
> add1e27fb703f65f33191ccc70dd9d811254387c
> arm64: dts: allwinner: h6: Enable CPU opp tables for Tanix TX6

It's done, thanks!
Maxime

--pwelueerzpkvwdem
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXrBFewAKCRDj7w1vZxhR
xY/yAQDBc+uu39+S+nGtqfFozjixwQHz6PT7mFJIq3iYoXM1cAD/WNTMNvIvvI+Y
UjQG+ErJYUhaQLPXVlTIfHrf9w8nNwc=
=jPeV
-----END PGP SIGNATURE-----

--pwelueerzpkvwdem--


--===============7316395816198758566==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7316395816198758566==--

