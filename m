Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A15F014757
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iEXIzbV57ZU/p7l0K6ggdNrrLsxT5wbxlNLsKLY6+n4=; b=G8KPFVXfelj3//Ts/MLn8bfU0
	Tt8YqZoPgzrBtnDSW3IxYO+r3LTnrgq8sB96t0IBpZMatcjP2zu2DVb0IVd9dxCwVcnXtDetg4Vyd
	mLSeU9wTdYvUqsM2r/ox31Cm0kq7VBSalaf2vKPZM3x/0kRVzlq+sjuWRz+OJLqfFtQwCWOlgQjV0
	DycIPmpc5m5E6xmv4n+T8J2h11t3gKe4JpiG/pI57SaoJOPR0YPBcQfb/O28xsa6wq8t9D0gKK4+h
	eu3nTV8pPcNQw2J0U7AEHKEnLwijvgBV4s2FlXGQV9YJwOfzCTTQ71zHoZJ7s7AYG097oeBWMG/P6
	T0AzABnwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZif-0002pP-7I; Mon, 06 May 2019 09:15:33 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZiV-0002od-Qh
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:15:25 +0000
X-Originating-IP: 90.88.149.145
Received: from localhost (aaubervilliers-681-1-29-145.w90-88.abo.wanadoo.fr
 [90.88.149.145]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id F05436000D;
 Mon,  6 May 2019 09:15:04 +0000 (UTC)
Date: Mon, 6 May 2019 11:15:04 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Pablo Greco <pgreco@centosproject.org>
Subject: Re: [PATCH] ARM: dts: sun8i: r40: bananapi-m2-ultra: Remove
 regulator-always-on
Message-ID: <20190506091504.mbkr5kqyym5gngeb@flea>
References: <1556924720-49372-1-git-send-email-pgreco@centosproject.org>
MIME-Version: 1.0
In-Reply-To: <1556924720-49372-1-git-send-email-pgreco@centosproject.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_021524_019869_F5C7C982 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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
 Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5642842250618369447=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5642842250618369447==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="dvasnxeqq2ltvqq3"
Content-Disposition: inline


--dvasnxeqq2ltvqq3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 03, 2019 at 08:05:19PM -0300, Pablo Greco wrote:
> Now that the regulators are tied to the GPIO bank, we can remove the
> unneeded regulator-always-on in reg_aldo2
>
> Signed-off-by: Pablo Greco <pgreco@centosproject.org>

Queued for 5.3, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--dvasnxeqq2ltvqq3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXM/7GAAKCRDj7w1vZxhR
xc9bAQC8YRi3gs8HuqDb8+sr+DijRefSa0vscw+8e3AW3uzKTwEAm8liWEtJpnJD
D9zHOmLRY4EuKSYRPGBj8xCScD/U5wU=
=Oikk
-----END PGP SIGNATURE-----

--dvasnxeqq2ltvqq3--


--===============5642842250618369447==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5642842250618369447==--

