Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF8216C3F6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 15:33:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z87vvkuNDzc9k+/N/JhO3DSxz3C5a2z+ATkL2chRXcE=; b=gnaC9rEM+3PcXoVX9Ugd7mK+q
	05/yj8OkaEgI+Zbl2QGAEt8Ol7dgWxjjSDdCli+4zqlKwVffBsFMKYPpHnWK0xQbhNISjZmkYyXL4
	KUdGYNO+i26PS082b5cEyq3k84kuBGYEGH5xv3fXLFfjAVEGBoYMtpcrKkpgtuwzXEIJ2JJfO8+x8
	xTkQR/lWLgWUgovvn/DbY7mSnqGCt0/Q2MpptXUc2dGSl3u+pTHytwldFhHXZ7MnDcfI7Ak4kBPv7
	HIWooLMQwuTBXkGSjr3oVMixQ549L2azF7ufw2BoFHMHHCCPLpKbKGSozZFWWdFM0O04Kxnf2INSg
	9OP0pETLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6bGZ-0002Gc-PR; Tue, 25 Feb 2020 14:32:55 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6bGQ-0002GE-IA
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 14:32:47 +0000
Received: from localhost (p5486CE6D.dip0.t-ipconnect.de [84.134.206.109])
 by pokefinder.org (Postfix) with ESMTPSA id C03252C1F2F;
 Tue, 25 Feb 2020 15:32:45 +0100 (CET)
Date: Tue, 25 Feb 2020 15:32:45 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Laine Jaakko EXT <ext-jaakko.laine@vaisala.com>
Subject: Re: [PATCH] i2c: xiic: Support disabling multi-master in DT
Message-ID: <20200225143245.GF3677@ninjato>
References: <20200218135627.24739-1-ext-jaakko.laine@vaisala.com>
 <481fe028-0ec6-eca3-7436-ebbb8527f3d8@xilinx.com>
 <AM0PR06MB518514EE9C057CB129079825D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
 <20200225141357.GE3677@ninjato>
 <AM0PR06MB5185341478B6919A9CC22271D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <AM0PR06MB5185341478B6919A9CC22271D4ED0@AM0PR06MB5185.eurprd06.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_063246_748494_6F565CA2 
X-CRM114-Status: UNSURE (   7.32  )
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
Cc: Shubhrajyoti Datta <shubhraj@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============8881945961706136805=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8881945961706136805==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oFbHfjnMgUMsrGjO"
Content-Disposition: inline


--oFbHfjnMgUMsrGjO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > My favourite is to change alignment to be just one space. Then, we have
> > a bit of overhead now, but never again in the future.
>=20
> Ok, I will add that change as separate patch to V2 patch series.

Perfect, thanks!

--oFbHfjnMgUMsrGjO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5VMAkACgkQFA3kzBSg
KbZ1eRAAj2o2lLo5F8N3ORBhy3oJ7RSWBJf5ri4niPjoNKlN2ui2uKIUVAbcM3sC
DQ6gqmtB+dg+9JyqhN0V943tC5wCz/Cu7A4iLc2z1PEH5v/ksRmLylSwOUbapaSB
tmD2nzOM9EbMrvrwdt6tbjoS/EaqhE8G3T9Svy077tQ5xJjL5mNNxbes9W88cHRR
sQu+SPaz+TYW7OP32PXQ2YW/vj1SLRuDjEyGSZP7iZhDFQONeBBqRWA2bLuAXPcB
Hm6YwolYqOtZvEq8tIphQz/R1W8ZekYGddLMns8KYQxnVUUR63agleMO6Gy1E+sr
Gxlyku0pRenu8sNB+dvHPx9Vs8VPLsYmocTGwW3Z7NJNPl0tucs0KLM030iLGxWg
r5xjGnoPQ0sdr/4ZUI8YN4cNCUTnacHZLhNw1QB6YSYmHbqjvcCyqjkXcK/j75TT
5yOOd6b0hekUqlqWQ69jnEZoXB45RoJiAvYXn6EKlkcu123ZCYtdu7Wk8qqE5Yqf
CjNwqupYVg0gdwUR7mihYnD0glOBRS+BdFZtUisXZC77JdgfIygZ5NaTwRL4r3zH
zrKkIg6R3sb77KP1w/r+ZbuMGZGl1XbErKBGGZSsT9C/N7VRaUImMI2KhYK1Z8j5
yQfYIPW71AR2FIXYUV9MCt5i5VhBVvAP2vLvqL+3LVHHSjChSy8=
=fkfy
-----END PGP SIGNATURE-----

--oFbHfjnMgUMsrGjO--


--===============8881945961706136805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8881945961706136805==--

