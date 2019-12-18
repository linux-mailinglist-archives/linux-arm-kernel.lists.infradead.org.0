Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DD4124FB5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 18:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NwfBnkbTPajaKFU0chcIuxJu8j+OuFsq76zwsDvfqRM=; b=Nxu+ga5J5WkQ4czkij99hioJC
	7CEWAZ8bukxvkcsZxvWkB9hfyVThP80eSW0a9bYdG7qfKnqtgR6RR9K0ZXtcsKy1GWYP8D10K7ug7
	y9Mx2YXNUa3Dc+OygwVe1GVp3iyj2C+iNyXyNqAuWrjw+r8GeuekQ1G6cQuE7a8YPFK2boaPUcv/y
	mLfejLsk+hdgcJIaG2Aa9Z2O3ZgQrNfUis3ku1zMGKVF3jZxyw3PFuo4YDEBiR/WXekF/8YDzRMUK
	nFLEbukR7a3/RvQJHJJyk0sIJPWk5bgUfxIvGpc9mIoFYHSpWRqw4q4HLtlfWsea9e2xqo1vrenbg
	2gls3/Llg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihdU4-0001al-Nh; Wed, 18 Dec 2019 17:51:40 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihdTv-0001aC-S3
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 17:51:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D680EAE87;
 Wed, 18 Dec 2019 17:51:29 +0000 (UTC)
Message-ID: <094cccef1119acc5cfa4a357faaa657e2763f949.camel@suse.de>
Subject: Re: [PATCH] gpu/drm/v3d: Add ARCH_BCM2835 to DRM_V3D Kconfig
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Peter Robinson
 <pbrobinson@gmail.com>, Eric Anholt <eric@anholt.net>, David Airlie
 <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Date: Wed, 18 Dec 2019 18:51:28 +0100
In-Reply-To: <f127b960-e374-ce6f-403a-6f592408f9ee@gmail.com>
References: <20191218084320.312561-1-pbrobinson@gmail.com>
 <78a1badd7c08ca39e7f62c6b66addeb2bf485a1e.camel@suse.de>
 <f127b960-e374-ce6f-403a-6f592408f9ee@gmail.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_095132_052287_1DED8A1C 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============5322383510261665029=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5322383510261665029==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-b3PMjBEpOW5muTZsZat3"


--=-b3PMjBEpOW5muTZsZat3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Florian,

On Wed, 2019-12-18 at 09:39 -0800, Florian Fainelli wrote:
> On 12/18/19 6:39 AM, Nicolas Saenz Julienne wrote:
> > Hi Peter,
> >=20
> > On Wed, 2019-12-18 at 08:43 +0000, Peter Robinson wrote:
> > > On arm64 the config ARCH_BCM doesn't exist so to be able to
> > > build for platforms such as the Raspberry Pi 4 we need to add
> > > ARCH_BCM2835 similar to what has been done on vc4.
> > >=20
> > > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > > ---
> >=20
> > v3d's upstream implementation doesn't support RPi4 for now. So I don't =
see
> > how
> > we could benefit from this.
>=20
> Right, but it should support the Pi3 running in 64-bit mode too, so
> maybe that would be a better justification to put in the commit message?

Correct me if I'm wrong, but this 'v3d' isn't the same as 'vc4_v3d'. From t=
he
initial commit for the driver[1] I understood this is only valid for bcm271=
1.

Regards,
Nicolas

[1] https://lore.kernel.org/lkml/20180430181058.30181-3-eric@anholt.net/


--=-b3PMjBEpOW5muTZsZat3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl36ZyAACgkQlfZmHno8
x/4xkAf/UDRGiJ30rhACo74J/69uUKU3HdQY+mt7WSak8zazigz8E7mHiE/+a058
DIQav2A1IvohO91rz7ahvKBLy99OZaVlRjMJO5O6UKVuln2RGRh8rtXIbb3TdItJ
5mfZ2SVaDbh5UJgH/mrHIa7Ps9iK3OPVvGoFqrKTVCHLlU0fuQvKorQwYpdCBrVN
Q4h44DQ3cuDK+izmb9sJEizoAzQOvX04VepqYAhvMEih0vFka4fZhLM/7I4cv6rg
4f9VwYplwa2TRm/Za47BUlkmwNIjZQGEiQ06X/1hNWs6DyUb1ibzGED26q72jKQq
farrMAw+7mJBi0YIc0qvkHVKoCuReQ==
=HFlQ
-----END PGP SIGNATURE-----

--=-b3PMjBEpOW5muTZsZat3--



--===============5322383510261665029==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5322383510261665029==--


