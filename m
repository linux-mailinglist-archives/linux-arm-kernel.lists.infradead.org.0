Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BFF130179
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 09:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=g+eGmgcJmfQV6gsZsQUe2yKQaVSFHuxxB8RxlD2K3Ik=; b=pEMxDrhFRHgE1Q+e5K1xt2w/m
	VTBQ0x1Upk43rVTjNeDEXM0Kh9iCOCS9ZlvaEzKpnqBQ1PjVuEXyljByVXw/Hn6SSWddxXSBfnEyx
	WeVdiK0LgVRmz/tVxYXVN+vCxTGbyKUDYTB2nIhHl6W67OG6C2KnCeqWyYIt8s0MG2BG2ISlPKVPh
	GiiWKE2eCz+4vhyDORTqC4v1SXfKGP5nZacAy6dcjT+P5KQFGGlcKu/ryM1KmG1K4e93FkaLXoI5+
	W5vO+z3iCrp1iboM1zNT88zWEiNBhG463ToU/qltcNIyUZ5k5VDMqZX1YTVGcJvF+YSiWCM37a++3
	pPo+PK5Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inf4J-0006Qe-VW; Sat, 04 Jan 2020 08:46:00 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inf42-0006KJ-Mp
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 08:45:44 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1CFD32203E;
 Sat,  4 Jan 2020 03:45:42 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Sat, 04 Jan 2020 03:45:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=xPWxXOLRj2wJ5worV+vGX0zBBsW
 sywSnkvJSkhZtf9o=; b=RFmFpDT4XujVKz4GdxqY6agLft4CMokf2gv1wLu0at2
 rbIA83pi0D3TTpi4NAsmJzZ2MzlmBjsUatb4iqCIHaKSRQpz+gd0+bvDuzYk5oKB
 eVul0BfYg5PC7XKoc3syN+q76bXdiPgv6dmdzzzdPaAIzbkgoh6TBNmdHuuPGLEw
 OTWu9yDP2iqKeLX/m4tiEtgcAFZk6ffisnGd/uOBjxUT44NThAPXqN+GL0kP6mGF
 q2UBeEELHDnCnfLpz0c/BCs1p7OTN5DCJg/Nap9X6EjbszTIa57+vRxxdyPDboWW
 Thhd2BEjBDaA5fstSsGIqJuBclefzo0HTnzKRuOkufg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=xPWxXO
 LRj2wJ5worV+vGX0zBBsWsywSnkvJSkhZtf9o=; b=BfOlyaNAYunwKweqAliio7
 YDEDBoeUorpVxTshG2uhrE2qVEaG81iLKV0bdIR4STo4Y2SV6G48raBHye0Y1MxE
 yeIBGBeQNVUdfisaqSP1aKu9BXu2VLxpujC4qZIBd5JYdCWQ1nQK25PcViUAUqlP
 6F7gjrhvOqKAR4gDYkV9mV8pSOqBO8HlumkwVcPGII607uhcGgNEW4cTp89mOAKw
 5I6kLhIj7mOueD0EAEHZ1WhMyqE20PGlqK63aWQW/GlJP7aH4vAZCoepZ9/YRcL5
 Rpik7tQcggbwTW8OmfY3dIO6tnI6STLfFfn+TOKSCnWI8PAcdtiSBFNHQm/8+XnQ
 ==
X-ME-Sender: <xms:tVAQXlo0gDOY790ckBZHa7THX-hr359oNLgI3sX1fLEdr6-30U1BZg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeggedguddvgecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkpheple
 dtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegt
 vghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:tlAQXhBy_TxCOOpUei580NUXhnRVDIm319O1dT0lonpVRo5hySypsA>
 <xmx:tlAQXqsuI4MRlIrQiqIYuOCRBWKASHf1zfYYZA_8utQKZmSnxe6CCQ>
 <xmx:tlAQXgb_xP1j0jpTvV5u591-yRjj-ibvZYOYKYfpMo6IIU44T3f9AA>
 <xmx:tlAQXq7fdHGUzJCwaHVgHF6kY1VzQxXl06wJqyZRjf95axPt4pWJ5g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B0BBB30600A8;
 Sat,  4 Jan 2020 03:45:41 -0500 (EST)
Date: Sat, 4 Jan 2020 09:45:40 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3 3/4] clk: sunxi: a23/a33: Export the MIPI PLL
Message-ID: <20200104084540.qkyzomhmozxyrvec@gilmour.lan>
References: <20200103152801.47254-1-maxime@cerno.tech>
 <20200103152801.47254-3-maxime@cerno.tech>
 <CAGb2v662mJCGaRx_-0ij9inTGz1GtzNxkFyBeeq2hhbSYZm3Rg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v662mJCGaRx_-0ij9inTGz1GtzNxkFyBeeq2hhbSYZm3Rg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_004542_892474_AB566B6D 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5617535400821143927=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5617535400821143927==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="myszb7jthorvzpoy"
Content-Disposition: inline


--myszb7jthorvzpoy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 03, 2020 at 11:30:35PM +0800, Chen-Yu Tsai wrote:
> On Fri, Jan 3, 2020 at 11:28 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The MIPI PLL is used for LVDS. Make sure it's exported in the dt bindings
> > headers.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime

--myszb7jthorvzpoy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhBQtAAKCRDj7w1vZxhR
xe4TAP9ExpfYfpOAx4fITDaJjcjpXXBBJFpkvnGrvxe3bMsr2gEAnbNwnDMTRIlr
iO0dNASqpwGVFjz/EpCVfvi2qIO5FAA=
=1Tvb
-----END PGP SIGNATURE-----

--myszb7jthorvzpoy--


--===============5617535400821143927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5617535400821143927==--

