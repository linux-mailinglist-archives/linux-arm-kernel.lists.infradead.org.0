Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0451D49D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KBfGWKWTduE4K9GuNsjfYmsps8va8BeZutnv62tTVTY=; b=FuXuzzRtPUloqj7nNB45rce6o
	bFsmHMCYPu9nm08BKoEPklGuDWJh3Kn8ecBhhqVg88tahMfI47tedheEjaaeouUe/+RJ+vRC5vU6A
	RmHxv1HoqVA8tqVV24RSVelj08knp7aeypeKS4wvDi6g8CmhPQIhak6V9ym+oQbFzROv9+PGBTRkS
	Dmbh/PYXs2YQH38mXlTt7RtFKCYW30PQ1j/J4Ul2e5y80uZ1+6/9qnDl03EKNEq+Jbe6EDfA+zN2c
	UiltXf0zXg/cPnJ4ts1ZPUu1yzHarMUDIihmEjCrepq4Cymd1hHRDaxnI/yvQzGLVBWI4qi6V8dpX
	xJPIUELpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWpP-0008MN-Od; Fri, 15 May 2020 09:40:28 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWpD-0008Id-Uc; Fri, 15 May 2020 09:40:17 +0000
Received: from localhost (p5486CC07.dip0.t-ipconnect.de [84.134.204.7])
 by pokefinder.org (Postfix) with ESMTPSA id C49A12C1F6B;
 Fri, 15 May 2020 11:40:11 +0200 (CEST)
Date: Fri, 15 May 2020 11:40:11 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH v2 1/2] MAINTAINERS: add maintainer for mediatek i2c
 controller driver
Message-ID: <20200515094011.GF2077@ninjato>
References: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
 <1589461844-15614-2-git-send-email-qii.wang@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1589461844-15614-2-git-send-email-qii.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_024016_135557_11C07E38 
X-CRM114-Status: UNSURE (   6.02  )
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 leilk.liu@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5986030863656353982=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5986030863656353982==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ni93GHxFvA+th69W"
Content-Disposition: inline


--ni93GHxFvA+th69W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 14, 2020 at 09:09:04PM +0800, Qii Wang wrote:
> Add Qii Wang as maintainer for mediatek i2c controller driver.
>=20
> Signed-off-by: Qii Wang <qii.wang@mediatek.com>

Applied to for-current, thanks for stepping up!


--ni93GHxFvA+th69W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6+Y3sACgkQFA3kzBSg
KbZugg//TK0hfveJTlzciqv+okPXLT19EfLiDbZcb1Vd4QOqHwyzVuswobDqKlb5
FYUJwJ4mGytlwxPqa39dZKzCtwQlE/xPjISB+oPyiuESDrnlU/xXNIH6+prfbG7X
dbJkgNqpAg6hsaWlDh6QzZa+rr+TsBbmF3pm3q6SPZpXXUvp79YPgSE4k2RJJ5Ev
mF2QFCP88zK/0MsP1+/Dq0G51TE4Qzku8D35ysOB0ENIvtlCQp5RfeSX4OnhXzuP
Ne5dztd9S6HxoPKKyB0XNtSu1t0nf0Omsd+zagDLTVFJORe3D7MDxCLrAARWdPvA
c04rpnRuTewEihDJtyNJg3DovgqqGrN4sA4GINzIKkb9wV0L7mH1/4TU30OyhCRS
ZMce3FcP5gCg70L5E7pNy05EX3xMY8IltUok2AvWEpae6PnuauaxKLJjfgcxLtwz
xrNlNbZEsbvzAwdmGLZ6+PJMfa5tgEs1Wf0yfqgBrVPModxblx4Z+OrY/xt8rZz1
8zfQPQYIEeHArP07FIx7TzcdPCG8afJls2o9N6mzo84pJ8kLBOR/6yWGEUb1AuPV
A+gpFzP+XkrKf648i2YRE8EDVWnJkh42aiyZSBJZgsjYvej65W6nsLkpW5su2KUP
+f0Bf0k+9a6FF9ph+L8s1IRfrFoSzTT5X/Iay5Utatv/zF2ETP8=
=Bb7H
-----END PGP SIGNATURE-----

--ni93GHxFvA+th69W--


--===============5986030863656353982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5986030863656353982==--

