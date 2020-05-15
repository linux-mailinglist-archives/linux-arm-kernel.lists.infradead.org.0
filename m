Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6500A1D49DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 11:40:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9JNlPPtEj+1Vh3BPokkIBELiJs3LNVgfKAiAAFvHbqU=; b=f9VpXUiAyKws26Eln6PckDOz6
	uugUpQK6+D1CGPAnNBjYTskyynK1YmhV9rOUvvgdOO/WzOKzH7iVpwQlCNhFg1BMTcmZrPszPX9Tn
	/CloxMHfw2Tp2ShMQSKuAiHn20XYqwsDS+i34pFUC1MvgWPjO7mERCuJPF+BLEMo6fLCJchIss2C9
	A9BRVCAzBDte1Qae0totZhf7umIYUGk9hy2Nv2uSE5f+GrBAp9yO8ZJ96tSuRtkgNyvbmMJLdWf4O
	KAV90pAwdh+C0ffpsHGGx/NjwOPOhU9hkXt9Xv62euZZFjFHxzij00dX8GNeWLQr47gwSASy17K+4
	PbiuM4HPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZWpa-00007C-BF; Fri, 15 May 2020 09:40:38 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZWpF-0008LK-7l; Fri, 15 May 2020 09:40:18 +0000
Received: from localhost (p5486CC07.dip0.t-ipconnect.de [84.134.204.7])
 by pokefinder.org (Postfix) with ESMTPSA id 3463C2C2051;
 Fri, 15 May 2020 11:40:15 +0200 (CEST)
Date: Fri, 15 May 2020 11:40:14 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Qii Wang <qii.wang@mediatek.com>
Subject: Re: [PATCH v2 2/2] i2c: mediatek: Add i2c ac-timing adjust support
Message-ID: <20200515094014.GG2077@ninjato>
References: <1589461844-15614-1-git-send-email-qii.wang@mediatek.com>
 <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1589461844-15614-3-git-send-email-qii.wang@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_024017_421436_6EBBA4E1 
X-CRM114-Status: UNSURE (   6.88  )
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
Content-Type: multipart/mixed; boundary="===============1215640023021994019=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1215640023021994019==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HKEL+t8MFpg/ASTE"
Content-Disposition: inline


--HKEL+t8MFpg/ASTE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 14, 2020 at 09:09:05PM +0800, Qii Wang wrote:
> This patch adds a algorithm to calculate some ac-timing parameters
> which can fully meet I2C Spec.
>=20
> Signed-off-by: Qii Wang <qii.wang@mediatek.com>

Applied to for-next, thanks!


--HKEL+t8MFpg/ASTE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6+Y34ACgkQFA3kzBSg
KbYUSg//XhO3MQxenuSju7wYsEkq/XyaVAfqH+foUu4RPONPXv04M4Owx+6UdCek
8EjevvFVM5f9Ir47WkKKJkt4mlmsEV8ndKjwZyY7h1A5Ocna2bQ15pGFxpQ20oe1
DT5X4s/7HsTQIubSWGbDLSujQ8xHjrT3kDFBfEh6HxBGxsuHNLCP6WjLTHZbFN18
B87VCpVFINlqCHiX/ZAKTHN6HSF00+IwENs3zMCKfE10cVuqF4OaoVNSvQyDS64y
w9erXur3M7s8ijhnHWgmSz0Vs8xAuPwWmzBlHYFAmh4bJxpFpMkDuPQU8n1aAffT
IijkylZYp5vuQu93n1tkShlo+MOgHcmEA2uCoCOb9jMJOFO6wM3AeBRzSmpTCtnn
dZLUNy7asSTYtTrEpXGmaKg2l1gEKDt3Kn99OfV+hrdquJyzljY6+Z4B4WbIDtIN
BUU+XM0JUVttFDT8Y03LEb/a49c1f+SAtzu3gmHnjwVajXwghG/xXqm1Ux8hKqcZ
BRowZ2LNDub5N58kfMtRifOXAEfLwl7gsrj6TnO9MkiZ8NpEyBJUaVK2pn3VWc+g
O8Mye8aADI4A1NPuexyCiF3awZAOiT7iEZOUWJte9VaOULGs51C8ifddMN+RgbLY
6BnDf0z49UE/IoTvvMNCoxE8/fwXd16eFvqUnq1UgY5lZRG89ls=
=SLRe
-----END PGP SIGNATURE-----

--HKEL+t8MFpg/ASTE--


--===============1215640023021994019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1215640023021994019==--

