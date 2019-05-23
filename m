Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BAB27EA4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:48:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dj4oUMuRWWJ09ZUCQeBj03uCOWlPV7vLwUbRt05Rso4=; b=oL360vgwmLM7NtXMJPS96ertW
	3g+aTtu/WCFhH2EN8ibngu/wU0DE+XYQMwrBQcxmqlFdqFuRyDT1JTuNjkigKe/Okp8BrMPqrBRIS
	nwHRy4R0L/X3OPMkoJaAeHV9SO+sfZ2G5IHvT/Zs5HwrYVp/nnc9yNL7QH3O3Pp51bKSrx/rWV2fN
	+gkwm0JXlxXr1XN9k3HfM2mP4LR07SR17ElJDslWvczTEKjF6iH0hujcwTt9auD8JyFi8WiaKFZNx
	Ls++9fsT9zpCU2I7JOsbXx3gh1qLSlJG/vG3wuv5kM5G3FSwtKZYQlEhxh5HG5mz+wFQH9EjZdqKa
	XK0NMAQkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTo5S-0008Gq-V8; Thu, 23 May 2019 13:48:51 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTo5B-0008GT-Hd; Thu, 23 May 2019 13:48:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X6yLgBlALTmm8f+P1P/St4oPtsvR1/9CNsOiFiXV8xg=; b=KQ6R6tGNyApe5h8pwVsVlYGGZ
 NOR2ifx6p/cw3HqGvkJUeYMNLd0l4wHKzmL+jm/XlTB6BAXT0PfMNpDMBsX1f1ZRJv/8zwR+8Q6U2
 Y7ugrn80U037qfUn8jDKCssIerp3fWltxBuFlYgmscfhxJwQqOezW9qjZf8sDmVLHpmPg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTo59-0000Do-Ab; Thu, 23 May 2019 13:48:31 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 36A361126D24; Thu, 23 May 2019 14:48:27 +0100 (BST)
Date: Thu, 23 May 2019 14:48:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
 ls1088a and ls1012a
Message-ID: <20190523134827.GH17245@sirena.org.uk>
References: <20190522070133.24953-1-kuldeep.singh@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20190522070133.24953-1-kuldeep.singh@nxp.com>
X-Cookie: I brake for chezlogs!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_064833_725445_526CBE03 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Ashish Kumar <ashish.kumar@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "bbrezillon@kernel.org" <bbrezillon@kernel.org>
Content-Type: multipart/mixed; boundary="===============0984707644255454778=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0984707644255454778==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9sSKoi6Rw660DLir"
Content-Disposition: inline


--9sSKoi6Rw660DLir
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 22, 2019 at 07:00:32AM +0000, Kuldeep Singh wrote:
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> ---
> Update v2:
> 	Convert to patch series and rebasing done on top of tree

These still don't apply against current code (for-5.3 or for-next of
git://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git).  Please
check and resend.

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

--9sSKoi6Rw660DLir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzmpKoACgkQJNaLcl1U
h9AeXgf+K/fyUAneVeSKJB2PlpJY0/l0sSrrEho/KS2x1MPK84BO5He4Q7R56mZ4
qPJSsRMJwhj62P5Zj8SoxbLdWKGYqs8AAwzvVztBMhOKmj3vbYeIK/2/ArKc1xLQ
GVYEcU8HpbFCQcxhsjpUQKDpBurkZUJ2+soa7IufJM2CF9+xXopqZt6bTcbIR8/P
bGg17RQIpq6Oukz30eyRDUVoTzTyCxEFK/M34nb/+O5wK0K2cKN6NWxGxoZNFNAx
jcFXRP/k3i9aZPISHZe3nCzIyPDoq7Z1Ez5o1Xd9rSy2VajZOdaDAPxlxbEbkYIx
eiSXwFFZvSye+r7wPu1w5NDriw7MYg==
=isZA
-----END PGP SIGNATURE-----

--9sSKoi6Rw660DLir--


--===============0984707644255454778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0984707644255454778==--

