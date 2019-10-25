Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E4F1E5001
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 17:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zgh0mHext45z3wx8s1Upm8mNdYgqmKeM5SFoy14XRmA=; b=eD0bxVOcDeqvXa
	carbPZN1tJjR2zS62XENVzWSZQ+tIGFexhkvjxK2sQZ7hJwbK5y9PL+149g5xUTA6eJgs5BSjmA1o
	Mtu4AGJIu37Ko6Q7sObqToMx2yI7e/I7oE0WOYwjtbok76eCIbbfNzej79P/wmUzqM57ZhnUdbOvC
	6aIALVwrpZgqAorY4RQn7eyshqZH+WjMe/03kIjaD0esEk6c0gjpKltfs+7EEMX7mtUaD6R73KGQa
	ZIAE/KH174AdIf6KOd0xS367APbredN2jGeecd/Lkmg68S2aKi4Qj0HUsec7C2x1OmVz+RzIbUwID
	6jgkYbR2+//WHdsuJM4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO1Ov-0006KU-BH; Fri, 25 Oct 2019 15:21:17 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1Oi-0006JC-10; Fri, 25 Oct 2019 15:21:05 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iO1OE-0001hu-6D; Fri, 25 Oct 2019 23:20:34 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iO1O5-0007pN-BO; Fri, 25 Oct 2019 23:20:25 +0800
Date: Fri, 25 Oct 2019 23:20:25 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 00/13] hwrng: use devm_platform_ioremap_resource()
 to simplify code
Message-ID: <20191025152025.qudqaupecsgwkn32@gondor.apana.org.au>
References: <20191016104621.26056-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016104621.26056-1-yuehaibing@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_082104_287428_1DC03C74 
X-CRM114-Status: UNSURE (   5.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: alexandre.belloni@bootlin.com, eric@anholt.net, f.fainelli@gmail.com,
 khilman@baylibre.com, krzk@kernel.org, ludovic.desroches@microchip.com,
 kgene@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-crypto@vger.kernel.org, dsaxena@plexity.net, arnd@arndb.de,
 rjui@broadcom.com, l.stelmach@samsung.com, linux-samsung-soc@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, mpm@selenic.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 sbranden@broadcom.com, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, patrice.chotard@st.com, wahrenst@gmx.net,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 06:46:08PM +0800, YueHaibing wrote:
> devm_platform_ioremap_resource() internally have platform_get_resource()
> and devm_ioremap_resource() in it. So instead of calling them separately
> use devm_platform_ioremap_resource() directly.
> 
> YueHaibing (13):
>   hwrng: atmel - use devm_platform_ioremap_resource() to simplify code
>   hwrng: bcm2835 - use devm_platform_ioremap_resource() to simplify code
>   hwrng: exynos - use devm_platform_ioremap_resource() to simplify code
>   hwrng: hisi - use devm_platform_ioremap_resource() to simplify code
>   hwrng: ks-sa - use devm_platform_ioremap_resource() to simplify code
>   hwrng: meson - use devm_platform_ioremap_resource() to simplify code
>   hwrng: npcm - use devm_platform_ioremap_resource() to simplify code
>   hwrng: omap - use devm_platform_ioremap_resource() to simplify code
>   hwrng: pasemi - use devm_platform_ioremap_resource() to simplify code
>   hwrng: pic32 - use devm_platform_ioremap_resource() to simplify code
>   hwrng: st - use devm_platform_ioremap_resource() to simplify code
>   hwrng: tx4939 - use devm_platform_ioremap_resource() to simplify code
>   hwrng: xgene - use devm_platform_ioremap_resource() to simplify code
> 
>  drivers/char/hw_random/atmel-rng.c   | 4 +---
>  drivers/char/hw_random/bcm2835-rng.c | 5 +----
>  drivers/char/hw_random/exynos-trng.c | 4 +---
>  drivers/char/hw_random/hisi-rng.c    | 4 +---
>  drivers/char/hw_random/ks-sa-rng.c   | 4 +---
>  drivers/char/hw_random/meson-rng.c   | 4 +---
>  drivers/char/hw_random/npcm-rng.c    | 4 +---
>  drivers/char/hw_random/omap-rng.c    | 4 +---
>  drivers/char/hw_random/pasemi-rng.c  | 4 +---
>  drivers/char/hw_random/pic32-rng.c   | 4 +---
>  drivers/char/hw_random/st-rng.c      | 4 +---
>  drivers/char/hw_random/tx4939-rng.c  | 4 +---
>  drivers/char/hw_random/xgene-rng.c   | 4 +---
>  13 files changed, 13 insertions(+), 40 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
