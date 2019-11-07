Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3010DF2DC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bk4fRCvSyDv+Bh2NOPwh8eY69kpcoX27sZWUgbtafPE=; b=EAY2A8yY33YP0joRYC3PKj0xM
	GWSkaFaoBsM+WlnRvVqmkfSMp8ZCq7UFXTlIiNT/I5WkWNbztoYjY0jCTVtEmpCGkf+RttDFxerB9
	0GrwmAGNF2b/VygfJyIQkWskqICAKSabFqqLM0q0e2m9saJGH8h3vaLy4RMlETmucU2v9AkykmjQA
	ZaZ+cRSTudEL9vCLUR8WD2E/y+VXC/2aYo1e7izMbr9jP+lI1z6SLtxpRnHQaDd79MkRGLse9JAUu
	971asuWS1bWyTwFogIKUPE9aX7DTWo8nNr4HZ6yvgav7qC+suOreyMnLOlq0BqL4Z884YgS1x4/Mr
	1rzlrs4Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgOU-0001rS-Os; Thu, 07 Nov 2019 11:56:06 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgOG-0001o9-CM
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iHlXGtTG3blZ6wKTwLxKq3oEwBwhxS47/spmMRLMzdY=; b=K/UJzHdCs9fwV96Yji6p6gWE/
 jMLeuXh+3eUByTdf2+mklAcdNAqP3OIGRCfrSlyf0pYM2buraM2dWLRx2gdJb6YIkSXbT0QEljedz
 3B+7cDRAiw74kq1pZ6Qb0+CmMlIagDCI/9wkzhOsntg9x62ieTcaWY+8+P6uNEwgtrRIc=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iSgOC-0004FS-V1; Thu, 07 Nov 2019 11:55:48 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 50BC527431AF; Thu,  7 Nov 2019 11:55:48 +0000 (GMT)
Date: Thu, 7 Nov 2019 11:55:48 +0000
From: Mark Brown <broonie@kernel.org>
To: Christoph Fritz <chf.fritz@googlemail.com>
Subject: Re: [PATCH 3/4] dt-bindings: regulator: describe da906x buck
 regulator modes
Message-ID: <20191107115548.GC6159@sirena.co.uk>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
 <1573121050-4728-4-git-send-email-chf.fritz@googlemail.com>
MIME-Version: 1.0
In-Reply-To: <1573121050-4728-4-git-send-email-chf.fritz@googlemail.com>
X-Cookie: I've read SEVEN MILLION books!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_035552_441989_1AD7ECF6 
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
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Support Opensource <support.opensource@diasemi.com>,
 Lee Jones <lee.jones@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7698008593132567081=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7698008593132567081==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JWEK1jqKZ6MHAcjA"
Content-Disposition: inline


--JWEK1jqKZ6MHAcjA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Nov 07, 2019 at 11:04:09AM +0100, Christoph Fritz wrote:
> This patch adds DT description of da906x buck regulator modes.

Please submit patches using subject lines reflecting the style for the
subsystem, this makes it easier for people to identify relevant patches.
Look at what existing commits in the area you're changing are doing and
make sure your subject lines visually resemble what they're doing.
There's no need to resubmit to fix this alone.

--JWEK1jqKZ6MHAcjA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3EBkMACgkQJNaLcl1U
h9DFYwf+K+6Qv4srSebiFY++rlxALTFBrd/T7KJR2yrAhocBG0I9XWBns9OzMgQi
1Ff7vMnWBiE0CAVpK1MTPD0E86pxX5EoSGS65rl9gq5SRCXLSje+va3qbzUW7x79
20f0+cGUdTyaROEauNYrrLdxJnW3c/dNEqGtOnQfYQ72ejDQYSXX5bZwO5ay8oU3
7S2ByVjf1qUXnpBH0W6kbDmnwRdvtRN7gh9Pbc0tcItDop6bQmVPckRYw3Qll7Y4
Qe53MkwaODM5Mv97D4pGUGVkW0eYLPNckegdlGmS8jZg5Ubh4uGchTplFVj8eu3d
FNuOOMzELazOxzyjsbSG7MeGZPY0Hg==
=NCpx
-----END PGP SIGNATURE-----

--JWEK1jqKZ6MHAcjA--


--===============7698008593132567081==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7698008593132567081==--

