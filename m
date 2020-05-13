Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 051961D11D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/8nY0ROgT0LL7iGhchdJ7xWmFv3livXJ1ILsLQo1Y+E=; b=dKsapTNzWVi0HQQdOsiPnsott
	XRYJnsBnZjHYYLDvl46XcaVstFCKni2vjeUVWWD+Aw6pa6Y9RX4Fmu5jpv1B0D30DuqH4Re5JeUnW
	YzFDcDI13J7RWNDcEGYNbYoWpsgDB0P5audMn+1PppxPTEtv0zmUoDRYI4NBnJUvunZK3DdCAURyO
	IsELB+AcQtY5KPs1cRyCvohTXvkuIGE4PA2pKquzqJPqAolD9pnNDSx/ytOVgWaV+jkc1lvOX+0mH
	Xfef0u/ePRvSLcKqw0aW4rCJ/oN48KobLj47s1OFA7GqbpR3YE0p3LK4X/sy/iud+2Ug7s4MpiE48
	n796p9iCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpwf-0008Vp-UB; Wed, 13 May 2020 11:53:05 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpwT-0008Uv-GN; Wed, 13 May 2020 11:52:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 74C8558015B;
 Wed, 13 May 2020 07:52:50 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 May 2020 07:52:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=/AYFFr1MNgJJ+o7d5S4rnrDYJJs
 eH51ikD+z7qPz61c=; b=SHeK9zOKaDJna8C4jP121kXKjyPnjNecvnjP0iCrvFS
 RnSYyReZHdXtF8jenjymlGXj4GyPYjrw+KWj7zbnFfsGgYlK8fg/wNzfyg0bT9Nh
 /OqCDyjNTwtvIaw2NL9d0btuGNQBUEfa7QT258b12Kw2sPpiH7j+54WPdn8er/Wj
 91cQDVDfwcvllyCGNUlhn31HnXvulBN+sFujWaluhTGUcg/SPpPryAL4m1bt1zTx
 PFiPFxyN9elXjGyoVWMcU5KqOkPyE0EKpCofhgbAzkYUmozWI9Ehy31b9J8IsebU
 Dux8ywFx4gcY3kCtUZfFca9w1AkVhrbiWNQyHFk5mPw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=/AYFFr
 1MNgJJ+o7d5S4rnrDYJJseH51ikD+z7qPz61c=; b=T8JBWsL0UMCMphAJdRwyFl
 vifRo/GpMAtWgxUq8TqrCb2vIg9jxCJVwYcWld46z5DyZqkGjhNSZnE+ucVNyfUr
 tnbPYabxNwQSPCdOrcPJ4xB91ZEMJsKpDyCboG3l7Rw2WdyHUNNZhcGQGWJwAsLX
 GlU6H0jfie+ghTwD41+mSEKUgTnz/bqJm86cjdReeKtNa1/7sM56KKDhClrR3/Xf
 mEoTI1YS2oqgcF/rY09JOKZyQlrERN6zBnr17qyxaq+HCNnZ8jJkAQZWWDTTFPKp
 23JGyse7Ib9tcS1Ehaet5qe1iW3aCHomawEs3ZLWmXl81qaUPezQOJySlxTMLkzw
 ==
X-ME-Sender: <xms:kd-7XuKT8PhhjcEUQBW66PYqBBllwrS1yfICrXVjIUjIZdLb2gdTrA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdeghecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeelkeeghefhuddtleejgfeljeffheffgfeijefhgfeufefhtdevteegheeiheeg
 udenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:kd-7XmIfmrslGfp-DubBsUSZezcfnw3zsDnedT5xMKphy8xG1oPOqA>
 <xmx:kd-7XuvAiTqYBKlxC6Sjl-8FKOU36HGUS-LxJAFEoDMvVoVSigtlVw>
 <xmx:kd-7XjaygZc2oMf_vt3tRkH1l2cHFqlQUnf8ljeLTBEjnD84e7pFTw>
 <xmx:kt-7Xh5GMsGnbqshAHOKdgr1gCP-d05hn76ukarVVctrAY8ubSeriA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 671253280065;
 Wed, 13 May 2020 07:52:49 -0400 (EDT)
Date: Wed, 13 May 2020 13:52:46 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v2 22/91] reset: Move reset-simple header out of
 drivers/reset
Message-ID: <20200513115246.rcago5fue5bb4xzt@gilmour.lan>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
 <6f7651682a6dab539bd89c80704c8303bbae68bd.1587742492.git-series.maxime@cerno.tech>
 <b1af9917885ee3da60de1385edd2d8094ecb3b7d.camel@pengutronix.de>
MIME-Version: 1.0
In-Reply-To: <b1af9917885ee3da60de1385edd2d8094ecb3b7d.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_045253_923864_F58416AF 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6436080046239775213=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6436080046239775213==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7unmcshnw527jht7"
Content-Disposition: inline


--7unmcshnw527jht7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Philipp,

On Wed, May 06, 2020 at 11:26:34AM +0200, Philipp Zabel wrote:
> On Fri, 2020-04-24 at 17:34 +0200, Maxime Ripard wrote:
> > The reset-simple code can be useful for drivers outside of drivers/reset
> > that have a few reset controls as part of their features. Let's move it=
 to
> > include/linux/reset.
> >=20
> > Cc: Philipp Zabel <p.zabel@pengutronix.de>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>=20
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
>=20
> Do you need the reset patches applied together with this series, or can
> I pick them up individually?

You can definitely pick them up individually. I'll resend them separately w=
ith
your changes addressed.

Thanks!
Maxime

--7unmcshnw527jht7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXrvfjgAKCRDj7w1vZxhR
xR7yAP4lmUkJZpZ/LFiqX3QxnC3WMocoqEk7ZY3k2EIVbiwysAEAzhQyCVvDHYkA
ySN2FN++xDb5ZhKP4ThE7Y4BFL4/Xww=
=lSEg
-----END PGP SIGNATURE-----

--7unmcshnw527jht7--


--===============6436080046239775213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6436080046239775213==--

