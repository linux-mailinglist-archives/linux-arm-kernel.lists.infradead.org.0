Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA161C1196
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 13:41:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rDRhoWQsgSLm75XxhgBl93Bm3GERuh86pjKezULGmsg=; b=pPkZdxQ72CpWmy/GFGraoD/WH
	GffKVyR62FydTDq13kLX0LR0OH7WLpDOIyITzVHIwDcRY4FOy4tD1hjccQhoDaJ+2TqD7+ZYd5CdS
	tQT5SLIu3eTuX85FDgqUceK2iP3MqQkbPIEeZaQuhyhjTVVAS5Qe4LfQi2362eDhmKub2c0Ufnb55
	tSfxdo+X2XbOx40G0EopORBvuf4rNlXa1R503wwuGCK0fnEqwHQUL5FaDiKmFaFcqlp8+DVQw3vrl
	wma+nsVjGTsWJdMyAs+Xr02KTWPifqKFSBzGAOkLj7OYBm3qz14Z6V57YcwezQMcnZVRr9cWcjos3
	f1Aw5pIpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUU2T-0006o2-6C; Fri, 01 May 2020 11:41:05 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUU2O-0006ml-1v
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 11:41:01 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.47])
 by mailout.west.internal (Postfix) with ESMTP id 7401A702;
 Fri,  1 May 2020 07:40:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Fri, 01 May 2020 07:40:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stwcx.xyz; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm1; bh=Sb3goio2fiGntHYbz+m2AsCFkNQ
 rFG+Kg4TJuY9VPSk=; b=U8JPy01FEaCgmL0/x3Wq6/hHhS3ABZ9Ze/zBRZ21P/D
 eApxU4+pXkv9R/OYMs7iYojHqJXSmRxCAq/D4DZ1H2j15x7dG9lxDFfIhXErm6R6
 JMwbJP9pR1yvU6ZPG1dWNOfPTySU68jj0v4JGXX2SLrsY5No9go8Z6ix57E0Ss+H
 4oRr+8XvY+SB2/tiIObU3Fa9+WiAc8gb8EPUyeoRD73KJp+Q7SUXDZW7U/SPRSK+
 r1atLU5zpmCTLfaAhqOJEz+jIr8u6vKwq1b2UUtsMdzsQU/Wg49HMpJ3sYtBLCUq
 WskJGp8jlpK52s/9vT9MgCRtCLHt2yjjGo9UMChSxXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=Sb3goi
 o2fiGntHYbz+m2AsCFkNQrFG+Kg4TJuY9VPSk=; b=rWKq35srI3fHGJXnJg7ToM
 gz/1MfC2xoaLKwSlcoHy0VTRxE3sTpppHIPxXUIjSbKwoi9L3ZUsCc9WwBKlE133
 2w2lyN3EzEMn/ajuvdC8ZKBOzsCJ2U30SxdsHBV+Ytt8MWWURhPEV4FjpP8ttYQo
 PSZs+AP6/21pPMnjjMFfk1f1A8CWm9s7DyK+eXVIqTYfHepCmNkHziKXQU689jZA
 OJczTLIw1557vDOzJav57ZYhaYMHf+Dk7f4ww88/CSMoWOQ9e9R5LlmH41ikUeB/
 HCnTCjhC5havGJz1/yvVot0TUJ5l5nbtVFHh/lAP9/PitkJGJuoZjEC2mGFgo6zQ
 ==
X-ME-Sender: <xms:wQqsXhH-jhFVf4-4_6mcgDu94tNfRt_S4UZwJlvk9BhK-8-7MFKdCQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrieejgdegudcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenfg
 hrlhcuvffnffculdefhedmnecujfgurhepfffhvffukfhfgggtuggjsehgtderredttddv
 necuhfhrohhmpefrrghtrhhitghkucghihhllhhirghmshcuoehprghtrhhitghksehsth
 iftgigrdighiiiqeenucggtffrrghtthgvrhhnpeegheehfeffgeekveehtdfhgfduhfeg
 fefgtdehhfektdelffevkefgueffhedtieenucfkphepjeeirddvhedtrdekgedrvdefie
 enucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehprght
 rhhitghksehsthiftgigrdighiii
