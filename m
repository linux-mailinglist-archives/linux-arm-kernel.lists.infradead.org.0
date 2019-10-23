Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BF2E2411
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 22:10:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YTejHh+KBzxwCky1ie9z4ps0ICH1EgeZt0FmKHJHwuQ=; b=a4h6k4faky2lhN
	Nwftd4ycuRolP67vqXehEKaYBncksvCGQt7HXbhZu36cJw9HLKBbX2PZiXYSr76nLMRxMZZ6UdV9E
	qZjerDituOSHX1znFfabI+NLSSFIJyShVe1WKvPXKA9SP7I7BhmjeK+Modgn0FKXaOdxe6QEiQqXA
	TwmxebmzOTRNnBR536gTmGaBS/Fc4DlYvJ11kjuBRO3r4e9lkyIfrFveNhWDjHuRe5T+s8pq7jD0Q
	aLz24TKjjk1NToVpBnNAw0dKjmoxVgsTsS5rhc0j3hDq1rx7jAwL2YlXdT+eH3dy4nu0V5n+O7jx/
	ebde9B5k9Up56IuV5omg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNMxo-000696-9D; Wed, 23 Oct 2019 20:10:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNMxZ-00068f-As
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 20:10:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id w18so22924649wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 13:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bpwS+F/PeAnITy9k+IFP+J0FMYCUcRVSLDnqP4k8tK4=;
 b=hBvZU4+rsFkkIkAEUe2UK9p+3+5+JWXtPl1AZcdpLaBuLUxk+tc9T4L0jRNaLQMGVw
 L+y3LVknu1uoc9CULFzf8dej8BNFwUTSnBIZzaZ6iMqnEGcQ10BglL/pjhbRsbFxA0nG
 TUqdThzwoDwZu8AijYEmyE0CjhaPz4jnW2qwRoJzTgGNO4lhQchAbhoHa8LC0QfcPbOv
 g1q9PZPUfgx5oe/ytQHpOxqMmbMNySxPiEVN4Udp/G5hmQpBdyBv4D+tK0ktG3Ky/40m
 h+3TAhalZNBLSbza7mE3tyVo0jG0X1Kgu7C9aFGpwlAh61iL9Qo30+bbPsMNkVnN2H8m
 4Cnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=bpwS+F/PeAnITy9k+IFP+J0FMYCUcRVSLDnqP4k8tK4=;
 b=VfN9BaL/GsFyq1tZA966Q+tlz3BNCM3OZT9x3Kp2y68kXMo1vgTnmsadxeHVTXWfq9
 yjjepas51I42x6AvYW7ugPnGqeZ29pDfmf3qETT2AjMvfUCu1gFbXWGOjbcmS1VkDd4e
 7KRb6jkgq5wLXg+/oIUBBpWZhbJrrFxCPOa3a1lakErfMMRRN/G6zv3FP7MdJDWmKXo5
 5hxfM/fscwIwEcaFF125aDdJzqxV+UA3nqnH20A1aeyjsFk4/eNwW3Sn4Mi/8sfaCcu0
 3L/AHEle6tIY3twP01rF3FaUwWQuLsmz4gLExxa+w8sJda3rSOewWcdxtfVj70mvi7Hx
 RYZg==
X-Gm-Message-State: APjAAAWtnwcNZPDxsY0HTgwLBUyDqWSUvnBcEwbuQNYE3mgB2EBKWvTV
 vQLeElBWQExNOlAds8VL30s=
X-Google-Smtp-Source: APXvYqwp9Wm0ez8TH/4MwrhNc/lRRV96afQBfhg751QLdG3fu7ojJDzZdlM9I3dHNw1gPuQ8UjiZig==
X-Received: by 2002:a5d:568b:: with SMTP id f11mr449675wrv.301.1571861419759; 
 Wed, 23 Oct 2019 13:10:19 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id h17sm277261wmb.33.2019.10.23.13.10.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 13:10:18 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH v2 0/4] crypto: add sun8i-ss driver for Allwinner Security
 System
Date: Wed, 23 Oct 2019 22:10:12 +0200
Message-Id: <20191023201016.26195-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_131021_376566_EC57C722 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

Changes since v1:
- fixed uninitialized err in sun8i_ss_allocate_chanlist
- Added missing commit description on DT Documentation patch

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
 .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 642 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  | 218 ++++++
 9 files changed, 1413 insertions(+)
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
