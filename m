Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45821E19D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:20:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NwRktMeglbhmYz1puCRa8vnDhYUBt7BHQht4r//Vyqk=; b=Trg3d2qmqeEgbdcj0svHIsNgb
	ql4vXeAWi8rm/nA1q6nCYDKxyQd0BdD/Jjupt7YAerNJkjNXbQjA9AB1VNFkPDJ7klptsY3ps5vra
	56FGnrQrVwWXetoQS+rE4nyTQQSheYFVArmXffHDJQTnbmLI2rkbL46DSEP/ryvtzSj64qHPoXPxE
	nhpyZ7VBTeTLmfiCYRfnbnGRH7X2ntCHf1pcJHzrc/kaRdPRlsIPCDGVm8DmejkofbFNAXcxlk1K0
	J6SuQhO1p3MJWG/JCikrW45Re/msID/e4N/fcX4u02xaYwsDjgM3qntm+xeTXwK+FX3c3d8UpLKcM
	wxZasMVjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFcO-0006Us-LH; Wed, 23 Oct 2019 12:20:00 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFcD-0006U5-Pl
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:19:51 +0000
Received: from localhost (p54B33207.dip0.t-ipconnect.de [84.179.50.7])
 by pokefinder.org (Postfix) with ESMTPSA id E608B2C001C;
 Wed, 23 Oct 2019 14:19:44 +0200 (CEST)
Date: Wed, 23 Oct 2019 14:19:44 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Eugen.Hristev@microchip.com
Subject: Re: [PATCH v5 0/9] i2c: add support for filters
Message-ID: <20191023121944.GA2011@kunai>
References: <1568189911-31641-1-git-send-email-eugen.hristev@microchip.com>
 <c17182ac-67dd-d11f-5daf-066bf446b969@microchip.com>
 <20191021140515.GC26782@ninjato>
 <f5bd0c1f-9a72-6661-146b-ef5de77e31ff@axentia.se>
 <c1f5c3f0-860e-e86a-5658-49e2100225a9@microchip.com>
MIME-Version: 1.0
In-Reply-To: <c1f5c3f0-860e-e86a-5658-49e2100225a9@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_051949_986308_26A36135 
X-CRM114-Status: UNSURE (   5.81  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 peda@axentia.se, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2316209142473332181=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2316209142473332181==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HcAYCG3uE/tztfnV"
Content-Disposition: inline


--HcAYCG3uE/tztfnV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> Send another version of the patch with the nit ?

That would be easiest for me.

Thanks!


--HcAYCG3uE/tztfnV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl2wRVwACgkQFA3kzBSg
KbY+cg//beA6zQrkT9jDDrRJUPM3LpUWqzeo8RMreuQzJp6Pw1X8BSuxLanDvhT0
PlKK59ZEhsXHtaXiyw2yVN1h3WILCiWryq81eyw8+ZgLkoQS++cBIdBwB/ZswY4t
vtHV+9mc82sCVJYEH9UKp75wqEQ41dOTL478itGb89ESJ2R772foKlipQwQ1zzTJ
gS35TGxdmwuiJ3JCgDs1bkCorwpY4OBjF9H1QTWXqfyoTgRPguBM8NYXmj21Cn+r
VRFMvpmFlxGsSC35Zx0Fb1Q1QxZNb49TwC1nnNnBhUSkAP9rmrW8SrofbMZ3Dekx
A3pVvyhzi6IO0sEvbmtbm64tP/nk5Yf4n3DmVbHufOQ/wKWtXWIhsqC/p4BA6TZw
xB4yJbxsljD+HLbigCjP2KpsonYeBAFG9O0RRqMQG8bp59BnzCvZambx6fadjI6x
32J9dHsSgfrXsG2ABcQY9+JFqv0SjlHo/5VmtnjV+kExa8jwx+f2YDbqcxr99PR4
kdfsAWOE28CZowJFKn84jUaabmISqHz9ejUCNvNTeuAC2yxvRqUCzoUpguZnqEgn
c5y7u8byZWNlOcUNRnCIfen19LmZagkZM9xn48Dtcp8RCBZRZEIeWnIvuaaix7V9
+kNWRT3uArzuZDD7A+CyefduySTQj1UZkJfzYyYKEL3fLAh4ZxQ=
=ywNb
-----END PGP SIGNATURE-----

--HcAYCG3uE/tztfnV--


--===============2316209142473332181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2316209142473332181==--

