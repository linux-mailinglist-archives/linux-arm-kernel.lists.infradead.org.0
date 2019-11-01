Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAE2EBDA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:10:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wINrY6olFZuS8sbIiPp9OUdzR3DfSgb2Ch/jQsX51CM=; b=EcTlLXeFLNzBQM
	U04kco7X/O2kmKIxVELbS9KEargIRiacZYEfl+DoX5nhSRkZAJUgncuEKMUVzXYpx3PcMTUMSX5Sa
	jmLQLEPchcwTR6ycGY1BIfhxtm9ejcfwC8jw/AFweJvQPkCJLp4MwBhTdXlfavj7UTp1ljzGwF7pv
	rjTyTw/5VSancAZZtdufTBq1N39yhnt2mIJj4Pt5F1TKSQhMfq8YhzlqbHZFcX14q+qltRIFLZRkI
	P1n9/8CPhqtrWwXvDKxAoUwyG0nS1YM77CK7HuuQQsD+EVd6mgguKZDyID+mw+uk3IXvbG7YsmdYT
	g4/jmU3kdOYica0O4h/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ8V-0004qw-5o; Fri, 01 Nov 2019 06:10:15 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ7n-0004Zn-IW
 for linux-arm-kernel@lists.infradead.orG; Fri, 01 Nov 2019 06:09:34 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iQQ7Z-0001wo-Dp; Fri, 01 Nov 2019 14:09:17 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iQQ7W-0004s8-A2; Fri, 01 Nov 2019 14:09:14 +0800
Date: Fri, 1 Nov 2019 14:09:14 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v6 00/11] crypto: add sun8i-ce driver for Allwinner
 crypto engine
Message-ID: <20191101060914.sv7g5ipygagzz4ed@gondor.apana.org.au>
References: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230931_984628_A2BAE559 
X-CRM114-Status: GOOD (  15.67  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, catalin.marinas@arm.com,
 linux-sunxi@googlegroups.com, linux@armlinux.org.uk, mripard@kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, will@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 10:05:02PM +0200, Corentin Labbe wrote:
> Hello
> 
> This patch serie adds support for the Allwinner crypto engine.
> The Crypto Engine is the third generation of Allwinner cryptogaphic offloader.
> The first generation is the Security System already handled by the
> sun4i-ss driver.
> The second is named also Security System and is present on A80 and A83T
> SoCs, originaly this driver supported it also, but supporting both IP bringing
> too much complexity and another driver (sun8i-ss) will came for it.
> 
> For the moment, the driver support only DES3/AES in ECB/CBC mode.
> Patchs for CTR/CTS/XTS, RSA and RNGs will came later.
> 
> This serie is tested with CRYPTO_MANAGER_EXTRA_TESTS
> and tested on:
> sun50i-a64-bananapi-m64
> sun50i-a64-pine64-plus
> sun50i-h5-libretech-all-h3-cc
> sun50i-h6-pine-h64
> sun8i-h2-plus-libretech-all-h3-cc
> sun8i-h2-plus-orangepi-r1
> sun8i-h2-plus-orangepi-zero
> sun8i-h3-libretech-all-h3-cc
> sun8i-h3-orangepi-pc
> sun8i-r40-bananapi-m2-ultra
> 
> DT and defconfig will go thru the mripard tree
> 
> Regards
> 
> Changes since v5:
> - fixed uninitialized err in sun8i_ce_allocate_chanlist (reported by lkp@intel.com/dan.carpenter@oracle.com)
> 
> Changes since v4:
> - fixed some typos in kconfig
> - made sun8i_ce_pm_ops static
> - Use devm_platform_ioremap_resource
> 
> Changes since v3:
> - removed need of reset-names
> - made reset mandatory
> 
> Changes since v2:
> - changed additionalproperties
> - splited fallbacks functions out of sun8i_ce_cipher()
> - changed variant "model" to "has_t_dlen_in_bytes"
> - splited sun8i_ce_register_algs/sun8i_ce_get_clks out of sun8i_ce_probe()
> 
> Changes since v1:
> - Add sun4i-ss to allwinner directory
> - Cleaned variant structure
> - Renamed clock name from ahb to bus (and mbus to ram)
> - Fixed DT bindings problem reported by mripard
> - Cleaned unneeded status = ""  in R40 DT
> - Removed old unnecessary interrupt_names in A64 DT
> - Added arm64 defconfig
> - Added support for PM functions
> - Splitted probe functions
> - Reworked clock settings
> - made reset mandatory
> 
> Corentin Labbe (11):
>   crypto: Add allwinner subdirectory
>   crypto: Add Allwinner sun8i-ce Crypto Engine
>   dt-bindings: crypto: Add DT bindings documentation for sun8i-ce Crypto
>     Engine
>   ARM: dts: sun8i: R40: add crypto engine node
>   ARM: dts: sun8i: H3: Add Crypto Engine node
>   ARM64: dts: allwinner: sun50i: Add Crypto Engine node on A64
>   ARM64: dts: allwinner: sun50i: Add crypto engine node on H5
>   ARM64: dts: allwinner: sun50i: Add Crypto Engine node on H6
>   sunxi_defconfig: add new Allwinner crypto options
>   arm64: defconfig: add new Allwinner crypto options
>   crypto: sun4i-ss: Move to Allwinner directory
> 
>  .../bindings/crypto/allwinner,sun8i-ce.yaml   |  88 +++
>  MAINTAINERS                                   |   4 +-
>  arch/arm/boot/dts/sun8i-h3.dtsi               |   9 +
>  arch/arm/boot/dts/sun8i-r40.dtsi              |   9 +
>  arch/arm/configs/sunxi_defconfig              |   2 +
>  arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   9 +
>  arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |   9 +
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |   9 +
>  arch/arm64/configs/defconfig                  |   2 +
>  drivers/crypto/Kconfig                        |  28 +-
>  drivers/crypto/Makefile                       |   2 +-
>  drivers/crypto/allwinner/Kconfig              |  60 ++
>  drivers/crypto/allwinner/Makefile             |   2 +
>  .../{sunxi-ss => allwinner/sun4i-ss}/Makefile |   0
>  .../sun4i-ss}/sun4i-ss-cipher.c               |   0
>  .../sun4i-ss}/sun4i-ss-core.c                 |   0
>  .../sun4i-ss}/sun4i-ss-hash.c                 |   0
>  .../sun4i-ss}/sun4i-ss-prng.c                 |   0
>  .../sun4i-ss}/sun4i-ss.h                      |   0
>  drivers/crypto/allwinner/sun8i-ce/Makefile    |   2 +
>  .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 434 +++++++++++
>  .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 676 ++++++++++++++++++
>  drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 254 +++++++
>  23 files changed, 1570 insertions(+), 29 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
>  create mode 100644 drivers/crypto/allwinner/Kconfig
>  create mode 100644 drivers/crypto/allwinner/Makefile
>  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/Makefile (100%)
>  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-cipher.c (100%)
>  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-core.c (100%)
>  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-hash.c (100%)
>  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-prng.c (100%)
>  rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss.h (100%)
>  create mode 100644 drivers/crypto/allwinner/sun8i-ce/Makefile
>  create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
>  create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
>  create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h

Patches 1,2,11 applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
