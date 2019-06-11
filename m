Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF923D2E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:46:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+y/rGjbH8G4/UA7QY5HEOHKPY179/vxJYgamEOKdz/k=; b=H7O7NJWxaFyK/06fAe293fKmr
	GrdWrh3Zrff3ON8AwdScKyd2np2XvefitDnSQfuGHjqDUWv54uj8zxSbrh6EVbA/wPyW9dr6RQeZU
	iixYfQLsp/SZN7GI/3qZzXHUsbn4hykcb0dySkMtH+RCeHN3anbIZueabR3bQp+JmFaY8786rLZwV
	x3Lhn4cKnLt2eJm/c5HJ8UL/pybCtspr0D57rAJquCI79l0+I7BzTacIb3hC2yFBq/IM85BbjtSZ0
	QQUiaPmi6p337Q6BH12QU1tiiSWft/GMoVxl7NDS/4avo/kB5jl3nubq6SvuPZDnL9sm7+BUqZ/F6
	GNZ6TR2jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajuW-0008KU-QK; Tue, 11 Jun 2019 16:46:12 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajuL-0008K0-2M
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:46:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W5gQPkVM7jP5xtb25GOh+1waT6S1jB2k3sECOmQS//0=; b=gdB3Jhme4SlvBW20mWywREPEZ
 mFId6MoV4WnkU0xiMq4pXhnet3crBNeigS7fF96GCf6WT1pR/nPlf0dUyJKceXnNv2QZ7DuZ9cYrs
 gYzavJEA/L2UXi1KZddc2o/O2L+UHH6YfaI6ghYgOuTdonv9LHRaROCuGcygkj/c7JTOA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hajuG-0000Bo-LP; Tue, 11 Jun 2019 16:45:56 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id D6694440046; Tue, 11 Jun 2019 17:45:54 +0100 (BST)
Date: Tue, 11 Jun 2019 17:45:54 +0100
From: Mark Brown <broonie@kernel.org>
To: James Qian Wang <james.qian.wang@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Brian Starkey <brian.starkey@arm.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: next-20190611 build: 1 failures 20 warnings (next-20190611)
Message-ID: <20190611164554.GD5316@sirena.org.uk>
References: <E1haipo-0003Ae-CW@optimist>
MIME-Version: 1.0
In-Reply-To: <E1haipo-0003Ae-CW@optimist>
X-Cookie: Editing is a rewording activity.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_094601_261347_045853F5 
X-CRM114-Status: UNSURE (   6.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dri-devel@lists.freedesktop.org, linaro-kernel@lists.linaro.org,
 linux-next@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============7644386894364500659=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7644386894364500659==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Qrgsu6vtpU/OV/zm"
Content-Disposition: inline


--Qrgsu6vtpU/OV/zm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 11, 2019 at 04:37:16PM +0100, Build bot for Mark Brown wrote:

Today's -next fails to build an arm allmodconfig due to:

> 	arm-allmodconfig
> ../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c:206:30: error: passing argument 3 of 'd71_layer_update_fb' from incompatible pointer type [-Werror=incompatible-pointer-types]
> ../drivers/gpu/drm/arm/display/komeda/d71/d71_component.c:385:30: error: passing argument 3 of 'd71_layer_update_fb' from incompatible pointer type [-Werror=incompatible-pointer-types]

due to 75f3b7efacb8e (drm/komeda: Add format support for Y0L2, P010,
YUV420_8/10BIT) which introduces those two calls.

--Qrgsu6vtpU/OV/zm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlz/2r8ACgkQJNaLcl1U
h9CyqggAgloTZxQRgBpbsluShw1SLkikwibJx0Qo17XyH/PBIwVi4+IiPSiE4IsA
4qiQ/RJZpkO39LG/RsetgzVTGha6mXVVZ2IWFhM4b1Pz71h2gvknhsTm62oKwx1H
bibBN915JPTCjg+RF+ry3Id4Ez/q5E8JUM7vyKns72IOPjJCsdD7HCcUCXhPWF08
c3MfiRcuAUm3JuX1LILSiiVSBf+5VrX+uV9uBwSk2gtFGLYICkSKNqpVsOMnaH8+
rABEqyGFJc135bEbfBXGjKAJemCJe0/UZkpmF0O3S8JHstbtngSL8e19nrFQTt0y
aZUAV0+AJxTzh4dFl6Qpj+0xhquONw==
=WEo4
-----END PGP SIGNATURE-----

--Qrgsu6vtpU/OV/zm--


--===============7644386894364500659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7644386894364500659==--

