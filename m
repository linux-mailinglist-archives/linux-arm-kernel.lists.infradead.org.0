Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9322D63F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:24:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ip49svLihTCirkScaM59avCKAnWPaEmeYPsrhjDhrtY=; b=Bs8tLoBJ3U4XG3sQPfzWfUVrZ
	dUQv/Od1AMXy1kQwzh1fS+N09sD8ePbu6nlvgc6W24+PybdQ9jE5/trK1zz6QDVDaEsUZPatQsGzA
	pJOFPhZOIzHySd+RiJypnEQwfFQqslHR3ABAPpncyS2WQGIZTwN3ZSQ4Nr2P4dVPuhSCtOVX8pIO0
	06DWJSmYsKFCi9H/AxmUVik8e4zkS2WG4W0D4ZsDCamEUWrTfhKYs6nRB3O2FV1+kf7sKsUJV5N6A
	rVgLBbpHxIPRgaRmlwmlguBN4aET93GYIB+3vmnTUx8G9ehHPOE942zjhv1dIRi/uwt3t6Rksa3wK
	+AMkSfWUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsx7-0005lv-Om; Wed, 29 May 2019 07:24:49 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVswk-0005ZU-R8
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:24:29 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 375D31C000C;
 Wed, 29 May 2019 07:24:24 +0000 (UTC)
Date: Wed, 29 May 2019 09:24:23 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Priit Laes <plaes@plaes.org>
Subject: Re: [linux-sunxi] [RESEND PATCH] ARM: dts: sun7i: olimex-lime2:
 Enable ac and power supplies
Message-ID: <20190529072423.5wg5lejgy3ece77i@flea>
References: <20190528063544.17408-1-plaes@plaes.org>
MIME-Version: 1.0
In-Reply-To: <20190528063544.17408-1-plaes@plaes.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_002427_056536_B36AF5C9 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1072820924719155174=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1072820924719155174==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bqgbfzxuw6hkna6w"
Content-Disposition: inline


--bqgbfzxuw6hkna6w
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 28, 2019 at 09:35:44AM +0300, Priit Laes wrote:
> Lime2 has battery connector so enable these supplies.
>
> Signed-off-by: Priit Laes <plaes@plaes.org>

Applied, thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--bqgbfzxuw6hkna6w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO4zpwAKCRDj7w1vZxhR
xYGHAQCFpruzYdm052STiAsBGpDwgCbHAlK1s6j7Dla6ESbgYAEAglb2c7bgVX0p
vF9PXHhhe2aWbVr7yMHMmmiU53akGwY=
=88nu
-----END PGP SIGNATURE-----

--bqgbfzxuw6hkna6w--


--===============1072820924719155174==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1072820924719155174==--

