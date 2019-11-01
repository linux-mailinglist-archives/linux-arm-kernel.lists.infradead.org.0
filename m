Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B62A2EBDB0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:12:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1taYnZWf4lEzIuKwolVk2EUDTTEbt/1/BjxK+aWtt8=; b=LWMcHQrzV5a1rV
	YVZwvimVt3gEs9IIsxKLGtsF+FWqA4l5DbN8YSqVINEQKb7iSyzqG9qxnDvEkIu2xLnCS+7BX4jCy
	HCvG6XWwbyu65dljygwiuJnVUqSKYyBqq1sRCbqdUQbfaTTa72ynyhi8luJU9KyxJ/sfA7UI9Ndoa
	P3EZD+PiFq8uib6KuRsdVuVLTX+PxGNhNUAQdB75h2ZeYRaMCynkLOWvUQD6Q/MI0niqyqMLLZXAS
	yY4keTmHkkp1niD9iniwKBFLWh3PMmigVlpHDt7GfnhgvrYw/Ozem6ltnv72Yu7JoFt4JKmaVcz0c
	G40WACwKodpMnRTQhfyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQAT-0006t8-Qu; Fri, 01 Nov 2019 06:12:17 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQAE-0006sm-KB
 for linux-arm-kernel@lists.infradead.orG; Fri, 01 Nov 2019 06:12:04 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iQQA7-0001yS-KT; Fri, 01 Nov 2019 14:11:55 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iQQA6-0004uG-Co; Fri, 01 Nov 2019 14:11:54 +0800
Date: Fri, 1 Nov 2019 14:11:54 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe.montjoie@gmail.com>
Subject: Re: [PATCH v3 0/4] crypto: add sun8i-ss driver for Allwinner
 Security System
Message-ID: <20191101061154.abwwbcqzm6lg7uvi@gondor.apana.org.au>
References: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_231202_811837_AED2D77D 
X-CRM114-Status: GOOD (  13.01  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, linux-crypto@vger.kernel.org,
 p.zabel@pengutronix.de, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 25, 2019 at 08:51:24PM +0200, Corentin Labbe wrote:
> Hello
> 
> This patch serie adds support for the second version of Allwinner Security System.
> The first generation of the Security System is already handled by the sun4i-ss driver.
> Due to major change, the first driver cannot handle the second one.
> This new Security System is present on A80 and A83T SoCs.
> 
> For the moment, the driver support only DES3/AES in ECB/CBC mode.
> Patchs for CTR/CTS, RSA and RNGs will came later.
> 
> This serie is tested with CRYPTO_MANAGER_EXTRA_TESTS
> and tested on:
> sun8i-a83t-bananapi-m3
> sun9i-a80-cubieboard4
> 
> This serie is based on top of the "crypto: add sun8i-ce driver for
> Allwinner crypto engine" serie.
> 
> Regards
> 
> Changes since v2:
> - Made the reset mandatory
> - Removed reset-names
> 
> Changes since v1:
> - fixed uninitialized err in sun8i_ss_allocate_chanlist
> - Added missing commit description on DT Documentation patch
> 
> Corentin Labbe (4):
>   crypto: Add Allwinner sun8i-ss cryptographic offloader
>   dt-bindings: crypto: Add DT bindings documentation for sun8i-ss
>     Security System
>   ARM: dts: sun8i: a83t: Add Security System node
>   ARM: dts: sun9i: a80: Add Security System node
> 
>  .../bindings/crypto/allwinner,sun8i-ss.yaml   |  61 ++
>  arch/arm/boot/dts/sun8i-a83t.dtsi             |   9 +
>  arch/arm/boot/dts/sun9i-a80.dtsi              |   9 +
>  drivers/crypto/allwinner/Kconfig              |  28 +
>  drivers/crypto/allwinner/Makefile             |   1 +
>  drivers/crypto/allwinner/sun8i-ss/Makefile    |   2 +
>  .../allwinner/sun8i-ss/sun8i-ss-cipher.c      | 438 ++++++++++++
>  .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 642 ++++++++++++++++++
>  drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  | 218 ++++++
>  9 files changed, 1408 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
>  create mode 100644 drivers/crypto/allwinner/sun8i-ss/Makefile
>  create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
>  create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
>  create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h

Patches 1,2 applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
