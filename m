Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 827C81AA9BD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 16:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FC9OfMdIG8g/PGEsVeaVsVry6Dh6/AOaF+qOdfuls2Y=; b=ueQUaMufUF516i5Pxdkaiw0XV
	4yecoOcX/yVwGF0UJHlKsc6Iozz8jbdu7ArfJ3zlDRVHnVv7cC3GFT0UPtA6zmJFJeQs2qCEh3Pge
	0Vc23ylrQuty8Jup6+RKD1EXdosALdLErLM1A7LG1H162UADb61cFLIqy/YCSBqz6L6H2xcGEo0b7
	u5pvuS2NTl61PEKC/R6yp/jG3WDvvYlTpONQduP4D3TgIShmz4gw01bPbUqrsQiLV9e4p4x5Vm08l
	cQVVTnbksNVl/3N2QVdtJPrIEzxNncuTfaO18pq51XxvhENydGgmolKZnNN2YE8NlslPqzDQzOMK+
	rYooEuI+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOiv6-00022Z-7G; Wed, 15 Apr 2020 14:21:40 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOiuy-00021f-9F
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 14:21:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5D5B5580480;
 Wed, 15 Apr 2020 10:21:28 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 15 Apr 2020 10:21:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=w57xZePTsGqsUDOlfC/90iLeGpy
 1FlxyNG+H0a7Xz8A=; b=waLFJKVzJ1gz4Hh3SifRoYfFdJNEt2qRDGZPEgQiRVv
 6jkzESd3CY6Oc3i2ZpPdobWyw0ab8WfQvnFKUO56Sbm6//6u+mKmbexyjoJ0cnOw
 RF93kgS+2GuBfrdB0KUCXmBg0YpKtxYRvgMIwGCyomGynx+2KCN7Em0XOYCnFkgw
 J1mWDeIQOgD9hZisI227UvtFdsCvTBD+nzUGW7lALcRLymCqmau213LfjSVNHmv+
 59dc1QnftSXXZQOuRHjvVKnCK1b8Vl+tyMf+cu9KYr9EA/oYnetVcCSLLiMhiKJg
 9owal3XtjQVIIYpYooAWJa48xaWPZrUjg/pnuC0Chqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=w57xZe
 PTsGqsUDOlfC/90iLeGpy1FlxyNG+H0a7Xz8A=; b=ZiCvEuIistCq+I4LcQwEfW
 Qyg/X1liF2iY4Y79UN8i/5imy6gN2PUlGkr+jvw+PLzd5hDoC1DhIB2+Rqr6UCTI
 o0bm44HtOGdwnZ4+w2oevQESQ+PpjeSubBsQxEE633xb56bf/Ou1Go+xV4y+XL61
 eqCtbaaUaUnxCNBHFOyo4KdeTlAMIH2CBW7WJ8eXnppGRAR6HFGK4pzcoz9Ohoe5
 MUxrYnCV6uzhOrFjysQdB68Qf8n5Af/nhXTCLK5LoAUCdha/qTawAHb2hjHJUpPY
 lizQ3xv4NnOPWVGq6lc4q2/vA93sP8RVeBn9PT3F9hOjzKVIBJUSO8dWAywaBOMw
 ==
X-ME-Sender: <xms:ZhiXXnmhOKw4K1AOTYHdnTUQEbMU7bg_a5FoSDsaU2t4-IMnTxxvpg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrfeefgdeihecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ZhiXXpmUnYfgmUXjZWNNqgX47hkEI1-ZFNVCI7wWEZYYnRfYegrX1Q>
 <xmx:ZhiXXtNDAwIfZe76drexh9IE-OGHGS2aS5UFo-B-yEis7tg0VAEMNg>
 <xmx:ZhiXXp64DuzBVqKn0BtAgkhnuT1ce2TcjxPp_Qx9I7HZtoreOUfJRA>
 <xmx:aBiXXvtNHYQJhIMBsiVAXeZCa6iOafIjCoTJluOekGcBbk5EM_-hGQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 08B123280064;
 Wed, 15 Apr 2020 10:21:26 -0400 (EDT)
Date: Wed, 15 Apr 2020 16:21:24 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: "H. Nikolaus Schaller" <hns@goldelico.com>
Subject: Re: [PATCH v6 01/12] dt-bindings: add img, pvrsgx.yaml for
 Imagination GPUs
