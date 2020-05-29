Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE991E85A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 19:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2NTB82dUhHsConmf6y8r3tZqwNMGUciG0EfPgnteZgw=; b=Ef5ZpsPm9Sy1in/I/SqRJzPgN
	rf4IryA84V0UPgely13OIIla9mtPfrTe2TtEjqjFHtigSk+vYK0/X+v0GdsMdwLyze6VStiT1Uwea
	zAI5KXWrmqLqXZkCV3ny0sqRrXKPygT+CqesC8jyJzKW9rXH9yyGWtZ1K1f3UQcsk31t+dbDEQmZx
	j9/rdXK+ZyrvRMW2Fah43uB0/1lXcbA103B/ii7VRJLtflvpMsZ/7I8s/baIp+kctdY9OxLyKv2LO
	KDFoSmOIYathAAoLCD8+NTdF7CRPf8damppN1k2mydhy1HhLGl8SUM4sbe2sFfNJSdjfnQz+/hxFO
	jDZq+OgoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jej7B-0005Uf-GH; Fri, 29 May 2020 17:48:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jej72-0005UA-5U; Fri, 29 May 2020 17:48:09 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1C4F42067B;
 Fri, 29 May 2020 17:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590774487;
 bh=CU5XueM8Uren8tTTQCGNaREQdasKk9IK8u1gailMNuc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yUOrG3IQUBxZeEU18buHBc1e/yA0krknShpUNLJO5bKUFHyrx8iPsyv/K6qfFHLs0
 gOHg6SjZFKD8kCRcH48S3sWAIMFNs+kJUDc1PIx7CpM1jWKlMhTs7kVXPTl6eBi39A
 3ghzEceZBLYEdbmGjtQ4TPc5MQAOWlHsVxDvSNoc=
Date: Fri, 29 May 2020 18:48:04 +0100
From: Mark Brown <broonie@kernel.org>
To: Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH] spi: bcm2835: Enable shared interrupt support
Message-ID: <20200529174804.GT4610@sirena.org.uk>
References: <20200528185805.28991-1-nsaenzjulienne@suse.de>
 <20200529174358.som3snunfxch6phi@wunner.de>
MIME-Version: 1.0
In-Reply-To: <20200529174358.som3snunfxch6phi@wunner.de>
X-Cookie: The Killer Ducks are coming!!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_104808_225996_98C6C1C2 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Martin Sperl <kernel@martin.sperl.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: multipart/mixed; boundary="===============8435798532778245811=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8435798532778245811==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4AfY4lbNVy6SI0IG"
Content-Disposition: inline


--4AfY4lbNVy6SI0IG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 29, 2020 at 07:43:58PM +0200, Lukas Wunner wrote:

> This definitely looks wrong.  The check whether the interrupt is enabled
> should be moved *before* the conditional calls to bcm2835_rd_fifo_blind()
> and bcm2835_wr_fifo_blind(), i.e. to the top of the function.

Hrm, right - I'll drop the patch.

--4AfY4lbNVy6SI0IG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7RStQACgkQJNaLcl1U
h9DEcwf/UwyI2LMBvPyY58CcQXrZF5LFTL5YDrcWyvT7nhTkEmJjEepRcXdJFavZ
3F8+5aFweraNFenwqNcTnmpspdIzp45E+ZeaEayzqINHQcPj/QAmCTVwFK/vULr4
XxNwzuiOQz3vIPjaqiJGjIE1jBSltoykiKqMY9B0cHyYPXvqEfrobAZHLWnLYdr5
XIhKIEX2Txj0WvGGbZOUK4wiG8/bj+y1jIVHiOqljCIgcjb06ws739t7UhrWM1HB
ZhATvhbiirr0wNcA8oG0mXmgK+vMVTvWenbXxlhReTkbMWG6x8uzCv3rg7aCE02a
4/IdOSFJQ3i6acyBkGgJO5mcHXYXxg==
=gcEl
-----END PGP SIGNATURE-----

--4AfY4lbNVy6SI0IG--


--===============8435798532778245811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8435798532778245811==--

