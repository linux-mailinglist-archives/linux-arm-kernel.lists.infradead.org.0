Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D08C195623
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:18:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qR/7j6JLg80ew/4mO5CFe7ndyREMqJKLwHDnUXmNH5I=; b=nwakTgFdWlxd80h2ythZ9VdiL
	lUX90ErN0NZ92OruNylUJegNJMSJCrV4BYFcZrvNREMLWagfW2REoMFzWLS0PqY9nv6We+3ZNrxsI
	jRIrrFbRIH4Wc1kqkmEVTOHKl0vhb4TaaNFXTbePGhMrZ6M6BBlM3yvKG2htXxecDUEX74Pq7Ajuo
	yXaaIj4sxe1uxWlP8LL+k5fiAcywYRrDtATpZVdr62+gqsIhrhc3r2vFSVPRV2qKRrVdqIZ+vuXPd
	+b2h1YjuLO7S5eV2ztLZAsToMjZlR1tZ9U6Fkv2XW7AoTKiqTk9uk3UIFqiDdhjvHXs4e+pKXmnJq
	yM9qSbmbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHn07-0007Bk-Sm; Fri, 27 Mar 2020 11:18:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmzy-0007BC-Pg
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:18:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3DA58AED2;
 Fri, 27 Mar 2020 11:18:01 +0000 (UTC)
Message-ID: <41607c9fc20afc6554d697daa7782de1e3281db7.camel@suse.de>
Subject: Re: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without
 EXPERT
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Peng Fan <peng.fan@nxp.com>, Catalin Marinas <catalin.marinas@arm.com>
Date: Fri, 27 Mar 2020 12:17:59 +0100
In-Reply-To: <AM0PR04MB4481C3A233AB455BDC68736288CE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1583844526-24229-1-git-send-email-peng.fan@nxp.com>
 <20200324174134.GH3901@mbp>
 <AM0PR04MB44819E95EB1FABF09DEE682788CE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <20200325101652.GJ3901@mbp>
 <AM0PR04MB4481C3A233AB455BDC68736288CE0@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_041803_125158_6092546A 
X-CRM114-Status: GOOD (  23.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Robin Murphy <robin.murphy@arm.com>, "will@kernel.org" <will@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: multipart/mixed; boundary="===============2379810287378372956=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2379810287378372956==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-gybhYNbk/O36qUlXjYkF"


--=-gybhYNbk/O36qUlXjYkF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Peng,

On Wed, 2020-03-25 at 12:30 +0000, Peng Fan wrote:
> > > > I see a few potential options:
> > > >=20
> > > > a) Ensure the CMA is contained within a single zone.
> > >=20
> > > This will break legacy dts with new version kernel.
> > >=20
> > > > How large is it in your case?
> > >=20
> > > It is 1GB
> > >=20
> > > > Is it allocated by the kernel dynamically or a fixed start set by
> > > > the boot loader?
> > >=20
> > > We use alloc-ranges and size in kernel dts.
> > >=20
> > > But there is only 2GB DRAM in the board.
> >=20
> > So I guess without changing the dts, option (a) doesn't really work.
> >=20
> > > > b) Change the CMA allocator to allow spanning multiple zones (last =
time
> > > >    I looked it wasn't trivial since it relied on some per-zone lock=
).

I like this as a solution, ultimately why should CMA be linked to a specifi=
c
zone. Also, crossing the ZONE_DMA/ZONE_DMA32 boundary shouldn't be an issue
since we already default to ZONE_DMA32 as the default area for CMA.

That said, easier said than done.

> > > > c) Make ZONE_DMA dynamic on arm64 and only enable it if RPi4.
> > >=20
> > > Option c seems a bit easier to me :)
> > >=20
> > > I will try to explore both, but if you have time to help, that would
> > > be appreciated.
> >=20
> > I don't have time but option (c) was already discussed and there are pa=
tches
> > from Nicolas on the list:
> >=20
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e.ke
> > rnel.org%2Flinux-arm-kernel%2F20190820145821.27214-5-nsaenzjulienne%
> > 40suse.de%2F&amp;data=3D02%7C01%7Cpeng.fan%40nxp.com%7C6403ddf37
> > 89b452ae5ee08d7d0a5a659%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0
> > %7C0%7C637207282191026738&amp;sdata=3Dt2cZ9HTCcRuaL9RO4kD%2BzN
> > 2n4VqM%2F66zYNZIOComCVs%3D&amp;reserved=3D0
> >=20
> > The above series was checking whether the platform is RPi4 and limiting=
 the
> > ZONE_DMA size to 1GB (otherwise 4GB with ZONE_DMA32 empty). We
> > ended up with a static 1GB for ZONE_DMA but we missed the fact that it =
may
> > break existing platforms.
>=20
> Thanks for the information. I'll check the patchset and work out somethin=
g
> proper to fix the issue I met.

Just an FYI, I'm follwing the conversation, and will try to look into as so=
on
as I get some free time. In the meantime if you want me to test/review anyt=
hing
on the Raspberry Pi, I'll be happy to.

Regards,
Nicolas


--=-gybhYNbk/O36qUlXjYkF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl594OcACgkQlfZmHno8
x/7e1gf/UtbHfYf9EO36liu7HDv+5r0zCa19nQ64rn/FN46GJbl++HyRBerEwig7
L8pNRHFamul6BolfWHLJE1e4gSBAOlt5oJph7vK0/cGXoownZHGfjy4ygBgbj2Zc
Tf8YTBV1bTWWSPEjsdBbjNUMrxqtVkr+13NXs5yb4hxnKX7OAFf9YLyNOiTSk3yU
XgMIgwWuMQZ8FR290WAghA/wmBUfTEVJJ/rbi34xlQnBGaUZpwqR87SE/hGoNpoW
qv4kci3ttdJ3yX7IvTqnsYEJ7ThMbYmhwH8Tk7tuKi2C/zqTpzgajvfDtA6MDMCN
87b41meteMRHPKf+eqhUU2s+meQCYA==
=hASN
-----END PGP SIGNATURE-----

--=-gybhYNbk/O36qUlXjYkF--



--===============2379810287378372956==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2379810287378372956==--


