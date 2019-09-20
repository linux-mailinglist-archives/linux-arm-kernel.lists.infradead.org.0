Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA1DB9498
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 17:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KX2Y7pOC/uP3/SIZ8lmF3jXTuhaXoN6lYGaI8d1hFBw=; b=E6pep3VnTLwGroguWOGKo2XXF
	F0Onz/QCdFPtpCpNDv67cjsqGD8Mzl9pfyovvN9UXIl2Nn4M7SYDbiWd8ns1PxWUySbzQT9MMLTpJ
	0DWfbNYeLdcPfIvXEXcDFhwXipeDEMJnfgA/yuEn2Ud2nCnWsWsH+16YBtJRt5yoMBXZmO7azw4j5
	zyzlKw4r81Q/yG+VziEUwGeFlnUGTOLjKWJf8z85R0MjxqLLLdADn27h7zEX/yN0lBLiO+nkUU5LC
	Yo3ar9Xj1VsvuGS1ZpTkKYuMjgxuCk7jezgaGNwhagBcSj03KiUyA6UGj6pB5el9p/+UNl8QXAxZz
	Dev/l36Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBLEX-0004eF-N0; Fri, 20 Sep 2019 15:54:09 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBLER-0004Ve-ME
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 15:54:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zLDrH1bjiD0FaVml2s6dPvH5HKK+NUEXFEsWfY1kDG8=; b=wgkf1wLSxZsRbDLbrQvjuR0V1
 VqsQPFVu3UU+r6FlfgdK9st2Wglyrogw9fAxJhZXA5aC0+kvs81kFNrg/tTrdeM+fRgHq4sNGLVSf
 AMVw21lXO5cyePhrCH2h4+tEW8D6uSGyac+KlQZi0WU++YjX/TUFVtUwNmwIZ+3S0eGhQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iBLEQ-0002uH-1M; Fri, 20 Sep 2019 15:54:02 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 30BB8274293F; Fri, 20 Sep 2019 16:54:01 +0100 (BST)
Date: Fri, 20 Sep 2019 16:54:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] spi: atmel: Fix crash when using more than 4 gpio CS
Message-ID: <20190920155400.GH3822@sirena.co.uk>
References: <20190919153847.7179-1-gregory.clement@bootlin.com>
 <20190919160315.GQ3642@sirena.co.uk>
 <20190919172350.GZ21254@piout.net>
 <20190920105101.GA3822@sirena.co.uk> <87a7az7zt6.fsf@FE-laptop>
MIME-Version: 1.0
In-Reply-To: <87a7az7zt6.fsf@FE-laptop>
X-Cookie: Stay away from hurricanes for a while.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_085403_735247_FBD04327 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1252143047209736490=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1252143047209736490==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nFBW6CQlri5Qm8JQ"
Content-Disposition: inline


--nFBW6CQlri5Qm8JQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Sep 20, 2019 at 05:27:49PM +0200, Gregory CLEMENT wrote:

> But after going further in the details of the driver, this patch could
> cause a regression for on the old controllers.

> I also found other issues in this driver in the chip select
> management. So I will send a new series fixing all of it.

OK, great - glad at least one of us spotted a real problem!

--nFBW6CQlri5Qm8JQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2E9hgACgkQJNaLcl1U
h9DuOQf/d1YSSM95RC3kUN0e8uki1dRX6P/DzkwsU8aq/UjqRJWFqJfINJoq/iX2
Bxv2so1RItyHhc7DeDbguqZd3q7ZoGEIdpydEs0YiCe0ZsIC2WO5oQYbzR+StoUP
Go9tnNJxG00tYTUoOLSkuFt0oF28j6+IiBOqU028GK0CcCpEY5gK6bdLrO3Yg/bp
x7dnew+UZGVIqBygo6Gf4o781L0aV9exnr8toNx2meSItYSd53qBOywiLt+olUPB
i1y7ZIBMFvM/CADLLfgT8u+3bu8q6tVFs7olDfPXfiSqWC9tOzur/x3aDfY4CdQz
8iOeWl80Sr4wXQgZWxBJGWp6Gz1JHA==
=vx4t
-----END PGP SIGNATURE-----

--nFBW6CQlri5Qm8JQ--


--===============1252143047209736490==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1252143047209736490==--

