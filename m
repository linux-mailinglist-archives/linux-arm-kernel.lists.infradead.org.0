Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9007E19DED2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 21:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OGISd2O0WOjo1ruYj7RnXOlCzGPGnYkZmO01Tsi8foM=; b=tqP
	L7Vwy9mXIRGYQQgdTp7YkMsQxbtNuGNTPPSHXQGnjRzdmCW0ArOcv6FB0IaF+R31sIpIrrbSHO2bZ
	tzgFm67MOfCfY67hyCNsZZmDU9JWoTnFTDkmokwmb+6qLzVi6SYXO5RcerPlPVKfpjlZaiKYTEKKo
	4Re5XiK+6lhvhzoKREpHjiGPJbcoFNoqBwqKFPsBaSDqjhhc4SmuP/b4GHLKFrBPyZoGq0qoH3i32
	J+Z+6v1oA4EUzW3oIfNVaFTZnDZFQYw72NjVx9Sd5JlTr953clDG7wEbiKyrM2uaj3r274lUmcKZJ
	RJbsxt57fhhzc4c0N2QtBwgPvOtshuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKSLb-0006gr-OE; Fri, 03 Apr 2020 19:51:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKSL2-0006Hq-Sd
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 19:50:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id r16so8349466wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 12:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=nFx9+E3/I3cB6us//mWp1dQ/lgfKdqFwPaZtN2Fz8F8=;
 b=a9N6X3yRHB1eUo8fHlrRPYDRWb0Dmp/Y+K6uUEA2mCZqFhCsFmFkm3uh5cyg2F7cUg
 mWw6jU1pl15z9+9j1LzeK3X/cm8T5TgS+/Uy0uKEhB9SVKJaTk2/8nztX2utpd/MHSbH
 xq9oqXMO0zeUcFmQKD13FKOVaDL3gS1R2FnFky5Ip4MdaPw0KCjFQ2+j2JjfbCjn8OJs
 awphxpsaIxsMAIhmFWIGknHVD4vFHqDDYXnp6WpQ18tLnXE4L/UYNGPvr6MoIdOyk+wx
 EzF3//SnimpL96RLJ1VN+rSh77GLM7SUzBD+xTRKAp2D4M4PRFeOCKmGCfKz4Plzfq+M
 Vt/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=nFx9+E3/I3cB6us//mWp1dQ/lgfKdqFwPaZtN2Fz8F8=;
 b=YPlCl/4b0BXlXuDCihVhZJC28M08QWrUFPrWR7y8VlaA71LBnmudkMuzcJOiiFAy9I
 VRabkj5IXBbyawnac9vpZIpu2PXhP7k2OKRHVWpiSvfQ0RY5p4FyEe3BDE+HG/WY5bzW
 Ah5Jrghwpz2PJCiL7DI7yrP8zvKTysaYRPuflgco4g7jEihvsmX6iuvmzAr0JfbXzWH6
 Roaln+oo4o8SP4AP4dwITeKne4xkWikejCg8PVaxgefiDRPepla0WeZBi3N979B4FJbr
 JYlr8SIe2P8sCuIyx2YyMJ8fjYzspTb4G1zfd3GIh2vMDzRhpa6oma7IcJqJqa20H1Kr
 mlkw==
X-Gm-Message-State: AGi0PuY8CCSFFUrEqFZVv3B0o0+1zCQKM3vcYurOKZr+bmNat0/KR0fV
 F3kcb5+X5Isd8/HHKI5kMxhRIw==
X-Google-Smtp-Source: APiQypIF0ut2srpAxEZKs7x+LNw+xXPDmIM+QWqFYlREFjQlIbCeKGLvmqhiFyfO/WD4LC6sVSkxig==
X-Received: by 2002:a1c:2056:: with SMTP id g83mr10219642wmg.179.1585943447063; 
 Fri, 03 Apr 2020 12:50:47 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id c17sm8102448wrp.28.2020.04.03.12.50.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 Apr 2020 12:50:46 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 0/7] crypto: sun8i-ss: support PRNG and hashes
Date: Fri,  3 Apr 2020 19:50:31 +0000
Message-Id: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_125048_977538_8B3537D1 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

The main goal of this serie is to add support for PRNG and hashes to the
sun8i-ss.
The whole serie is tested with CRYPTO_EXTRA_TESTS enabled and loading
tcrypt.
The PRNG is tested with rngtest.

Regards

Corentin Labbe (7):
  crypto: rng - add missing __crypto_rng_cast to the rng header
  crypto: sun8i-ss: Add SS_START define
  crypto: sun8i-ss: Add support for the PRNG
  crypto: sun8i-ss: support hash algorithms
  crypto: sun8i-ss: fix a trivial typo
  crypto: sun8i-ss: Add more comment on some structures
  crypto: sun8i-ss: better debug printing

 drivers/crypto/allwinner/Kconfig              |  17 +
 drivers/crypto/allwinner/sun8i-ss/Makefile    |   2 +
 .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 198 +++++++-
 .../crypto/allwinner/sun8i-ss/sun8i-ss-hash.c | 446 ++++++++++++++++++
 .../crypto/allwinner/sun8i-ss/sun8i-ss-prng.c | 169 +++++++
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  |  93 +++-
 include/crypto/rng.h                          |   5 +
 7 files changed, 927 insertions(+), 3 deletions(-)
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
