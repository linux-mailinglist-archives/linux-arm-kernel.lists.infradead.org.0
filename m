Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9ADD161919
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 18:49:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OxDXG16UQzR53pZKSvsHuuyP0nasvSZYrsR3J5AGenA=; b=FjWD4g536i9LVEnj8j36WQO3R
	3qUO136QpNfgpt3FFrjTIJmPKC6QRW1IXBRam1RIj9UheQY3WFCS9fmnB24Vyiqulh7UJwMjV4zUN
	Fu03yIDqWI02unfBSNRRclymLQeUT1/uN61WaAmTX6gxlarNSU/tVK2i53xC9a8BcWmH3gJJRbezu
	tuEciUeDVobZ8pIJSuyEEmf4Ii//zZDiH+nF1D12Tndr8FBG5KFDxEilvU67FcGhMLxISqFMD3kzr
	6Sl+JqZ+3G1l3ovvIIlzTUCsWkH007+N+6ow7SLLHosE80blrkSeC4M5I5NZmExu+FMz1h+dgqNIv
	1pUOWtU2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3kWH-0005nH-MT; Mon, 17 Feb 2020 17:49:21 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3kW6-0005mw-Fi
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 17:49:12 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 4EF1221E56;
 Mon, 17 Feb 2020 12:49:09 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 17 Feb 2020 12:49:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=aLY1NrmQJPoUslUzbJ+X7y8IPiy
 s7wcvOuraTt/YeSU=; b=sxGKXCRgfb1Q1zrqloCKK1VIj9L6Cs9adJQpyX+ZeJQ
 0nUe+5QT5LZGFYqt19+GqOezQQYcEmx/ojmBw0nWZN4/sK5Pi6NoYIQtimKw3ISv
 lh1OTY6HaXUt1qGqAtTpLwj9WKnNLcVmo9HStdktVrv0PSMjI4ZlCox8uhUeXKLe
 EZ5MLFPgWcEI5q0tn6HAcCiqp/N1EdUno46O5va4lAAa04n7WD6I6WQK8Jy1l8h5
 5/pKQTMUgXI7QTbtpyO4I1TGMeqnvjI/O611TvYVaGX1G/xTIgJc/utza1+hb+Kr
 O/9dhcwAxDakpPcPbkOCiI8G71Z74y4XlElFK18wCXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=aLY1Nr
 mQJPoUslUzbJ+X7y8IPiys7wcvOuraTt/YeSU=; b=CMKt3DuiEdi5KHl9voHhn0
 eT3qgQrkcKHVxRPCFXHzuEsLCwbV6tS8CLmLiBjvcTc9K5cf2PwgGKDgtR3DueWI
 VfhukW8p88oLrlFKjk0ro2XsALXKRinx1dRUjlhyYdrnq+68+XM3jIweX0dSf8g9
 YLCN5KIPvFBRkFjQwbwO9f0nI9EkYBWwtWVoveUMAQa5Awn41mFgcAj+bROjTXQR
 SGxEdAQqQWULM7VMKj9/Qj48UGnF2tQAPJ8ngHDtpoROSfRz1DnIAanyE7mf1Q9K
 YPBw2yrix4oLCnmUnF5a0UH6zOvZ3so+jDG6/Qa6ZgIjc252SQDvEOoZuFYBKROA
 ==
X-ME-Sender: <xms:FNJKXjDPBp2vDydfoF3FXU6xkh393AUeFefuXkSZP4dnfjxudzqyTA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeeigddutdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
 hnpehkvghrnhgvlhdrohhrghenucfkphepledtrdekledrieekrdejieenucevlhhushht
 vghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrh
 hnohdrthgvtghh
X-ME-Proxy: <xmx:FNJKXvG2_k2NXiBeFQ2YeNaChesJrgoVi4BacTO8UedunQfz_sSNhQ>
 <xmx:FNJKXoLyTcYFxjvFvsodAkP6yvtj5HnPpEzanw72h5dxARjbmZ3Fzg>
 <xmx:FNJKXmpLb6KRfZdnbM1S8KWLiLnn7XiW3NbDFfFcI3lPBMSUnmJLgg>
 <xmx:FdJKXumxRHboDsof_2J_QAbqgKmcw5rRzTxAdKSeKhPZMZ1lwlF92g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 656203280059;
 Mon, 17 Feb 2020 12:49:08 -0500 (EST)
Date: Mon, 17 Feb 2020 18:49:06 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH 1/2] arm64: dts: allwinner: h5: Fix PMU compatible
Message-ID: <20200217174906.ecvsonprelrbvyv2@gilmour.lan>
References: <20200210095600.77894-1-maxime@cerno.tech>
 <20200214180404.24d67f86@donnerap.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200214180404.24d67f86@donnerap.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_094910_663720_D4B4BF7F 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5296927445010230644=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5296927445010230644==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ly4wtj2ngmgrqaqo"
Content-Disposition: inline


--ly4wtj2ngmgrqaqo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andre,

On Fri, Feb 14, 2020 at 06:04:04PM +0000, Andre Przywara wrote:
> > The commit c35a516a4618 ("arm64: dts: allwinner: H5: Add PMU node")
> > introduced support for the PMU found on the Allwinner H5. However, the
> > binding only allows for a single compatible, while the patch was adding
> > two.
>
> Maxime, thanks for bringing this up, was that found by some
> validation tool?

Indeed.

> And while this is true, I wonder if this was intentional?

Either the YAML file:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/arm/pmu.yaml

Or the text file that was there before it:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/arm/pmu.txt?id=v5.0

Make it pretty clear that only a single entry is expected

> I see several other combinations of PMU compatibles in the tree.

I've probably sent around 50-100 patches for DT not following the
binding on Allwinner platforms alone, so it doesn't really surprise me
:)

Maxime

--ly4wtj2ngmgrqaqo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXkrSEgAKCRDj7w1vZxhR
xThLAQDnsWgfmovYHrdmkXsc+Wa8vvVBbhF1zQCBy0o0szpUYgD/ZdyA1cOdqjCP
X0EoJYp+mspfcofpzzGIrBsvWa9uwQM=
=GNkn
-----END PGP SIGNATURE-----

--ly4wtj2ngmgrqaqo--


--===============5296927445010230644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5296927445010230644==--

