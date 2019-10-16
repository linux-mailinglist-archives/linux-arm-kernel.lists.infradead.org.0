Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD22D951E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 17:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=li5vDgNCAYg3IAllAv04O4MOcqjXgdz6BvqlRIs2oL4=; b=eMmW/Su8/rktb3senJ7vNZrbE
	PUIOAC4K1oc23vRtdaw7VVvLOTu6EhoAJt/mJczzhsCz8yodf5H6jqktr7PAakhTsnSg2ysjtZeRY
	kX+/5/5CeRdCFutJmBELzxZdL7wyq2//HZ5BiQq95HgiqbuvdJJXvukXvukCElDFTEgNXcQ2taJfl
	DQP7paAZ0vjplzaWC89LqyS5ePKxkFru37xlWnk46U+50neakhZrKajvmbnY7Ei+lpEHUz0WnyuCQ
	WI7YjXONJRzZPuY+6dgdeZc2tDvwHIusPWeRAFj3uQ9sXYzm1xT6Cuyl6bSZrR2Zjv03NbC04QRM+
	RjEw4/33w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKkwS-0007yp-5D; Wed, 16 Oct 2019 15:10:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKkvf-0007VT-I7
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 15:09:37 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 5A413B41A;
 Wed, 16 Oct 2019 15:09:32 +0000 (UTC)
Message-ID: <83c223c14c55aff1c8c9b30b0760c7e13c928209.camel@suse.de>
Subject: Re: [PATCH -next v3] arm64: mm: Fix unused variable warning in
 zone_sizes_init
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Catalin Marinas <catalin.marinas@arm.com>, Nathan Chancellor
 <natechancellor@gmail.com>
Date: Wed, 16 Oct 2019 17:09:30 +0200
In-Reply-To: <20191016150846.GO49619@arrakis.emea.arm.com>
References: <20191016031107.30045-1-natechancellor@gmail.com>
 <20191016144713.23792-1-natechancellor@gmail.com>
 <20191016150846.GO49619@arrakis.emea.arm.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_080935_913533_44A577DE 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
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
Cc: Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0538727281726772928=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0538727281726772928==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-pTKSzfeo3TsXii9om14o"


--=-pTKSzfeo3TsXii9om14o
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-10-16 at 16:08 +0100, Catalin Marinas wrote:
> On Wed, Oct 16, 2019 at 07:47:14AM -0700, Nathan Chancellor wrote:
> > When building arm64 allnoconfig, CONFIG_ZONE_DMA and CONFIG_ZONE_DMA32
> > get disabled so there is a warning about max_dma being unused.
> >=20
> > ../arch/arm64/mm/init.c:215:16: warning: unused variable 'max_dma'
> > [-Wunused-variable]
> >         unsigned long max_dma =3D min;
> >                       ^
> > 1 warning generated.
> >=20
> > Add __maybe_unused to make this clear to the compiler.
> >=20
> > Fixes: 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
>=20
> Thanks. Queued on top of Nicolas' patches for 5.5. I also added Nicolas'
> reviewed-by from v2 as I suspect it still stands.

Yes, thanks!


--=-pTKSzfeo3TsXii9om14o
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2nMqoACgkQlfZmHno8
x/4Qowf+KTCudWRBpmrj4nqdjIh9c68rkqpBSsotdsFpXG/8fgt2MYgIFeKjdnnz
vGK0iAFugF2h6LLKPrx1cUakT9uKC1UeUdyJjGlgfk5dt70XRtsUg8hLQO/tpCCa
Kn9KtfenH9FZ7MgSOFvxVD4HeN5P65zdGGTPi9g0HFSdPdGiUuLBWKhN2p9RhJL9
d+pv7fBHFBWgOZSgeg+P6Kjeb1vlUoiLJXiLcs/5SmOzQTCILFOzGT47KUelDwCi
aE5VOr72KYslTJxxxsVew1ayl1sdlyhDXyryTBgi7rREPiGxGIxDdB/bBmG7L6KR
9++SMdguf4kZZqZ+Zed5EPkBKdai3w==
=oxCW
-----END PGP SIGNATURE-----

--=-pTKSzfeo3TsXii9om14o--



--===============0538727281726772928==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0538727281726772928==--


