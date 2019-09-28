Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F370C11BB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Sep 2019 20:24:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O8Sn2iduqWlT26VXdxC5TPHJWvC7busbSWCAmogSAk4=; b=dN0E7A3vUzV+ho1gRfOiQiLcE
	ot7YA+JlN5QS5V6bs4Fae8i0TN4H8K6QJboNV11QKkbnT45jVsAWVGeyNBdr7B0DzbG4vE9OExr/G
	hEquLbEH6Aox28QZC+HzstnI9jeBTd1cyKztReP8wGIffBbSEE0EhrniJ3WSfe3WCO/5dLVSvJyfS
	0G+zinAqy9fodLUkeDuvtEQ0qGwqLApOjAKZniqF8FHfA4EV4crE3J7Zvp7Jv4B5yUr+97cxP8ZfO
	91euIXzq3FvkpeCH0QAQ12JDW8FDZePoU68MmTtlzIEvuqu4jdNdumZ0Hk8eqbG42S7MrScZ575ne
	Y3MonI8Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEHNz-00041x-Ci; Sat, 28 Sep 2019 18:24:03 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEHNo-00041P-Le
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Sep 2019 18:23:54 +0000
Received: from localhost (unknown [46.183.103.17])
 by pokefinder.org (Postfix) with ESMTPSA id D75272C0489;
 Sat, 28 Sep 2019 20:23:48 +0200 (CEST)
Date: Sat, 28 Sep 2019 20:23:43 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v2 1/1] i2c: iproc: Add i2c repeated start capability
Message-ID: <20190928181910.GB12219@kunai>
References: <1569472808-15284-1-git-send-email-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <1569472808-15284-1-git-send-email-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190928_112352_854142_60FFE4D0 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Lori Hikichi <lori.hikichi@broadcom.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 Icarus Chau <icarus.chau@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, Michael Cheng <ccheng@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8185875550141010931=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8185875550141010931==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yLVHuoLXiP9kZBkt"
Content-Disposition: inline


--yLVHuoLXiP9kZBkt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2019 at 10:10:08AM +0530, Rayagonda Kokatanur wrote:
> From: Lori Hikichi <lori.hikichi@broadcom.com>
>=20
> Enable handling of i2c repeated start. The current code
> handles a multi msg i2c transfer as separate i2c bus
> transactions. This change will now handle this case
> using the i2c repeated start protocol. The number of msgs
> in a transfer is limited to two, and must be a write
> followed by a read.
>=20
> Signed-off-by: Lori Hikichi <lori.hikichi@broadcom.com>
> Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
> Signed-off-by: Icarus Chau <icarus.chau@broadcom.com>
> Signed-off-by: Ray Jui <ray.jui@broadcom.com>
> Signed-off-by: Shivaraj Shetty <sshetty1@broadcom.com>
> ---
> changes from v1:
>  - Address code review comment from Wolfram Sang

No, sorry, this is not a proper changelog. I review so many patches, I
can't recall what I suggested to do for every patch. Please describe
what changes you actually made. It is also better when digging through
mail archives.


--yLVHuoLXiP9kZBkt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2PpSwACgkQFA3kzBSg
KbadWBAAsEsPbvgqUxIfN2/lLOcJlf8l/MNqDio3L5sdrExhkEckEd879vd65rgh
rw+dKI3vJMG2SDDa32bM0HZrqLLEhOa0aQQr0KFQeO3mPA/drLlz/9djjJOJNeE3
EorXS2QIIKzWZDXF7MSbQ2d60fXUmKEEwm0K+uHO+bzyrlh7WPeri2k4DNnYRmDn
uLqggb4V1mmXpZ24npue0GYXJY8hyIWbWtXXHFFJHvBa3ngZIb3n7xrgBsFbCvdN
u3xjTT/DVgQf/RyVY/Fz7CNBkdqRm4jHTl+4wWC3EsULkV1fsOwS62JQynmfc99u
AJJYoUGUtaDKAqVdwOfzfnUdQD5v7hkLVZfMKtNZum84+JLXwMC6RdvIhvoaBTSt
6MpQtFufIcHHovxFUfg9vpU+qZNOpDEaQO6Aw+gzax1zi6qUvgW4TE4Ow8vfvmYP
xYkERkVaSL7BtyPsLQkRwW3AeT50kA0ZbuzUZf4/0yKBCKmSy4BdA7tin8AbvIQS
z8+IluQjP2lKJIdZPMEH/R7X8gr+pcHRsaF/Bp/SLcU0+TADW4nCUmLiyxsO9Mba
Kr0WHFtoITKyHkXgE+cTSFpHQsZPAF2jqacyN6TblPIFYo6RAjJ+KsWaY52gFY4M
lVjKa3uSSS3hCwwA3gHzr7bMFpghhOTdIipU+zefg00lPxyVYEg=
=9s1s
-----END PGP SIGNATURE-----

--yLVHuoLXiP9kZBkt--


--===============8185875550141010931==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8185875550141010931==--

