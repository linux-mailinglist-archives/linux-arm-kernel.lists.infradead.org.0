Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE56D1D17D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:43:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gVlAGikAzpHUWKvY5SdeT6/khrj8R1s4/1Me4yloNmE=; b=M45Hk60y1SAj1eTiuHZJvY/Bu
	ep2CFG3GaJdrA7n93nSm9SB2gWsz4O5JQiVGZX3JRs55zZ2zU2ZsmN9zh19k2OLOqsuN1BTm3+F32
	xIQvNXeoMQDy0A7RZ2hpYLq48Ij4LCB9IxkenvOroGS2NB/QSDSDE2q7zPI+HMNG0PWErzR66nwrW
	8Da3BKmQ0feOVVIiytWTj+BIbn5FucbQJfWkmdXkOEnRUXYH91aLwbWJpiJV8j8WVNrqposPid9JE
	/MnETzLoFDLzLHTznBwgRrUvWRR7vdi4JF+qYvLyv82sd2fFy1NjdwXHMZ0purISP4W0pMKaiBdo6
	Rwl9R+H2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsbC-0001bl-PO; Wed, 13 May 2020 14:43:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsb4-0001bG-18
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:43:00 +0000
Received: from localhost (p5486CF35.dip0.t-ipconnect.de [84.134.207.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D094A207D5;
 Wed, 13 May 2020 14:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589380977;
 bh=zHZKVOQrw4iw1BYZotmmbCpHSm3rHNSI8b2j1BlvFYA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mvXJRT2oJSavng4jGGwzEFhHegydiclz8aPDt0QP1O1szj+96SM3Yk7nkkc8UZfYj
 XXLax2E1kLirXPhiZwHSP8AQ1KkAhN0sygzJqxmioG4IGUY7q2t/sKRd37eAtrRVcW
 HrdeG5laMpYZK9LOfM+nI0xX5K/T0d8jO+TIj6wE=
Date: Wed, 13 May 2020 16:42:54 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Subject: Re: [PATCH] i2c: pxa: implement generic i2c bus recovery
Message-ID: <20200513144254.GA7446@ninjato>
References: <E1jYnlI-0002Nw-83@rmk-PC.armlinux.org.uk>
 <20200513131843.GB499265@lunn.ch>
MIME-Version: 1.0
In-Reply-To: <20200513131843.GB499265@lunn.ch>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_074258_092672_B30A7A8D 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Vid <vladimir.vid@sartura.hr>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: multipart/mixed; boundary="===============5213517439445978438=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5213517439445978438==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FCuugMFkClbJLl1L"
Content-Disposition: inline


--FCuugMFkClbJLl1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 13, 2020 at 03:18:43PM +0200, Andrew Lunn wrote:
> On Wed, May 13, 2020 at 10:33:12AM +0100, Russell King wrote:
> > Implement generic GPIO-based I2C bus recovery for the PXA I2C driver.
>=20
> Hi Russell
>=20
> I assume this is going to be merged via i2c? So Wolfram Sang?  He is
> not on To: or Cc:

But I read the i2c list :) I know some maintainers request CC, but I am
fine as long as it is on the list.


--FCuugMFkClbJLl1L
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl68B2oACgkQFA3kzBSg
KbYAhg/+KOJpSs2n9SV0i9OsvjhuoQNKYIuQKFbNAyoFkDrIOxv473cx4JA89DeF
FdwdSA5p0K3hqzXyb2Mp+NFTHW6BdHrkEROUbJnR5GkAdWW/lT7qjfrfRDaMvO71
BGMn7mRwVb1eU0bzIsxZjMEQ7rDxREMn9FLmwfvlvE9CJ3tZkp0PU5vYQ7oR6481
+Syn6EusLFjH4Jb3HJdNI+6HVSe9wPSCul8E8vWgj9n9dXr78WMtAnKzpm+x1RZy
gfaNVDQtMtWCX3wcdQCGegBumZ9H2CUJ56CIERdn3p4BmCUJX1sm5M+ZprhfLdeI
9JHZIYi5rxLnbe737mntlHQ/BcJgkTRQgldPre9IE91a98QV/UL5v+4YXSGTa9TK
+BDs0oQFin7ZrOkq5330SsdPzs5CVDoYsjD2VYmy8k7DTLU2ArYmkusBTiRKwBnB
SKFas7O+LVNEQyX+qJ+rmf2nqZGDBXKui02t7BQm+UoGq59Qw2PSVh9C2jinaRh3
1auy5B1LN2pUXpiQnliwllO63bE+yVBBey3vPx/AkXh+Fu+a25h+N7F2lItIeWMo
94/PHne8JInu29fkK/lKYDo71T8XpDIVEEqLG9iNAbTzInbXMB3CCDvoqj3IjhFa
Uki43KWsNZ0RkqhCWGG0XZf1r6rhtbyXJIET6VwIXDeFYE1fjJU=
=SnWv
-----END PGP SIGNATURE-----

--FCuugMFkClbJLl1L--


--===============5213517439445978438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5213517439445978438==--

