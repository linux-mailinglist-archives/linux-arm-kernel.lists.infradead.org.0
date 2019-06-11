Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 578353C5F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 10:29:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P19ZKtEUVwFoa1B74NIbDTvPJsVPbwxmyPgK0WH/DAY=; b=E+GzlVpkxpI+cldgavb+nT+sk
	WeQE3UPhZ53CL8c3FVzdMNWV3i7Ysq0MRqakn5x2yBXOtQm3p1pRj5GSZiZg9IY+6igAWhVoCfhpG
	BOAYkmuf/M/VN9dW8Hb3crcrY/mERuw2InPvQXk0QDGwiXuVSxHiCaIUsvlX1YP47P87Fvr8zRCS/
	1rAXjpgYmBLJKrpwoUKXjDpeZF1cBu648DlKwav+m5zGT74tCTljncODQh+VOXGAAmR7F2uy7Yxw2
	Oi8Fhd5CTDIcJxb7UkFCJRiyPKIIcVDdn9f0n2V0oDkg1Egri710g2eJNTVnwR9r39FHCIgWMivBF
	zeBd1mhog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hac9m-0002rN-Vw; Tue, 11 Jun 2019 08:29:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hac9a-0002r9-4W
 for linux-arm-kernel@bombadil.infradead.org; Tue, 11 Jun 2019 08:29:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xIqNtZCXkwSr2nr2c1S9RI/lGkMMXjqMrRBapZIGqqg=; b=SmaG3sHyExYhUcQHypAR+Wemq
 sneDJHOkeEutfRABSGn9lQFdLSDTTgpc0AxReDvS8zcerg6/5b3169FEYrS/Ffwq8kGTmSimF2edd
 xQza9sBubFyltvJ+j0zJyzqcf2CbSxqXFxiUL8+SUbQ/Y46XWoyaM7sybXgKtdoGgHRJVC8CmEl7e
 dqlStU/p6YaTo+Pc6Jpu8dG/g7csYp0JX0JustsuiUUlSk9gbWDui42FmDWfnkv7UTVleTsDQzbYU
 zFR6SKe9Q6UkjRAdkMQl4v4QHAoi+rtSZUpqSro2TUojCoqjGdLBkfjqh7x2FKn8QQllrQBK/nC3+
 ci4VV7edA==;
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hac9V-0003cM-E0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 08:29:11 +0000
X-Originating-IP: 90.88.159.246
Received: from localhost (aaubervilliers-681-1-40-246.w90-88.abo.wanadoo.fr
 [90.88.159.246]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id AE35CC001B;
 Tue, 11 Jun 2019 08:28:32 +0000 (UTC)
Date: Tue, 11 Jun 2019 10:28:32 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 7/7] arm64: defconfig: enable Allwinner DMA drivers
Message-ID: <20190611082832.lu45xaxyuftmc3et@flea>
References: <20190527201459.20130-1-peron.clem@gmail.com>
 <20190527201459.20130-8-peron.clem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190527201459.20130-8-peron.clem@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_092909_506072_A6C74D1D 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8759616019544610520=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8759616019544610520==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pmlkumyvjoeoxyoi"
Content-Disposition: inline


--pmlkumyvjoeoxyoi
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 27, 2019 at 10:14:59PM +0200, Cl=E9ment P=E9ron wrote:
> Allwinner sun6i DMA drivers is used on A64 and H6 boards.
>
> Enable it as a module.
>
> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>

Applied, thanks
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--pmlkumyvjoeoxyoi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXP9mMAAKCRDj7w1vZxhR
xbJ1AQDeFPEci2+C/F9JAKMPMRxCGb1crqPrOBHlGm5cOPU5mgD/XrVy7lKljnD3
kRiygPovjYI/8EQCelT+QrOFbBXtSAs=
=2p9T
-----END PGP SIGNATURE-----

--pmlkumyvjoeoxyoi--


--===============8759616019544610520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8759616019544610520==--

