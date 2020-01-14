Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA3413B19B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 19:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MRv3jbAd+ZZRQhHoqBGy5XJwsxEFERONW5px1POj9to=; b=I44tPJoeL6RPWvtBVBzH8f2EX
	EyMWztV9nlpojAF7Zke7JhHnfe02aOyG+WxjopYXJeaIvma2OByVUsZernAuaTpzeuAnvZAXKy6NI
	Jx8QfQyvAwygPLJtvTkKMzqY6STuYHwV897fymbl6NZug6NpMeDlBRsAgYCSSZkm315qL4OApwt+T
	PCG9xOlSkbLiy/XPSC30hyehxe5XSZHZZiivV/RLWHtZfnZLtGdw7J/Dc99iCj9iyVwScYZ7Vaxea
	5WSZWsb2uQed8EumYHBKhda5WVz/FrTkOu9tibQcJVebqZCtgDhWpq+YAMQYNSsKU9bcwUwLMdBhU
	DwbN6I4Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQXg-0004qI-Rl; Tue, 14 Jan 2020 18:03:52 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQXU-0004pF-95; Tue, 14 Jan 2020 18:03:45 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 6D55DADF1;
 Tue, 14 Jan 2020 18:03:37 +0000 (UTC)
Message-ID: <df7b8b1e2f411660cf2012bd86513491c9b5bf53.camel@suse.de>
Subject: Re: [PATCH] arm64: defconfig: Enable Boradcom's GENET Ethernet
 controller
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org
Date: Tue, 14 Jan 2020 19:03:36 +0100
In-Reply-To: <a10b3e49-9c4f-5124-9e25-ef1482681287@gmail.com>
References: <20200114164900.27483-1-nsaenzjulienne@suse.de>
 <a10b3e49-9c4f-5124-9e25-ef1482681287@gmail.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_100340_464723_11BE0C11 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2930830037063846743=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2930830037063846743==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-NnY7PP2kYYNNjACY7ulI"


--=-NnY7PP2kYYNNjACY7ulI
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-01-14 at 09:20 -0800, Florian Fainelli wrote:
> On 1/14/20 8:48 AM, Nicolas Saenz Julienne wrote:
> > Currently used on the Raspberry Pi 4.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>=20
> Typo in the subject: s/Boradcom/Broadcom/ other than that

Ouch, my bad.

> do you want me to pick that up now for 5.6?

Yes please. BTW sorry for the late submission, but I just realized we were
missing the config option. All the genet related code is already in place s=
o
it's a shame it doesn't work out of the box.

Regards,
Nicolas

>=20
> > ---
> >  arch/arm64/configs/defconfig | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfi=
g
> > index 38b4f998e24a..245d52a4d009 100644
> > --- a/arch/arm64/configs/defconfig
> > +++ b/arch/arm64/configs/defconfig
> > @@ -256,6 +256,7 @@ CONFIG_VIRTIO_NET=3Dy
> >  CONFIG_AMD_XGBE=3Dy
> >  CONFIG_NET_XGENE=3Dy
> >  CONFIG_ATL1C=3Dm
> > +CONFIG_BCMGENET=3Dm
> >  CONFIG_BNX2X=3Dm
> >  CONFIG_MACB=3Dy
> >  CONFIG_THUNDER_NIC_PF=3Dy
> >=20
>=20
>=20


--=-NnY7PP2kYYNNjACY7ulI
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4eAngACgkQlfZmHno8
x/6niwf+IPx+6hb5KZBUiJdysfp4ZFwwt6Xf8WdwLblNLxh4s4fFNinSMScIGe/7
dfM3l6wUpLrt+LT3elyfA0hK6qHlvinhXg939aGND4tTulzB5sPd+QgrWn+gO8c1
mxktOwhk0srMcuuDoBpEdfJ4Gro38J7LIznkRtGCiP4seFrOsPIieqvagoq/9blI
Zv9MMZvZiesdxY227Chgc3wjv2zhYD0KQ7c1mt/QwZzWpvXXmK3vh5XuGCMSdH/M
91VoVtpdr3mkWqe2/5lNmf1WdyTpaNKGxbx0g7TI38SGARUZwzF5IMkXiSTysCqt
tVMp2y8t64U6ONH8pvMx5+NXHWeOaw==
=aFRM
-----END PGP SIGNATURE-----

--=-NnY7PP2kYYNNjACY7ulI--



--===============2930830037063846743==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2930830037063846743==--


