Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C61850F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:20:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/o5+k42kf+xS02O4e6I9V5fnDL2qmFZuCzznm2QO2wg=; b=Mqa7h7ueAqnXatqXHe5osKfsw
	R6ekvg/fH+Haeann2jfV0ZNKtRwPRXGCZrddAgDSK4vUB1HKJiXh++qsr5ubayfFxqKGclKP5AhSb
	YwGn8D9xeBWiwteBZR6iywmY20qbiBn+Rg6M9U+kLxRhB/FgAfbtijSXwRX+sfhfIkzrHJdvGUMkt
	0sUvzTtRZCfWL22VEBOgxloim4ibcpHX7R25tP10mGkhXNI8DAlrkgpGVQkfYfjHCwRGShBxXSYvI
	s/Q6blseV60uqaNGpWPCH8crz471h68WqORXm34vB/gw7YGzlR0xttnvcc+qGaPdo7OC/eNf8tu+T
	I1z3hVONw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOfj-0004bS-SH; Wed, 07 Aug 2019 16:20:20 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOfK-0004Pl-7E
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:19:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0wVTUg6H7YDjXRewiulRUWBWXskse+mkWQnGN0LLKAg=; b=WhExpzoVl1CRCJUQhbnyD+VBT
 wCUlRrr0+CmdRhvTAcwERf1ZfsWNH0UHb+GaipCCwSO4tmOgaJ5vUZ5OyKn8jomJhjI6Kxia4T5Ik
 UKQ4UPqtB1Gc22eOJUsrMbGyvy8ASxy8ykSugD/Cybe9ob045P+aZWc1DEGwDOzo14bOU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvOfG-0008EZ-JD; Wed, 07 Aug 2019 16:19:50 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A76942742B9E; Wed,  7 Aug 2019 17:19:49 +0100 (BST)
Date: Wed, 7 Aug 2019 17:19:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807161949.GH4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
 <20190807130527.GD4048@sirena.co.uk>
 <20190807135618.GF54191@lakrids.cambridge.arm.com>
 <20190807152934.GF4048@sirena.co.uk>
 <20190807154314.GH54191@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190807154314.GH54191@lakrids.cambridge.arm.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_091954_545946_CEAB3EFA 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Matt Hart <matthew.hart@linaro.org>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7846604046620519557=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7846604046620519557==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l06SQqiZYCi8rTKz"
Content-Disposition: inline


--l06SQqiZYCi8rTKz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 07, 2019 at 04:43:14PM +0100, Mark Rutland wrote:

> That confirms what Robin suggested [1] from looking at the config: this
> is a little-endian kernel.

> The Image header flags the big-endian bit is 0, and it succcessfully
> boots with a little-endian rootfs; log below.

Right, I've confirmed this myself.  Sorry about the noise here.

--l06SQqiZYCi8rTKz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1K+iQACgkQJNaLcl1U
h9Dphgf+Jy/t08k4PZGWSDE2uhIqTS8swN/D016mL3yLe1F1+cci9o5fzoI02ebB
Ri6rFj0P0B8zNruY926v0LH0L5GBnMlnkU+yDpkcvEtnQvjpYM1t/hHrTEzKaKFp
lr2lARWMiO0oNz+JiQUB9PzVOVFyWubF2DONld9xOaanbnbZg1uRIgvh3G81iOHj
my5X2cbjUtaYf+WoiAy/1p0rwG89e5m+CDcbWjp3BRL6VSSO0Oci13wacA6niQKI
P941O5NsurLeq9DDLeqAL/sM+SWpY5MqIu019aPBMbXPlzAnfgEXP/x+EC2hLll1
J+34aHaFO9Kf2izyLyJuqTrX3I5Rvw==
=+blA
-----END PGP SIGNATURE-----

--l06SQqiZYCi8rTKz--


--===============7846604046620519557==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7846604046620519557==--

