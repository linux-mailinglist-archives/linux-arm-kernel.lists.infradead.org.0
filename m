Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A69F4A15
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 13:07:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NzJvUSvE7tJboTyLsrpNGfiMPYajKyZGjE/mvxxrT+8=; b=tHuuPyEfhuN74dRQjFFQCSBWU
	IadUbMRZQLgs9PDuo74bByIxGJwZLeJd6qsKXdr5l+X+C4bwfNUvk8orxTuXrV9kz4QtR/InAYLqO
	F2WCPA9FF8Qx2eZkTGB/XNHrcnj8LSLkV8d1KkmCSARTL4MO2bTdpjVLcE2c2x6kENkpcX1pcUA2V
	omJbO4TimMIhgraLr7a8EFqH1Yy4B3HyhM2xNaK3N/0jCgfUciIYw1/bxl0DZyNngKhf3M50ygTQI
	STgCDQIGYeiYSWjXq2IExG+9bfovMozW2PBcKsnuQKoj50TPqQZSahVoZkJn2A+ahxr3YQ8CfAemA
	OXVUTMkWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT33H-000076-GK; Fri, 08 Nov 2019 12:07:43 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT33A-000061-GN
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 12:07:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mjGtniboMTM2RIT/gqY2m+20i8WqeKlHM9VBLi7C4QM=; b=Z3EmqP/dmXsGyR25IwH8ovthD
 j8FIlVRD2nkUWPRrlCLyIEdwmK/kYF9uWN37WdYWXVSJl3m/b7jfgIjp8KD/D79C0ruSD/l4yzl3q
 i/w3Xn8QIutxsE9twSFV3vP7WgiYp/fn1yJQo+KUgpc0zMr+bYSxAXEAhJ0ChByuc7mVY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT337-0007DA-Am; Fri, 08 Nov 2019 12:07:33 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C62372740C6C; Fri,  8 Nov 2019 12:07:32 +0000 (GMT)
Date: Fri, 8 Nov 2019 12:07:32 +0000
From: Mark Brown <broonie@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Subject: Re: [PATCH 1/7] spi: zynq-qspi: Anything else than CS0 is not
 supported yet
Message-ID: <20191108120732.GB5532@sirena.co.uk>
References: <20191108105920.19014-1-miquel.raynal@bootlin.com>
 <20191108105920.19014-2-miquel.raynal@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20191108105920.19014-2-miquel.raynal@bootlin.com>
X-Cookie: Life is like a simile.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_040736_544572_357BEFD5 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-spi@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8516661312265564073=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8516661312265564073==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U+BazGySraz5kW0T"
Content-Disposition: inline


--U+BazGySraz5kW0T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 08, 2019 at 11:59:14AM +0100, Miquel Raynal wrote:
> Unlike what the driver is currently advertizing, CS0 only can be used,
> CS1 is not supported at all. Prevent people to use CS1.

This (and the rest of the series) doesn't apply against current code,
please check and resend.

--U+BazGySraz5kW0T
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3FWoMACgkQJNaLcl1U
h9CyRAf+OzujcGHVTH3TILnu1RcNmDMHsq5AWnHviUgP3ljXhKwem+t3Es+mYTXt
yTLfHFCRlv6wLltW/V10d3fQDQIBlT6oBAx+jmQMzJOA3CNNk+2kDhUhjmyv0HKv
QKhIWqPg5StiQmmcvKz5zVoSyT2owP/glVMI6tNPqJD95QtHxj3GDUTI22B/xnZ7
ObnQqXLs5pcAklyLlkOFEhfzfOrKGKIsH9p46svKT68upTTZbYm4RINOdGYSXPwL
Xf28mCljPVXy/kHSnGcci8hXcXrwEzMalt6a3eCvp1vpxqmA8P2cj8hjW/67IiQw
sJ4ofqNSUWB3YP42i1vj2olILm8/Lg==
=lXpj
-----END PGP SIGNATURE-----

--U+BazGySraz5kW0T--


--===============8516661312265564073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8516661312265564073==--

