Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D190161C3A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 21:19:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ds0M7GNvMb89xf7GsKLNvRDiSJwm59UYF0L+UCNO00w=; b=sXbH5O2dRqvZHkFWzp+lZrwvi
	CueaVHI3BiAHdc9OSCdj7DlIo0rbL6UXiIP3s0fFH8kxkV+bPhis4kiPu6V9fD9z+GA/EWjEJsKSn
	3RJQ9soPj+hHwgQJvF+lvLZWQCMO0+xuKdFt0znGzEl24OAn7XDHL6IGmpXuaYz/cytGmHxJSpqGy
	8kmkxwv2oHY03QmR2ZRUnr6kqHb+hANKG9nTTo7CoBGf5DLO2YY/oR9ovfNtBy7uodtuVFGQXKmPW
	d7PSkM9JYMHD0jKdtBbD9VonqmyMs1kAqr3bDq7TPMnzHYH83o0BgtF/uxVal0KA1aemYEagjS984
	etDySIfew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3mqr-0007lj-Cv; Mon, 17 Feb 2020 20:18:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3mqj-0007lL-Ba; Mon, 17 Feb 2020 20:18:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AF18BAAC2;
 Mon, 17 Feb 2020 20:18:35 +0000 (UTC)
Message-ID: <5eca1bbe77c8731f1eafd11a3bf0df25196d08d4.camel@suse.de>
Subject: Re: [PATCH] ARM: bcm2835_defconfig: add minimal support for
 Raspberry Pi4
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Marek Szyprowski <m.szyprowski@samsung.com>, Stefan Wahren
 <stefan.wahren@i2se.com>, linux-rpi-kernel@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Mon, 17 Feb 2020 21:18:34 +0100
In-Reply-To: <9330d511-dc7d-8d67-043a-acee7e6ebd73@samsung.com>
References: <CGME20200214151840eucas1p2ccd15a69aea02a20eda1e4b6e9c8f44e@eucas1p2.samsung.com>
 <C0LZGU1IU7QO.9VKWHWJ56XZV@vian>
 <9330d511-dc7d-8d67-043a-acee7e6ebd73@samsung.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_121837_542703_80F32683 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Florian Fainelli <f.fainelli@gmail.com>
Content-Type: multipart/mixed; boundary="===============4905354602875297615=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4905354602875297615==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-J2gniWakOkK7NLSAQW+2"


--=-J2gniWakOkK7NLSAQW+2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

[ Adding Florian to the coversation ]

On Mon, 2020-02-17 at 13:22 +0100, Marek Szyprowski wrote:
> Hi Nicolas,
> On 14.02.2020 16:14, Nicolas Saenz Julienne wrote:
> > IMO bcm2711_defconfig if the last resort solution. I don't think you ca=
n
> > do bcm2835_lpae_defconfig as RPi and RPi2 SoCs don't support LPAE.
>=20
> Okay, if you want I can send a patch adding bcm2711_defconfig.
>=20
> > An intemediate solution is being discussed here:
> > https://lkml.org/lkml/2020/1/10/694
>=20
> Right, I also agree that multi_v7_lpae_defconfig is needed. Best would=
=20
> be to have both (bcm2711 for quick tests of board-dedicated kernel and=
=20
> multi for distributions).

So I understand you'd be creating a new bcm2711_defconfig based on
bcm2835_defconfig plus whatever is needed. Sounds OK to me. It'd be nice to
have a small kernel config to do bisects with.

Any comments Florian, Stefan?

Regards,
Nicolas


--=-J2gniWakOkK7NLSAQW+2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5K9RoACgkQlfZmHno8
x/7+CQgAlX6GuRQwDDhcjqF4J1qacdRU58hzBDuQDgSqKXrWBRseYfz6scxL16e8
gGgBIHtSwkIsqaaJjEp/WYSYikXcQDwCBy7OS3zwe8L3UoYzV5/jJz6QZneFybTd
VKhxnTshUc6sR1KCHdrnHIPLKK1uTAFedr1lNh6hCpGULt/j65fFWYaKCBk/BGq1
hsYNgafWEGpN+EtnNJ0g3BBknUYtEcp8tUh1JpNK1wgYnjFKdgK5voJYwiTbEZXD
3KyWicIpKoPUOza2OWj8desQGizfbmsqPcvcPv9MC9Vgk9Vr0pVBG1AT8t3Pz0oz
zbPKnTOksDehURKeZzFwI5nj5/GPrA==
=1B/n
-----END PGP SIGNATURE-----

--=-J2gniWakOkK7NLSAQW+2--



--===============4905354602875297615==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4905354602875297615==--


