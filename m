Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C64113566D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 11:04:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1WgoHthz63E6k7I/TWcx6UGylUrH7IravfRK1kX9I+0=; b=iw0dws7y1eFUNT0BEYu7tmx1e
	njcYUdlZUt3kfY0MfWUAqbTcf9mg1zcZi9YnKsiVnFbEZIoca928RiDBR9vWntzU7iQbUFdVB1cap
	Gr21hYjuow/Mm4+IcOcdxOYf/pAGW9eTqrVOAlMg7sb+N5gGMGxg2P923l66HYZnW3wuM3zirfIZo
	53fMy7flRjoW3qiKVu+6IJv6hYXwWDlo3ICIquLTDhMST8Xf9euU/zm7YDn4U+E4nxvN7JGIev73u
	Eik/b9RJ+3wnh73uA96itMXMfrfZiz+5LmqRs3w/E7dW58Tqif/ByILPcpPgHjmp5xYic/3/SbGnY
	yeVzQkLkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipUfp-0001uy-KF; Thu, 09 Jan 2020 10:04:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipUfZ-0001uD-1o
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 10:04:03 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3348F20673;
 Thu,  9 Jan 2020 10:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578564240;
 bh=EAbUup0u6x4vwDhewzBUsSbAJxXwsZBQSxw/cQMjjc4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o3O8cSdw7oaSTI08ytkDaHTaiI5uf4s6BzLB7mK7SsavJtKyMcWZlspMnvrUd/tXz
 JiZBxnCuic2gf61air9a5/sMJJeXvWxJuk6S8gunZGqXVDucHhfeYWfaWYPkoQSVyA
 +Keal0P0GyDIzluncZcyuQnLxP5EnIW0qC+v39pM=
Date: Thu, 9 Jan 2020 11:03:57 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v3 1/4] dt-bindings: display: Convert Allwinner display
 pipeline to schemas
Message-ID: <20200109100357.lmqe33ggag2oowlb@gilmour.lan>
References: <20200103152801.47254-1-maxime@cerno.tech>
MIME-Version: 1.0
In-Reply-To: <20200103152801.47254-1-maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_020401_113107_6E04BE87 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org
Content-Type: multipart/mixed; boundary="===============9038004755705406349=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9038004755705406349==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="54reiogk2nzgbm2h"
Content-Disposition: inline


--54reiogk2nzgbm2h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

On Fri, Jan 03, 2020 at 04:27:58PM +0100, Maxime Ripard wrote:
> The Allwinner SoCs have a display engine composed of several controllers
> assembled differently depending on the SoC, the number and type of output
> they have, and the additional features they provide. A number of those are
> supported in Linux, with the matching bindings.
>
> Now that we have the DT validation in place, let's split into separate file
> and convert the device tree bindings for those controllers to schemas.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
>
> ---
>
> Changes from v2:
>   - Changed a number of maxItems to minItems to make more sense
>   - Fixed a few enum that were improperly declared. This raised a bunch of
>     warnings that were unnoticed before. Fixed them.
>   - Added an if clause to the HDMI PHY binding to check the number of clocks
>
> Changes from v1:
>   - Declare the ports in the bindings

Does that new version address your comments?

As you know, this is the final schema patch for the Allwinner SoCs, so
I'd like to get this merged in 5.6 to close this off. Thanks!

Maxime

--54reiogk2nzgbm2h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhb6jQAKCRDj7w1vZxhR
xR/6AQChv++Kk/i2sSVersFV4K91EMKf3vhP4uvSjusi081vnAEA56hf6j44G65S
pdZ8aP4dOevzZnW4TX+omVeQOiBQlwg=
=Utda
-----END PGP SIGNATURE-----

--54reiogk2nzgbm2h--


--===============9038004755705406349==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9038004755705406349==--

