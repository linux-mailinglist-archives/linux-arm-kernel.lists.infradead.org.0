Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0904C103C7B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 14:45:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hFiAsxIUcEn4LIGlON3iQBMRCpODjmzkb4xGZ0Th+6M=; b=cRJiG/dI3hXYhBBjV/aP6XX5i
	k/zQAaLkYkjood0xXWyNvCbWEFdl/r3nY++vp05a3w/YOx8sr1b2icZCAZG6R3NI4FajNxJD5fAXV
	aZRTFuqS80j+lW8C28u2LYa45PCFXhDLlZseC8NovslLOzmiZV8mMNiUmzNz12AngSaiEqYR7TAjS
	iOg2POUAijDZQcINY4Cfq4v2a1XJNSoTONtm3ACUwbQpnNWomH4KcV7SilIWm4YHhimwrsF2VfqGg
	0ajUj7f/5syzKCAheLes2aJqpaWFtQe8ND5xhGZS3feFcrgzHgWFIHbR4PJ1E7+pOiLCQ0C17CTxM
	mF2OoYHKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXQIW-0000Ba-Jj; Wed, 20 Nov 2019 13:45:32 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXQIL-0000Af-PU
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 13:45:23 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2D8A26D7E;
 Wed, 20 Nov 2019 08:45:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 20 Nov 2019 08:45:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=HBx0ATlKQS6ihzQSYv4eFhcuYSS
 PpHvcXAzdap35ALg=; b=Qdf+s0c6K29kIsyee9j5q260GaF4jDcAo0GQQ6gkp4Q
 yUVBdzDtMj53LVevwTruYcbrmy/gmHSjoxamS2Tp5821kOl5cic7yYbsyjwAK8jY
 oixZ+bF0I2GjgirWKoxyWk5ukBbn5wwqXT76jY9p5WLVxfieohaTEkKObHtGzVXa
 qUHsBUUencFEmB/hEUn8bwnot0SYhl9ls76VBZ04fWtsW+uy+3l5Jj8H643jOY3k
 U6W7+XTHQEMgXtZyI9tawjOEZWQpJZsBrKGTSuNRgLwcukIAUfERGawLyCNZF67Z
 89kmJa7rVF7fkUFPhS+sD2Nz6WgolyBZg3321NYFkMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=HBx0AT
 lKQS6ihzQSYv4eFhcuYSSPpHvcXAzdap35ALg=; b=FiTS/f3biHcEjumFoNSr83
 cEkQDdPPF5gXfS6x7bDYXhxjC7Iel8YcpAsQiFuZHX2grHpDBrJSmvWeckJ25Ub1
 SFsawfjNc42FpLlWF1Jfyl+RUXqY4ns9T3sy4GjkI6pQLXsKX7tGPlJgzOULQQIK
 7lTSD+3mNDVXGlGYofVfcVPhZvsHgrTtZvcMVCEQzaeURJeFsbRQIqiXBNWJXB+W
 RBf0VpGkO77+Uf7KkIbX4fwWw+w/o69LvjVe5KuYjd/WfqBu507qKRwAR0gOzw1j
 cUSfTnhur60lSUOfQwZ1VgB7eQ2oe8MPC6EpOCwVZZGlbjc/vyW2bimnBX7zz1Nw
 ==
X-ME-Sender: <xms:bEPVXax4TLeYfctjJJuDqvOblirexd-crZZuxDZ7ItSGmgXPu-KDxg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudehtddgheehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehgtd
 erredtredvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegt
 vghrnhhordhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmh
 grihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfu
 ihiivgeptd
X-ME-Proxy: <xmx:bEPVXZA11E6gv42UuV4XONXEtEWft7RrWUoPPhlSmIt-yJ1RqyGezw>
 <xmx:bEPVXZPJlgwz6Bj3TaiAVKDmSq9_s6_mggHS53shxelXTzOjzkYORg>
 <xmx:bEPVXYCW0B-zSjPGJdAMrMBphmir5ONEYd7SKR_bqR5Kflkshb7orQ>
 <xmx:bkPVXZUt6NOpAuSIaklt96euI_I_Inap8YbJ34VwIg6sqbHJP5kt-A>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 82DF080059;
 Wed, 20 Nov 2019 08:45:16 -0500 (EST)
Date: Wed, 20 Nov 2019 14:45:14 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH 2/3] ARM: dts: sun8i: a33: add the new SecuritySystem
 compatible
Message-ID: <20191120134514.GA4345@gilmour.lan>
References: <20191114144812.22747-1-clabbe.montjoie@gmail.com>
 <20191114144812.22747-3-clabbe.montjoie@gmail.com>
 <20191118111143.GF4345@gilmour.lan> <20191119073924.GA32060@Red>
MIME-Version: 1.0
In-Reply-To: <20191119073924.GA32060@Red>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_054522_161637_949822A7 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 wens@csie.org, robh+dt@kernel.org, linux-crypto@vger.kernel.org,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3498578631598797325=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3498578631598797325==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RbXZOS5Wid+xb0VD"
Content-Disposition: inline


--RbXZOS5Wid+xb0VD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Nov 19, 2019 at 08:39:24AM +0100, Corentin Labbe wrote:
> On Mon, Nov 18, 2019 at 12:11:43PM +0100, Maxime Ripard wrote:
> > Hi,
> >
> > On Thu, Nov 14, 2019 at 03:48:11PM +0100, Corentin Labbe wrote:
> > > Add the new A33 SecuritySystem compatible to the crypto node.
> > >
> > > Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
> > > ---
> > >  arch/arm/boot/dts/sun8i-a33.dtsi | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/boot/dts/sun8i-a33.dtsi b/arch/arm/boot/dts/sun8i-a33.dtsi
> > > index 1532a0e59af4..5680fa1de102 100644
> > > --- a/arch/arm/boot/dts/sun8i-a33.dtsi
> > > +++ b/arch/arm/boot/dts/sun8i-a33.dtsi
> > > @@ -215,7 +215,8 @@
> > >  		};
> > >
> > >  		crypto: crypto-engine@1c15000 {
> > > -			compatible = "allwinner,sun4i-a10-crypto";
> > > +			compatible = "allwinner,sun8i-a33-crypto",
> > > +				     "allwinner,sun4i-a10-crypto";
> >
> > If some algorithms aren't working properly, we can't really fall back
> > to it, we should just use the a33 compatible.
>
> Since crypto selftest detect the problem, the fallback could be used
> and SS will just be in degraded mode (no sha1).
>
> But since nobody reported this problem since 4 years (when SS was
> added in a33 dts), the absence of sha1 is clearly not an issue.

It's not really the point though. There's a bug, it's something that
was overlooked and it's unfortunate. The bug is still there though,
and the only option to fix it properly is to simply fix, not claim
that it's somewhat ok to keep it around since no one really uses it
anyway.

Maxime

--RbXZOS5Wid+xb0VD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXdVDagAKCRDj7w1vZxhR
xTr+AP9nKc+hE3dn5vXfY2IR4cUybDQj7CLHiRPioS1Ywc9IhAD+LubNk4yjxFc4
TLXqQL0OKbRm9agqiHxjDu4XR85jMgQ=
=Xjtr
-----END PGP SIGNATURE-----

--RbXZOS5Wid+xb0VD--


--===============3498578631598797325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3498578631598797325==--

