Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD814E47FE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 12:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EBYFDLyG4OlMVpVYvaV46/OG5aTMKyJtXSbrcS6/Hcc=; b=qpUlRBfZObjG5PcUPmHTILZJl
	3EvXiiNyh+HWQYHO+BUy6Vsn1Gh6LLg98/hyCUDPA46hGJ/fNTLm5PdmFAIQUnnro3kYOsLFGxchQ
	HEmIpd8C31rzdTg12GdSIAam+lKheuJWq5FkbWHJDmKR6+mRhXyrRwthHcl222Ac2OIuttzojmxF8
	NRqOQegVx2T3nxYifnRkS8zjx28mg3rjFn4CiD4qpBfPtotchNgn+LuoYUfKJ3Rsod2onygNGT2ar
	3dYm3hVSChZXBz4zQtSJqNrYT64QJQxgAEbp6dlJYzIH8WNZH81ePgaPym2zk0/KXb9T6X/COliHB
	albFMHdYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNwOR-0007aY-9T; Fri, 25 Oct 2019 10:00:27 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNwOE-0007ZR-8X
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 10:00:16 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 47003F62bqz1qql6;
 Fri, 25 Oct 2019 12:00:09 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 47003F4PlJz1qqkV;
 Fri, 25 Oct 2019 12:00:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id ovzOP7q8XvP5; Fri, 25 Oct 2019 12:00:08 +0200 (CEST)
X-Auth-Info: YbElbo8Z68PG9NQbk7OPA01W/n0q3PIO9eLcf6q6MeQ=
Received: from jawa (85-222-111-42.dynamic.chello.pl [85.222.111.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Fri, 25 Oct 2019 12:00:08 +0200 (CEST)
Date: Fri, 25 Oct 2019 12:00:00 +0200
From: Lukasz Majewski <lukma@denx.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v2] dts: Disable DMA support on the BK4 vf610 device's
 fsl_lpuart driver
Message-ID: <20191025120000.5dbb837d@jawa>
In-Reply-To: <20191025085515.GH3208@dragon>
References: <20191010090802.16383-1-lukma@denx.de>
 <20191025085515.GH3208@dragon>
Organization: denx.de
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_030014_454787_28895640 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>, Rob Herring <robh+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1353655215343918344=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1353655215343918344==
Content-Type: multipart/signed; micalg=pgp-sha512;
 boundary="Sig_/By24V4SN7mPcjm/avn3Dc5F"; protocol="application/pgp-signature"

--Sig_/By24V4SN7mPcjm/avn3Dc5F
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Shawn,

> On Thu, Oct 10, 2019 at 11:08:02AM +0200, Lukasz Majewski wrote:
> > This change disables the DMA support (RX/TX) on the NXP's fsl_lpuart
> > driver - the PIO mode is used instead. This change is necessary for
> > better robustness of BK4's device use cases with many potentially
> > interrupted short serial transfers.
> >=20
> > Without it the driver hangs when some distortion happens on UART
> > lines.
> >=20
> > Signed-off-by: Lukasz Majewski <lukma@denx.de>
> > Suggested-by: Robin Murphy <robin.murphy@arm.com> =20
>=20
> Subject prefix should be 'ARM: dts: ...'.  I fixed it up and applied
> the patch.
>=20
> Shawn

Thanks :-)


Best regards,

Lukasz Majewski

--

DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-59 Fax: (+49)-8142-66989-80 Email: lukma@denx.de

--Sig_/By24V4SN7mPcjm/avn3Dc5F
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEgAyFJ+N6uu6+XupJAR8vZIA0zr0FAl2yx6AACgkQAR8vZIA0
zr1f0AgA09kZumpnsPlEwl87PkX6natOW7hAKLdpkClGwO/Iwc7eMgFOoVZmRoL9
U5wQZVVhjwr7CVtiwg16KpE5l5gh1+I1hc8GCb7uKByzMFGFbAKT5IIOcIQYLFpt
7WMYRGp9T+hAw3SPKoj8zqNYceFS+b/ZJ9F6PENWrQXmY9L5yMB68dEJknGGf0Hu
ZYi2MIBT2JXSRcgoC+EYZA/8OllXEATMCSZxIcc1aZdcPqWfdS8fE3l2AAafle99
JcIfbjMf1RAn/aLtS73a7Dggmv8Rk+QPKj2qjrrmXnel680QVgwcMINjd0ihbq+4
vdq3ph01H/WlHpjHKKcqjHxAEn4P/w==
=6lWc
-----END PGP SIGNATURE-----

--Sig_/By24V4SN7mPcjm/avn3Dc5F--


--===============1353655215343918344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1353655215343918344==--

