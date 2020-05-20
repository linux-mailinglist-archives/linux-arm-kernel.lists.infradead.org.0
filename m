Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C031DB8DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 17:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sxpZYL8hhn9Rh6MYs5kHo975Oemqd3Jbzf+AOpYHnQw=; b=tqtI6AscbUvPqLf2bqRmSndP1
	7ABLuzrpLZ455T0BSapFXTBV3r7a9MG9jGb5wniU7IBfi4kA9/6HZOAv/ISMcvrK7yxEuw55ZRsad
	N/MH8Be4rIpC0wEK+ykrNBcioYDFEzCH02ae7kCZZaURYuGqUaJOqznV/bCmHeSkvDFuBF6NjSuin
	UBWDaOOQOjjLR8KLBqDwfvaqUZScUvrCtMFpvHJAETlAPdh606VWaig/rtmJ53UJRMocTyz9Q93m1
	dGkRfzrxcuEIkvh0RnDkPWVv4nR/e/7odNuIwrZtcRsFfLB4uHk8veRtUcW/rPfFegKROSIT5xYQn
	x94N4gDtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbR7u-0005Ri-Oq; Wed, 20 May 2020 15:59:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbR7f-0005RK-IP
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 15:59:12 +0000
Received: from localhost (p5486cd24.dip0.t-ipconnect.de [84.134.205.36])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5456820671;
 Wed, 20 May 2020 15:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589990351;
 bh=tfUk3WoRIXH7obfMejJ0Kq701IZ8v/+bU3yT5/sT9rg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=niGJC2QXqGt0SNL5Zmr3nAhnyuh0D427ugNd5VIZ5AZizvC/5C5Bvhi+umM42Km9j
 he0fbwCsiF7JmxsmNdinFXmXTBmx1b8wCfTO2qWNLUwFBRZVTa9UmBAGRqM00iZ44r
 z4s4JQWsnzSCCz2Oz+8XIILDwXAQHQYmrSwyDBRE=
Date: Wed, 20 May 2020 17:59:07 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] i2c: pxa: implement generic i2c bus recovery
Message-ID: <20200520155907.GF5759@ninjato>
References: <E1jYnlI-0002Nw-83@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
In-Reply-To: <E1jYnlI-0002Nw-83@rmk-PC.armlinux.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_085911_635807_6695D57A 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 devicetree@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: multipart/mixed; boundary="===============2049505875338340379=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2049505875338340379==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="juZjCTNxrMaZdGZC"
Content-Disposition: inline


--juZjCTNxrMaZdGZC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 13, 2020 at 10:33:12AM +0100, Russell King wrote:
> Implement generic GPIO-based I2C bus recovery for the PXA I2C driver.
>=20
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied to for-next, thanks!


--juZjCTNxrMaZdGZC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7FU8sACgkQFA3kzBSg
KbZ/7hAAlQl0voEQHIbOWix4EYWfuOeOT6tsUV6hrmv8ElYXzFE0NowajifXdB0S
j0qTL5VBiHexnntoQvtUJqPxPAPKwRg/+RsOA9dYIHKQaTepdPQHYFYgq0SYYcYC
0fKz19pkHyt0/sk/CTJp/VyXdQRup+9h6jIZO9XAczDzIzKEkRaObcb2e524e9Yh
Jq06xgncVQIsnpe0YLY201j3+d44EAD0YWrvJcmqGSVSPpYJqrRP8R6ctOS/EJrx
VAg6MbAPL14UeK8UTbVo8CuBOFOpyILj7hO/IKYpID6ZX355jhbPAEER0aQFhNe8
+B/jIBzr0m6dv9OHeEsqBiOYQtMAGkSl2rLHPck8CtgAga9G1I0z/2y5h2Fiu98B
ZupxipXjnBejIrTe3xJFrDvceftD3IpFO4WCni2MxcDZk7Zwme5exslGDH3Z+4vU
9DktI7r3TMyogNEuR7orQb3HQkDNs40BYAYQu32+GpMFfnD1Su1+LUZ5tOUAPeaH
QNqkzpseDDt7ECrmIf4g4eByB3QBCJ2tbj1IAtxwH8V8/cXMs+XVLKQAwQbEaQcP
ZzuLHN9vkZ/xVPPqAp+9TOkjvg+QxVhQs92CF4ASz24OVfZcIjUv9QJr/IKS633/
yZrzU8dbpZL5dJerWB0/AZLyHI/43V9fxT3gVfJi0LvYt0yEF64=
=kiRu
-----END PGP SIGNATURE-----

--juZjCTNxrMaZdGZC--


--===============2049505875338340379==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2049505875338340379==--

