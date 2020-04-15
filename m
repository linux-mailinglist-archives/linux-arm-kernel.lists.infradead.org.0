Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B631A9B00
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:42:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3PDJHufFmWKE+ja50/1hwa9ivKybZQE8m9SsPG46tEY=; b=GgR+X9QMvSpFhgOVLG/GA0Ixm
	c5ULSvVwPYjPE9LimUQOMy0WkXGhyu8krC1Gagt1YzL5HzzpPom9E2fHnbnKwawfv1gdbx8DYEuFr
	8ttKLrBxkO5ZhmBgIndKrdUfdFfVOzfiT2h9dI16BW6grgPFoijDwibw62aKF502ZsU7Ip85gGra8
	Tnd64ySsG2TatWPVB0dGUHvakAs/UstrRPKVfcdhijdNM6C5/JKU7YGwozfNXlybWcKnwr3DiDlIj
	iCrcQiWlsVvOerCvvR96T00YUQ3tOu0ZBfLuF9oWcWspjJKWgzHfwqO38Pl94we23CclmfIMlWhx0
	Cynle7c5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOfUy-0000se-2u; Wed, 15 Apr 2020 10:42:28 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOfUp-0000s9-MF
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:42:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.west.internal (Postfix) with ESMTP id 3D93F70F;
 Wed, 15 Apr 2020 06:42:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 06:42:18 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=8nobbbBWAxyXQWQe0I5jF6E/4q/
 4W6mxWyIL2Uc0dJE=; b=JKNAqqA+eRPskHhMT4TH/3lDSSwjpXHPNRuVLrD1I6B
 8l/dGgTLZnq2x8C00rBLt97pPg8xr3SgrUiqesEaIzOnhGR7NUunTZirYfJeT+th
 h4GMef2YODCg1jGKvtY1WwZHv6gmof+QUcsCd6/SeJWpYT+EXa88EfiWkBtJ1A/H
 BllfkbUXtpuc+pDHSJgW/xyLm5MvorfCIlJQ0lW211Hr3mTXAO/1qvYKHt6A1Q5K
 h74t5hRxbzb3OZ/KS4rgN8eSlgC6gEh/8bjRUJYb0tVMvGfqUiZH2ISfSWOuKOvm
 PdOxOhczG1oq0iJHOFdgOhpbfJ+F/w3wh4fqwnx/QAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=8nobbb
 BWAxyXQWQe0I5jF6E/4q/4W6mxWyIL2Uc0dJE=; b=A4NWb2LsuGTz8Jviu1UBOB
 PB5Qe6KEPK+Q2ZxDRS+YmEFtjGcJcEvOizc8z0AEYXnjjxddvPQ02XPf/yuowbiQ
 cX1J+VllHRvIWIU9/a4DJbHB8q9FjIosXCO6+zT5ED2EBXTby/lYgr9lQZeGu/IS
 bkdnhVjY6vmeQxLYQs6/xphVty957CGVp9ls57Pah9qoMnLrxKGVePLuVlA380cu
 DAruUpScb6aojVXc1b4oH78sfcIBpNlS3Wt6kfhJ5DpYo1Yx0Gij5TOYBRMBaSyC
 gXBN5YPPTcvG0reQArV8Pg0iEoDSw9nG80gdC6nMPVe1n0WOEGYSIOJXoEw4lbng
 ==
X-ME-Sender: <xms:CeWWXhSplqMtI749YojQI9v4s0F-z-NUwNpmHIm5V2e4aaBEcgRZhg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgddvtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtjeenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:CeWWXiV9sMYMwosMp1M0fLxTEkciNWcriYPDjup40VgVYTOesUnSsw>
 <xmx:CeWWXjzfuATpI_bbUppQ7Of3v02C9fACB26TggUAg4Rm72zxYKtG0g>
 <xmx:CeWWXm_L44loqCiyb3iDnAryx3R28xWuM2H7Fu42hvELfoDXuTJo7Q>
 <xmx:CeWWXu01SvC8AZM7O8wUUKY4e6i0Wdlr1SuyzIRVBVmLDRiHBR7LUw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D0128328005A;
 Wed, 15 Apr 2020 06:42:16 -0400 (EDT)
