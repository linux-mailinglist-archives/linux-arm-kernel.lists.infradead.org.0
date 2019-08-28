Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DF2A001F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 12:44:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=V6K9LSxSrpS0vSKeyBFGyXBqbw2hP0a4soGJDviydq8=; b=WdnahXxDyX7F3ofFGk0FcOyLZ
	OPPpeMVUTveF2dQfIW8W8EeGz267t5yOQ/92T8RhZy07osMwdrrlX8ja00MjR7s/dbWq+e9AujpI3
	obmI7wkmgmfQPq4DdiPo+u+WFur9E4ApD3H5rp8gXhycDlUZUhHpHhRMgoZCmcvzszAqBZsaSDnBx
	tVtffF4Il0CmufYMbCCqunzJB7ZaFIfKKmwiUKCQJUYrRlJNEJmTas48wmFL32dPxLWRAVzVUs+d9
	04SwxZDKy5EQFJ4JK8sbITvOhtt82isWVQFpZDXTI08U+Kk8sA4PJpg6pLK9z4ZyJ1B/gtxtrnNph
	wTPTytvpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vRD-0002sX-VO; Wed, 28 Aug 2019 10:44:28 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vR0-0002s8-R5; Wed, 28 Aug 2019 10:44:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9KEYKWi6mdkxqPHqKcMPIBv43kB3WI8NArLEUSNjZ90=; b=QhOBICUPXVX6i3OYn6QDtarKE
 zquKmVgCK4oEiNyZSbe0beNsb5h+vWvYf/BB0UIvn8vBFGhKF40w2b7HGdfv25LCMVEA7H/Yl9Mi6
 cdZ5lPiMMLeJNZEwcmPIpLxoiDzFDtMIXso8bLjPpgdGMBAM8asdnw3neywXnAiixPNMo=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i2vQr-0003cX-25; Wed, 28 Aug 2019 10:44:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A426F2742A55; Wed, 28 Aug 2019 11:44:03 +0100 (BST)
Date: Wed, 28 Aug 2019 11:44:03 +0100
From: Mark Brown <broonie@kernel.org>
To: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Subject: Re: [PATCH v5 05/10] regulator: Add document for MT6358 regulator
Message-ID: <20190828104403.GD4298@sirena.co.uk>
References: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
 <1566531931-9772-6-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1566531931-9772-6-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Cookie: Oatmeal raisin.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_034414_882638_A786D3F0 
X-CRM114-Status: UNSURE (   8.95  )
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
Content-Type: multipart/mixed; boundary="===============0703602251388028038=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0703602251388028038==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gE7i1rD7pdK0Ng3j"
Content-Disposition: inline


--gE7i1rD7pdK0Ng3j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 23, 2019 at 11:45:26AM +0800, Hsin-Hsiung Wang wrote:

> +	pmic {
> +		compatible =3D "mediatek,mt6358";
> +
> +		mt6358regulator: mt6358regulator {
> +			compatible =3D "mediatek,mt6358-regulator";

This still lists the subnode compatible string which has been removed
=66rom the binding.

--gE7i1rD7pdK0Ng3j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1mWvIACgkQJNaLcl1U
h9DRhggAgRvC7U6BzuvYz9spXJ1dhssJoo4Cnc4KMXUuUQ6QoLUsAWOp6czaDVMi
2RNmm2MTbOfyXQs/lYDyEmNCxNCevItzJzxx0F1ny9EQ43yUGc/eoV1EqQB4df/j
SmqBQi1AbtM8eftJ/qtYfjGpuMgvch335oKN0YlpdsKgbT05CRlywkciokwd9D/N
+ZikuKYjDNep1358Y/axhdaeGBjwIC9YaUh9TYZ7oRE6U8H4hacfkSiCp76GYzn3
Wta9GRiHSlYxkiUgqDT7C6sqwDNfeIq68hda/2FoveacCOU9brIy8BwRC53amB95
adi4im7qPsNIUHUNKl7lgztsd8jrSw==
=HBf8
-----END PGP SIGNATURE-----

--gE7i1rD7pdK0Ng3j--


--===============0703602251388028038==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0703602251388028038==--

