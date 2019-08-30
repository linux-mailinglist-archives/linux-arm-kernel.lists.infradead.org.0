Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C22A35E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 13:45:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5WOGy/Uu5hSGoCYY5ruDOL0wviGWfHXboa9/7O45D+g=; b=Z5qyNsmjihrrBoR+82czA+0Sm
	GSBLH35QeX9q27OeZclzSaYEYRqv/DU4dh572snI3TAfGB9aGYDnkIofR6nb+gjuOMJKTHYt2le0r
	fBQPp5mG6meFaADrRkmsn+1mvM1PGy46ZRfE9CBSW2Ms7HN+qxEGnXcACbOMABDBxqk06n5d0hNuh
	1ol+EVdC/w9jm3biSCSmNokn6oW/yey0RcYSpTesvvnYIbkexdr4FqoLnGEvuAysOe4NXvAAsOLIu
	Pt2FpF/Few2rggVi2uIKnXb4IvU7TV/CKfDcsfJeQjK+gBTY2Df2TQ0BYKsBmnScwqh/YQFApuszy
	K/M32jVlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3fL9-0005bE-9k; Fri, 30 Aug 2019 11:45:15 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3fL3-0005O2-Ef
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 11:45:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CadVpplwVADEGUMaV44Yr02WNCKjS5HQb+wLfMCybs8=; b=UGmbbQ88FNLbZfxFjM3A0cMHt
 TaIyi9zVfjiD4eA4fWwgul7Vt43hIahRefpwbkX96EUCZTFz4H3E3wT1SwxNmwK3aKENVVM+r53QH
 V3x2dAW8tbipYwEtRYz8JqCm3eHGyqR7cHjg267upTxE4j/WAA4vTlOO7vnCOcbVwgOUA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i3fKs-0006IC-Ir; Fri, 30 Aug 2019 11:44:58 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id AF78F2742B61; Fri, 30 Aug 2019 12:44:57 +0100 (BST)
Date: Fri, 30 Aug 2019 12:44:57 +0100
From: Mark Brown <broonie@kernel.org>
To: codekipper@gmail.com
Subject: Re: [PATCH] ASoC: sun4i-i2s: incorrect regmap for A83t
Message-ID: <20190830114457.GB5182@sirena.co.uk>
References: <20190821162320.28653-1-codekipper@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20190821162320.28653-1-codekipper@gmail.com>
X-Cookie: Send some filthy mail.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_044509_502128_6A90720D 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, lgirdwood@gmail.com,
 be17068@iperbole.bo.it, wens@csie.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6540465046780412407=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6540465046780412407==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2B/JsCI69OhZNC5r"
Content-Disposition: inline


--2B/JsCI69OhZNC5r
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 21, 2019 at 06:23:20PM +0200, codekipper@gmail.com wrote:
> From: Marcus Cooper <codekipper@gmail.com>
>=20
> Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
> Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> ---

This doesn't apply against current code, please check and resend.

--2B/JsCI69OhZNC5r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1pDDgACgkQJNaLcl1U
h9BCoQf/W0mCzcRW3NldO/WLGdATE7AdgyPsicKChjYVaeDuLtVqG9DYuWwozZci
YSfNIM3/lZh43VMgLDNxpnn5tpHFtt0EgdV/bDu/HyqVYU4c0ggzyDcLOP6WlMtP
fg/jqzCUNlhyFntMh/z9f7ucofEh0CmCHWiZNTSTz9Cd23HuNK4yqdqQGdpRDWSU
YB2NiAEFg3SAwqFie2W8m7kqy6oznKq4LPZZCK8lQwovwnV1ewsvjoAee+uv8i2/
kjIQzeRO10yai4eUwoM6uecsEV/uc7t30gGEbzXLjqeagtYA64bRSiXunO1hP65q
no0bDJN4bQSY79n4G3XxV47omRg40w==
=KsOX
-----END PGP SIGNATURE-----

--2B/JsCI69OhZNC5r--


--===============6540465046780412407==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6540465046780412407==--

