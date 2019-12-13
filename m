Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1F811E2E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 12:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kpQpjV8Fblm5dxnYKOMQ/Do3htvasZZvfnEHceL5g/Q=; b=HlM73hLErwavsmTwD70iYOlbJ
	h3CZ1FGHJtONnqH1RC8HZGJr+3YYl3hldsxRfkj0YVTBd611tNS7Bw/mPgQb2QFISXdnuxtm9FvKP
	m3XnY8Kiye8echOfP5tphicU/8aYz3jeALnayQOlLjRDrjWW5upZ6mCVP6+u2zSJJgAqWlo0KFmUH
	3JxpnYVfarOTLGoCZSed80dd/ke6F2+HIog2JOzF7mggmFtC6AsJRHVemxtKM4I4ziLcxDAUS0wpB
	tlByzSFX/Q41qk28m241u/fiiwCIT6TfGiRK5OYYC9EmgoWhrUZvffcDzFjOK3PJE/rC0pqcEt2zz
	sibCGwa1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifjKO-0002SO-QO; Fri, 13 Dec 2019 11:41:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifjKH-0002RO-Bc; Fri, 13 Dec 2019 11:41:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AA0301045;
 Fri, 13 Dec 2019 03:41:40 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2911E3F718;
 Fri, 13 Dec 2019 03:41:40 -0800 (PST)
Date: Fri, 13 Dec 2019 11:41:38 +0000
From: Mark Brown <broonie@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Re: [PATCH] spi: bcm2835: don't print error on clk_get() DEFER
Message-ID: <20191213114138.GB4644@sirena.org.uk>
References: <20191212231213.29061-1-jquinlan@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <20191212231213.29061-1-jquinlan@broadcom.com>
X-Cookie: Life exists for no known purpose.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_034141_443369_C845C1BD 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Ray Jui <ray.jui@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============5628625408574052111=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5628625408574052111==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2B/JsCI69OhZNC5r"
Content-Disposition: inline


--2B/JsCI69OhZNC5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Dec 12, 2019 at 06:12:13PM -0500, Jim Quinlan wrote:
> Otherwise one may get multiple error messages for normal
> operation of a clock provider.

>  	if (IS_ERR(bs->clk)) {
>  		err = PTR_ERR(bs->clk);
> -		dev_err(&pdev->dev, "could not get clk: %d\n", err);
> +		if (err != -EPROBE_DEFER)
> +			dev_err(&pdev->dev, "could not get clk: %d\n", err);

On the other hand if the clock isn't there and never appears then there
won't be anything saying why the driver isn't loading which won't be
helpful when trying to figure out what's going on.

--2B/JsCI69OhZNC5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3zePEACgkQJNaLcl1U
h9BHDQf+Kf+RYd7moLj8bCbIPnaZZ7Nsho3jFNQaB96HmWNc0rO3oRC2CHPcW7Az
EAw9GHh64sKQ+iLsXXIj5WhkBFfx0XsQ4uRSMCHwvpfnYaWw9a4ntAYr8Q6D7T5Y
RZQgixN7JobxgbUrL50FdhBJFz/Jjcc0a5N6xYrD8xNQDFlmnMtmqVpN9PBQlzp5
hdDU5eDqz0ncgiyJMsMUoEyoUtdjXJKWFcJtuEJ51bi/ken7MVU/m3CO806jkW9O
jk+OV2OMytB67pvLZyenL7pXLmkpP45Vpcb+elTkBBFiTDOsNsWkBxEhrQ1qxowF
Db335irZY42aFsjJkwvOx+C8Nc+qIA==
=EGVJ
-----END PGP SIGNATURE-----

--2B/JsCI69OhZNC5r--


--===============5628625408574052111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5628625408574052111==--

