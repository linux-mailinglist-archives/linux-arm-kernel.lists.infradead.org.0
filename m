Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C64013CA4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 18:06:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P1EnzP3NnHmIYhajV/pcyNct4bpzrmrUJerzs2+NwU8=; b=MwFMU+VUFsmKh8lOkaBaqg9a1
	sWkbrP4jm/HQEomKymwhdZwFovsOo2V7EXHf44QMFwg3X+MDvV+JPMxKaVgrG3qvV3bO0ZcbkBbeQ
	mUE34labF5wbPLlyFzYRiJR/NUzk/oivam+gsDg/WkDxiALSVNhTKbtqR3XCpw7S3IcWnuVL1Nn1w
	xQYTZnZBNaHTYpJbSrquHj9cBOmtoxct+fEAU9uPnOt1iqdHUzAS3EvphvlRcDF4UDdrRIHB5KVbQ
	ghtvXiVUReyDwOG4lThSs8tG0gZzQomDO3HjpujmQj8XsRtkckkieG2ZlOtNN3id25MkZR+w2Tq1O
	kiJ1piB2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irm7i-0005s3-HO; Wed, 15 Jan 2020 17:06:30 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irm7X-0005rT-27
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 17:06:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C79DPnsSFXkRpTKaYTh3BiwvibkSKpR8sSAbPhUIRww=; b=pqCdWrUggYbJCB2yIaTlI9U3V
 mDRFjYMC2Qzjif3QIiNy7vh/d4oc8teu0eujJOM6aZ9EJgxH7i2/O0kLNlWTLzUWZwz/lazAQDSab
 ao05eh1eP+3/QOh7RzB7nM9jBwzfm/PyGBBKorxszyeQTxx6whtw/yD7N4d6JKp7ifSw8=;
Received: from 188.31.192.185.threembb.co.uk ([188.31.192.185]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1irm7U-0006bt-Nb; Wed, 15 Jan 2020 17:06:16 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 3E306D02009; Wed, 15 Jan 2020 17:06:16 +0000 (GMT)
Date: Wed, 15 Jan 2020 17:06:16 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/2] arm64: Use register field helper in
 kaslr_requires_kpti()
Message-ID: <20200115170616.GN3897@sirena.org.uk>
References: <20200115142900.28976-1-will@kernel.org>
 <20200115142900.28976-3-will@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200115142900.28976-3-will@kernel.org>
X-Cookie: Programming is an unnatural act.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_090619_098255_1373B379 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <maz@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: multipart/mixed; boundary="===============0678134117703005700=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0678134117703005700==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AO7xfgsPaN7qs9GL"
Content-Disposition: inline


--AO7xfgsPaN7qs9GL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 15, 2020 at 02:29:00PM +0000, Will Deacon wrote:
> Rather than open-code the extraction of the E0PD field from the MMFR2
> register, we can use the cpuid_feature_extract_unsigned_field() helper
> instead.

This was suggested by Suzuki at some point but I ended up not
doing it as the helper function name is so long I couldn't work
out how to lay the code out in a satisfactory way at the time.

Reviewed-by: Mark Brown <broonie@kernel.org>

--AO7xfgsPaN7qs9GL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4fRocACgkQJNaLcl1U
h9A6+Qf/fb2HNZ/8XFsgYsMr+JQBL6BBO+fz4PoKw2m7znS0cJrW1pHEAbaoN4Ft
uLLPns5B3YIwEo/9Y6YO89RyRYnieco3hPiMUnfUbSbVlEy8YRAm1DHG0Irehjni
5g+mGjObrPkFrdSoDxV3XOCYCMZm6Mc544kToVqQ+DWdPQIGFOtUw/vK7V8F1KM1
KftVEWmdodaCUZhGFAKPGKUWjvyTZwsGjmtk7cIue6rRvBY2aP2xG/KP03VWNnMh
SV9wtw9vcnMlvbHy1pI0z3p9Mst2fkeYn5sC3fCqM4Q578koFF5gETIl4y+sRPre
HKEKLSQ4jZ2vgN4mFt3xaxHZFhcVCA==
=c78y
-----END PGP SIGNATURE-----

--AO7xfgsPaN7qs9GL--


--===============0678134117703005700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0678134117703005700==--

