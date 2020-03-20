Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C50C18CD88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 13:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9VW02J0qD2XhG/d90cq+JySl9YpedFJQrJquhRCHx7Q=; b=VshYHWYQG8qb0BGp7K7BNZbz+
	rYrTqIp90MOcuPA89pvit5k7jAm6g0oUVOZnjJScWnuxi5LQmOLe2CLBKTod28GlQItPzcBc/fPtz
	DWallCVjl+3f5/e9Ay3ZJZNrxhO8Wa+57o+X9RKSvK48mx3R0t7uQF1x1Nrhc127jJHaJOtZ8kTjn
	Saf0Rgx3cby0zsOC432+wH9Lt632VZ0QwT688Qea10bFhXnxs5R2rEVkkk7cUrgNKzXxBEViq+Rt5
	BFjGn0k7DtprNlGL4Vx06Kkw6N6IFh9dRjPebL7Hkcia6TJqkBz1bzvl7GIlGYm8PwBoQIo7pst7Z
	odFUx0SgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFGUx-0000TK-AE; Fri, 20 Mar 2020 12:11:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFGUk-0000OK-Ay
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 12:11:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9FB8331B;
 Fri, 20 Mar 2020 05:11:19 -0700 (PDT)
Received: from localhost (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5882D3F85E;
 Fri, 20 Mar 2020 05:11:19 -0700 (PDT)
Date: Fri, 20 Mar 2020 12:11:17 +0000
From: Mark Brown <broonie@kernel.org>
To: Tudor.Ambarus@microchip.com
Subject: Re: [PATCH] spi: atmel-quadspi: Add verbose debug facilities to
 monitor register accesses
Message-ID: <20200320121117.GA3961@sirena.org.uk>
References: <20200320065058.891221-1-tudor.ambarus@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200320065058.891221-1-tudor.ambarus@microchip.com>
X-Cookie: Laugh when you can
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_051122_448884_A7DCA7B6 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, Ludovic.Desroches@microchip.com,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============7894622172123568398=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7894622172123568398==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oyUTqETQ0mS9luUI"
Content-Disposition: inline


--oyUTqETQ0mS9luUI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 20, 2020 at 06:51:01AM +0000, Tudor.Ambarus@microchip.com wrote:
> From: Tudor Ambarus <tudor.ambarus@microchip.com>
>=20
> This feature should not be enabled in release but can be useful for
> developers who need to monitor register accesses at some specific places.

Looks a lot like the trace regmap would give you....

--oyUTqETQ0mS9luUI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl50suEACgkQJNaLcl1U
h9D1fAf/VQnn06p5m4B5/lqhwYYKIVVW6P9u/0hBvpkxfRGfRDTxHr4lEOVO+9me
fiHiUJiG7hRJZ7gkf9nT+yr/NG/Feih+70C7F2fkrNqflZqi7iFWEJHrT8gPjri0
zuSkqgYo7kLnkBlrrcgaI+00KK3J15c59SZNJa9Qes/3VWtfa0jSi3x2WgAMPuGm
z5YDPYMTAe6dqSYkYfU14FrWN+p7/039ylhVcwzWZ3aActb7Kjuw4+ND9S7u203b
+9j4IeIXpbSCEkE19P3ZczIbiCJJ0fmgZiDkNPL4WGUSDsE3jvLxcKpKSKKRuo0B
o9T+CGXY/Htz//y4U+jLBI9Cg3BMYA==
=JInW
-----END PGP SIGNATURE-----

--oyUTqETQ0mS9luUI--


--===============7894622172123568398==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7894622172123568398==--

