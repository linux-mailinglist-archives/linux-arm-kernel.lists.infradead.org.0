Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF96D302B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SdjGTfq0IGVTh3IA8uGKJptyIqe4ngMPbW8GtiQkF0Y=; b=buKuFPAEflVSHV
	XB/Y8Vem7mxeiCSPzbZREXXAZbKqBbNsuWJARsbIv+3pAOqCzJPAwBMQffUx2d8FOOErNy2/5+nmx
	GIp4ltxRZRPjs7d6XmhsC9bZDwH8CGYKlVv7fX54NQRT+nuywBdRp/VNArPVKKWVymXZFTS70GhHu
	cmtRrF78/2xkAqhKJs7ZCXFAUwxq0uh78knG0UdecYq0Pf4+1zhI0n57CYt9Ttdb5QsUtFATOJOLS
	w1ybULG7dD015QD1caVYllkebrw1EyYuPdotfjgHbv3NX9rEqbsO3/tsIFZ09Nc7ta37wLC8fZbLZ
	+/aCIXi0Nb5XU7yTavZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId6Z-0002Xy-TY; Thu, 10 Oct 2019 18:24:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6O-0002XM-VL
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:23:54 +0000
Received: by mail-wm1-x344.google.com with SMTP id y21so7768354wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cDdKG7BuYNC0klxFn+6EUkgCJfJh5dVTOm1e7l3a8X0=;
 b=io5NZfnXNdyoKtTWghcI85hs4yVXyAGO1vHhUB2FceE2MUrARbpAxq+Cg3u6bM4ISL
 NgUSOdVcQpDyARPoHhC6ycU6HiCuJxAJDjkgEnYpme2m1Cbac7GURGxhQP7bzbUbCK53
 0luRDQPjMcAKzv32H++RmjAZ2sV+rzNsrchQa75aHDbRFKC0a5RpUlpwHoZp/Ndj2dAn
 iSeZVz1WKfV6mBVQ2Ig5xMb/dX2nr1kmyOfOjYhcv1urZ40MQaJeNBm7d1rXHeEg4Jq5
 xyMwwAN2UVsJThtcILRfemRsWVirGWyu9+PW09MIuuo0hzrQQyrJWaWU/tPrioSeaf7r
 JJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cDdKG7BuYNC0klxFn+6EUkgCJfJh5dVTOm1e7l3a8X0=;
 b=c8kufJKo7QFHyMXrpgUvzEY5jTkgKEc9p8WirBGX5xFBNFZVw09ZdRVsBUhSRH5oAl
 CQc+CzSPUfV+mjtvlqOuuLl7UU2WqAfLuGPRKhKGAp57vHOroRWRUAb4ptoh0hSN69pk
 7+GnYOGCAyuNdgYPoBxNoIVJKWHHCNEOgXTfXoVtOMMwn5+2eRMYhdlFtWUeu48xMlO8
 FLv8KWs9VPNVjNCOQOZV8ER+dlt4E6bFZ6If+71znIV7djqy6fldfKyPP5sVhO1Fh9g8
 XVLogNEFPNMKZOlT+WMRDVTyUFlzwk/MEyTn9CBgFXpkLijP2DZVRYC9iob4a4z35xUW
 cCdw==
X-Gm-Message-State: APjAAAVU4kgPHWf5HWpeAjTRrXlZd5TWSx36HuD1KlvOt0sK78KC2kuc
 49j1JxuVxKf9eT2YHdAGcSc=
X-Google-Smtp-Source: APXvYqzUch2MFYwpJZP8PCs0aVC6hg6H6/bb/JQCgRe9bZhljWJCK3/gs9E0yK41y1NwLVfW7XXCgg==
X-Received: by 2002:a05:600c:490:: with SMTP id
 d16mr8707908wme.131.1570731831084; 
 Thu, 10 Oct 2019 11:23:51 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.23.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:23:50 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 00/11] crypto: add sun8i-ce driver for Allwinner crypto
 engine
Date: Thu, 10 Oct 2019 20:23:17 +0200
Message-Id: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112353_034493_7EFA0C29 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