X-ME-Proxy: <xmx:wQqsXgkmkfTAS42UxYD2Zpr15FMTaDn8g_JBwQOm-SFrLb2RXoSXOA>
 <xmx:wQqsXonjbQUZkEH46KBo1deDxN6Wo-C37USh7n8DkXZgXDyjWPa2NA>
 <xmx:wQqsXtUWIuUa3A2zcdUx5JYnCfH-ExAABPBoR4cmnddYvMi1t3rZEg>
 <xmx:xAqsXik-JS_8sIz5rPEFXTYf3vw7Mw1lhQLqJI48GgV5y4gxfsb0hA>
Received: from localhost (76-250-84-236.lightspeed.austtx.sbcglobal.net
 [76.250.84.236])
 by mail.messagingengine.com (Postfix) with ESMTPA id C9B693065F66;
 Fri,  1 May 2020 07:40:48 -0400 (EDT)
Date: Fri, 1 May 2020 06:40:47 -0500
From: Patrick Williams <patrick@stwcx.xyz>
To: Alexander Filippov <a.filippov@yadro.com>
Subject: Re: [PATCH v7] ARM: DTS: Aspeed: Add YADRO Nicole BMC
Message-ID: <20200501114047.GC5268@heinlein.lan.stwcx.xyz>
References: <20200429113711.13183-1-a.filippov@yadro.com>
MIME-Version: 1.0
In-Reply-To: <20200429113711.13183-1-a.filippov@yadro.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_044100_135624_F54A54D4 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
 [URI: stwcx.xyz (xyz)]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
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
Cc: devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Geissler <geissonator@yahoo.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8129413563620029046=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8129413563620029046==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UFHRwCdBEJvubb2X"
Content-Disposition: inline


--UFHRwCdBEJvubb2X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 29, 2020 at 02:37:11PM +0300, Alexander Filippov wrote:
> Nicole is an OpenPower machine with an Aspeed 2500 BMC SoC manufactured
> by YADRO.
>=20
> Signed-off-by: Alexander Filippov <a.filippov@yadro.com>
> ---
>  arch/arm/boot/dts/Makefile                  |   1 +
>  arch/arm/boot/dts/aspeed-bmc-opp-nicole.dts | 326 ++++++++++++++++++++
>  2 files changed, 327 insertions(+)
>  create mode 100644 arch/arm/boot/dts/aspeed-bmc-opp-nicole.dts
>=20

Reviewed-by: Patrick Williams <patrick@stwcx.xyz>

--=20
Patrick Williams

--UFHRwCdBEJvubb2X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEBGD9ii4LE9cNbqJBqwNHzC0AwRkFAl6sCr0ACgkQqwNHzC0A
wRkYyQ/+Ia0bM1fVefwj8qDw02722tG9QTWwgkAr/0ln2lYPm6WeBmhNWiQlcq73
siHVSVZmAIxGeqAj/fo0WRA6XgemmlMNylICZj2JMlJs/RaqfdzkzMxjXDPF3jir
kniXIA/naEnakX9e9IyzP1zeEHUeCfIBD8YdWhBXSaz8yTXw6fV4gFDCXGqjSOhc
HSlVA3Tj9B0810DoMdGGRXU1Y90Q6H5xdZ7gdROvuZDa04jusuqFDZ9LDw47OIDp
W+0zEW2eqhwFLp6QSDZXhBDOiB1kHdc2tEMfW0uzzqpT2JoBoGzc6PMrjPCBaIrP
Aj23HE8zM1uuMzFZCCQ2vPUxxSroAxdhN2H1/8Cc9ekvGiAHX5e73g2hT8DOXIJD
TLkkn9nVnKra0P+N0JhQQKXDRnSGGdoc0tsIlq7AMi6lsjzPIoV4tRqeGYZgGSBC
henTkYrFFsmjTVnh9mTq0UdXDVZscW3oWnrK3tuzphX+tFJxlRo8QgrTLVBU52cj
k5AL7gk/FuK+y0zYd3weLXRAEzU8u0OFDROQLsEb6jJH+2GqIcz7qPm4XkjPENDa
5rkOxMovA+01t13eShDsWJ7vCLQPbGpDtwj7nnFtWo/uZ+pU7eqNnxVFH7iyMo4P
obUf/pikY7qzZSVgYmi52h2c8pRRdgExNa67EOcP/SPr59zXlKQ=
=cOmO
-----END PGP SIGNATURE-----

--UFHRwCdBEJvubb2X--


--===============8129413563620029046==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8129413563620029046==--

