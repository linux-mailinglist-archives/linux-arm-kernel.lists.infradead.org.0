Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BA81AD61
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 19:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pA9B2bQrfavI4tEmq4xXg1Tomk2EO21d4TkWv9TgQXc=; b=c5rwR4X/u+3J3lguOCyTgCzmz
	RcgNKvBC7Wdl5Qr4uoCT65lxtcsNLFJ9WgBxFmsOgdQiNvliBTKxhlB1kv+zkPKiZfWnDFUA8KsER
	BYcHAw3yYBYYz7LDFwRlj8XGkT0igkA68WA8qlMTspIySGeH5mGzf7y2nSD6jp1nayXkMjAZOk+OP
	40K+yRidbIsfSkX3hY+/ko3CRrLeDfxtYMeCpVLwXpdjZsc9XgRS9BUQSoAbrTErvBgwz9EBFhrp+
	F1Tk/f/zN6P+lRueBJzOZt02Xs0D6ysLvJu5mf2BCCJcZ9un94HEr/cCRMBTztsAONa6/u3ieLaMD
	d8sLTJsuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPrvc-0000ix-IQ; Sun, 12 May 2019 17:06:24 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPrv2-0008Ps-Dl
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 17:05:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HJ4Nz4QDJVMZVMlbWigp8sZVqeUNyUAymIfvJkhfYhg=; b=MeeeXWmIcL9hI62OLLfsjDsEv
 OhzhqSKfb9f8zaPhhToTB2o/4drYBReJW7ae1+HhKD08qSzQ2gXPbRX59ry13KVVU795DY3pwncQs
 N2u3P8qtI6yH0j8GM4HYNAHw7vZqiJpnxUqgYE7gHCgDUkMS5PK2EYsq0J2/gWtYZ7Lmg=;
Received: from [81.145.206.43] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hPrut-00044R-N7; Sun, 12 May 2019 17:05:39 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id EF71E44006A; Sun, 12 May 2019 10:17:22 +0100 (BST)
Date: Sun, 12 May 2019 18:17:22 +0900
From: Mark Brown <broonie@kernel.org>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH v3 07/14] spi: imx: remove ERR009165 workaround on i.mx6ul
Message-ID: <20190512091722.GQ21483@sirena.org.uk>
References: <1557249513-4903-1-git-send-email-yibin.gong@nxp.com>
 <1557249513-4903-8-git-send-email-yibin.gong@nxp.com>
MIME-Version: 1.0
In-Reply-To: <1557249513-4903-8-git-send-email-yibin.gong@nxp.com>
X-Cookie: HOST SYSTEM RESPONDING, PROBABLY UP...
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_100548_610510_50E70316 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.1 DATE_IN_PAST_06_12     Date: is 6 to 12 hours before Received: date
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "robh@kernel.org" <robh@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "plyatov@gmail.com" <plyatov@gmail.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>,
 "vkoul@kernel.org" <vkoul@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "u.kleine-koenig@pengutronix.de" <u.kleine-koenig@pengutronix.de>,
 "dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: multipart/mixed; boundary="===============2339106274157270644=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2339106274157270644==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cnBsrynPgIOyCJkL"
Content-Disposition: inline


--cnBsrynPgIOyCJkL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 07, 2019 at 09:16:19AM +0000, Robin Gong wrote:
> ERR009165 fixed on i.mx6ul/6ull/6sll. All other i.mx6/7 and
> i.mx8m/8mm still need this errata. Please refer to nxp official
> errata document from https://www.nxp.com/ .

Acked-by: Mark Brown <broonie@kernel.org>

--cnBsrynPgIOyCJkL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzX5KIACgkQJNaLcl1U
h9C8+gf+KmYRm2L5VEF3eL4ork1xvAFHJtXfOjV/B1DR0Gie2THR7U8Jq6RYoxM3
WiNuy0sL5QpNc6jpXplVGB0Zy2YS7FE5FEmNfcqk6WIqnN6oASqi6nUpe4J20w/2
SH0NVyn4dI3aQwMPtYVm283OZYYnTjK8TXvqUQ5pdONcY1ApcuBfqhw3A3yIySoW
CNafHUttb19MMiZg4A7OoGrNf8J1Xu8GNEESpYyKc7tFXb3pKnNx18mRPw4R8VLP
lKd5jBdm3TmuZskVn45y9hEr+R2T96Vr5v/SHpTaNmMzDhStNOFLuKHes888Pz/C
jyuAQnZRpNhrLu0wDPl/cIXRmGh4iw==
=ccm6
-----END PGP SIGNATURE-----

--cnBsrynPgIOyCJkL--


--===============2339106274157270644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2339106274157270644==--

