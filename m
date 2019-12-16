Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD67E12007F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 10:02:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rA6lBhkR31up1JNr6SQw6IyHCa25FRYR2N8Ms+9KZFk=; b=eQNy0WuTzvzv+DZ0zvyqcQEQB
	YuFAB4R495ZAwafbpejhu9EZ9vgDw5ZrcpokFRtMrNdE523j4/tlugHeuPN/999ihEFmkFmk4+FeV
	fvjpXbFxWhw0EzTdcWUTLfBq7lnESbHlhdSFVY4CAaEgqOtySoF/Aia6O7gK1e3JPw3ceg39xwT/v
	KVW+IIWlYby3nsNvbrdxWZ5VOalV0r+Hu/sg2l1D6b3RxdZJnZWMqT4Gxs0gVrC9f5PmUjkEH9pHt
	Nuy8GlBNpJrg2Fp+TEk89AdS5NqjC+SRFqMfOzwVmwT00hTO1Ur2k3GpMdDL8oLwKGpr1IfXn+OnA
	CmLFBh+Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igmHA-0006vN-U7; Mon, 16 Dec 2019 09:02:48 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igmH1-0006u6-7w
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 09:02:40 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 59F9D220E4;
 Mon, 16 Dec 2019 04:02:29 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 16 Dec 2019 04:02:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=PokdvDG1nIQ/VMznTA7Po0YeHU3
 1cRXWMuqHfQ3NJtg=; b=YJSTGTO4Tm5092gDSitpZ2D9YojwZmjpYQ4yf17WeaO
 S62neg2L+plGl78oORgNkUhdvAcnTUI78kAtBN5vmlOcBTBdOACbS55QMWs3277X
 oEvmsdeWirzh+FyxVrKfeea+pmRSPRScQGvoXjbWFquIhkV3vPfd5h/LZmz0jFI+
 dJeWiiBO+hpc7ieJCAcEiY91lmhM0ginH4bE3qgquYk9QlWRyHEFHywF4coSIwD8
 Dq9nWBVMvNnvTLSuqwirjBXNXhpP5dO+4J1uktdS9IdbOX2g9/wl1nuuOMqAhIWz
 kNGsCU0ogni6rvsUMSKDJzL9jt2Pbz8ZAuRkLxxR0RQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=PokdvD
 G1nIQ/VMznTA7Po0YeHU31cRXWMuqHfQ3NJtg=; b=COi/sBQnSthKVUVXnORwE3
 IIiNa3F9ZM630Nrca7TW7BqNOJrW6RREmN5/s11eBYP4Ixd0EopdkOAFFAODJ3N9
 6onFhrHDD0P0ZkzkCb2LW3ujbUepshk9VHvYrq6iaRs63CZ8rzRALudJ+QbhP8Ao
 pdVjND1Zgs3P93rH+P4YTmRmYC1pf2ZBfaPH4EdeRoGZ3MIBqDhcRv+tBTHZxciR
 mh/JH9GidEsKebWvExmvACpx7sm43gwA/UDTuRki2UZ08hQY/1M8UuKAtnBXz6SQ
 kFKYqZNKPKkLoDljTuxKNGGn5VvPoZP/pUSbY7UsZ7SRdBrK/v50OPnmtP4YLSNg
 ==
X-ME-Sender: <xms:JEj3XfO3DgPMWtkL0_tEqDpOSL3xmPJpJYXwChYdwvgeTsEuAVlqKg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddtgedguddviecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkpheple
 dtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegt
 vghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:JEj3XS_aAcYxVdfoixy9pTNkh9pOkfOZhCyEI8dE8ASSDpMb5ouHBg>
 <xmx:JEj3XbDW5p1eeMEya66DYNNbWka8n2oswKd0aNKEJIehGg04Vi3EkA>
 <xmx:JEj3XSAQ0q1gaQSuE-mmcb6TV9JsOuAxBfBeT0rCLJHat8_SzQ1h1g>
 <xmx:JUj3XQ70tQjv19i7LTUiFBLM026EyZbjzFx8Zjsz9eQy-UkZJORuvA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DF7EC8005C;
 Mon, 16 Dec 2019 04:02:27 -0500 (EST)
Date: Mon, 16 Dec 2019 10:02:25 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: media: Convert Allwinner hardware codec to
 a schema
Message-ID: <20191216090225.4lll6kpqbrba7ldf@gilmour.lan>
References: <20191213074055.26193-1-maxime@cerno.tech>
 <CAL_JsqLxGe9sWrTdZhuT69o_LBxQTi6TxcbT28WdC1gsPw5+fQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLxGe9sWrTdZhuT69o_LBxQTi6TxcbT28WdC1gsPw5+fQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_010239_630613_224E5B1D 
X-CRM114-Status: GOOD (  18.33  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============6905862458361788601=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6905862458361788601==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="m6uvfkvcj5remb43"
Content-Disposition: inline


--m6uvfkvcj5remb43
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Fri, Dec 13, 2019 at 09:25:51AM -0600, Rob Herring wrote:
> On Fri, Dec 13, 2019 at 1:41 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The Allwinner SoCs have a hardware video codec that is supported in Linux,
> > with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  .../allwinner,sun4i-a10-video-engine.yaml     | 83 +++++++++++++++++++
> >  .../devicetree/bindings/media/cedrus.txt      | 57 -------------
> >  2 files changed, 83 insertions(+), 57 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/media/cedrus.txt
> >
> > diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
> > new file mode 100644
> > index 000000000000..47c8513555b2
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
> > @@ -0,0 +1,83 @@
> > +# SPDX-License-Identifier: GPL-2.0+
>
> Do you have rights to change the license (adding '+' aka '-or-later')?
> If so, please add BSD-2-Clause. I don't have any other comments, so
> just confirm and I can change it when applying.

That's a mistake, sorry. I'm not the original author, so I can't
change that license...

Maxime

--m6uvfkvcj5remb43
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfdIHAAKCRDj7w1vZxhR
xQt4AP4/p/4KNTdKVqnOZrFTUx14YJGw+5ype+Zlt96KJY2C/AEAnAjDE6yL/asL
hMgtOPL6fesvTr+8PmH7F+3mUWVRqww=
=bz4j
-----END PGP SIGNATURE-----

--m6uvfkvcj5remb43--


--===============6905862458361788601==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6905862458361788601==--

