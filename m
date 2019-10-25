Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6CAE4F9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mXPa3k0H8LypOjkwNVwOUI1GqPJESMSjtSTJKT3zMrM=; b=p2mLtmHiBH2klZL7u6smHRAgH
	gAp5kIM8CKJQrzcAfAeEffpYVjneEn9na10V4ydXl7pga0vMw58pmqFcHC9AHAclHd7OSqljIqlUF
	uuRy7H36Alg2K9zFMzPKGN6Wxokt7r08bTyRW2BzLBHQrRamvbFOur4b9WbVp/KXmPYhq7/TjkFbw
	7JhB95nTd43XrQuliJa0uxK6/wAbvtbvHdGbulJ5rEUPcMDl/aNjKsWEzL7zACdjn3FRhJF+zeotJ
	MZWoQFeOCCb5OKEHRDmqgL6rp+GRVZnlgGgBxHiQS/axOUgQZuCzCqHMNxqBopomDbsgJnp5eVLo8
	VZ7tQqqAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO0zm-0002D5-WB; Fri, 25 Oct 2019 14:55:19 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO0za-0002CU-Lq
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hOMeQHT5QizvK4EdYa5Jsk3saKC1ABLJqlyHDkwtamA=; b=cd06RRWTLCnJ82Oij3Cbi97qI
 s9jk8yIG6bfewthiFa0Jf4CuURoUsjgkTDT+sgtMZzOnRXWdLOCJO8boxdfOgJ7ePdcKvWKwqf6KY
 ie8Atg24+yu3JUht3+/HEH6+cApDuQAwISfqITmksq1Ji00dS/a2/lh3+pNmnQAzglXeg=;
Received: from host86-174-61-171.range86-174.btcentralplus.com
 ([86.174.61.171] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iO0zW-00075E-49; Fri, 25 Oct 2019 14:55:02 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 7EEF7D020AD; Fri, 25 Oct 2019 15:55:01 +0100 (BST)
Date: Fri, 25 Oct 2019 15:55:01 +0100
From: Mark Brown <broonie@kernel.org>
To: Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH v3 08/10] mfd: mfd-core: Protect against NULL call-back
 function pointer
Message-ID: <20191025145501.GG4568@sirena.org.uk>
References: <20191024163832.31326-1-lee.jones@linaro.org>
 <20191024163832.31326-9-lee.jones@linaro.org>
MIME-Version: 1.0
In-Reply-To: <20191024163832.31326-9-lee.jones@linaro.org>
X-Cookie: Keep out of the sunlight.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_075506_724227_E5EF12C7 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, daniel.thompson@linaro.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1943025676994244364=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1943025676994244364==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ls2Gy6y7jbHLe9Od"
Content-Disposition: inline


--Ls2Gy6y7jbHLe9Od
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 24, 2019 at 05:38:30PM +0100, Lee Jones wrote:
> If a child device calls mfd_cell_{en,dis}able() without an appropriate
> call-back being set, we are likely to encounter a panic.  Avoid this
> by adding suitable checking.

Reviwed-by: Mark Brown <broonie@kernel.org>

--Ls2Gy6y7jbHLe9Od
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2zDMQACgkQJNaLcl1U
h9ABgQf9FLxe+CJ2ib38kOHsh+dWrewAHj3LPciwqrFUCQbdp/vtXpAjmCnHy0t6
5RbtY52V8l9ePzKffJ/H0KmmtEvXGEgosPbR/0i662aeVTmOyme7W4pZXMTTLMJ/
JIPMccu6ocWmYHsGy9QRE8ogdOQ6oC5Gmys1FDDj3iHI7MV+byj5tLco6eqGpH9+
8fsfGfwAzwJfDXyoyMpjrtsivvJfXGTgYr0ozd5dVliSkRwABpNoRXCxi5QAqCUt
Sm6unj7LOFcmt2GYtrNgg/utcd+A5coT55CCWA5Ib2/yB9KTj++tt2xr6C7FzQJG
38r3tEQ2oyzlkqLRc1Nl+oZDX7IcFw==
=WgfW
-----END PGP SIGNATURE-----

--Ls2Gy6y7jbHLe9Od--


--===============1943025676994244364==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1943025676994244364==--

