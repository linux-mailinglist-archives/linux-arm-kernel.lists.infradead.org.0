Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 935D8164314
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 12:11:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=owdTU7C9QZXs637tnqAP3Noh53qnKMgnQdAFEj/aKwA=; b=VGnFvkc8YueDgGmBtD163HsMu
	qJdYsXoln1PfIf2TTmCVGO6rUI0GKRQEcHPmSyXpVp2bhJBLcAliKriEw0mzPqA0VMShQ/K47SJ+n
	KPaZnsBTEsZIOd6flD8a2qMCy6qlxazBEL6GydCBMRtjp6gKJJ5hVNA/3m8TFs05xUHTRgzN/kMop
	sMsVuF5Y/sOMDZ8L1LypdG7utDSRc74iYW6hkpXPThFSePy+cX2hZ1iUu83pOzBNd519ZS0KGjque
	Gkq3b19NlrARRKsuwOSh1IRVfPS2jA3TyM1Ny6yluraEvvEATzUIoEDungNVxyaTNRP14CzHVH4qw
	CwgloAbRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4NGb-0003kN-Or; Wed, 19 Feb 2020 11:11:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4NGS-0003jj-Uf
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 11:11:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AF769B11F;
 Wed, 19 Feb 2020 11:11:33 +0000 (UTC)
Message-ID: <5909a00b6f95b14a983ba86297c0af29c290d0c1.camel@suse.de>
Subject: Re: [PATCH 4/4] ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Date: Wed, 19 Feb 2020 12:11:31 +0100
In-Reply-To: <1581166975-22949-5-git-send-email-stefan.wahren@i2se.com>
References: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
 <1581166975-22949-5-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_031137_134863_6BE5A195 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============2816459059723404219=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2816459059723404219==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-Z3GG+XB2cSE7kwAK7O6H"


--=-Z3GG+XB2cSE7kwAK7O6H
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2020-02-08 at 14:02 +0100, Stefan Wahren wrote:
> This adds the labels for all the SoC GPIOs on the Raspberry Pi 4.
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Patch applied with linus' Review tag.

Thanks!
Nicolas


--=-Z3GG+XB2cSE7kwAK7O6H
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5NF+MACgkQlfZmHno8
x/6CqAf+K9om+tz33E8dthw3hcUjPMENZG/D5qLKSIwqgCA1GP6d98AvL391IBEr
mLBaZOEmws5YB70++XxAYPItxq6ictCaK2TGauHaTfLnYaCPUi8OMfssr6wEXXyw
zoyNDg7kMjmJZpEuu2gW6qbmIzaMLkYlEK0mYYm0UhsOihbvGt+f3LlMS606S5Qt
JRjPUgNgE1hUK3HCK8h/MZj3HDvvLZQcz4InESnFEeGU7HI9ozyR+tTu3c/jPQs+
ta6erOveoIYmMU5dmz3dSqknne43Cue4MIhsOzgbzw4nQZ8yp+WVyG+NeTAM7PfR
XnfmnuQtIic21pY5W2uUa9MmtBfECw==
=yuBe
-----END PGP SIGNATURE-----

--=-Z3GG+XB2cSE7kwAK7O6H--



--===============2816459059723404219==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2816459059723404219==--


