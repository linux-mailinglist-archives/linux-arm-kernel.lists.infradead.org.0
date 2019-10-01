Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE26C400E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 20:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jLHHakTfZyQrjbZ3tSoPC9a2Wih1LCQRsmMukh7nHH0=; b=EyMsvxu5pK64Er
	GE+3oYh+lEeLpdBtnra1+vSw081Fk0DPNKvsXoaNSZMn8HcoVwDl1m+VdP45twwnUSD1RoPhmvvUD
	Z3Nhxi9PwqJR6pK8WSbAXXiuzZiPG4kmMwV5ambyoinQq9SPAgFwvHATDtbe3ze1o5Nn9UxOV/jKo
	3c/10+q2zIVnXvG9LX5A8qqlMj9IjMiuFce5bepJ1hdryYptKW2ljrx7ALCmtTF/y0fyD9U0tGj27
	w88Msfy0f6rFGcP02icY61k2izBbGjLgRY2bwLhNckxYoCjkFt+WdKEB454m+hnRqv0qbJ452/ZGl
	AJx12ac5oqaCmx0lkExA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFN62-00060f-7w; Tue, 01 Oct 2019 18:42:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFN5n-0005zr-LV
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 18:41:49 +0000
Received: by mail-wm1-x343.google.com with SMTP id i16so4501974wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 11:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=STXkb4MVHhVAQzYyM+4y1Q3Kk/1cjA4qQtSJlwmzAqU=;
 b=BHyyBDtMzSMDoIq0VR0HKtZakAzC6Et0ZbNgrBJ2DhqJF/XyaG79V6/rotfG7EH1YV
 AbQjHWydZG28xB27MA3rFKI2K78Rmt1F4QkvkgI7bgrJksiwBIf1tXJDeVIGz96LHXRx
 smLUtt76R3MEJslNjAtnCjgIYKkE5vmdg0+KWQohRholKmOOog29mnqY2a5RsQ2LXgc4
 4Jdm2D4VkM8DaKgpbejTPJZlTt3eztihy5aTD+m6lBsfgl+r82Nk+6++rHqQrgxg/tig
 AghUukU9sO43QsmVvEI2uGn2sPOgNfnqdlTWsU+MrlDrf9B2ncyx/pyuRkm/vvYVeL39
 711Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=STXkb4MVHhVAQzYyM+4y1Q3Kk/1cjA4qQtSJlwmzAqU=;
 b=Gsus3dz+ariccC5upeg8q8wm/2aUSfPusP2iLFSdmYr+EhyhuY3Ts0k7NHJPyW+6j1
 KbpjvZ6IPCINCuQ8Z0bsRX1kxPuVQZNkeaQDyH2zneBO34urLVZEFH3SWtRWId64yCT4
 gHfJJpUzNrATY7u83/UKYUO1ighrjUzmPWKbp2JJkimIq807QY0ql71IAZy7ac0g/3GJ
 hoqcHSYvv2Jx3qon8pPtd7a0OkbS7IqIeinZAiyJfJYFy4FvAqD43AMP3PGA8mh3uP4E
 MO+9qW67Ft8T61+z/4d5w/TUZXO9aqalEtgBm/QHpaUta8+3CjFjstRVjrlwRUUv0O2u
 mq1Q==
X-Gm-Message-State: APjAAAVl5fNtYEtUzvQJ7cylsRL4rMh5YWfC/S93uyS6RBhhyuZOR7a5
 GBEloFNTNMRfQucXC0wYrSY=
X-Google-Smtp-Source: APXvYqwRs22/wMw3e9TyrV3739BxRtKCQKwhFfo1Fnr/hRYNZ+WieXnAhX9fucRw49/Ewm6Yd17DCA==
X-Received: by 2002:a1c:f416:: with SMTP id z22mr4873592wma.19.1569955305894; 
 Tue, 01 Oct 2019 11:41:45 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n8sm6788987wma.7.2019.10.01.11.41.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 01 Oct 2019 11:41:44 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v2 00/11] crypto: add sun8i-ce driver for Allwinner crypto
 engine
Date: Tue,  1 Oct 2019 20:41:30 +0200
Message-Id: <20191001184141.27956-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_114147_707146_78F9A23A 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/arm/boot/dts/sun8i-h3.dtsi               |  11 +
 arch/arm/boot/dts/sun8i-r40.dtsi              |  10 +
 arch/arm/configs/sunxi_defconfig              |   2 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  10 +
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  11 +
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
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 410 +++++++++++
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 666 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 259 +++++++
 23 files changed, 1552 insertions(+), 29 deletions(-)
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
