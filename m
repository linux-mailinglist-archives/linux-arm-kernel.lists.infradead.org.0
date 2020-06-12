Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D34D1F764A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 11:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hx9GEHO8jOwMq2XCkDZJe2uy9ja5C0pRlrpEsS+aTaQ=; b=eO1BJxMQgEQ3R9JwOgRWCSLFF
	06El03laAWTzLxFeSo2srhdHr2bEBu5X6hIUwgRNce59gRc51btPbiunCn/Y/BkbRAEbcK4hUfdw8
	buzfoJsWoI0nD4YlOLSeSZIAINj8f3SSb6U4aN3UO+jCnyIcjjilCixSTSRJ4Zl9GB5xHfFIXWHk+
	5pIMLEfaDy6IwRJ2GcTAkqJcAxdDCtAfzUArF55MwNGWrTEbDkzMBjK6u2fATvivSQzkKfW0zwD87
	IVutUT4v9XLIf4QHAGobcqPe6zAiX/sBRKfeopXMPHAvOVvDVz5H9aB+q9ish54xdyg7LKzrCi62j
	Rt3NiCQCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjgQ3-0007Nu-88; Fri, 12 Jun 2020 09:56:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjgPv-0007NZ-AG
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 09:56:08 +0000
Received: from localhost (p54b33104.dip0.t-ipconnect.de [84.179.49.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A9FB2081A;
 Fri, 12 Jun 2020 09:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591955767;
 bh=vpHTuwUDM9a5LcIHJu50XcaJieuFQe7fiS+Dk2mMIpM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=2UEHK2tVpciOsv09SaQXib8V2ByKV+2ALo5gw8FS5anC2j7Tgy3jxXHPBhEomd90v
 YYxI1o+AFsEg9pGS4MB1Yq+QFS0Lc6M1xgapxTGgqjSEmPY8z/xi7//huR020ol5Li
 +7ubHZAWSfrptdS+gfVO3wyHzmZMeKaB+cWeBQvc=
Date: Fri, 12 Jun 2020 11:56:04 +0200
From: Wolfram Sang <wsa@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH] i2c: imx: Fix external abort on early interrupt
Message-ID: <20200612095604.GA17763@ninjato>
References: <1591796802-23504-1-git-send-email-krzk@kernel.org>
 <20200612090517.GA3030@ninjato> <20200612092941.GA25990@pi3>
MIME-Version: 1.0
In-Reply-To: <20200612092941.GA25990@pi3>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_025607_373980_AB777B6C 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Fugang Duan <B38611@freescale.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Gao Pan <b54642@freescale.com>, Oleksij Rempel <linux@rempel-privat.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, stable@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============0091219071169520299=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0091219071169520299==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RnlQjJ0d97Da+TV1"
Content-Disposition: inline


--RnlQjJ0d97Da+TV1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2020 at 11:29:41AM +0200, Krzysztof Kozlowski wrote:
> On Fri, Jun 12, 2020 at 11:05:17AM +0200, Wolfram Sang wrote:
> > On Wed, Jun 10, 2020 at 03:46:42PM +0200, Krzysztof Kozlowski wrote:
> > > If interrupt comes early (could be triggered with CONFIG_DEBUG_SHIRQ),
> >=20
> > That code is disabled since 2011 (6d83f94db95c ("genirq: Disable the
> > SHIRQ_DEBUG call in request_threaded_irq for now"))? So, you had this
> > without fake injection, I assume?
>=20
> No, I observed it only after enabling DEBUG_SHIRQ (to a kernel with
> some debugging options already).

Interesting. Maybe probe was deferred and you got the extra irq when
deregistering?


--RnlQjJ0d97Da+TV1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl7jUTAACgkQFA3kzBSg
KbbntA//dAQo2Vc4X+lVKV4pApi36lY7bZa0XTJB1+2aZfBti0Twy0cQrN3vvaaQ
rc4sYXRkK/d1N5z95dj3eWcnmsUtel2Ac5neRuCCFY62y27uI24JJT7HKKXwXPkT
oFAxksVZ4cDnjrrtpeFSq5vWtqilA8s7m1bapaNS2B5kv7AtRD733NDXHNwec0Io
nCgN4hKMEY+JZFBhnQG3VfR+i/kuvg4zPd47bb+gc3eGHuXs4jGMb06EXuKmBbK/
VdjUuwqiO/gGhcFAqdsA1JA9eSbvFfEJndS9uAz9WfXQBtIO//is6jFp5e9kU8Gx
pmKCiiVUnO5BTLPreLSEqNDJeLAj17ksGj7nSAdxujjXeXLM68j6FZJRytOZLFdG
o6KSO2QSbPEBGJiArJQj6s7i7GOP5pjPaEb+6x8ldV9hBkeAmsscFD92OiWHSgM6
rs1NX9s3/64cN0yWl2R0UActscJTQWMntBLiwBXoOU+Pjjh2dZU0ju0+diUjfgA4
/i714f+DaPkgC+HcTpzpmV9xmDCEGhLV6DJyJkbUHKknDLQ5e5rXxkGAeRWn1cCV
1UcrBB8YZR/YSJj5FO7T340Fg5kXAAtzZF5qIOSSjmD0cdadtHZNezhbL6jJfiJ2
seyWQ80gCrbSGVW3DH4sgm+CUDnVvCN33gMa50NmsZ0gPC2F3HA=
=r8jc
-----END PGP SIGNATURE-----

--RnlQjJ0d97Da+TV1--


--===============0091219071169520299==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0091219071169520299==--