Message-ID: <20200415142124.yzfh6mtqq7cdq22e@gilmour.lan>
References: <cover.1586939718.git.hns@goldelico.com>
 <06fb6569259bb9183d0a0d0fe70ec4f3033b8aab.1586939718.git.hns@goldelico.com>
 <20200415101251.o3wi5t6xvf56xmhq@gilmour.lan>
 <72919514-0657-4B71-902F-3E775E528F64@goldelico.com>
 <f4fdca8a-d18c-a8d2-7f51-d1ebbbab3647@baylibre.com>
 <535CAEBE-F43E-4BFC-B989-612C81F0D7EF@goldelico.com>
MIME-Version: 1.0
In-Reply-To: <535CAEBE-F43E-4BFC-B989-612C81F0D7EF@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_072132_725402_92422434 
X-CRM114-Status: GOOD (  22.43  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 linux-samsung-soc@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Tony Lindgren <tony@atomide.com>,
 Chen-Yu Tsai <wens@csie.org>, Kukjin Kim <kgene@kernel.org>,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 linux-mips@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, letux-kernel@openphoenux.org
Content-Type: multipart/mixed; boundary="===============5220385550486146817=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5220385550486146817==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oowgclrabb5rh4qg"
Content-Disposition: inline


--oowgclrabb5rh4qg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Apr 15, 2020 at 03:17:25PM +0200, H. Nikolaus Schaller wrote:
> Hi Neil,
>
> > Am 15.04.2020 um 14:54 schrieb Neil Armstrong <narmstrong@baylibre.com>:
> >
> > Hi,
> >
> > On 15/04/2020 14:43, H. Nikolaus Schaller wrote:
> >>
> >>> Am 15.04.2020 um 12:12 schrieb Maxime Ripard <maxime@cerno.tech>:
> >>>
> >>> Hi,
> >>>
> >>> On Wed, Apr 15, 2020 at 10:35:08AM +0200, H. Nikolaus Schaller wrote:
> >>>> The Imagination PVR/SGX GPU is part of several SoC from
> >>>> multiple vendors, e.g. TI OMAP, Ingenic JZ4780, Intel Poulsbo,
> >>>> Allwinner A83 and others.
> >>>>
> >>>> With this binding, we describe how the SGX processor is
> >>>> interfaced to the SoC (registers, interrupt etc.).
> >>>>
> >>>> In most cases, Clock, Reset and power management is handled
> >>>> by a parent node or elsewhere (e.g. code in the driver).
> >>>
> >>> Wouldn't the "code in the driver" still require the clock / reset /
> >>> power domain to be set in the DT?
> >>
> >> Well, some SoC seem to use existing clocks and have no reset.
> >> Or, although not recommended, they may have the io-address range
> >> hard-coded.
> >
> > The possible clocks and resets should be added, even if optional.
> >
> > Please look at the arm utgard, midgard and bifrost bindings.
>
> Interesting to compare to. Maybe we should also add the
> $nodename: pattern: '^gpu@[a-f0-9]+$'
>
> But the sgx binding is difficult to grasp here. Some SoC like the
> omap series have their own ti,sysc based target modules and the
> gpu nodes is a child of it lacking any clock and reset references
> for purpose.
>
> The jz4780 and some other need a clocks definition, but no reset.
> Having a reset seems to be an option for the SoC designer and
> not mandated by img. So is it part of the pvrsgx bindings or the
> SoC?
>
> Well we could add clocks and resets as optional but that would
> allow to wrongly define omap.
>
> Or delegate them to a parent "simple-pm-bus" node.
>
> I have to study that material more to understand what you seem
> to expect.

The thing is, once that binding is in, it has to be backward
compatible. So every thing that you leave out is something that you'll
need to support in the driver eventually.

If you don't want it to be a complete nightmare, you'll want to figure
out as much as possible on how the GPU is integrated and make a
binding out of that. If OMAP is too much of a pain, you can also make
a separate binding for it, and a generic one for the rest of us.

I'd say that it's pretty unlikely that the clocks, interrupts (and
even regulators) are optional. It might be fixed on some SoCs, but
that's up to the DT to express that using fixed clocks / regulators,
not the GPU binding itself.

Maxime

--oowgclrabb5rh4qg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXpcYZAAKCRDj7w1vZxhR
xT0JAQCiWOePc99saTFkub5XKNoxg+0OWfORXzWEdHfaNN9pAQD6ApKRwjY9uv1z
NzDdNQ4q1aRrmR/SI1oU48l8V/B3kg0=
=Apgq
-----END PGP SIGNATURE-----

--oowgclrabb5rh4qg--


--===============5220385550486146817==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5220385550486146817==--

