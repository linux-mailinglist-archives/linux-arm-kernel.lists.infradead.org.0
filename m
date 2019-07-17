Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE056BD06
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 15:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Iu/mP8cznlDOTf8EbmlXzoi46+n7aRGjJ1w+GyUCAYk=; b=bBtWk1Hd6xQnSm/NUHSn18zFs
	cSWS2ixS/RVdOW8kAjoeADSyIn38UiaouxytjeP8/pmUUd9X1YQ7AV2UjWww6jOJ8IRSQT8vItdQE
	ylJnJzOYWnnGGfbuynj8WbDLaE4zM/YNsT0sO6QdJHNp6y7Zyw+lA5J+9Z2b7cgy2MPOOa0f4U+6O
	oknbwgWtRkZnMfbqZzF5XKU1bkCDke8s44KvzA6dG4X02WpBdEcAZyvH9nT+ewvXZkh+wHtKThto+
	UYUiHNLS+TVLUlsTNdeAHGjvDXPORRP0A0ASHPyGZJwMJi4aY6ErtaYtqknIqtnLtqxuaa2jKaShK
	2G+8KhcXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjzw-0008Hs-Rv; Wed, 17 Jul 2019 13:29:33 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjzo-0008HG-FJ; Wed, 17 Jul 2019 13:29:25 +0000
Received: from localhost (p54B3309B.dip0.t-ipconnect.de [84.179.48.155])
 by pokefinder.org (Postfix) with ESMTPSA id BAEC23E4757;
 Wed, 17 Jul 2019 15:29:23 +0200 (CEST)
Date: Wed, 17 Jul 2019 15:29:23 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH 1/2] dt-bindings: i2c: Add MediaTek i2c AC timing binding
Message-ID: <20190717132923.GC1458@kunai>
References: <1560240715-22595-1-git-send-email-qii.wang@mediatek.com>
 <1560240715-22595-2-git-send-email-qii.wang@mediatek.com>
 <20190626133941.GL801@ninjato>
 <1563368121.16970.7.camel@mhfsdcap03>
MIME-Version: 1.0
In-Reply-To: <1563368121.16970.7.camel@mhfsdcap03>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_062924_660365_1D535CEE 
X-CRM114-Status: UNSURE (   8.36  )
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 leilk.liu@mediatek.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2070517308604887905=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2070517308604887905==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GZVR6ND4mMseVXL/"
Content-Disposition: inline


--GZVR6ND4mMseVXL/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > Can't you use those to derive your values from that? Which ones are you=
 missing
> > if not?
>=20
> I have take a little time to develop a new patch which based on your
> suggestions, and it tested OK. Thanks for your suggestions, I will
> update the patch after I test it fully.

Great news, thanks!


--GZVR6ND4mMseVXL/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0vIrMACgkQFA3kzBSg
KbZc3A/+MaKqaXoxfLhF7cf/4W3pivQuZ1XwN1uUj0ywybWz2dxrakkTsTS5kCSF
D2GRUcGvTLGKod/BaV/wIfdFVeyYPGoh38C2LSEcc2zTWl3CO+CyiJ35rAUvVhKe
DoxAxfkR4LSUpzTJUi26asAWZggVjEBZkWQQxhyJma8txPhAtuOg2Dp9J6w8oZtO
Ufj5c1FbF8r3q82ah5dmHqs924Q6WHUhBQXQf3eGNRJgqY/np4XHB5TZkOVj1uCW
qQhUIx4xBooJa1cSXGr7kA6nSay+zIX++F5R9hbxkGSCFcGZXei0owslreNQsyDf
rHMEc9JoZ5wXIMVjzPoxRwWrxDVIGdqfkqrmSDBjmYq4CDOAWvBZUIjgsy1E9d9R
YPX5zj3Fvinui4/dxqADBLuAoinkw3NAYg14KCAzIzXbOLwetnGXxoIaiLE2v8PT
qaTbtnIIhG9n/gaSQIQ3lDwTsa6dxv7FS3++6h+RFhAQ8XsaNKvYTgvmVrV4jKvs
Rr3Kg+m/MdEiWHceoa6tPM96kiWlQAQLq1yN1B06DMoFBkr4S7pjOe6LCYFG7AfP
Cu8nEykpDz6DT6KVwjefQpH14gTGH4TSjvpuXQLfjKB5k5sfi+NIif3+v3tJUBoE
8KH9/iRcWMwVKm36gyugDLIa4xfsb5fj0v2Lk1ZL4dvw75Z2JiU=
=K/nF
-----END PGP SIGNATURE-----

--GZVR6ND4mMseVXL/--


--===============2070517308604887905==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2070517308604887905==--

