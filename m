Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6F97319A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 16:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dgrG6o9QwTmPPcARUFtaN0Sy7a+Wrqqm5io2HYhKTwQ=; b=d5+W1Yg0Je4SAadcdL5A78NWs
	Fkv+iAojRRyFcvRyRSjc7A/Dqe5/taFBksJ6XcMwLYYiFl4F219A5SEfYRgjAWm5/CPGzxfY/CLpp
	V3U/469uUpKS9WI4YsyMuOWxe9EHkNKyknNh0TlQemA/VIEtiEzVFEXRK3BQm9iwJj0S2kCTkqScJ
	7k0vAtqgJOgTcf+GbM6EsFtY3R/AnHSWwUPESUsae9jn6zTx6byA3K7ZDSGGP1Cru6RgJwgCUPbND
	QlY+fouoitJ8HQ81i9dlpCC1OH7fmpPRx5vicDis5/bN0TprtljvnKEUQVS+dXKMtWWayKTvtr2av
	vkRX6pH1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqIFW-00032f-2Y; Wed, 24 Jul 2019 14:28:10 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqIFM-00031k-AD
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 14:28:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1A8E9AE44;
 Wed, 24 Jul 2019 14:27:57 +0000 (UTC)
Message-ID: <3a2f952e090d972b33f62592b12399f9ef3b0513.camel@suse.de>
Subject: Re: [RFC 3/4] dma-direct: add dma_direct_min_mask
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Christoph Hellwig <hch@lst.de>, Catalin Marinas <catalin.marinas@arm.com>
Date: Wed, 24 Jul 2019 16:27:55 +0200
In-Reply-To: <20190724135657.GA9075@lst.de>
References: <20190717153135.15507-1-nsaenzjulienne@suse.de>
 <20190717153135.15507-4-nsaenzjulienne@suse.de>
 <20190718091526.GA25321@lst.de>
 <13dd1a4f33fcf814545f0d93f18429e853de9eaf.camel@suse.de>
 <58753252bd7964e3b9e9558b633bd325c4a898a1.camel@suse.de>
 <20190724135124.GA44864@arrakis.emea.arm.com>
 <20190724135657.GA9075@lst.de>
User-Agent: Evolution 3.32.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_072800_501017_3280BB45 
X-CRM114-Status: GOOD (  14.36  )
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
Cc: stefan.wahren@i2se.com, Jisheng.Zhang@synaptics.com, f.fainelli@gmail.com,
 will@kernel.org, phil@raspberrypi.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, mbrugger@suse.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============4259442342038769723=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4259442342038769723==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-m+/FyWNmUHFI+YRB/Gte"


--=-m+/FyWNmUHFI+YRB/Gte
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-07-24 at 15:56 +0200, Christoph Hellwig wrote:
> On Wed, Jul 24, 2019 at 02:51:24PM +0100, Catalin Marinas wrote:
> > I think it may be better if we have both ZONE_DMA and ZONE_DMA32 on
> > arm64. ZONE_DMA would be based on the smallest dma-ranges as described
> > in the DT while DMA32 covers the first naturally aligned 4GB of RAM
> > (unchanged). When a smaller ZONE_DMA is not needed, it could be expande=
d
> > to cover what would normally be ZONE_DMA32 (or could we have ZONE_DMA a=
s
> > 0-bytes? I don't think GFP_DMA can still allocate memory in this case).
> >=20
> > We'd probably have to define ARCH_ZONE_DMA_BITS for arm64 to something
> > smaller than 32-bit but sufficient to cover the known platforms like
> > RPi4 (the current 24 is too small, so maybe 30). AFAICT,
> > __dma_direct_optimal_gfp_mask() figures out whether GFP_DMA or GFP_DMA3=
2
> > should be passed.
>=20
> ARCH_ZONE_DMA_BITS should probably become a variable.  That way we can
> just initialize it to the default 24 bits in kernel/dma/direct.c and
> allow architectures to override it in their early boot code.

Thanks both for your feedback. I'll start preparing a proper series.


--=-m+/FyWNmUHFI+YRB/Gte
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl04ausACgkQlfZmHno8
x/5nVAf/bB5PkXsWGRSrKIKToRRuuBU3F3Qkczzlf22bZ/BWtFMeSNlTL1Fz2BXY
fntHM/mLq5eBmbhnOMljQi4PSaNXX09olyWxJl4W6kJuDNyoAQ4+ncqWubT9Sevw
Kz7S8rqShYPxZT5vdNUHg/11Clx5lB1FkgmErz+Gc5qUunLClW66KuhTy6pls4vt
Odp5uE2S6j/YXpM1osSK7Ty3psAoyJ8QEGSlDiFFi4Zx69ycqmiKitmWYaAHCLu5
9a/KvFdyeE8UrF5sALymEDQr/G3V+G3AUtbI+xqsmTacUpCJYMhMJr2xtb3sWb5L
+UzW6OpVwWRETgf1XlNpbiIHOrAKKA==
=Tmgu
-----END PGP SIGNATURE-----

--=-m+/FyWNmUHFI+YRB/Gte--



--===============4259442342038769723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4259442342038769723==--


