Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F7AE3B68
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 20:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ch8OWYgfSLSywFoCaPJM2TcO3TV79/6ZxUKqn3iQirc=; b=E6S7frNJ3CXDsGE9qhuempgGC
	l0cXMSv53eRbdOdzaHF0J1ZEorjmmodX5tSnAJaRHHCfGjUbEoFlGvxVLxNiU/2NQ21CqIf8RIeWp
	RMaW9/qg3UuJ03RcAR+CBmDyaiIGBjBJ6/uy4RX4lih6HY5y3/CZb1xHG1e7MeCxRI2WSHwWXa7cx
	XPPhJqa0R2WIWsF7dYCyIS5ecqEM8X7KD2IOLEFDwmc4LXiPHBlL1Sq5cSMwShCaaNM6mCO4jTI+2
	pyhB0t+EiyJ0IoXqLWaglT+j7pOZQawHcmcLTlP26cMe6JGsmvJDYDiV76gU2mbNBvCnZ5+Yu64hD
	jNzvQyAbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNiH5-0004P1-JU; Thu, 24 Oct 2019 18:55:55 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNiGs-0004OO-QX
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 18:55:44 +0000
Received: from localhost (x4d0bc9de.dyn.telefonica.de [77.11.201.222])
 by pokefinder.org (Postfix) with ESMTPSA id 223FF2C011D;
 Thu, 24 Oct 2019 20:55:41 +0200 (CEST)
Date: Thu, 24 Oct 2019 20:55:40 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v2 1/1] i2c: iproc: Add i2c repeated start capability
Message-ID: <20191024185540.GF1870@kunai>
References: <1569825869-30640-1-git-send-email-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <1569825869-30640-1-git-send-email-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_115543_015326_8F03C55D 
X-CRM114-Status: GOOD (  10.10  )
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
Content-Type: multipart/mixed; boundary="===============7152735402345194131=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7152735402345194131==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dWYAkE0V1FpFQHQ3"
Content-Disposition: inline


--dWYAkE0V1FpFQHQ3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 30, 2019 at 12:14:29PM +0530, Rayagonda Kokatanur wrote:
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

Patch looks good but doesn't apply for me on top of v5.4-rc4? What was
your base?

Also, I will apply it to for-next (v5.5). If you want it for v5.4, then
please add a Fixes tag.


--dWYAkE0V1FpFQHQ3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2x86sACgkQFA3kzBSg
KbbPMA/8CufaNQxLVkDpAOG3fBebE+n7XkatUJvoVOe+joL7ZdVIR+d1CqXEDZf3
zXuUk/02btaiw9vRkmpUwHOjOT08mF9OWWO6XRxvEdvEStfOsejFmcvUtdnuMMXA
9nX2xp2/KjB83qdFcne9KePbHvOCNLMLCl6GQbc3Ko/jQMTHQqRijkwxTBUhsILn
Njq6taaiiedlHX6/o4vEl1gOPtmxqhXghU2TyOzmIG9fyjssatn+41ri1K0QseG+
1VkMixa074wbtqDp44AypbpuenSYxR4AKfGgQPnPx7b3RpJxhH8bXwEVLxGdSJJh
Sfw+MrGfVouOKQZIGd6IKraa+Zh8AleMvT/l/qf2vwQKfKqMEQ8ehmtVPJwPf/XM
7XMPQeYFu9Leo/3a/KsLUTC31isIeosP/hB+ZOZSKGTWnyw3XD6DYNtJwFSbpQh5
shjRb0GHCwaBRsKJnuX9lsY2tfHdbN4qzGMh2Imctfk3Shy37eeovhsY6QhhiiNl
TR4TnOHx2DwRwgzm921MjLGomJ9w/t4KlczdyJAV+GMC9k4dcShxzdu1/4s8TpHM
fx9/MIqdbc5ZN/xroaO8xyJeHPhNJy80UJ4gXriji8/IsV1dhtwwHvIrRS6QqSTj
DxcC4PpAU+JAu4Z+ny9Q6TVdcY46NyHdgW7hyl+Q+llMHx25gO0=
=rr6Y
-----END PGP SIGNATURE-----

--dWYAkE0V1FpFQHQ3--


--===============7152735402345194131==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7152735402345194131==--

