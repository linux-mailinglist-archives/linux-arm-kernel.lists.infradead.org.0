Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C40BB1740CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 21:16:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fmT1FAO1/qy4WUSqcmEgsSxQ9Xt9+gKZd4EFrOuSPQs=; b=tcr5D0BwfVEjwMXg3JAatEkAT
	LpMvC4l2HxllqhSeITFZxgF+CRSdlPmIWs9ucpZaxO+DN3t+gf9PG8blHyIBS+bT3js46VoKJBIQP
	oiMywSNxnvIp10sEANIhSbcO7MIZag1nT+4JrT9XJeqP2WEUeTEOC1T5cBwgZP9ds1iHaBKWa0F9V
	rse5GOIbajn4Lf0Di5ekCUKS8HIRBQ0NVTr3VKsuAtAKWP/xIKq0gjeXDahIUnzztwcKFIBRK6DYU
	PomXVdZXvPUbHZ/5zPw4wt7/6MF+bF710B6ThGWXRI6ep84WWhBBGIVhE09XbIf8Kf6HkP7JgdRb6
	yY0wOsqZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7m3t-0002py-6J; Fri, 28 Feb 2020 20:16:41 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7m3j-0002pU-C6
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 20:16:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3DC1AAD2D;
 Fri, 28 Feb 2020 20:16:29 +0000 (UTC)
Message-ID: <13501c8a45e8fd8d98d727f036e96c54faa8425a.camel@suse.de>
Subject: Re: cma can't activate area on arm64
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Jonathan Richardson <jonathan.richardson@broadcom.com>, Catalin Marinas
 <catalin.marinas@arm.com>
Date: Fri, 28 Feb 2020 21:16:27 +0100
In-Reply-To: <CAHrpVsXuTEQR7GG6pS4AVjU=ABvmpec7wx3trZuoHz1yf97SVw@mail.gmail.com>
References: <CAHrpVsXay=8q6a9Vee3wnLVAKHdd_c5+miHbvz+1uqJAEoRZ0A@mail.gmail.com>
 <8f82edf2-7313-eb4c-f68e-ff18f7a5e919@suse.cz>
 <20200227174838.GI3281767@arrakis.emea.arm.com>
 <CAHrpVsXuTEQR7GG6pS4AVjU=ABvmpec7wx3trZuoHz1yf97SVw@mail.gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_121631_561288_EAD43A1E 
X-CRM114-Status: GOOD (  15.14  )
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
Cc: linux-mm@kvack.org, akpm@linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Vlastimil Babka <vbabka@suse.cz>
Content-Type: multipart/mixed; boundary="===============4701903208711400572=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4701903208711400572==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-j4PnJMw52ImGgjj+GQ2d"


--=-j4PnJMw52ImGgjj+GQ2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-02-28 at 11:56 -0800, Jonathan Richardson wrote:
> This is stingray (arch/arm64/boot/dts/broadcom/stingray/bcm958742k.dts).
> cma is specified on cmdline as "cma=3D1G". The full boot log was in the
> attachment.

Would you mind attaching it again, I was added to the conversation later.

> > you use a fixed base? Also, do you want the CMA in ZONE_DMA or
> > ZONE_DMA32?
>=20
> I'm not sure which zone we want it in. I'm assuming ZONE_DMA32. Before
> that change there was only one zone. If I disable ZONE_DMA I don't see
> the error, though I haven't tested anything. I don't really understand wh=
y
> ZONE_DMA is enabled by default if it's a requirement for Rpi only.
> I'm assuming it should work as is with both zones enabled but not clear h=
ow
> cma spans the two zones. Was there a reason for having both zones enabled=
 as
> the default?

It's enabled by default to be able to boot all boards with a common kernel
image.

IIRC the allocation algo for CMA placement tries to fit it as high as possi=
ble
in ZONE_DMA32, but I can't really say much more without the logs.

Regards,
Nicolas


--=-j4PnJMw52ImGgjj+GQ2d
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5ZdRsACgkQlfZmHno8
x/6xigf9F1kVCSMUwE/CErW4Luh3bxC2yp8A9QKBkUxBtDECbf0czXadzZOJtdTx
DnoIzxfFtdSw2onToDRRaZFtyBg6ItJWtkukErWYEdkJxeTUde7TPBbM6zhdO99Q
QzW7EaVoLln3Vlpqdf6FY8rq91R9jub//9PD3oHbe+1CrYmeOIcAfFRwfAlKFPu0
91P0EIMUfvxuaZqLu0nYQEB10CYfsl6E+kDeEHM88dNnpkHgPNbO2NBGuNzSeGjN
OUhLV1CXXOwPo2UwFo9VVUVHpBa98csBoj2AZyBEo7Yrhc3Wotph9D5Z3Yy7mt4z
f5AqJAd3fJuhszYSLSrqwRoxoix3Mw==
=XVJ4
-----END PGP SIGNATURE-----

--=-j4PnJMw52ImGgjj+GQ2d--



--===============4701903208711400572==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4701903208711400572==--


