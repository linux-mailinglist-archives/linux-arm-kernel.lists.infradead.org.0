Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 225CDD9292
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 15:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VvRF9SeMacUA9GJ3AcqqtoRBAUCGL5QDjsOcU+KPGoY=; b=bxTNf+aGHjY5qN
	rMYcVOLxffINB5a2dQNxYHKzwbGMd2DHnbnYo/TJfeXsj2FrJha6qAKVcd8KR5aNkUcf09RoNKRS8
	uOJwj5YZz+yxGP1B4H5+OMkIFSkD6h4Wj6UeYSpKq9M2RPPl6PORcvDv1M8wgnF/HZ6SpKVAqRlpw
	OG1kH2p9Oakms7Hed0a90rSyaXEjETJ1kROXciAr1wpHSoEMPyHW18xgwhCRtCQPSX5pm+JMxlcBO
	EA7rIIi6YKiUPdTih1uSgY9+ypj455R2h/rFbMy+tJpQ9hJVO/Tq4skFm6ogW4v2XMHmahI2uu54F
	MMlXn3OH2S86kO4vEqGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKjRG-0002dK-GL; Wed, 16 Oct 2019 13:34:06 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKjR2-0002c7-0Y
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 13:33:53 +0000
Received: by mail-wm1-x336.google.com with SMTP id r19so2957833wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 06:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BFXJh5YwdqvqkTvI55Rp72RJZ5nJ2dgoIfxiju6Kc5s=;
 b=LbcP6M3awlWA/xKI7gZTJ93F41yKo1zgsEX8wdkvb5OapDjr2THcmnkGmwQ5khfy0b
 m44DA08Ov5qA8YP7ZiTD0f50WTv0CXtHhFXs5uDjNuio5m7NPhVcRwJXZTAznjwHyTcx
 1T2mKL5Q11EU07B8ciu3B9WFV8cquhx7F6CelJ9hltIHQSp3mZkNz2uMc0j5OUnIfxQo
 Vy3Hmh/ZyY3Z+SYMe2eV7hoHHIKcbwyBg1jGo+kSLDSH4knMK8vPyXvTeWuE2oi/c8XE
 emK/3omGGUYa97U9WgfBfEx5HGsYBfi/k/Hf00HG5bUss2yCWmfLbaGsQYOV6+Psjrx+
 mAkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BFXJh5YwdqvqkTvI55Rp72RJZ5nJ2dgoIfxiju6Kc5s=;
 b=V+ClOIkl3/9Cbp9h7J3E9G+Z4IiX3Iewn2C5BhlI7n3Ys0VZB41uHhUCqIf2F3z1RG
 50kNHYYmTl3TtaNhaOc2n05KNp1txEKpYL2Zcs4Eojdx5YNOEcIe1JCjG8TRJ/f/o9tG
 QQtWBm4UX3zS4NJzcVQ6rmZehxzbCpym57ysH4P9I3Wyebd+pRx0pqUKsBv8sBLiqDeX
 ugdmWg2xJbCVotgf7Z3MSTWuqyeTproN5WIoaUJNEKzHNrkRrWeyb+M+bM7dZWmh1SWX
 6PTakypjup4SlDBvjziHg2yAo4Sy9SbREPQBu4j4451YZrUAup66frLekoGp73igRikd
 NFjw==
X-Gm-Message-State: APjAAAUqnz6IWS0hR4UxUwUw+XhB3nAf2mN/cFUP5ai7WfEbqE5iDZi/
 t6H7lhbLlGJNDr95Tw+v7Wg=
X-Google-Smtp-Source: APXvYqxSO35Wwnr4fa2v5+O2FpqGRKcz3QzjOWm+Jz0C/0YUoZHznBT0G3al+EcSCbjzWVXvfBo9pw==
X-Received: by 2002:a7b:cc0c:: with SMTP id f12mr3458368wmh.40.1571232829451; 
 Wed, 16 Oct 2019 06:33:49 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id h17sm3139998wme.6.2019.10.16.06.33.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 06:33:48 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH 0/4] crypto: add sun8i-ss driver for Allwinner Security System
Date: Wed, 16 Oct 2019 15:33:41 +0200
Message-Id: <20191016133345.9076-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_063352_053996_EB0BFA16 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Corentin Labbe (4):
  crypto: Add Allwinner sun8i-ss cryptographic offloader
  dt-bindings: crypto: Add DT bindings documentation for sun8i-ss
    Security System
  ARM: dts: sun8i: a83t: Add Security System node
  ARM: dts: sun9i: a80: Add Security System node

 .../bindings/crypto/allwinner,sun8i-ss.yaml   |  64 ++
 arch/arm/boot/dts/sun8i-a83t.dtsi             |  10 +
 arch/arm/boot/dts/sun9i-a80.dtsi              |  10 +
 drivers/crypto/allwinner/Kconfig              |  28 +
 drivers/crypto/allwinner/Makefile             |   1 +
 drivers/crypto/allwinner/sun8i-ss/Makefile    |   2 +
 .../allwinner/sun8i-ss/sun8i-ss-cipher.c      | 438 ++++++++++++
 .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 641 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  | 218 ++++++
 9 files changed, 1412 insertions(+)
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
