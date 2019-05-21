Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CE62599E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 23:04:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YRjuIc5H1Q/Z/ZM6Bw5Wo7xGnCx8DLiHvIs/3FDMeHc=; b=JTgSKwWrV9zQ+1ufKmJltEnhd
	k76zGHSzGVz90zUsB5hZ3wCL8xvAoEnqGkhaEJuj5uAejMg3nqRyLKt/LEaS0WsaN7l8WfvFf3pK9
	RlWzcsc/Uqbl+6BMWOABBTselA7FFmQq25Gzf9g7HHiNT8gsG1vW/zZ5stZdN66kHGDm8UfNXTC2Y
	E9VKwkL0ujAcSWFoaq2AtnkSaPL96ns5q6CCAS5kpvnkaLBOgMjzlRkxnmvSkr0xymB+6ucDZ8HIY
	+W93diXhEi7sX5J+K5lDHPf31cdfsoKiFlwDXG7MK8vDZ/+UeLXDIEmJTwWAY19St7rflO7yhZkjg
	5YdptHeTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTBwF-0000ak-Bl; Tue, 21 May 2019 21:04:47 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTBw8-0000a0-8A; Tue, 21 May 2019 21:04:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lf74MmlnwlqtCdDja2iANRseC3EzphEbvnFJ2OJtzSw=; b=FMU+Vxyn1gwlgIJAIeG/efv6e
 dNzYZ6Nd4YBOJfKY/6Fr3gOQlWMmuLUS12PmHYTh47j0SVall3ZA03RP40A/I3JOB5kG3vjACr49p
 huaNhz3iRq2rhRehBsP0wKhVDDc5I9lBk8fTBKxcioMVw+ydrFNP6xXVaEBbxD/hZYyOQ=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTBw5-0002Ek-6C; Tue, 21 May 2019 21:04:37 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id A17D91126D13; Tue, 21 May 2019 22:04:36 +0100 (BST)
Date: Tue, 21 May 2019 22:04:36 +0100
From: Mark Brown <broonie@kernel.org>
To: Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: Re: [PATCH] dt-bindings: spi: spi-fsl-qspi: Add bindings of ls1088a
 and ls1012a
Message-ID: <20190521210436.GA1580@sirena.org.uk>
References: <20190516104046.23830-1-kuldeep.singh@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20190516104046.23830-1-kuldeep.singh@nxp.com>
X-Cookie: Klatu barada nikto.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_140440_458151_0E476CEF 
X-CRM114-Status: UNSURE (   6.00  )
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
Content-Type: multipart/mixed; boundary="===============0702380362882720021=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0702380362882720021==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 16, 2019 at 10:39:44AM +0000, Kuldeep Singh wrote:
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
> ---

This doesn't apply against current code, please check and resend.

--qDbXVdCdHGoSgWSk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzkZ+MACgkQJNaLcl1U
h9ConQf8DxUshxU2LvQL9Rur0EMgkGTiclmopbPNfSEPKCIyykDv0DB5Po34Lt91
b2n4r4A2ohe4Huy8/tNniwrXPDqam8fuxSqE9HxYnFIiWkBcvR+fWYXxvHb/hASS
ZMISJFt7Y2HCyqad0X6zB4Q5V8zvu/iukNCuMY3X4x/9fQVdUvbcpDEeDxFdAt3I
ZQsQZ4CkP6JkRwlXNADuGgvWvnnH5XZSBonz/AuUSQuul59EnaxfB9NHTort0bu1
6dI7IVOkGaf3gbxuPxOcSME/f0yUGQw9H180Ulf8w/r5O0MYer6F6exCQbHkWne/
HVm6I+571Rqbr/Ob8J9BBVGT57TLAA==
=be/b
-----END PGP SIGNATURE-----

--qDbXVdCdHGoSgWSk--


--===============0702380362882720021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0702380362882720021==--

