Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CE312F8BA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 14:23:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NRfZ451mIZas4oy/IbRDPvhftJ2EFJS7soeDGPkZDWg=; b=GwNnfO+pDx4jlhrUSxAtKT2U8
	YtbYn84mENwMipY7OzNrzeubFpDyzBLR6DfvXUGgznkxxHoIOmo3eljznlSVct+3JtmRzx2NXLTYI
	Ls7wOYo6iac0CMP5yYzXfk67d26Us/gy815Fy7cEE2OVRAqgKkI9Jw2UDAsT+NuMnoWEd4FCN45K+
	xvnafBeYy5F0XjWg6CmAaFbHBPyDMHbeQ6UFXWpj/RbWaWtKYQeR2IAOrzLu4NJfFLpiOLH1V6tqr
	GNaZ2SJMcj52toJN1OqLwwT9zDHjekyRgwMZ8x464/T6GI9gU4hpbl9JYdNnUCfPiKwm6oWShDJU5
	s6LmlyFzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inMvW-0000wf-V9; Fri, 03 Jan 2020 13:23:42 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inMvQ-0000vC-Ns
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 13:23:38 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id DBF4422015;
 Fri,  3 Jan 2020 08:23:32 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 03 Jan 2020 08:23:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=3ju2vmJskvC9CZ7Ryty6/ubQo91
 ntnPIGTpD2eo4BuA=; b=iH1RXuj4FOsVan6WZKTT92+Wopf0beU6SN+7zggkXNf
 aJkilcQQ5L7v/+Wg+7qd02JIaTxv4zZU1oK+who02vbwXOiEIxbCFPnE6x8zlPt9
 +sXseAc1LrQXSJkM8YifWf9S2UsksskjmW6KO/0TJwLC1Y7aPQ3wlcgKyTY6y9BY
 VrHcZ2rxzQR/CEthExzl9K8OafaAbjAfrr3jsjd+aWHFeQdNTfz+zSSEdIA5DKwQ
 p7GZaUAX72d15yQkwKq0eK7TitUpN5c0D2iL1gCu5G/HWp3fYADqTf+S1ODKU9H7
 wp9IQc8/nuOqi5oLda7k0T4lqmIc7JEFXE2DUgFoyOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=3ju2vm
 JskvC9CZ7Ryty6/ubQo91ntnPIGTpD2eo4BuA=; b=kohQNrRVQgApeowM0Qd14Y
 bYoiOfEeazorD04aCtnadN5cqhNVraVL53gWQCytjkXx1XZCm1QcnIKXNS+g9Nnq
 Bl2FuXDRW20ZnorDev3XkpwoQsdSHkKl61uWeEMVElGQGbHwR91BAe4Iyz+Hq9cy
 slf550hLnA7fGKWptFNKVwgHSHGuUXwOLHJREynQzFYyuNtcAAs0H98iMvia/Hr+
 9txZMTriZgf8oooeU5JcHyyRJ04dXakGi/VGRvKxqUBYg3ZdAoPOxJs5AIoir5Y6
 8Wx28KTx3DC0ID9uughLUhDMf8CKjXRHy8Nou3Mt7cJ8Edp71rCrN6gEkZzAc85Q
 ==
X-ME-Sender: <xms:U0APXgPPBNrtFPk-Kh0lF_shCBo5H6D125AZn1aH84WlZXZcxb1pcQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdegfedghedvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:U0APXkwzOZuEYW-iPjOF_CWmCW5OzM5B4Lf7iDfqCj-nUKDU4W27Pg>
 <xmx:U0APXoKeY84NixfWY_XTZzQhGoQZTNkwa-zQsSsz6yzxCkydh5Ry2w>
 <xmx:U0APXjpQg5M4HbSUlEdUGOCw9Tne4dn5syB7R1BHeZpq7k4PuRF_Qw>
 <xmx:VEAPXh3P_7IbYxlPYcMNzUerkRF7erpvOPR5qYh046jpkIagpFmrMA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A4A168005A;
 Fri,  3 Jan 2020 08:23:30 -0500 (EST)
Date: Fri, 3 Jan 2020 14:23:28 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: display: Convert Allwinner display
 pipeline to schemas
Message-ID: <20200103132328.he7bs7yvmzts7k32@gilmour.lan>
References: <20200102152605.71117-1-maxime@cerno.tech>
 <CAL_JsqKh1YKmj8T6x80fhn8YmnDC+qBdvSrNHwXte2CPPncqNA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAL_JsqKh1YKmj8T6x80fhn8YmnDC+qBdvSrNHwXte2CPPncqNA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_052337_208674_F744BE67 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Sean Paul <seanpaul@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1779364767965675698=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1779364767965675698==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a7vaefhowr7pddty"
Content-Disposition: inline


--a7vaefhowr7pddty
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 02, 2020 at 10:12:10AM -0700, Rob Herring wrote:
> On Thu, Jan 2, 2020 at 8:26 AM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The Allwinner SoCs have a display engine composed of several controllers
> > assembled differently depending on the SoC, the number and type of output
> > they have, and the additional features they provide. A number of those are
> > supported in Linux, with the matching bindings.
> >
> > Now that we have the DT validation in place, let's split into separate file
> > and convert the device tree bindings for those controllers to schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >
> > ---
> >
> > Changes from v1:
> >   - Declare the ports in the bindings
>
> What about my comment on using minItems rather than maxItems?

I missed it, sorry. I'll address it in the next version

Maxime

--a7vaefhowr7pddty
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXg9AUAAKCRDj7w1vZxhR
xTagAPsGQaUho2/rYq54g8C0TP7NlfvSBRhGuzZa5AgsfVxjRAD6Ayz5usLCYRcx
vvOID0f3Axtb4ulDLmPDC635yjNcSAw=
=7hF7
-----END PGP SIGNATURE-----

--a7vaefhowr7pddty--


--===============1779364767965675698==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1779364767965675698==--

