Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FDFABF9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 20:46:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jpJLbdLFS4/3zn9R/UNoF3/b1Y6Yl3ZwAQy0kWVBhQk=; b=E/QsTqRED+xDm/
	rTbnWk8+gMhHW25IEddhB0APaKLthRC7PTXrMfH3GmO9xGJo916ehmaRwoV3dY5dVMQ9zpqxMOa4h
	f8yq9Bkj/bvYif/7H9vpkbjqxsG9RJFm2kkhAe4LZ4ulmYP4DkxvXzoLEsUeiHt22VbTkQ+TKFrqc
	7Fbk632x5xgpWBjbHi+94I9UNesnep5WhM23nuxMVUjDjhbJkr5jalAmgG1wEZcexAIu4XoYM67lK
	Q/2FFGsQzAuhcTQ7ROEvxMoahOrG14JjxVF9V1h4QYUfW/dQGp6AjYDCIdH3HWq3Go3nnuRC3ZH3o
	8QX4ERm1IDWkYJSmaZXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6JFP-00055r-0Z; Fri, 06 Sep 2019 18:46:15 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6JFE-00055I-LT
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 18:46:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id c10so7540115wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Sep 2019 11:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xrcge4xWSXW5K31t/HQVYFW44MIvXTrC+21SSJQ7ljI=;
 b=UF6J+7FY9nlRmV8MXdouTLIlk/PpuSE8Z9pSuifFCXnHcXTCm0fulWoCKMBAzrzRVi
 obsHYkHyHVJ3OSDqjzsFeZk544ak+rV+yH1Pn3qhjWsd5KRhsiU1SxR+8BL6110HXWQC
 Ujngu9jHfWMF3MycgtptWTwvEJNMRss+ip0TzJeuk/k3eeemWAdwOtkLYuSz0H8LUE+e
 FSQoGBUbAG/np/5n0NRInUUBJy8+oA7+USY0+cnxduQSk6oefxcmQpjXRyU3mzDfPRIW
 lzGBmFxrexM/E3tXPMJg9a8Z4wBJpoyj22Wy061OwTKatx0o03sE7BmpDA5hWsvPoXRh
 Poxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xrcge4xWSXW5K31t/HQVYFW44MIvXTrC+21SSJQ7ljI=;
 b=cxvIy+A1v/SXAE2Li6uChI8Af5gB/5rae1S4khwtwU1wUUiLS50Vpq4BsTYZBDtxUS
 5UcnJtxhDHoJ7xxzSG/MtvelSQwUbndqM1nqsWPwMEEH8rnSa+SRi8sHmILLEchI5ilb
 hVULEVCwh2h6/NQS/ai86op/nQgaAW6ws7D9+pYw5F6SOHD1Uza0HOOqMT5d1KNKYoYc
 dxTguP/o66l9voGSmyEDuIf9ORwlbssqagkWOSmPD2kymrHo7KBZblEGrCOK23Or4ZPH
 66Vqx4KXS54+DLIFiE0+ik5hES8k+N7niukPKClh6MifH4Ct5ZiOq2zg2BBFxTtTRvpD
 iSig==
X-Gm-Message-State: APjAAAXBYJYIQgUwMWj/c7XqywNwkVY8A/WyVzNsDqC6hqiyKu19hCxY
 ObkVPgu4Jei30RvNKM+HgU4=
X-Google-Smtp-Source: APXvYqwGlyUteBngMNlLK5XdG8uuNUUdHWlmcx4mol+MpShd8I2m1TXqYmGsLUTxg6Pg1YojLCiRjw==
X-Received: by 2002:a7b:c447:: with SMTP id l7mr8159910wmi.33.1567795562952;
 Fri, 06 Sep 2019 11:46:02 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id j1sm8677577wrg.24.2019.09.06.11.46.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Sep 2019 11:46:02 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, linux@armlinux.org.uk,
 mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 0/9] crypto: add sun8i-ce driver for Allwinner crypto engine
Date: Fri,  6 Sep 2019 20:45:42 +0200
Message-Id: <20190906184551.17858-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_114604_730868_159338F4 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Patchs for CTR/CTS/XTS and RNGs will came later.

Regards

Corentin Labbe (9):
  crypto: Add allwinner subdirectory
  crypto: Add Allwinner sun8i-ce Crypto Engine
  dt-bindings: crypto: Add DT bindings documentation for sun8i-ce Crypto
    Engine
  ARM: dts: sun8i: r40: add crypto engine node
  ARM: dts: sun8i: h3: Add Crypto Engine node
  ARM64: dts: allwinner: sun50i: Add Crypto Engine node on A64
  ARM64: dts: allwinner: sun50i: Add crypto engine node on H5
  ARM64: dts: allwinner: sun50i: Add Crypto Engine node on H6
  sunxi_defconfig: add new crypto options

 .../bindings/crypto/allwinner,sun8i-ce.yaml   |  84 +++
 MAINTAINERS                                   |   6 +
 arch/arm/boot/dts/sun8i-h3.dtsi               |  11 +
 arch/arm/boot/dts/sun8i-r40.dtsi              |  11 +
 arch/arm/configs/sunxi_defconfig              |   2 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |  11 +
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi  |  11 +
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi  |  10 +
 drivers/crypto/Kconfig                        |   2 +
 drivers/crypto/Makefile                       |   1 +
 drivers/crypto/allwinner/Kconfig              |  32 +
 drivers/crypto/allwinner/Makefile             |   1 +
 drivers/crypto/allwinner/sun8i-ce/Makefile    |   2 +
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 390 +++++++++++
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 630 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 256 +++++++
 16 files changed, 1460 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ce.yaml
 create mode 100644 drivers/crypto/allwinner/Kconfig
 create mode 100644 drivers/crypto/allwinner/Makefile
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
