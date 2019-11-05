Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A38EFBD4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:52:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZSAwUgpVpwUaCk1xu8yONITMXG8j2q0nVZFAho9r54U=; b=Pa2VY8bdilNfSqtfJNd8vDgNA
	aBcH2jmJOX2iN3XCsZHSyfo92X81KFB1HZ4V2mhI4eY133onrHAjYrrcgayFk8yRjVg2fwOC++/hd
	FnbcMabMXl2IMWrObHI/HZQ/Z1hBVY+VdhvRGBATF9D5rOHtNDo93+86kWWoYjW9zYCmcBZvRN8IJ
	wHB8ezCwQUoMiLM0/37ZkPd1A8/lHkZknKsaUDyl0UqxomPB2LQZ2crCEgvlcgpA9nCUpxpv/zHkF
	FMN/UOi5+dJRIGH46dSNoUHIFFAaDynKe8O6r+YSwMi56kvL72kV0Y22dik5wwKBl0ii2gXAheUIC
	GHtp+5lXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwRW-0006ao-H4; Tue, 05 Nov 2019 10:52:10 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwRN-0006aI-Qz
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:52:03 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id B2AC25D4C;
 Tue,  5 Nov 2019 05:51:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Tue, 05 Nov 2019 05:51:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=cAg5dwOHv+LO1Tiz2jNysrIJCSi
 VViDJbOrS3T9B/do=; b=lZ1D2jGC35wNKCWe+qdujG0eg2yJJkYYdOq8yvLIBEY
 A5URuY9B9TmWorc7O3RATmnvwJ3cF7Zf+tkaYU1kIkaWb+lNutDEJBk2IhGiKEya
 wZKslT/gO3VkaFKhpbVi5Cp7JqzpkhNkxmXLZglmAZPGtnT+F9AOs1ehTQEBplY1
 d4XCAJLShaPKDH5YoPUGMFlsp9KsvQHONnz9Wcw30Cy2PIr9OxFm+ljOWAf4Cch7
 yANc8SxWp6/6jbHFLjqn9DyXu1S64eVdmDJyTKKnUcdnpu36MolCnQkPSRr493Dv
 8T9ehdpBcFOTIjiuOAHbTxwJM8WJV3xoD6YKcuqRLrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=cAg5dw
 OHv+LO1Tiz2jNysrIJCSiVViDJbOrS3T9B/do=; b=R+t7UB4fj2ky5bDQgzGdvZ
 sYPuP6pBqP78GRhfZ44zGxbURlYYh/qQ6yrh/atbKPNPaIBT+de6Gjp/Zzs9k39b
 uaKZxVxiC4BtfCCrGaoRG13XTanLal/pGpK77cXnu69nM/5VPNEAcUp7TY1vsSaE
 V0CH9XkJJgpOJA0b6f6Sm2Mre7LJ72DexK+aWMvnVuCUjxfOZXVxv33SbqJWzqF4
 ZRejarkBIvPKXfaQW995tWzEG7x/bD5AEjKlhGdZXZ1afLRxktWBZuiNtG681iI1
 /VYBJc2huvh8a4lND8juOWn8ZVGOQOlNZtOmW2GDG9CKp8ho2wP2OtLgwx337VdQ
 ==
X-ME-Sender: <xms:TVTBXRxPc4053jepvuOWxF1EPZpdjbFG8_TMCDIQcyW_DmYG9OwIjA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudduhedgvdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehgtd
 erredtredvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegt
 vghrnhhordhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmh
 grihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfu
 ihiivgeptd
X-ME-Proxy: <xmx:TVTBXcfKFpk73KQSZdhbaLO2th6WLpgGss7d9IyJfbs8L98qAKpGnA>
 <xmx:TVTBXad7bT5OIo16rtCFjwwNhnnBQXtgK4B_FMIjT6gBX5pbYta1hw>
 <xmx:TVTBXTxuQY-iKJ6I8XC_CxKC2Ns-prkPEPOKds_BJMIt_aIuhfyB7g>
 <xmx:TlTBXT7O6ihAW6iYhwUBnucgTNaCSn5xM44e-p1oFCeLHUtU4zuBJw>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 666F68005C;
 Tue,  5 Nov 2019 05:51:57 -0500 (EST)
Date: Tue, 5 Nov 2019 11:51:55 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] ARM: dts: sun6i: Remove useless reset-names
Message-ID: <20191105105155.GF3876@gilmour.lan>
References: <20191031134905.241453-1-maxime@cerno.tech>
 <CAGb2v65W9gP_nyRRKoOyQjfQvsv2=KcjSeXNawSDJSk3huTDxA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v65W9gP_nyRRKoOyQjfQvsv2=KcjSeXNawSDJSk3huTDxA@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_025202_302426_77B7773A 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============1963955323154416622=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1963955323154416622==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7LkOrbQMr4cezO2T"
Content-Disposition: inline


--7LkOrbQMr4cezO2T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Nov 05, 2019 at 12:09:25PM +0800, Chen-Yu Tsai wrote:
> On Thu, Oct 31, 2019 at 9:49 PM Maxime Ripard <maxime@cerno.tech> wrote:
> >
> > The HDMI controller definition in the A31 DTSI has a reset-names property,
> > yet the binding for that controller doesn't declare it.
> >
> > Remove it.
> >
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> Acked-by: Chen-Yu Tsai <wens@csie.org>

Applied, thanks!
Maxime
--7LkOrbQMr4cezO2T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcFUSwAKCRDj7w1vZxhR
xSsyAPwM2jBsPgOoMjJXe+vQpsZC1V8PC8lGDqTtDrd/ndwVyQEA/0LKTEUjS0Rw
YQvnRXSLLqWpabD+XSiRvVA8EuTowgw=
=0bNs
-----END PGP SIGNATURE-----

--7LkOrbQMr4cezO2T--


--===============1963955323154416622==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1963955323154416622==--

