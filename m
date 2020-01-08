Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1577F1349A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 18:44:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7xblhuqzPzn4YFU5EjK/apRbmr1xqQpldS7bT0PIFLE=; b=CUgnRJuv0FaxNs6sHGnGy+oAJ
	hAjXCNWUAZiT6tYkteI3Nhav7iUUPNdb4+WGoLk1xGCnM1GVHTA9gSSFJYnwCrotLLOzl/T/dWe3t
	OSIHwdT0iezW8iYj5KTxEwFclE4lBrBYVHHeZrl2vCa0oGVXKI/QZdmGdZXNSgt/VWkNSjSRBtcnx
	aCaWXXJm3dL0KwUUuWXZwPh1BOmFaTZtgiOLM/jXATx4WXPzvz4oOSQMo23lsA+fYNUTRgPe9W32j
	748ftbRS4NJcb3+i1ZRI8V6ze4i7mF91DeNEnXVGE4nVDGwWtB4tOiVdd+4z8042lVT3sQnFXYFyz
	kSPzwwbaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFNf-0006SX-Fk; Wed, 08 Jan 2020 17:44:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFNY-0006S0-AX
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 17:44:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 351FD1FB;
 Wed,  8 Jan 2020 09:44:23 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B3DBA3F534;
 Wed,  8 Jan 2020 09:44:22 -0800 (PST)
Date: Wed, 8 Jan 2020 17:44:21 +0000
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v8 3/3] arm64: Use v8.5-RNG entropy for KASLR seed
Message-ID: <20200108174421.GD4036@sirena.org.uk>
References: <20200107183540.54794-1-broonie@kernel.org>
 <20200107183540.54794-4-broonie@kernel.org>
 <CAKv+Gu9265OuGrkdH=Mp_Ef+6h5Y8mdvATd-TrTXN_wUawsUBA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu9265OuGrkdH=Mp_Ef+6h5Y8mdvATd-TrTXN_wUawsUBA@mail.gmail.com>
X-Cookie: My vaseline is RUNNING...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_094424_418468_5BC54655 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8098644492809026655=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8098644492809026655==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9dgjiU4MmWPVapMU"
Content-Disposition: inline


--9dgjiU4MmWPVapMU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 08, 2020 at 06:38:48PM +0100, Ard Biesheuvel wrote:
> On Tue, 7 Jan 2020 at 19:38, Mark Brown <broonie@kernel.org> wrote:

> > +               if ((ftr >> ID_AA64ISAR0_RNDR_SHIFT) & 0xf) {
> > +                       if (__arm64_rndr(&raw))
> > +                               seed += raw;

> Using addition rather than xor to combine seeds is slightly
> unidiomatic, so if you are doing this for a specific reason, it would
> be good to mention it.

No particular reason.

--9dgjiU4MmWPVapMU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4WFPQACgkQJNaLcl1U
h9DYcAf/ch9Y++5K2JoIPNbust87vT9UOcXMQSv3cCXnyO/PKhSM/N2X1XRA6D57
6s0qKjQZXnkGYoVTltXGcod+LY2zgos9Myl8fZ0ByiLRr1OkX9/VUNR7PrAUWdwq
yyNo9xW5Mq/G1NrTgPRFiA1JCAgvI7jPBQn8EtWCcAePKclkSsTWHW5Q2hDL4tW7
8MOlmt31nS6JMgn03c+zAMTliESDMPOyEAA145FKG14bMTJ5RpvdB9281JvoRjbj
JaiIh/EqL9EADS+nuPO3vqUqzvAIHAm7Z5mSMX1Yg17p5nAFbiYyAC94g46Q8ohg
W2Y2cx8YdWp+emJXWN6j+KB3vF4iGQ==
=+nD9
-----END PGP SIGNATURE-----

--9dgjiU4MmWPVapMU--


--===============8098644492809026655==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8098644492809026655==--

