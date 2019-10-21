Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C20A1DF493
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 19:55:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=06bFG43kcHWWsPQk0+97WfRntpDZKCR/F3vLB6dPyhg=; b=Ge4jnR03IwsDd7tDmfZjieYDP
	cVaD8bnTTBCJzQrdlyfAjq/VMYIhXZmBzV9wGYU7D/CZ8iYbz4qllzZ5TWrMA13uNa/NHo/+G6O4s
	1KfwROrLkCDYn8xP8Mn+FcJ/J5m3xelSFeGhakZQEfn0ZGdOGcFMKeJI/lT8TReR2/Iyo3WAun0SI
	VvlF08+2lNnKtiEIqx/kywkbdFif7ErjQLpfKij/Qq+v2F0iSJ5788E7L5FbSW7C9oeiiOR+DoueJ
	z3CCRpjD0jKbPntQ+onahwmBBbdRb0NXEvYXr7KGZuSzd27nM2/Am9Cuv7ExjNykv1RbtVSg5zRbi
	EbZ/3t6oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMbu8-0001fJ-FZ; Mon, 21 Oct 2019 17:55:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMbtw-0001ZL-S1; Mon, 21 Oct 2019 17:55:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0BA09AC40;
 Mon, 21 Oct 2019 17:55:27 +0000 (UTC)
Message-ID: <9208de061fe2b9ee7b74206b3cd52cc116e43ac0.camel@suse.de>
Subject: Re: [PATCH v6 3/4] arm64: use both ZONE_DMA and ZONE_DMA32
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Qian Cai <cai@lca.pw>
Date: Mon, 21 Oct 2019 19:55:25 +0200
In-Reply-To: <A1A8EEF0-2273-4338-B4D8-D9B1328484B4@lca.pw>
References: <6703f8dab4a21fe4e1049f8f224502e1733bf72c.camel@suse.de>
 <A1A8EEF0-2273-4338-B4D8-D9B1328484B4@lca.pw>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_105529_051782_B49EDCFB 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, will@kernel.org, marc.zyngier@arm.com,
 catalin.marinas@arm.com, wahrenst@gmx.net, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mm@kvack.org, mbrugger@suse.com,
 linux-rpi-kernel@lists.infradead.org, phill@raspberrypi.org,
 Robin Murphy <Robin.Murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: multipart/mixed; boundary="===============0401666714779585556=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0401666714779585556==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-HpXuUqy8wDt6AUMeP1G+"


--=-HpXuUqy8wDt6AUMeP1G+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-10-21 at 13:25 -0400, Qian Cai wrote:
> > On Oct 21, 2019, at 1:01 PM, Nicolas Saenz Julienne <nsaenzjulienne@sus=
e.de>
> > wrote:
> >=20
> > Could you enable CMA debugging to see if anything interesting comes out=
 of
> > it.
>=20
> I did but nothing interesting came out. Did you use the same config I gav=
e?

Yes, aside from enabling ZONE_DMA.

> Also, it has those cmdline.
>
> page_poison=3Don page_owner=3Don numa_balancing=3Denable \
> systemd.unified_cgroup_hierarchy=3D1 debug_guardpage_minorder=3D1 \
> page_alloc.shuffle=3D1

No luck, still works for me even after adding those extra flags. IIRC most =
of
them (if not all) are not even parsed by the time CMA is configured.

So, can you confirm the zones setup you're seeing is similar to this one:

[    0.000000][    T0] Zone ranges:
[    0.000000][    T0]   DMA      [mem 0x00000000802f0000-0x00000000bffffff=
f]
[    0.000000][    T0]   DMA32    [mem 0x00000000c0000000-0x00000000fffffff=
f]
[    0.000000][    T0]   Normal   [mem 0x0000000100000000-0x00000093fcfffff=
f]

Maybe your memory starts between 0xe0000000-0xffffffff. That would be
problematic (although somewhat unwarranted).

Regards,
Nicolas


--=-HpXuUqy8wDt6AUMeP1G+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2t8Q0ACgkQlfZmHno8
x/6stwf9HqWsWOip+MXq4sVWh+Y20OExIRxrBFOULlN6U/sctaP4D865ew+u+Q+w
+W9JEpEC77RF5P5lrvYt+TgLFjggGREe7qZhjsfVNQBXUvrwsO5m842eoP852h6e
japrXbQa51kSW5bdKgwSpi8+ZWw39O0IGNO/+kbts8eesc3IVbWYXOZ7lz0MIn44
OxocoMYDmWtCSR459p3O980E8KUzkyJD/4R9cGGfkO66RCPXaDy2pb2e2YD0mYL3
ArxUeTX2rLCjQcC7qGKFnCs/i50c5oRfdX25MZmn8t+c8ZNy0s8RuSvVR0uYj/HB
4t43gk/N8RDsPoNRxMFiDbJ3c0mbXA==
=LNBk
-----END PGP SIGNATURE-----

--=-HpXuUqy8wDt6AUMeP1G+--



--===============0401666714779585556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0401666714779585556==--


