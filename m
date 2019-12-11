Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D088C11A73E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:34:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QpgULJdM0Ea6nypsTsPt9FqFJ6H0VLYE6EOczy8LkLs=; b=Jkdt0IFHlEE4Jv
	THHVwIgyd3HEQKIuhFPfWFM5wJRfCHv49ym5et0tITj34hHfCuvSdAleLqayBU1PcRZlmd7co1WRl
	27/E9zL4giOeupC8F30ObvqWplcnNMAOU8v/ZJzjMkZabxyONplZNrer4o6ih4/tw/N5HJzCMUjTF
	e3It8yIR0O0bDu6RMk7XkxwjzWTd+grJ5QcYq0EBkcpNaEqCe+hjwScUeUbidtxeOlUdlrpOQZ46k
	BZvOUyyA0Jyldw50YDt0ZRgk/gzLO5FNhzL+U1s1IcOMafcCAIxJ9HI9+Cydk/K908SNpGzJqH17x
	Dp/quUCICzIcJKMcvazA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyNw-0004HK-LT; Wed, 11 Dec 2019 09:34:20 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyNY-0004FU-SA; Wed, 11 Dec 2019 09:34:06 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1ieyNF-0008KJ-G0; Wed, 11 Dec 2019 17:33:37 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1ieyN8-0000Aw-DU; Wed, 11 Dec 2019 17:33:30 +0800
Date: Wed, 11 Dec 2019 17:33:30 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Stephen Brennan <stephen@brennan.io>
Subject: Re: [PATCH v2 0/3] Raspberry Pi 4 HWRNG Support
Message-ID: <20191211093330.h5qz4oyll3jsuqot@gondor.apana.org.au>
References: <20191119061407.69911-1-stephen@brennan.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191119061407.69911-1-stephen@brennan.io>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_013359_593742_AFCFC79C 
X-CRM114-Status: GOOD (  15.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 linux-rpi-kernel@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ray Jui <rjui@broadcom.com>,
 linux-kernel@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Stefan Wahren <wahrenst@gmx.net>, Matt Mackall <mpm@selenic.com>,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Nov 18, 2019 at 10:14:04PM -0800, Stephen Brennan wrote:
> This patch series enables support for the HWRNG included on the Raspberry
> Pi 4.  It is simply a rebase of Stefan's branch [1]. I went ahead and
> tested this out on a Pi 4.  Prior to this patch series, attempting to use
> the hwrng gives:
> 
>     $ head -c 2 /dev/hwrng
>     head: /dev/hwrng: Input/output error
> 
> After this series, the same command gives two random bytes.
> 
> Changes in v2:
> - specify the correct size for the region in the dts, refactor bcm283x rng
> 
> ---
> 
> Stefan Wahren (2):
>   dt-bindings: rng: add BCM2711 RNG compatible
>   hwrng: iproc-rng200: Add support for BCM2711
> 
> Stephen Brennan (1):
>   ARM: dts: bcm2711: Enable HWRNG support
> 
>  .../devicetree/bindings/rng/brcm,iproc-rng200.txt     |  1 +
>  arch/arm/boot/dts/bcm2711.dtsi                        |  6 +++---
>  arch/arm/boot/dts/bcm2835.dtsi                        |  1 +
>  arch/arm/boot/dts/bcm2836.dtsi                        |  1 +
>  arch/arm/boot/dts/bcm2837.dtsi                        |  1 +
>  arch/arm/boot/dts/bcm283x-common.dtsi                 | 11 +++++++++++
>  arch/arm/boot/dts/bcm283x.dtsi                        |  6 ------
>  drivers/char/hw_random/Kconfig                        |  2 +-
>  drivers/char/hw_random/iproc-rng200.c                 |  1 +
>  9 files changed, 20 insertions(+), 10 deletions(-)
>  create mode 100644 arch/arm/boot/dts/bcm283x-common.dtsi

Patches 1-2 applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
