Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7063E53EA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hCh12sgF1a1U9NSTQtM6l3iW2eDCLD8k/C3k7BkDZ8w=; b=rTDUI5y9dcKxkY
	6P3q6TyPjWnmLwbXdlHrUIywaUNdwooXjnL1vvD/zWTHEUsFDUTU6ffF2QRYm9Ns+IiNFlHQjGaFt
	liSF1mKHHBEmCGgcUF1/ABYoo/SJWu4/a8h8NClTs1VLADbjWCwFNjPHvzjB6bAhgjy7NCRhVR/gk
	ClzL2Izp1xfsd5UN9U8hRlOVKSzf+Xrd1PDCaAsyro5UbKRy9u+urrrrrRr2rNyOLlJESTbB55xOV
	q/dYeRBPrwWjvKiKupxHPYNRbwdYqWGVtyfTLVaIp4sCJku43wlzKy7VfepeFOy/Jd/BBVgZnctvg
	BiSFh8IujR0E7M3jjh/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO4gh-00059x-FY; Fri, 25 Oct 2019 18:51:51 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO4gP-00059R-SJ
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:51:35 +0000
Received: by mail-wm1-x343.google.com with SMTP id p21so3251580wmg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 11:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jvqQFCdyN1pvYkijOxdEJawR4E6xBqBcwTGJlgojr5g=;
 b=im4eTYKNwnTjGuMqDlkPm3KlXWA2QgSKIB+DHkleGEiwYAAmqYdF7EJZdj8t9vgr94
 wtiO7VxLajV8qhV7v9t0a3K/YLWXRalXFjhRVPLdvVxl74NNVfh4/72byFQqf9uSOIXN
 W8ZVqTbBMd/sSWM9zZw1lqjnuYgHea4ipFfhSVvgJvPKrI4TgnhGMhN8F0FdkdVMZVqi
 U5Ly/6nIl8APyPbmZ73izwKEiD5//P1cIKz/a3nk1yC2CW+Ajx3PLhZN00e+0p0dcW0E
 +F+TFk/u+y0Z0CpTzEKazN85/G5EmsF+HTU43OSIKd9oks3GleaokGC0JbgFOW/whtTM
 6uRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jvqQFCdyN1pvYkijOxdEJawR4E6xBqBcwTGJlgojr5g=;
 b=LYM8Jz8V7DibfXCn7Slxsl8HFOubo0kySWghHlytAIZYJH4AQCNuNDIsBnyiRFYouV
 ICTd9hY5fEuduXhNHfkaQonBjRrverL+TlnY7Nftbr+LkNjSbTrmfryBO5/Z4G7m6KPV
 aW6jGgX1QGg4zyUNsOB6i4KuIDsNl8wIAy+qndNEMjxGb/I2ma1punAyWbW6P1z4gLT2
 K8dhmoEZQKFdgwqmJ33V2g8pLEm/j5M0Ems1GcC7P6Vc4NByjLfYod5sZJxNc/NpZafi
 lcX5aZNuZxbLpyCyFpnGyHTNZ4g2j/p80ttJp68fgV5yADjKheeXRG+h7mvpoaRtEruP
 tr/Q==
X-Gm-Message-State: APjAAAUuW6Q/vKSvwAuDSSqd3MjXZIMxwSJdhNFftjnILFOA91zhUfq+
 iYjaQ+ji1TkTWuVKUGrugtA=
X-Google-Smtp-Source: APXvYqyJDmSMjXoIhZz7YYzF4aHENSS3QLnhmaaCUjWpRIvnUzpNbYBNijclpFIwtDgTNKamg23phw==
X-Received: by 2002:a1c:e912:: with SMTP id q18mr4908766wmc.29.1572029492174; 
 Fri, 25 Oct 2019 11:51:32 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id l22sm4821683wrb.45.2019.10.25.11.51.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 11:51:31 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, p.zabel@pengutronix.de, robh+dt@kernel.org,
 wens@csie.org
Subject: [PATCH v3 0/4] crypto: add sun8i-ss driver for Allwinner Security
 System
Date: Fri, 25 Oct 2019 20:51:24 +0200
Message-Id: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_115133_915562_AE46A20C 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

This patch serie adds support for the second version of Allwinner Security System.
The first generation of the Security System is already handled by the sun4i-ss driver.
Due to major change, the first driver cannot handle the second one.
This new Security System is present on A80 and A83T SoCs.

For the moment, the driver support only DES3/AES in ECB/CBC mode.
Patchs for CTR/CTS, RSA and RNGs will came later.

This serie is tested with CRYPTO_MANAGER_EXTRA_TESTS
and tested on:
sun8i-a83t-bananapi-m3
sun9i-a80-cubieboard4

This serie is based on top of the "crypto: add sun8i-ce driver for
Allwinner crypto engine" serie.

Regards

Changes since v2:
- Made the reset mandatory
- Removed reset-names

Changes since v1:
- fixed uninitialized err in sun8i_ss_allocate_chanlist
- Added missing commit description on DT Documentation patch

Corentin Labbe (4):
  crypto: Add Allwinner sun8i-ss cryptographic offloader
  dt-bindings: crypto: Add DT bindings documentation for sun8i-ss
    Security System
  ARM: dts: sun8i: a83t: Add Security System node
  ARM: dts: sun9i: a80: Add Security System node

 .../bindings/crypto/allwinner,sun8i-ss.yaml   |  61 ++
 arch/arm/boot/dts/sun8i-a83t.dtsi             |   9 +
 arch/arm/boot/dts/sun9i-a80.dtsi              |   9 +
 drivers/crypto/allwinner/Kconfig              |  28 +
 drivers/crypto/allwinner/Makefile             |   1 +
 drivers/crypto/allwinner/sun8i-ss/Makefile    |   2 +
 .../allwinner/sun8i-ss/sun8i-ss-cipher.c      | 438 ++++++++++++
 .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 642 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  | 218 ++++++
 9 files changed, 1408 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/crypto/allwinner,sun8i-ss.yaml
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/Makefile
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