This patch serie adds support for the Allwinner crypto engine.
The Crypto Engine is the third generation of Allwinner cryptogaphic offloader.
The first generation is the Security System already handled by the
sun4i-ss driver.
The second is named also Security System and is present on A80 and A83T
SoCs, originaly this driver supported it also, but supporting both IP bringing
too much complexity and another driver (sun8i-ss) will came for it.

For the moment, the driver support only DES3/AES in ECB/CBC mode.
Patchs for CTR/CTS/XTS, RSA and RNGs will came later.

This serie is tested with CRYPTO_MANAGER_EXTRA_TESTS
and tested on:
sun50i-a64-bananapi-m64
sun50i-a64-pine64-plus
sun50i-h5-libretech-all-h3-cc
sun50i-h6-pine-h64
sun8i-h2-plus-libretech-all-h3-cc
sun8i-h2-plus-orangepi-r1
sun8i-h2-plus-orangepi-zero
sun8i-h3-libretech-all-h3-cc
sun8i-h3-orangepi-pc
sun8i-r40-bananapi-m2-ultra

Regards

Changes since v2:
- changed additionalproperties
- splited fallbacks functions out of sun8i_ce_cipher()
- changed variant "model" to "has_t_dlen_in_bytes"
- splited sun8i_ce_register_algs/sun8i_ce_get_clks out of sun8i_ce_probe()

Changes since v1:
- Add sun4i-ss to allwinner directory
- Cleaned variant structure
- Renamed clock name from ahb to bus (and mbus to ram)
- Fixed DT bindings problem reported by mripard
- Cleaned unneeded status = ""  in R40 DT
- Removed old unnecessary interrupt_names in A64 DT
- Added arm64 defconfig
- Added support for PM functions
- Splitted probe functions
- Reworked clock settings
- made reset mandatory

Corentin Labbe (11):
  crypto: Add allwinner subdirectory
  crypto: Add Allwinner sun8i-ce Crypto Engine
  dt-bindings: crypto: Add DT bindings documentation for sun8i-ce Crypto
    Engine
  ARM: dts: sun8i: R40: add crypto engine node
  ARM: dts: sun8i: H3: Add Crypto Engine node
  ARM64: dts: allwinner: sun50i: Add Crypto Engine node on A64
  ARM64: dts: allwinner: sun50i: Add crypto engine node on H5
  ARM64: dts: allwinner: sun50i: Add Crypto Engine node on H6
  sunxi_defconfig: add new Allwinner crypto options
  arm64: defconfig: add new Allwinner crypto options
  crypto: sun4i-ss: Move to Allwinner directory

 .../bindings/crypto/allwinner,sun8i-ce.yaml   |  92 +++
 MAINTAINERS                                   |   4 +-
 arch/arm/boot/dts/sun8i-h3.dtsi               |  10 +
 arch/arm/boot/dts/sun8i-r40.dtsi              |  10 +
 arch/arm/configs/sunxi_defconfig              |   2 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  10 +
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  10 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  10 +
 arch/arm64/configs/defconfig                  |   2 +
 drivers/crypto/Kconfig                        |  28 +-
 drivers/crypto/Makefile                       |   2 +-
 drivers/crypto/allwinner/Kconfig              |  60 ++
 drivers/crypto/allwinner/Makefile             |   2 +
 .../{sunxi-ss => allwinner/sun4i-ss}/Makefile |   0
 .../sun4i-ss}/sun4i-ss-cipher.c               |   0
 .../sun4i-ss}/sun4i-ss-core.c                 |   0
 .../sun4i-ss}/sun4i-ss-hash.c                 |   0
 .../sun4i-ss}/sun4i-ss-prng.c                 |   0
 .../sun4i-ss}/sun4i-ss.h                      |   0
 drivers/crypto/allwinner/sun8i-ce/Makefile    |   2 +
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 434 +++++++++++
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 677 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 254 +++++++
 23 files changed, 1580 insertions(+), 29 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
 create mode 100644 drivers/crypto/allwinner/Kconfig
 create mode 100644 drivers/crypto/allwinner/Makefile
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/Makefile (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-cipher.c (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-core.c (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-hash.c (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss-prng.c (100%)
 rename drivers/crypto/{sunxi-ss => allwinner/sun4i-ss}/sun4i-ss.h (100%)
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/Makefile
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
