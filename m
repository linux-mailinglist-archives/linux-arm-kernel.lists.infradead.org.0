Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA1A56A7E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:32:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zl61PdgiFUc0+GfFiInzhUflzguos1Xb4geuTjPxmIA=; b=O/EbqQMt9/ZwfN/g2/ZNNXhkq
	r6T5088cdMsUGezHgwLTEuQ6WkKtaIqfyEUu7eEwJyDLOcVrqmCFxfWWHYHAzhLzRXMmiFD5pgD/C
	s02eWeppvOrCzx2nfE86mLzEIPbPtuaNbwyNJdri7T6iRf5caWE5GpQfHY7a6FLO3DQXhU7QpPx9r
	wDR1CSFvddMdjH+sOCE45RYYcXZhF2xY/mHOZtp8HY+J7V775q8ob9m1gebT/64GEvtXjNbR+XiJs
	rlLn+peWBxMV2bgLCJsPLoF9l2i1Ka6DlZFBBFaGuM+iem4tGeVwmB1kRT/w3e1sJi826A6ThU1l3
	sdlRXnK2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg81k-0000bF-RZ; Wed, 26 Jun 2019 13:31:56 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg817-0000Nj-9f
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:31:18 +0000
Received: from localhost (p54B330AF.dip0.t-ipconnect.de [84.179.48.175])
 by pokefinder.org (Postfix) with ESMTPSA id 9A4DC2C0114;
 Wed, 26 Jun 2019 15:31:16 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:31:16 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: i2c: mv64xxx: Add YAML schemas
Message-ID: <20190626133116.GJ801@ninjato>
References: <20190611090309.7930-1-maxime.ripard@bootlin.com>
 <20190611090309.7930-2-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190611090309.7930-2-maxime.ripard@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_063117_558533_38592AD0 
X-CRM114-Status: UNSURE (   7.45  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3870789782217075812=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3870789782217075812==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZG+WKzXzVby2T9Ro"
Content-Disposition: inline


--ZG+WKzXzVby2T9Ro
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2019 at 11:03:09AM +0200, Maxime Ripard wrote:
> Switch the DT binding to a YAML schema to enable the DT validation.
>=20
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>=20

Applied to for-next, thanks!


--ZG+WKzXzVby2T9Ro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0Tc6QACgkQFA3kzBSg
KbYHgA/9F8nLcTx2NE4YvEyysDBH0L3/XFU39GvfNfR00Uu3Js8xbbyCmj/GYwLr
fPMNWfOtjF5ROVZOnhKc8BVhk9ps9qzOVDjn11VgnScxpWym2IuvpFfY1yXfT0H6
9arS6XHnikWTkLUpZIAWSA4yHByNptL+ZRmcJ2gcabBn/8rCrfwe2JvxfLNyLAsI
rL+ynFioJZqhZOEXrag9AwPPzIH8UnItUbt/yFgNdurRynJUDmKM2eZ/xwf8mgga
WXVGHIVHjSJFp0kool7FJagDUqJ5nVTMDBkUePCxUihg6CSse2YDQtONGKY2fxmY
2aSpGhNYUj+jRTOtJSHPjGfCFJ7t6k6nhuk0Psqz5rOV3fxy+Hldi23MJa5D6GWb
jbclbxhwIKKuBsCx694ESa2yUoKXdPkIukw1IDTynpFUgF5/Gm9cafxcCGK5wNrd
aIzPaDVP/9JGdXx/i7kkVTFtPO+J3ToXqA/UHhbz/JoX8ORlun18NBrcgfpl26p3
TST6uEr15dx+SR46ebz7r5RdnirxWyBD2kn4iMnj7YmUi9ONSPXttjN+4/Mnq1wk
9wnM4tic6utMMEQN5oHCnViFi1ZS4/FqEQ0CTZlb1+DG5UwRTSUAgN4v+fWffM/2
k4Mnmq4JmdQaFsFmcM282vpYVQAm7UwU5wQYZOd1Be/tWe+Tsxg=
=RozK
-----END PGP SIGNATURE-----

--ZG+WKzXzVby2T9Ro--


--===============3870789782217075812==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3870789782217075812==--