Date: Wed, 15 Apr 2020 12:42:14 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>
Subject: Re: [PATCH] drm/sun4i: hdmi ddc clk: Fix size of m divider
Message-ID: <20200415104214.ndkkxfnufkxgu53r@gilmour.lan>
References: <20200413095457.1176754-1-jernej.skrabec@siol.net>
 <CAGb2v65qetxxVX1yoCjyduM4zRTyF3YKX1g9CuaHZkF_Z+AKQg@mail.gmail.com>
 <CAGb2v66LxhqTBeA_Br=kUrTq83hocEcAzYYC6nXpASvkkjn+1g@mail.gmail.com>
 <1742537.tdWV9SEqCh@jernej-laptop>
MIME-Version: 1.0
In-Reply-To: <1742537.tdWV9SEqCh@jernej-laptop>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_034219_769942_335C8759 
X-CRM114-Status: GOOD (  17.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.25 listed in list.dnswl.org]
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
Cc: David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============7296131411583405644=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7296131411583405644==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="iikhbqdgypmjrod7"
Content-Disposition: inline


--iikhbqdgypmjrod7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 13, 2020 at 06:09:08PM +0200, Jernej =C5=A0krabec wrote:
> Dne ponedeljek, 13. april 2020 ob 16:12:39 CEST je Chen-Yu Tsai napisal(a=
):
> > On Mon, Apr 13, 2020 at 6:11 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > > On Mon, Apr 13, 2020 at 5:55 PM Jernej Skrabec <jernej.skrabec@siol.n=
et>
> wrote:
> > > > m divider in DDC clock register is 4 bits wide. Fix that.
> > > >
> > > > Fixes: 9c5681011a0c ("drm/sun4i: Add HDMI support")
> > > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > >
> > > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> >
> > Cc stable?
>
> I don't think it's necessary:
> 1. It doesn't change much (anything?) for me when reading EDID. I don't t=
hink
> it's super important to have precise DDC clock in order to properly read =
EDID.
> 2. No matter if it has "Cc stable" tag or not, it will be eventually pick=
ed
> for stable due to fixes tag.
>
> This was only small observation when I was researching EDID readout issue=
 on
> A20 board, but sadly, I wasn't able to figure out why reading it sometimes
> fails. I noticed similar issue on SoCs with DE2 (most prominently on Oran=
gePi
> PC2 - H5), but there was easy workaround - I just disabled video driver i=
n U-
> Boot. However, if A20 display driver gets disabled in U-Boot, it totally
> breaks video output on my TV when Linux boots (no output). I guess there =
is
> more fundamental problem with clocks than just field size. I think we sho=
uld
> add more constraints in clock driver, like preset some clock parents and =
not
> allow to change parents when setting rate, but carefully, so simplefb doe=
sn't
> break. Such constraints should also solve problems with dual head setups.

I disagree here. Doing all sorts of special case just doesn't scale,
and we'll never have the special cases sorted out on all the boards
(and it's a nightmare to maintain).

Especially since it's basically putting a blanket over the actual
issue and looking the other way. If there's something wrong with how
we deal with (re)parenting, we should fix that. It impacts more than
just DRM, and all the SoCs.

Maxime

--iikhbqdgypmjrod7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpblBgAKCRDj7w1vZxhR
xYNeAQDkWOAE17PUs/+j0UPsIutwMt3fGauL7qUSC2cDBKT12AD/Yf2YkVdEbh8n
WD9IZaABcs8BR2mw6ne6+GE6MOR0Dgw=
=+u0/
-----END PGP SIGNATURE-----

--iikhbqdgypmjrod7--


--===============7296131411583405644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7296131411583405644==--

