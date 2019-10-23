Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB90E23CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:05:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3MArRsJ8qDejmn4QCVsi47mXBIFD/SbkWeCtl2CC8tk=; b=t2FOzK//KruZI3
	BW5ePvNh4aW9GYOpQe2VCo+DzBO7TivgQljc4uu6bo4aH/gkEtv8xSHKVbmH6NytmXt5ouQfRKSqE
	234tqdQY8DB0Gde1aMWBLUgrxW7oYwmcygJaIGyfyjbLKQ/Q5YV4g7pfxexKqQC0UjrNG4CC+IV3S
	kLrLRiB5D/Gfzji+XFymo4zP3DU95BjPk1sbQlENVR+Z2H+mHK7zIIWMglCx6oxjSukClVbDYGlqO
	CMwj+DxrDTbxukAELhsqcLZ95rbkLQhIg/ipGS8eJjNUyaPZVpoqC4N5qJtEpTV/+iHN9KQtInEpx
	AP5DJWAf1N5ur9fl0yiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMt0-00012f-Dj; Wed, 23 Oct 2019 20:05:38 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMsi-00011s-8X
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:05:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id c22so236729wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hsfe3o9u2LRY+0nocL08VDzRyf/zs8Qk4HLwEzdn4Dk=;
 b=HYubk8XvcGGvQYdserWcLKzcweNYV7O56pRPn71Qjf0wSFj+KijzfLknYRkt3CjBaM
 OTFerJPUekyKHYKjZm7pYw9EaouZK/rv/qAJccVs+FppdmBQ7+SE86z4td2vTiOFbf1q
 g/r70kz3dNhO4kZnmATWY9L2cgY3D+ATrlgfbHGmdhfvZsqCHmhnoqRolBYlvPz/NVRO
 AheiQzOSbwxXwWvljdXe8ruhOqcUxnZQaBtgw6q3miQSeHpppWjg3X3mvsGR0YQUlgYd
 jhTGwD2YKTm+j8somZm5Xbwl/PUkQBfBikFaJtbfmqAnVpyRg0ssXDfWQLNNv80KR+5Q
 wkpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Hsfe3o9u2LRY+0nocL08VDzRyf/zs8Qk4HLwEzdn4Dk=;
 b=BGW6E6yf8Gaqhz8hzqAnPWmBqVK1ZaFAHcw44ZhSi6gXiP6YR7DmDx3fp25n+pTlYl
 yy6Y7XJMIBj9SVpzkciv5O75S3adt9ar94EitBZ7Aqi2MTtfuLkEM3FDfVZuD31JaC12
 tkxHZ7I4yIcePNGjkVC6ydIIogKbYg+B6c6RYA0MdNh67QaTJbhihsx39WKtXmmtJ0+9
 YYbKJ/5DI8Gy4cwdatKrK+AWJBgBupkk02O4s8CJ8ZN3pj8oUJd1105VQaaRjzSW9X8Y
 okd27If+d4mdZyh9lqtBuhufXLsHbEJZ/CbSHfIRNzGeTQGfx/5BSQJD7TA2GtkxFrR0
 Y9rw==
X-Gm-Message-State: APjAAAW85QbCXjbrTOyB0ypb7uhRDLicS4/yq/7yzBu257ek45aMnm0g
 zaLNnia6UPLiQ+K8nfIAXKk=
X-Google-Smtp-Source: APXvYqxSa2MeRkZVb6t+RtDHLWlQ4c6ajTmBvfRtiRqVfHtaIt4cPqmkepgTyG/iRGVmYvEDFcmFQg==
X-Received: by 2002:a1c:9d07:: with SMTP id g7mr1495189wme.53.1571861118310;
 Wed, 23 Oct 2019 13:05:18 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id b5sm177555wmj.18.2019.10.23.13.05.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:05:17 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v6 00/11] crypto: add sun8i-ce driver for Allwinner crypto
 engine
Date: Wed, 23 Oct 2019 22:05:02 +0200
Message-Id: <20191023200513.22630-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_130520_306297_89E9A0C1 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

DT and defconfig will go thru the mripard tree

Regards

Changes since v5:
- fixed uninitialized err in sun8i_ce_allocate_chanlist (reported by lkp@intel.com/dan.carpenter@oracle.com)

Changes since v4:
- fixed some typos in kconfig
- made sun8i_ce_pm_ops static
- Use devm_platform_ioremap_resource

Changes since v3:
- removed need of reset-names
- made reset mandatory

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

 .../bindings/crypto/allwinner,sun8i-ce.yaml   |  88 +++
 MAINTAINERS                                   |   4 +-
 arch/arm/boot/dts/sun8i-h3.dtsi               |   9 +
 arch/arm/boot/dts/sun8i-r40.dtsi              |   9 +
 arch/arm/configs/sunxi_defconfig              |   2 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   9 +
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |   9 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |   9 +
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
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 676 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 254 +++++++
 23 files changed, 1570 insertions(+), 29 deletions(-)
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
