Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D83FF8EA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 17 Nov 2019 12:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tbnNzJLDfalXXlv0fFFzQBnHVvzKT9r2Ksohm63o20k=; b=bGskMiHpPYh7fn846n4+WzDkX
	HHwSiVXbJB89YTNH9PAQC2JMn2yZY0DwXqOMNyt6Txb521rWQ0I4aBtrl+4xag+qxbyl+c30Osh3h
	FyH7Frv3eEGeff7/vvcag+lUgVqcpKLjmfaNOSWAx/btUtMGOP33paNy4wZofwf1f8yCGNuUPDmTI
	7B6JwcUdPqey4jCYb1hn4bwA0rW0UId/VqjdljeIyBp+UWyQL5tSsT66Q+Eh4SvmoG3nGlW80ySm8
	27nDo/q0+PqcsIeo7/kG5rG1D/nDvRke3I+UsM25jtCvU8AgoNcMEBmkujcyXSoFlyXJydvd76qVM
	/6AoYPYaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWIfO-0004PX-H6; Sun, 17 Nov 2019 11:24:30 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWIfH-0004P2-G7
 for linux-arm-kernel@lists.infradead.org; Sun, 17 Nov 2019 11:24:25 +0000
Received: from localhost (249.157.broadband6.iol.cz [88.101.157.249])
 by pokefinder.org (Postfix) with ESMTPSA id 905EE2C01C5;
 Sun, 17 Nov 2019 12:24:15 +0100 (CET)
Date: Sun, 17 Nov 2019 12:24:14 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
Subject: Re: [PATCH v2 1/1] i2c: iproc: Add i2c repeated start capability
Message-ID: <20191117112414.GA2522@kunai>
References: <1569825869-30640-1-git-send-email-rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
In-Reply-To: <1569825869-30640-1-git-send-email-rayagonda.kokatanur@broadcom.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_032423_686027_C227638D 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
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
Cc: Lori Hikichi <lori.hikichi@broadcom.com>,
 Shivaraj Shetty <sshetty1@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, linux-kernel@vger.kernel.org,
 Shreesha Rajashekar <shreesha.rajashekar@broadcom.com>,
 Icarus Chau <icarus.chau@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-i2c@vger.kernel.org, Michael Cheng <ccheng@broadcom.com>,
 Ray Jui <ray.jui@broadcom.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2386728041210228949=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2386728041210228949==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a8Wt8u1KmwUX3Y2C"
Content-Disposition: inline


--a8Wt8u1KmwUX3Y2C
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

For the record, applied to for-next, thanks!


--a8Wt8u1KmwUX3Y2C
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl3RLdoACgkQFA3kzBSg
KbbR8BAAgv5t3EtMRE6JTFFM+VTv8HR+Q2hZ9Ux/MexO/h8bmlfQWyNiXeXgyMoI
ptX7un5Af/irMK+JUJgPbQB3akcMfN6Tzw1U3ziuK64yFI4yY6zQsWk3r7GBbHao
UpWWFiW07i3w9bArwih3FafSNghCNh8hbWgRd4JgyIOoWRpL4LCP9AdwBkToqBhh
TYmXwuWXoZkWu6lcgMSX6XkH2qoB1VughKwY3Lksol+FwnfAuNL1NEWhiLlHR60C
bkiYw7YiwcDizCXrvq9cuW0/MaVZIXCw8NmBP42c9PBcMJKH0s3peed3wKn7Xh+8
r1t465ysiOY7RjWSt6Ve2GVl4wsS1fcW9qrVWLXvc1wWhe3SJaCPMjVRyIH1iQ+n
0OBu+7VLekV/ChF4TTMZmfeZo+uABcUQSaguJq3tygo22KIyeSQYOt4u3M713m3s
zcw/27aKYLDkHTGpW9oB1+rdSXeRUfqmoebzfoPPr4Jax2zkThCQfzeg9ovwJNe7
WfEIcpA438Z8ZIdieCGRN4CEJkhP2yPvNDs059JrshyIaloFuFPhSOoffTOvPJro
O1vXOiME8ljS4OA/I9yuaGs0oEEJlj1vKwrNCjvZjU/gkFwNYAFAsm2lapvn9SvP
hyM3xLZT9HLyww1k4ARjSHEzD9e6SKGaeeWnZUVKQvK6h+POWRs=
=IufB
-----END PGP SIGNATURE-----

--a8Wt8u1KmwUX3Y2C--


--===============2386728041210228949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2386728041210228949==--

