Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B90ECF88
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 16:40:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dILDMfc8/HKayVxjFMGyEOI0C9WhZ5FD993qzSfRTEk=; b=MkgXO9ysnCpHgQzlLeFB57Nhq
	ZQcTtUv61G2MLh50qc2NslMCJj7AQLj5Ylxao8xTCOr8IRO3AzeQJCs/e76gK0Xuu3oWESMiJdT5X
	bb495jnd9gJNNxFTYJfeaft+EmOlkk/sx0dffQ+oYxsIDT9L8J+69gutUg92fnmC77gwcJxd7hKNT
	FU58AbMzXV4npgYDUU6j1owCoEVdJ1ANRbBK0Q6qYjBIILGrFsodGuWYVmlLOb/scd8rV9sQPP49t
	tilmXUnWOY3kQczNBPns+7LIrz1gy5hPQ5c+w0DEERtWGqID6dbFg1RpUuhm7aAHvFXXpTLDFR1U/
	8MO9A+sVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQvWG-0002Ya-41; Sat, 02 Nov 2019 15:40:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvWA-0002YI-Qt
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 15:40:47 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5819A20663;
 Sat,  2 Nov 2019 15:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572709245;
 bh=ixoHOTVHRLDxCWfvZIdJ2yDzmRsS3DJ1UxXSSRLuEfA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pAjN/KeF5Bdy7IbfQh6xKI6rnWkUlvboGue18CzO9byHOi/+Jy+53+DV4SAKSDynd
 7lAJFwZBBMceupgPm3seDL9L8kOj1AVLawBYbvR071I6gxbuOnL/H/93YAHvf5hJ1R
 oiY7hNkL+BzAXPLFU7zYgGqbprDyV17XZuXEBT24=
Date: Sat, 2 Nov 2019 16:40:42 +0100
From: Maxime Ripard <mripard@kernel.org>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH] arm64: allwinner: h6: Enable GPU node for Tanix TX6
Message-ID: <20191102154042.friao2rlmergzt2p@gilmour>
References: <20191102120427.19350-1-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20191102120427.19350-1-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_084046_896168_EC8E15DB 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org,
 Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6061563415752879928=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6061563415752879928==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2gt4cvqwobr7lljk"
Content-Disposition: inline


--2gt4cvqwobr7lljk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 02, 2019 at 01:04:27PM +0100, Cl=E9ment P=E9ron wrote:
> Unlike other H6 boards, Tanix TX6 doesn't have a PMIC so we can enable
> the GPU without providing a specific power supply.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Applied, thanks
Maxime

--2gt4cvqwobr7lljk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHQEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXb2jegAKCRDj7w1vZxhR
xbOmAP9dPuOKLyRWvCNQd+Pt0s0yp2OsQrHFJevcolwW1K+aBwD4nCS2u0DLBsHd
xdLffKhx91+L6l2+2J3AhunGizlZBA==
=+WaH
-----END PGP SIGNATURE-----

--2gt4cvqwobr7lljk--


--===============6061563415752879928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6061563415752879928==--

