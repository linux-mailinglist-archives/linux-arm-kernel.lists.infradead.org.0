Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 442A8121115
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:08:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1TmVLLD/8udeduJQ7cAZ5BQVHWgN2uXpTr62PxKYL5o=; b=agYsTZlg0ZCJ8lFwIgmhwOu1Q
	dgKDHrEIqOVdPCztuiZn6SNTypqB4hPmnw5FhhWiGVpUoG6LvCHwAEUHlMuEHbpg3mzuoU/G85Nwl
	LkYiQ4YeMbM0N97xM9Ound0S0+95bRON3IavBCO37HnzrRosMVP4JsmqbzcJ3pAJ6lp23209awQSm
	v2bDK2yp28j2NLgMk7qHQmsvFWwSesMbKcpgZkTE6qorday2BJyGRJQAzUTQcfXEzlus5ikSEZv9B
	kwn/qjqOADIVKiUtsXu/N3vFujvE/wBmMnE/dskaiYTSwBBl6Fek+64KxfweCibgTK4ZwI+YmnVtW
	RsT+67Rxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igtrP-0004pz-3J; Mon, 16 Dec 2019 17:08:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igtrF-0004pV-2D
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 17:08:34 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44F2C206EC;
 Mon, 16 Dec 2019 17:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576516112;
 bh=QXjZ3NUYOTcRGYoFgeBkUlOrcelwhDJ23ou7b18ZyKs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=zsdLiGBIeBF8PChIX3V4KiCUO47SxnGY6Zut2ucgG76ai2dOrnn9RlXaqtd0FvD52
 PY5QytrdGzCuUcqZfP4xJMC4tFpYRX2FqjHXyMgW0Ygs8eOxOUZuGpR3E6daVi+qaI
 feDaBlzvSpq7qrbYTLhK7XPKcYj3WX81LSjDDaUM=
Date: Mon, 16 Dec 2019 18:08:30 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: clocks: Convert Allwinner A80 DE clocks
 to a schema
Message-ID: <20191216170830.sw2svgszlebb7cfu@gilmour.lan>
References: <20191209093558.50940-1-maxime@cerno.tech>
 <20191209093558.50940-3-maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <20191209093558.50940-3-maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_090833_122949_395B303F 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Chen-Yu Tsai <wens@csie.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8266301167002640107=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8266301167002640107==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jfxwmnq66iyhmoim"
Content-Disposition: inline


--jfxwmnq66iyhmoim
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 09, 2019 at 10:35:58AM +0100, Maxime Ripard wrote:
> The Allwinner A80 SoC has a display clocks controller that is supported in
> Linux, with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Applied all three.

Maxime

--jfxwmnq66iyhmoim
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfe6DgAKCRDj7w1vZxhR
xfX7AP9Z+s6gPPC1reoTZSt7GAPc/TEDd7kUms0QWUcLZnu9NAEAyLHUh87Tow0u
/b0eA5xrrvHPxmsK7y+/Pw/uqXoQXAk=
=6iZL
-----END PGP SIGNATURE-----

--jfxwmnq66iyhmoim--


--===============8266301167002640107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8266301167002640107==--

