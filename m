Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D481DEB80
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 17:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Aj8GoYbEiSoFQ38FGHYnA4cLZPzkuAWUYSy1u77eHaw=; b=F3+Et6rbVtAAIHTcIzc4BRqyv
	Iq7sx3Xq2b7xClN5eDtGK+oDaNq2XNZjQCYOSeegs2Hc5dHLDQa2i0byBlsT8YXTt1CwZL9mIGaLw
	g7q385pgDDsnv77e4nU2Y4uzoD8PgIuNX4NmMG5eruMGOk6TVTFJChLEr+ygya+YAf3af4+eHFwkG
	iI8Q0qfvcUfdZfRhoyK5jlRzPR3VFQ/R7GUyLzO+v8kjKCcTyOtBw1fUdA6ovm9seuNaQLbJoVgpn
	45kKjXvdF3/ZxRWp40uWnBuHb+/0NL/VAUNs1roPyULAhCM1UMi7KnvMZzo+wtx6ngYFNKOAmh7SP
	rBvJGRrrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc9IZ-00032H-9z; Fri, 22 May 2020 15:09:23 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc9IP-00031q-S0
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 15:09:15 +0000
Received: from localhost (p5486cea4.dip0.t-ipconnect.de [84.134.206.164])
 by pokefinder.org (Postfix) with ESMTPSA id 356FF2C2072;
 Fri, 22 May 2020 17:09:13 +0200 (CEST)
Date: Fri, 22 May 2020 17:09:12 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] i2c: drivers: Omit superfluous error message in
 efm32_i2c_probe()
Message-ID: <20200522150912.GI5670@ninjato>
References: <20200415135734.14660-1-tangbin@cmss.chinamobile.com>
 <20200522150418.GG5670@ninjato>
MIME-Version: 1.0
In-Reply-To: <20200522150418.GG5670@ninjato>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_080914_052585_953F9F58 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org,
 Shengju Zhang <zhangshengju@cmss.chinamobile.com>, o.rempel@pengutronix.de,
 linux-i2c@vger.kernel.org, u.kleine-koenig@pengutronix.de, ardb@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1464050322199195328=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1464050322199195328==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="U3s59FfKcByyGl+j"
Content-Disposition: inline


--U3s59FfKcByyGl+j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 22, 2020 at 05:04:18PM +0200, Wolfram Sang wrote:
> On Wed, Apr 15, 2020 at 09:57:34PM +0800, Tang Bin wrote:
> > In the function efm32_i2c_probe(),when get irq failed,the function
> > platform_get_irq() logs an error message,so remove redundant message
> > here.
> >=20
> > Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> > Signed-off-by: Shengju Zhang <zhangshengju@cmss.chinamobile.com>
>=20
> Applied to for-next, thanks! Please fix the issues Uwe mentioned next
> time.

And try to match the subject line for the subsystem, i.e. for I2C:

"i2c: <drivername>: <topic>"



--U3s59FfKcByyGl+j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7H6xgACgkQFA3kzBSg
KbbqGQ/+KB+H2gA8bZHYDnkY6baFlP30t3IjDi5MZ1h92dmiMkEP85LNhMtjkln1
CIoRFWQZhpBh3cri2EVA++O7efFqakLSPhfQdlKuWkwE9aLEkAR1d6sbxGOeR875
GjgFVDR4oqKNkDYRSCSl6ZQM+V7XJ5nerFxuWgdHqr6R4jmQaOH/xQhSiKvtunQz
wm5dJcm5BbK4IQJKpApHEDBvCeVUJ0BMqYJbiVIdioEHXObjMyh8vZTAEbH+lo+b
qXzirZiB/fAqHgzkFXxVp01JGfF+v/zGFgmja35pPtc3XTcf3NCzREE1cn2s1lOm
ww5yU8TJcGnXuVsGDG4DgHOPrkNY30WYiMriYCRGKUqjTpH2SmlKJ0+rZ9tjdJeb
QQ4BX1wEu8kjHXpeqGzZS09nNWqyeEvhExUeOoguqUvfj8mT5SdAdO/eGQOHmHGR
D7hg5whcmmibAZH6aAc3SE8s/1NCjW63bj4aLB9uCI3yvS7dJAhtAE2zw5ZLfGK6
WHG9kNeFHWmhezSfnIkKiUEF+twl4waatI0MhLa+HSTHsXjf85rDLY0VUqPGk94Y
U8LgIbMEeEhFsPWuaazPXXfNSz4fSLZ9TZ96djloAdRDqn/phKXqFYBxxUpX66Lz
xL/JxiU/HUp9EkCTXh1ytpvi32pTsSKvOLiEbzhzWr6Nbx9ta1o=
=ivLg
-----END PGP SIGNATURE-----

--U3s59FfKcByyGl+j--


--===============1464050322199195328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1464050322199195328==--

