Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2062627DDF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4fbreTaCPgKH4oRqcTK0A4nKkgdbJvNHFoe9onUHUmM=; b=BSZOuaEcxCRE5/yh1OlPdUArM
	JPLpNzrt824AcMH2ggvum30hZa8u4tNnDiqNZheXVYAEEj82Gsr7ugjLHt+afzMpbDsDx2AjlfXMQ
	CAbGfus5ckAZtpP+un7NDi853EIU5vKdbRDNqnANV/Cf6SbiNFGSBwT0fPNjcoZXf7RWrodJJAp89
	jceaXLFCXPWsvbnborQUm/FzWU0Ida3aFUYty0juSJ+JnW0v4Qo9JkGMfoSDqrd/c4TZ7ZQ4z9tUz
	sL+qjeJzCJEBwzP/8/ujedB9FAoYvX17vfvlGWIZlj7TwTaK1Z/U1w3pwmqtoIBMe64PQSbx3Xm48
	3MYUlBkFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnaY-0004R1-BO; Thu, 23 May 2019 13:16:54 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnaQ-0004Qb-Sc
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 13:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mXLc0Pq75zm3ejNcPLS6bjMJjJ1c1cz2ZzOn9qMPJRM=; b=jwZNKcvSZsGKxhjtZO0m04i13
 XHNJ71dJgEsdHqeCt7pSl9qYAomLC+UAdP8UucBjF6RsoIbyIjyWgVDzcmrb+JpzA4x6teRFAIp9u
 2+Ov/Onsmki/kayOWNyssvBea+F3ss8BsnPxIf1frR5nME1kFKktbqy2XZLj5dNsVEvAg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTnaM-0000B5-0H; Thu, 23 May 2019 13:16:42 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 602F61126D24; Thu, 23 May 2019 14:16:41 +0100 (BST)
Date: Thu, 23 May 2019 14:16:41 +0100
From: Mark Brown <broonie@kernel.org>
To: Jorge Ramirez <jorge.ramirez-ortiz@linaro.org>
Subject: Re: [PATCH 2/3] drivers: regulator: qcom: add PMS405 SPMI regulator
Message-ID: <20190523131641.GD17245@sirena.org.uk>
References: <a3c281d5-d30e-294f-71ab-957decde2ba0@linaro.org>
 <20190502023316.GS14916@sirena.org.uk>
 <dd15d784-f2a1-78c6-3543-69bbcc1143c4@linaro.org>
 <20190503062626.GE14916@sirena.org.uk>
 <229823c4-f5d4-4821-ded1-cc046dd0bd20@linaro.org>
 <20190506043809.GL14916@sirena.org.uk>
 <a89763cb-5d50-0927-7912-6ccf38ae1d66@linaro.org>
MIME-Version: 1.0
In-Reply-To: <a89763cb-5d50-0927-7912-6ccf38ae1d66@linaro.org>
X-Cookie: I brake for chezlogs!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_061647_072259_2AFBE693 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, vinod.koul@linaro.org,
 linux-kernel@vger.kernel.org, khasim.mohammed@linaro.org, lgirdwood@gmail.com,
 bjorn.andersson@linaro.org, robh+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 niklas.cassel@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6152281657868454929=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6152281657868454929==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IDYEmSnFhs3mNXr+"
Content-Disposition: inline


--IDYEmSnFhs3mNXr+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 23, 2019 at 10:35:46AM +0200, Jorge Ramirez wrote:

> Would you accept if I wrote a separate driver specific to pms405 or do
> you want me to integrate in qcom-spmi_regulator.c?

> I am asking because none of the ops will use the common functions (I
> wont be reusing much code from this qcom-spmi_regulator.c file)

I don't really mind, if there's nothing really shared then making it a
separate driver is probably best but it's not a strong opinion either
way.

--IDYEmSnFhs3mNXr+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzmnTgACgkQJNaLcl1U
h9CDcAf8DL+MyQPT/4yQxHXXQBs5IDMiS1xz5/mDyBccppntbLrOEa47PK9HkXBd
1OOgkPuGEIYd74ad4Oue+CWFYQJhofrt4PSHoq0qfciBgho8cgZGRKI5twUI5P68
lQP7WMcri9askjAXIzykFfbdNoSQVoCsWi2mONsSDJXQqZg5C8VAdH1wpJjBe27Z
we9oiZ+JQi0NvANUAHq3IqEHk3q9EP2p1IpvMzLRJHIv96kmHD8IJXoF5eZC2Hs1
QRv7RA+EgX1/mT2JhVE+FaFvDbb4Ur4oLU2u/387E5ImIQ+ltcADQq2KUbsbl4LN
sJRpd1qX9AEPMdyAnm2K18I0slbCRg==
=5f7d
-----END PGP SIGNATURE-----

--IDYEmSnFhs3mNXr+--


--===============6152281657868454929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6152281657868454929==--

