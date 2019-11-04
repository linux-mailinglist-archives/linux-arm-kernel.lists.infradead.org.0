Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292F4EE5B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 18:20:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DZ62yT9VO553E+8M0RJuTCrBtPH1UtzKYfkd5hbgZTE=; b=lkd6HMr17zX10f0/z7J95MePd
	gvn3uUbyLUngSyTsmcBo60DE4wmzsDmsFcPJiB51H3M1ahKm8ySQCuFO1Rxh2q1wdsnjU0ueH6Zph
	3n2q5nGzpKGCQSg1AG3rhZ6hQKnLueQ3kwJa+Z1cK7CHLM0dkkh0hTIugcIH1nctWJTRl4esmf3Bw
	Va+Krpp9JUmWMJb5F6tNGOSk3LYBVKcFtAqVO4b97+rP9i27Fg+EMQIVirfjdMoJZrlRpOPz/T+ad
	/fvmKVPynHtTJo2cKn4Zeq8ZybReWHzigybqkSQojtGyLOHtAJsgLJEO6IolXFKepEmAsrPmbhxpk
	DTLIT59sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRg1j-0003iG-Sc; Mon, 04 Nov 2019 17:20:27 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRg1Y-0002yh-RU
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 17:20:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tf6hLsSwplFytlo2TB+Z5JnYPsclYxQ2Qx/+4XG6RfY=; b=VIgT9re61cIt5YjjebURdy8eJ
 sO5160HuoNajseJhAScS/j/zYK1guwG7HuS/zf5p75k0ER4/gcWVf813LSbuXIYyFVOhYmwoMHw+P
 8S4mH96N8DvfyEQdbdzcE6Rm+jAfGsKFyNLuuiar199Y1NMkBEFzUXAYGJjAn883ZQCPs=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iRg1V-0002uc-T9; Mon, 04 Nov 2019 17:20:14 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 43ADF274301E; Mon,  4 Nov 2019 17:20:11 +0000 (GMT)
Date: Mon, 4 Nov 2019 17:20:11 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v4 4/4] arm64: Use a variable to store non-global
 mappings decision
Message-ID: <20191104172011.GG5238@sirena.co.uk>
References: <20191024214207.20588-1-broonie@kernel.org>
 <20191024214207.20588-5-broonie@kernel.org>
 <20191030121307.GB10294@arrakis.emea.arm.com>
 <20191030124153.GB7218@sirena.co.uk>
 <20191030141732.GA13309@arrakis.emea.arm.com>
 <20191031081807.GO4568@sirena.org.uk>
 <20191031101819.GA39590@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191031101819.GA39590@arrakis.emea.arm.com>
X-Cookie: This page intentionally left blank.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_092016_932793_8F009EE7 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6818102341519463153=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6818102341519463153==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PpAOPzA3dXsRhoo+"
Content-Disposition: inline


--PpAOPzA3dXsRhoo+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 31, 2019 at 10:18:19AM +0000, Catalin Marinas wrote:
> On Thu, Oct 31, 2019 at 09:18:07AM +0100, Mark Brown wrote:

> > For my working branch I usually track -next since I've been
> > burned repeatedly in the past by interactions with other work
> > that's going on, both code conflicts and unfortunate runtime
> > interactions.

> I guess it's up to you, I personally find tracking -next during
> development a lot more distracting.

> Anyway, if you send patches to Will or me for upstream, please rebase
> (and test) on top of the vanilla kernel, otherwise we may not be able to
> apply them. You can (should) do a merge with -next and flag any
> conflicts or run-time issues.

I should also point out here that while with my workflow I see the
issues rebasing on -next the same conflicts will also come up whenever
merging into -next for testing which happens about as often.  The core
problem is that cpucaps.h can't use an enum because the assembler
doesn't understand that so it's pretty much guaranteed to lead to
frequent conflicts, hence the desire to get such patches merged.

--PpAOPzA3dXsRhoo+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3AXcoACgkQJNaLcl1U
h9A5YAf+PeK1hAwPDzv5tSFZ31HsKCztxg2xzdl0dlyDav7Rr6QWhwLkU+WgZDZ2
dwyZt1nKXY0KU22eJNCxkkFkahAyuBwLo84A9z6vGIJFXzBHIlOULTq6CCkQZ23R
MGU5BGFaZcpcEOzG5qIJ/RJu4WIv/4zkJ4wploEkm05zEE6lvebx0YvMtaXrEIp5
QMsUfaDSAkL9C6g8huv3b8NyFqL3T7YUXFGRt6ZvzJcmy0Yf30EDPSiaRv8CQkxC
Iij+dAnhpcbgZUJ0tdMySddgvKPkR3cuEpr/ovfDVyQZGOBFVZIET+7swqsEJqbw
gNizuO9CdJIS5E69FEP7/Zdu25RNlA==
=3OU7
-----END PGP SIGNATURE-----

--PpAOPzA3dXsRhoo+--


--===============6818102341519463153==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6818102341519463153==--

