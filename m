Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD72D5A0D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 18:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9dwoz7EK0e5qUR65qtWLbMFHN+vyKTJq4qRD3d4fcDA=; b=Tw4dZpfl9L/LHXPUqhbXivUsy
	4hIaKv9kD5g7e5EwGwzhf7ZFWPgox2eN6hCQFfKVVLK46Z2AnmIVhARng/p09JtOgfZt9sq7mZxRd
	N4DYFwJ18YlH65wblmzYhw0BiIoplI2DILKcDwEt101t+oWE9zf/3iebOWAxhdxV+KJHYFttpxnHU
	VAWTGcYf3QKvIfXQIaV0orOJtJuavG9VWmMxj5VDQ6kZiv7bVWNd8LcRYJHr5s+OoCxqNSgU64lKM
	6bxbjlyouwyG5W/Qk8EfrJxZTNIlZLxUzKPoJCby3EzYZ7ajt+cUT+WGL4ZbYObHQG0g8XmuZl8lL
	tpD7vndng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtje-00011V-9d; Fri, 28 Jun 2019 16:28:26 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtjR-00010r-Sm
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 16:28:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NUcnVlWppCDnseXS2Jo1/Ox86A+WltNtal+wW+HV6AA=; b=GVv88EKD1OoXYNNHWKx2YoEYE
 u0F4iu26N32bqlOITlpQELF+xLQM4y88EMlgLwuwP62mNrr7pEDQLvC2WrYlLZW2K0+jS0e9hSoFL
 ajDQ6q7vRaWeoJh/7cGA1Jczu9ieI3dA974QhtYAWJClqhpOrW0z1s2clefNqAR3hFeQ8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hgtjO-00075H-PV; Fri, 28 Jun 2019 16:28:10 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 29D1944004A; Fri, 28 Jun 2019 13:30:40 +0100 (BST)
Date: Fri, 28 Jun 2019 13:30:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: Add initial support for E0PD
Message-ID: <20190628123040.GG5379@sirena.org.uk>
References: <20190627141532.6452-1-broonie@kernel.org>
 <20190628110430.ffdqy5on3retyr42@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20190628110430.ffdqy5on3retyr42@willie-the-truck>
X-Cookie: You need not be present to win.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_092814_080388_BEECD26F 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 1.1 DATE_IN_PAST_03_06     Date: is 3 to 6 hours before Received: date
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2214196289466194835=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2214196289466194835==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RDS4xtyBfx+7DiaI"
Content-Disposition: inline


--RDS4xtyBfx+7DiaI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 28, 2019 at 12:04:30PM +0100, Will Deacon wrote:

> Thanks for the quick v2, although I still don't see the rush to merge this
> without the associated kaslr/kpti changes we've been discussing. It's not
> like there's a whole load of 8.5 silicon we're rushing to support.

It's largely on the general theory that it's better to carry less out of
tree code - there's less diff to manage, less chance of collisions with
other work (in either direction), and less pending review to worry about.
So long as something represents forward progress I tend to work on the
basis of why not rather than why.

--RDS4xtyBfx+7DiaI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0WCG8ACgkQJNaLcl1U
h9Ai3gf/cw1NQLtSgWuAqtQaptg4DLkHdZOS/oYVl+Irwk1MjroBtzk67loshdCT
QcmXkYdNWSGYBOH0ExenGnfqJcLt1t+4/rjCNjs6pvY1p+D5zt3v7PSZLMmNIgcC
ecuCRpo7NTDEsBls2GRnBl4cLtJ0NbfnB7JRsEfjnmrwcbZzPlgxBw0Sf6KWAN0x
kBy2mPIAKEyPMzIrzpmhpRm88kIxWwPIeKTDaE7E2InLrbKyQOM3af3JBsl/fOS+
SuW5Xdc5uABQuRYsTO6CBH1wwBVqe2Zs61qvoqnQjaie2Rz0KMDnYku+3B8unfJd
rvvZnF9xeza83rEKo6Ixhj2E/3/aXg==
=AvGh
-----END PGP SIGNATURE-----

--RDS4xtyBfx+7DiaI--


--===============2214196289466194835==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2214196289466194835==--

