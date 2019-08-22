Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D34C995F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 16:10:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ixBFlOcpUlcQMFwG9JmbwSu9Ylj1nhfHZQENU1d7WR4=; b=r4KZy4sBHMUzh/Fg4O4PrJs2+
	yaUU9VgGWNKpA2A3yatCiHqBTK36TAkz7NrGU4eiybjFAusrOW/RKipdnn7bLbR0+1q6/fhDvsjgU
	6KvukzlUf3hF/8s8EXPW6hi2wkTGqKT8leSlCSeA98iAWvGGa4blfMaRvLT4spkrjJFrloCFF0ZBe
	nhkPJGFoC+n9/PKKRmbNcEAkZfjW5R6Jodt3hUieAVoqZjTFqeZYXeh11jbVQ2o+gJ7N/F9VV1GA0
	00jH74poMjSjZn1E+LGQxTsNrwnAsUd5A1j7avGn6p6CNwKc5mWBlTxexVum4ezZj+f7aqYkN+83N
	nBJg2LPOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0nmp-0002wM-Q6; Thu, 22 Aug 2019 14:09:59 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0nmb-0002sL-PM
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 14:09:47 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 617D0240005;
 Thu, 22 Aug 2019 14:09:35 +0000 (UTC)
Date: Thu, 22 Aug 2019 16:09:35 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Sunil Mohan Adapa <sunil@medhas.org>
Subject: Re: [PATCH v3 0/2] arm64: dts: allwinner: a64: Add A64 OlinuXino
 board (with eMMC)
Message-ID: <20190822140935.pwtpu7pzbd7y2xdg@flea>
References: <20190821195217.4166-1-sunil@medhas.org>
MIME-Version: 1.0
In-Reply-To: <20190821195217.4166-1-sunil@medhas.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_070945_983176_64F005E1 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2741552821829658258=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2741552821829658258==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o357ly3g6xw34l2g"
Content-Disposition: inline


--o357ly3g6xw34l2g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 21, 2019 at 12:52:15PM -0700, Sunil Mohan Adapa wrote:
> A64 OLinuXino board from Olimex has three variants with onboard eMMC:
> A64-OLinuXino-1Ge16GW, A64-OLinuXino-1Ge4GW and A64-OLinuXino-2Ge8G-IND. In
> addition, there are two variants without eMMC. One without eMMC and one with SPI
> flash. This suggests the need for separate device tree for the three eMMC
> variants.
>
> Changes:
>
>   v3: Separate dts for eMMC variants
>
>   v2: Fix descriptions for VCC and VCCQ
>
> Version 2 of this series already committed in linux-sunxi tree as
> 8d3071f3e85894be35a1b35bcf6fdef970c81018 must be reverted before applying this.

Applied, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--o357ly3g6xw34l2g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXV6iHgAKCRDj7w1vZxhR
xWLhAQDOkw9X6DlCQETlzeftJrXZtaROlRQI7eMcpSHu1NX55QD9GLwat/8lSR48
phvN3wKPU67uCQ7L3ceu7WVMPjUoFQY=
=G4R+
-----END PGP SIGNATURE-----

--o357ly3g6xw34l2g--


--===============2741552821829658258==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2741552821829658258==--

