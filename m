Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF21B170123
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 15:26:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XXwwqITrdp1St+dQvgsUIxHlD7GNHIxdqpTGSXVZ5T8=; b=DRYgCRp4FyCYgYP5AQUdRhbLm
	ZdXPaj1wzSaRoK951kRTMd+fJZ2oPZFelx8OwvaAZXRWTkSdV7t7LSA7uysdguWb6/OHjxbyWaBhw
	EXzS75dvTmt8z92OOaT/KINy2yZIWGDjLeqITz2KGBPEwXIOUhrzyuXhfEaKAYvmoKTqkb8XjH9rt
	tnpdEdMs+qJTvVmdi6BGcACdTQW1gZ6xoUvC2EbfaduCuLMrqDChlghfXXxoSfT23Z/kKXqHp6zDn
	fRGORqJjwnpLWFE5MlowzpGBzikeRn+wV0Z+3+dmVysVpmkeAsogxu2/lGJ7Gevj4VfnKY4xaQm8b
	+tJZ86baw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6xe6-0002ra-UF; Wed, 26 Feb 2020 14:26:42 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6xdv-0002qo-Jn; Wed, 26 Feb 2020 14:26:35 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 64FAC6CC6;
 Wed, 26 Feb 2020 09:26:25 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Wed, 26 Feb 2020 09:26:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=MRxRrk3jAFQyO5nNuy2nyNGNvXF
 7vaF0qwd2iZ4I7NM=; b=jyfbAqpjnEVEF39WOTGLxBld3H6pkE40zv9I7VfyzyA
 rH3Bf8mpFs9xpuT3a0nSpoHDCDptCSuJC7xGzEI+4O3FE6tqvVjcLqDlJh/PqOeu
 EsRq92VzEh89hiln+yCu9enKfZ7pupaxaAGxWorRWYlogde5FjMh0cdPcguePrpf
 Ij5HgqJXezRz9A/PnSwfKSLf5q/WuwO+OgyuXhpeUCzENH333dumdDux5hysfrkM
 1/WAMOh9lg7xDec6w73+tpnnEUx9oblvdGw+6FyxtSiX1jcZcs8MNKhxbASIOvZa
 NSUeIIwH1yrl0tCcB8JO1fX/uIUiHFpAkuvBpgT4rKw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=MRxRrk
 3jAFQyO5nNuy2nyNGNvXF7vaF0qwd2iZ4I7NM=; b=wkMVVt7ddT6XYDmr48IvF5
 wjMrg6QMLAfRfB23AaUAXgLFsTur1u7x7IKtKhT7FUiSTP9yCASM6/+H/Y/19IX+
 FMTiZE5AT3efVJ+7nPwybgefKx0PeqIt7RQbVTO4z0dpti9rKU4y58SbVLHWFiVp
 /vPULdvsJZoGLH4jsXchaYEeF7BdO70j5fbyqRYErc+gqt3pnA2E+gAJRl7Iz1Sn
 berNX0y4K5ESwmrPnEqtbmldApaJsxpOCtFxSyKG6h/rSnx9RxtRdrQPnawRH/k/
 fUi3XMRpLzIHG7G1e2srnR1mlg93KYGQjf4mfgXL3bVBd0EH6dE7YNgO670kqmcQ
 ==
X-ME-Sender: <xms:C4BWXl08AhnCz3J9AwIk3wJK1aWgF9CR991-_Lnbujm1w7sfBqr_Zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrleeggdeiiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvuffkfhggtggujgesghdtreertddtvdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:C4BWXlQXqCXPa2srKLKUOpN4x1K6oKv_oVtzCuaLgazgnjyJQZdquQ>
 <xmx:C4BWXqKZ5AOfRiup86XyrClbh77k8qjt_3H_PPEty60hrukQPsiywQ>
 <xmx:C4BWXon4HDfPy5xWKp70DLVgxQucm7F6L-4XKDF4Z9lUolXDXh2BYw>
 <xmx:EYBWXjx2kKeUa6oUpawYVJHMg7iWbtZef5MbJ_HcPs9XjoMqwaaZ0A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D1EC83280060;
 Wed, 26 Feb 2020 09:26:18 -0500 (EST)
Date: Wed, 26 Feb 2020 15:26:17 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH 10/89] clk: bcm: rpi: Remove global pllb_arm clock pointer
Message-ID: <20200226142617.mvis6olfzakiwqcc@gilmour.lan>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
 <3876f732b3fec2059270678d464d27b7d3a0414b.1582533919.git-series.maxime@cerno.tech>
 <52aebb76952df530f93e9de539124ddf1b825876.camel@suse.de>
MIME-Version: 1.0
In-Reply-To: <52aebb76952df530f93e9de539124ddf1b825876.camel@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_062631_792941_CC798431 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7825145579678694876=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7825145579678694876==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cfnnn2to3nsdt3mx"
Content-Disposition: inline


--cfnnn2to3nsdt3mx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Nicolas,

On Tue, Feb 25, 2020 at 05:13:33PM +0100, Nicolas Saenz Julienne wrote:
> On Mon, 2020-02-24 at 10:06 +0100, Maxime Ripard wrote:
> > The pllb_arm clk_hw pointer in the raspberry_clk structure isn't used
> > anywhere but in the raspberrypi_register_pllb_arm.
> >
> > Let's remove it, this will make our lives easier in future patches.
> >
> > Cc: Michael Turquette <mturquette@baylibre.com>
> > Cc: Stephen Boyd <sboyd@kernel.org>
> > Cc: linux-clk@vger.kernel.org
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

I guess you meant Acked or Reviewed-by?

Maxime

--cfnnn2to3nsdt3mx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXlaACQAKCRDj7w1vZxhR
xVyDAP4+q1ItaY+QWCIDmqEk2j/UzFHb+yklMprqAs4ll2R03AD9HHsS1kKWE0z3
6RfLFxLdmyDzRvDHmoFgGzr/ntYs5wc=
=5wL+
-----END PGP SIGNATURE-----

--cfnnn2to3nsdt3mx--


--===============7825145579678694876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7825145579678694876==--

