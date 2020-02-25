Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4602A16C43E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:42:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uSG2g81871BvGmb5Uex8lPC5q+96sQsBgj+TqwwekLk=; b=ITX7qrpiWPscIAAHSSKC1xgu+
	EIW54n2Ni3kLfhMfBLUh/Ra1XdFpSHPnx1SqOd7wvO99agfumjG1wXT6Z1KruhvPVh+M1ozGTV5Jq
	2cp+prFzS/oo6XGpquH1x5h9sC7i7gJSJKkQOI7/9R+FD4aXCYOzW/yX166hH3cj30TtKdN5LbMIX
	VOzZR0imf+1z7FLcIEf0LL4UVGRDhZAJJvXEKtSWp/tFOdEqwaQpbT00M7SJYQCnqjSD/HFAFAlKA
	G8W/tewNulozrYgYgosx+6sGeuWsJ7ODWw9CncNKIdBHvr/L3mrRdu5IbR+ne45na48zyePVEe7JW
	ejseXFLoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6bPJ-0005qI-HB; Tue, 25 Feb 2020 14:41:57 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6bPA-0005pw-FO
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:41:49 +0000
Received: from localhost (p5486CE6D.dip0.t-ipconnect.de [84.134.206.109])
 by pokefinder.org (Postfix) with ESMTPSA id 032FD2C1F2F;
 Tue, 25 Feb 2020 15:41:46 +0100 (CET)
Date: Tue, 25 Feb 2020 15:41:46 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Michal Simek <michal.simek@xilinx.com>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
Message-ID: <20200225144146.GG3677@ninjato>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <481fe028-0ec6-eca3-7436-ebbb8527f3d8@xilinx.com>
 <AM0PR06MB518514EE9C057CB129079825D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200225141357.GE3677@ninjato>
 <AM0PR06MB5185341478B6919A9CC22271D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200225143245.GF3677@ninjato>
 <431d520b-24a1-687c-1f4b-4ebe95181a2b@xilinx.com>
MIME-Version: 1.0
In-Reply-To: <431d520b-24a1-687c-1f4b-4ebe95181a2b@xilinx.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_064148_660624_9BEB1FCB 
X-CRM114-Status: UNSURE (   9.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Shubhrajyoti Datta <shubhraj@xilinx.com>
Content-Type: multipart/mixed; boundary="===============4307843006515417598=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4307843006515417598==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oOB74oR0WcNeq9Zb"
Content-Disposition: inline


--oOB74oR0WcNeq9Zb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 25, 2020 at 03:37:21PM +0100, Michal Simek wrote:
> On 25. 02. 20 15:32, Wolfram Sang wrote:
> >=20
> >>> My favourite is to change alignment to be just one space. Then, we ha=
ve
> >>> a bit of overhead now, but never again in the future.
> >>
> >> Ok, I will add that change as separate patch to V2 patch series.
> >=20
> > Perfect, thanks!
> >=20
>=20
> Wolfram: Any option about that multi-master property?

Not yet.


--oOB74oR0WcNeq9Zb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5VMioACgkQFA3kzBSg
Kba8Bg//cNqR+XPmJoJ9oCzHksFLAsZ6cs6n7/jed+osp+Zyu7nfVFrXhVsZWn+H
xoAIn32vhN3oqTbQl4QPkPsiq9GeDfahg6U5rANYWStwP7RABLKkVEJwSf8TjMG9
cZs+UM+zklSX8jJJvfybmJ0CEg0jPg8ivFQCGEva9v3BOIUT028q9o69jYLbfGQu
FvK8PbFA/f5iwF/CJZaueVs+trantc8mAF6DKZtuD3QRr/so039ZBuiYPfd/tSKa
I/698hEXt8b00Y3CrcEoyZF+4D7+33RJW6LVOsJ7DIyUqaKqLLQD1PVwAJg80e+B
+xKOzL9pLlPHHKFmpBOSNhY9uXs+aishDRwimtpu9VAcKieR0JzefWYr7WHiPhNt
I4UmFTFb3ijegTaoAjKLfMd6KDumwYe0Rcxv96ezD0Dgj5vq2D6pa7sfVyiAwRCp
+wqdNLvXSlk6wkX0KBTCxRFvCbWA3jyVQCB8VCBvKWwy3ZxxoFdg6mc+bVn1JA+U
Z2JVRrZH9zQ6G8mv8SskQPoF4gQTBO/zgnFYMSAFTY+SPtjjse+W/a55fol62N1k
jJUBjDLm60C3MB8neaVnbqHtQpaiTqKN8hbQiDPPwHuHAeJM8Dv8yiZEvmI0MBmj
OcKW0v6cKfjW30tOppX2EsdRYgc60wZ3KgT7iPHQwmIqgMw1su8=
=dwfe
-----END PGP SIGNATURE-----

--oOB74oR0WcNeq9Zb--


--===============4307843006515417598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4307843006515417598==--

