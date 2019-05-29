Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41DD52D73F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 10:05:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PC+rw5aJOCpiFCUUY0uKYStELvX9AF6KMihM8Het1W0=; b=F8n4YNdgfv50gIPXTtM10R6p1
	y6lpg0bEiAf+UwoQb2qjhDOqmZkxUnqsJA1GKe6hpMcX0we9NtcV5kN4KIgKrxKt3pfU0WZCRD8K6
	jVrdUeZl43Yl/XKY50m/lJ0joJid5THFQFo/4rvICh11viLXWAm4XJ9p7CO+eLj2C3dsiwuUYNEbo
	lIc1Q7MXhMahOTivrfifbY8bKaa6EBDYzaB+ZYpKEY5Vpe9VkZrCvduagv65YQ2f2pSUzGg+NaMqb
	ny+EV2nnHGsLgdnlrqlpcxwGOw0iScBO17LemPILKhD0abMWacmsHUvSQugdRut/BMjmO18LabYgg
	wLe+LIGiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVtaM-0001GH-Q9; Wed, 29 May 2019 08:05:22 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVtaF-0001Fm-7c
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 08:05:16 +0000
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 1F3AA240018;
 Wed, 29 May 2019 08:05:05 +0000 (UTC)
Date: Wed, 29 May 2019 10:05:05 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Gen Zhang <blackgod016574@gmail.com>
Subject: Re: [PATCH] clk-sunxi: fix a missing-check bug in
 sunxi_divs_clk_setup()
Message-ID: <20190529080505.acyiha3uebg6wski@flea>
References: <20190528021851.GA14526@zhanggen-UX430UQ>
MIME-Version: 1.0
In-Reply-To: <20190528021851.GA14526@zhanggen-UX430UQ>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_010515_432940_D846453B 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
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
Cc: emilio@elopez.com.ar, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 sboyd@kernel.org, wens@csie.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7473351369478656529=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7473351369478656529==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="o35lrbyzjlkcjtqy"
Content-Disposition: inline


--o35lrbyzjlkcjtqy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 28, 2019 at 10:18:51AM +0800, Gen Zhang wrote:
> In sunxi_divs_clk_setup(), 'derived_name' is allocated by kstrndup().
> It returns NULL when fails. 'derived_name' should be checked.
>
> Signed-off-by: Gen Zhang <blackgod016574@gmail.com>

Applied, thanks
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--o35lrbyzjlkcjtqy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO49MQAKCRDj7w1vZxhR
xWfrAP46HVqEHdmnfc8KYLclIPZP/0pUCzi5RAIq6DVjbMwmUgD9GOGKEB363FSF
iYDV78aJJGnCdjGQ7JRUoIR+3s7Q3wA=
=m78v
-----END PGP SIGNATURE-----

--o35lrbyzjlkcjtqy--


--===============7473351369478656529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7473351369478656529==--

