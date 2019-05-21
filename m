Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA862259A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 23:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3VVq9RYmd481BcWqHUan9+9C2bNzkej5rU6yoGvuCH4=; b=r2VN989CIJFJK17UMZKMUnzND
	vq/n7yMLIZl6/1cpcksN8MdRh+utnP3AKh81Kb/4nYiImyUqG4avs25ANjidclzjLdQaGdWYvyj9r
	Lp2hARjSosOXnGt58LV4FSm63t0PpCVzmLDtVU7v9ChvdK5/BmQZs/j+fe4MRH/EJkmM9ixBswds1
	++VCWH8Sfg0TpXF3TFPYEKkuh5bNsb8adjlneceEqReUQuXtYfLpOCuB4qaBpTM4ybUUgJkX/hc+B
	eRyRXS3e4US0RbOg2P/5x25pRNXBYr27XcgTNYnMH/FbhTuL4CzPwOI0KaERIeEJdxn+p4mdzRQEy
	VESSY1EzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBwk-0001cD-T4; Tue, 21 May 2019 21:05:18 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBwJ-0000kR-Gp; Tue, 21 May 2019 21:04:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d9M7yQ5yVOSEMt8T+B3jEX8ZpiakoXvD5uTaMsNBD5U=; b=IAmIMI5PjJ4StIZLqS2qHjJE3
 +BDscThjnoxlmE0lqyuyituvDJBsLSMqnf3n3vX3KTrNDOsSuKPYB0IJw1ZIcQNY7pZayaKKUmm5X
 kn4Ex7wD8OeJTV8bwAqN4WCx3Gg6vCCrJ5F9PoD74EC9oC11Rq48uXTuiC2NPrren6R9E=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTBwH-0002Et-Sl; Tue, 21 May 2019 21:04:49 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 6C9341126D13; Tue, 21 May 2019 22:04:49 +0100 (BST)
Date: Tue, 21 May 2019 22:04:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add ls2080a
 compatibility string
Message-ID: <20190521210449.GB1580@sirena.org.uk>
References: <20190516104046.23830-1-kuldeep.singh@nxp.com>
 <20190516104046.23830-2-kuldeep.singh@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20190516104046.23830-2-kuldeep.singh@nxp.com>
X-Cookie: Klatu barada nikto.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_140452_398512_5D6EF7DF 
X-CRM114-Status: UNSURE (   5.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: multipart/mixed; boundary="===============6727787723434198018=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6727787723434198018==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gj572EiMnwbLXET9"
Content-Disposition: inline


--gj572EiMnwbLXET9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 16, 2019 at 10:39:45AM +0000, Kuldeep Singh wrote:
> There are 2 version of QSPI-IP, according to which it can be big endian
> or little endian. There are some other minor changes as well.
> The big endian version uses driver compatible fsl,ls1021a-qspi and little
> endian version uses fsl,ls10280a-qspi

This doesn't apply against current code, please check and resend.

--gj572EiMnwbLXET9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzkZ/AACgkQJNaLcl1U
h9Dcggf/a5SCEOq1f8Uztg6sAxsCy+2TMZDAfoiuy9SH76QY+e6nHxdy+DrXkwPC
RGL2sLSSC9pbd1BqabLJn4+ivFrbs3FN6pG06RXTw8s9bm/jPC80df67eNaLt6Fq
Omyq0iYTAw3KMz3TyhdzmBeCS5T44EG+39ofRW5O2xms+mkXNPB7D5a8UjTj9OXr
vLoM4lx0yWLiMZ1KMZ0pc4/A9O3JXpamPmUn6+sYlVkW9680sM5ve1nzC3x9my0v
f4rFFjcJe/cFZ5PxkRMSeDeyJQTHRk3tWGnMBl81zKY0r+5x2Qfe/xg7tFHBNr7S
z6yi+WirwaH7QY8lCWCfWu9EFdwBSg==
=Titl
-----END PGP SIGNATURE-----

--gj572EiMnwbLXET9--


--===============6727787723434198018==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6727787723434198018==--

