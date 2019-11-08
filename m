Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39CE3F502B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 16:50:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YeUYDv9PDmn+/Gi544JA4Yg3KJl7S3i+6xqCj2cGbA0=; b=JKHv27aSX0pnOO/7JugV8zGia
	ZJtGwb6WL6MeRaRPrsqrj8Wl5OVUDD1MTNtUhZBkK4aqr/5VYLJvLMsE4hyE7JycQtA/qC3786GSB
	xOjCUSyQxuCISO/QvP5q+4G7OGdMzT3GYktDsnEo23nS15ZLtUcNmh3Rdh3LXMXPISfW0TrkPn8K6
	XvhRuulEaamkkMXXIAeYQJTRfGLotbqymQdYw64QSib4x8oXkBHjuB4BRFmJN2ILGLHYu+3ldT5A7
	bivQu+h2VjwzQgTzpqmeh3PcV6e9Rl4M30ZIF/NpILskElwDeAJ9RLomVuPhZybxa+Qd1ERruu3zD
	r6uKYYwyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6Wd-0008Oi-Ry; Fri, 08 Nov 2019 15:50:15 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6WV-00082v-Nk
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 15:50:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O+7LzaPKtzUuL0hkLWx0Mi5/035wwUrxS/yxkQE7h9s=; b=EwxxEP7mUit1N7SsiMow5eIAI
 tNDJ62QlB8H37c1pfXewDMitRCBUDhAcnMgENtJ9MiphWC2G+9X28ZD7f0EFODwJ83eEnt9R8ZpGJ
 Gt1qFxvCLkYzDI575lKG0AsZsIC9ce2AQBnSOX54wX9fCosUEOspXbJCitIAQhK+VLNk4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iT6WT-0007ZM-TB; Fri, 08 Nov 2019 15:50:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 578F02741450; Fri,  8 Nov 2019 15:50:05 +0000 (GMT)
Date: Fri, 8 Nov 2019 15:50:05 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 2/2] arm64: kaslr: Check command line before looking
 for a seed
Message-ID: <20191108155005.GG5532@sirena.co.uk>
References: <20191108154607.51051-1-broonie@kernel.org>
 <20191108154607.51051-3-broonie@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20191108154607.51051-3-broonie@kernel.org>
X-Cookie: Life is like a simile.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_075007_786869_5D7B1248 
X-CRM114-Status: UNSURE (   9.84  )
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6937841411133037219=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6937841411133037219==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eMnpOGXCMazMAbfp"
Content-Disposition: inline


--eMnpOGXCMazMAbfp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Nov 08, 2019 at 03:46:07PM +0000, Mark Brown wrote:

> -	/*
> -	 * Retrieve (and wipe) the seed from the FDT
> -	 */
> -	seed = get_kaslr_seed(fdt);
> -	if (!seed) {
> -		kaslr_status = KASLR_DISABLED_NO_SEED;
> -		return 0;
> -	}
> -

Sorry, realized immediately after sending this that it would be better
to only move the if statement here in case the user has provided a seed
but also explicitly disabled KASLR.

--eMnpOGXCMazMAbfp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3FjqwACgkQJNaLcl1U
h9CAGwf+J/JBiEs4gZlnVyKnDyijyC8gq4SFVMPzo6HMFwamMpCeu6uV9FDjQ9n4
oV7/rQgEo4gEhystWW7Au/ARjaro4p5tuTtdvaonSlUVzqJqoZ08UmnAcgVnwReu
oYk4y5KnQoUSBq0Ob7P7gmzr/vd9JQORVtTqelU/xu4y5nvSluMG19KvTbszLW4y
yMInt9NG5MHliXFOspNfVVrNtinxdb0kdoW4rWzfmGq4SbDlFQsTswJJvT4ukJK2
beSPlY901Qd1cIyX6IcqswQClfyd/AAFzAIV6dQ5qtdWy1HMyPYfqdCKdtb0ivqV
L/pcKYJeRq4wjcep7gPwu2gPkgr4Zw==
=z5qn
-----END PGP SIGNATURE-----

--eMnpOGXCMazMAbfp--


--===============6937841411133037219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6937841411133037219==--

