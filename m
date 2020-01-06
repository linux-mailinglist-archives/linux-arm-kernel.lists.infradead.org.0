Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1570413141B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mgw1ye+19D/WaRgYnrDev9EHOmOcEuLmJfXu5ud4fzM=; b=SxRhJJwfbqqofgktJ7KHfVVZo
	NRcBJczmbJ+9uU22WFcC/H4YM0mc8k7BpXw9ulT6sNoV8gNvS5HTSVJUNkZDnv28ybqJ5uNpShYDG
	C7EKgvo45ls61AoGMt6aGQyR84xSHtk7JdrivpXg6S3GuriwJQ6SGSVdpVAGzXOKadFRgOQV6pMHA
	Bus00enQFON04wIinv+6dInCe0K6q8lhMOlKmENwyex/ifs1ecMncVkUSMLusMVA9hPvfZ5pg7bL9
	hYI680OFit9YNQryhZ/qZ3X4ye0fCfWAGrtUD0NzgI++iJr0w1fCFg7ygBeCGQKl3h5ZtyvZ8Gz91
	6uMGELPyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioTkK-00039W-2F; Mon, 06 Jan 2020 14:52:44 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioTkB-00038T-Dp
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 14:52:36 +0000
Received: from localhost (p54B338AC.dip0.t-ipconnect.de [84.179.56.172])
 by pokefinder.org (Postfix) with ESMTPSA id A2A812C0686;
 Mon,  6 Jan 2020 15:52:34 +0100 (CET)
Date: Mon, 6 Jan 2020 15:52:34 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: [PATCH] i2c: bcm2835: Store pointer to bus clock
Message-ID: <20200106145234.GK1290@ninjato>
References: <1578150800-8284-1-git-send-email-wahrenst@gmx.net>
MIME-Version: 1.0
In-Reply-To: <1578150800-8284-1-git-send-email-wahrenst@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_065235_612646_BFD83A8E 
X-CRM114-Status: UNSURE (   9.62  )
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4255348068685055134=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4255348068685055134==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HBg0C3yr6HVa1ZCc"
Content-Disposition: inline


--HBg0C3yr6HVa1ZCc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 04, 2020 at 04:13:20PM +0100, Stefan Wahren wrote:
> The commit bebff81fb8b9 ("i2c: bcm2835: Model Divider in CCF") introduced
> a NULL pointer dereference on driver unload. It seems that we can't fetch
> the bus clock via devm_clk_get in bcm2835_i2c_remove. As an alternative
> approach store a pointer to the bus clock in the private driver structure.
>=20
> Fixes: bebff81fb8b9 ("i2c: bcm2835: Model Divider in CCF")
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applied to for-current, thanks!


--HBg0C3yr6HVa1ZCc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl4TSbIACgkQFA3kzBSg
KbaxWw//WW0ZnyXB1Lcp1LObsRnDob5upLCtOBfS+j2zAWlFKsQc66oz/3q84bn7
jwv+pQ7HkLcgDiSy92VdUDvUxeAi/jxP3lg6oIWbuQFMAmw5+aZymPnUZBe/Jh2x
4/8iQtBLSP8BH9sNbBJrwFkagGCXQbz3crj7nLRMua+/JbAsqLzv7P26IpRHSxQb
32p5Yf4ktRX1WVta3N/vPC/cH4bNURXm+QfHDO45FeN8BWNyGGoL/G6l4Mik3gYm
z0s+Xjmq19hVqB9XGeq+k5wlP1yC/TMWCTL2XkiqXmZE3qpl506BU1y7aEfu8n2P
a2dDsqNg26qQsKh4ZO8dkjCk3uYJOOXYjwqtaBVsZKu5gBNVo8rhkbZlFYOJFVU7
SCR9hWwwmIHDB58NMeLfoXx53KXnwf+H7ChK9aZmI65fh4IqiFvnioRGr16xRjEs
I42Mtpf6cNBzLGKXQOILS3glNQ9X42BmC4c7O+TIe4Q/iT3Ssz06BKnEu30d+nM3
3Guvk1AYKRPch5MwJlguJPOQG0N2lCFajnqyuJyy9mX0225XlT6QamMLSNpbeUnO
km/mECaTFd0q3uCWuZBs8vjuTuv9O0CNsv4ACpGt/UbzzaPTpi0CvqLJPwTAbNHG
XLDPWBT8LjymYAqfppwgjSZd/NWXfCpPEiIu/rQg8k7m1nxUAXY=
=Ixd3
-----END PGP SIGNATURE-----

--HBg0C3yr6HVa1ZCc--


--===============4255348068685055134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4255348068685055134==--

