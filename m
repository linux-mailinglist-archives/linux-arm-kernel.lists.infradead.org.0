Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124D9E5010
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 17:25:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g+H759c5ZceZnlzGS/GsDeaK0N5lNrxCkB+qsrut2lc=; b=IEsWmqvGmRnYc6
	Mh/rLKkeKV3ycgcLTO9ax2VbyanTIIG66v7ulmTnJb20f4aNi7dxXdh3ONkjDrUbxACK1QkcTVpOv
	XRghr6//MF9hzOJjuVuMOCA41T+U8+5i3DhQRAgp3RUdjOPnLhHdTDoqO+TpS7chLYhBM8Z2vPdWx
	/TOodNgB2uSqnYC+Uz2zmdUM/9lL7FYUBf6qPKhSA2Ecn5GvlzE1s4UEt12eNazhs5Vp/axoZJ3SW
	JCCrELjqALXwyRnuP+kdSyQxd5XiL9f1Un/G57z4k1/nCuu5/sLGovxc380gfcOE3CxWG9ndQ0e/e
	VOLMnrM5ST73xYv8gGuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO1Sq-0000VJ-Iq; Fri, 25 Oct 2019 15:25:20 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO1SX-0008Eq-Lb; Fri, 25 Oct 2019 15:25:03 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iO1SQ-0001q4-Ix; Fri, 25 Oct 2019 23:24:54 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iO1SK-0007sB-Ir; Fri, 25 Oct 2019 23:24:48 +0800
Date: Fri, 25 Oct 2019 23:24:48 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH v3 0/4] crypto: add amlogic crypto offloader driver
Message-ID: <20191025152448.y3d45bt22gaavede@gondor.apana.org.au>
References: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_082501_949640_5534E155 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, khilman@baylibre.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-crypto@vger.kernel.org,
 linux-amlogic@lists.infradead.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 05:06:22AM +0000, Corentin Labbe wrote:
> Hello
> 
> This serie adds support for the crypto offloader present on amlogic GXL
> SoCs.
> 
> Tested on meson-gxl-s905x-khadas-vim and meson-gxl-s905x-libretech-cc
> 
> Regards
> 
> Changes since v2:
> - fixed some spelling in kconfig
> - Use devm_platform_ioremap_resource
> 
> Changes since v1:
> - renamed files and algo with gxl
> - removed unused reset handlings
> - splited the probe functions
> - splited meson_cipher fallback in need_fallback() and do_fallback()
> 
> 
> Corentin Labbe (4):
>   dt-bindings: crypto: Add DT bindings documentation for amlogic-crypto
>   MAINTAINERS: Add myself as maintainer of amlogic crypto
>   crypto: amlogic: Add crypto accelerator for amlogic GXL
>   ARM64: dts: amlogic: adds crypto hardware node
> 
>  .../bindings/crypto/amlogic,gxl-crypto.yaml   |  52 +++
>  MAINTAINERS                                   |   7 +
>  arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    |  10 +
>  drivers/crypto/Kconfig                        |   2 +
>  drivers/crypto/Makefile                       |   1 +
>  drivers/crypto/amlogic/Kconfig                |  24 ++
>  drivers/crypto/amlogic/Makefile               |   2 +
>  drivers/crypto/amlogic/amlogic-gxl-cipher.c   | 381 ++++++++++++++++++
>  drivers/crypto/amlogic/amlogic-gxl-core.c     | 331 +++++++++++++++
>  drivers/crypto/amlogic/amlogic-gxl.h          | 170 ++++++++
>  10 files changed, 980 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/crypto/amlogic,gxl-crypto.yaml
>  create mode 100644 drivers/crypto/amlogic/Kconfig
>  create mode 100644 drivers/crypto/amlogic/Makefile
>  create mode 100644 drivers/crypto/amlogic/amlogic-gxl-cipher.c
>  create mode 100644 drivers/crypto/amlogic/amlogic-gxl-core.c
>  create mode 100644 drivers/crypto/amlogic/amlogic-gxl.h

Patches 1-3 applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
