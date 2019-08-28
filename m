Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D25A0026
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YHaUA/0Q76KosdwOiL/kQnZB7HScXhFsvJQ9vnJJfO0=; b=Wvo8dgElM8l7G6my80qjm1L4u
	qeJZhBb9kbEzKavsMlE7IlO08mfgT0v1c0JlNO1qjv282XVyS18jC+4y/tO99U7Wt1gVbNXDc9DQ1
	/T0SookS1mZRWhRqyRfj0jhymrKHA8ca1iZ2Ruwh4xq1IaQLJIimznakMWfJBebPNpNtfWDk+2VVx
	zFahJuzh7XD9NisK/iVcvTMexQJOqmz6yj3HoBVeo61k4RUPFPWQCEl7iVsZuRpxjWtbI+we7LXc7
	z/WPUU9eBUcYcfDHB2ily5C0KzddJl/swApI0RQAQ5cEYoEAKoMZia9HuPaRxApq6fxx115FsW6V8
	Imv5HA+Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vT0-0004U0-Is; Wed, 28 Aug 2019 10:46:18 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vSk-0004Tc-8u; Wed, 28 Aug 2019 10:46:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xEk+7C1PeYR/dQCDWZ88puZD6TYZGeKl16GGfqOsMlE=; b=YaK6OBCmH+nTMmCNTe5KwcsNc
 K1AaF0EoXYG4wJvyp20sq3QK0qUrshXEZza54GLmgqgJzISgbukntzkkGcFkiZd1PZidUbIiFPT6Z
 +xK8S/7o5ZRs/0bzt49bTUqU4kDOVR9qc5/obE+R4dAJbpPy54r+L7eF8agGPv2N9eT+0=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i2vSe-0003cz-AO; Wed, 28 Aug 2019 10:45:56 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 894632742A55; Wed, 28 Aug 2019 11:45:55 +0100 (BST)
Date: Wed, 28 Aug 2019 11:45:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v5 07/10] regulator: mt6358: Add support for MT6358
 regulator
Message-ID: <20190828104555.GE4298@sirena.co.uk>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-8-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1566531931-9772-8-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Cookie: Oatmeal raisin.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_034602_310295_BEEA377A 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Lee Jones <lee.jones@linaro.org>, Kate Stewart <kstewart@linuxfoundation.org>,
 linux-rtc@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7014523713210361792=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7014523713210361792==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PPYy/fEw/8QCHSq3"
Content-Disposition: inline


--PPYy/fEw/8QCHSq3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 23, 2019 at 11:45:28AM +0800, Hsin-Hsiung Wang wrote:
> The MT6358 is a regulator found on boards based on MediaTek MT8183 and
> probably other SoCs. It is a so called pmic and connects as a slave to
> SoC using SPI, wrapped inside the pmic-wrapper.

This looks good - since there was only one small issue with the example
in the binding document I'll apply both patches, please send a followup
fixing the binding document.

--PPYy/fEw/8QCHSq3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1mW2IACgkQJNaLcl1U
h9BSkwf/dn5XU4gEVNtDS9XFnqmJE1/jcGPItKtO0MNfD3jrB/hUyBWMYoBhI+sU
Vm45cGP+4DM/3BcJrj6qrmvgSmYZtpf6vn0RljmVuFlo5SOk4y4/HI8i+gdjcrER
26tolRdFTgR3sbVDa2Wyzz6eCdz0UhoC69q4qQccEjgetw8GuXQHwGARR3NeXxVp
4PCsUEKX5IxcOIKr2/1Y50W4HThACHgvoNAp/GK6zjSuyH17HKgZfSwh+p1sNZ4N
a83mggDEu1rOgsiptGPtO/U+y2pNNnXNqX/+Xsnna6jkCkbM4hnGMLqvvMJlsGaC
iVNyYaPdnO7o3Tqq6wzJbpXH6eKI+g==
=VmT8
-----END PGP SIGNATURE-----

--PPYy/fEw/8QCHSq3--


--===============7014523713210361792==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7014523713210361792==--

