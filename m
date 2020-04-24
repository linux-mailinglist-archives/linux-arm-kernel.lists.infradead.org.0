Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8DA1B77C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:02:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iwAYkVcTg1gs3p5n9z+9TPM0ceQ1wj60v8i60zK7pM8=; b=lry
	ejQ1BE0zC3lZdFCuqv3xJbuv0jfc+Jgf5iceP9JadK5jQoCB/d2bNG910HWgF5zbslnfWL8TYJLAJ
	0IL+P8uVM2tl4/wQs+HmhBZZEm/2nXNX6TAxsy+QPu0FfHGuqznIpedKAGSf2y33QxMjCt1ddLlfL
	tC2tSYHG+6lYWH0E8MLGj0kket5R2uBM946v/r4VNqxtM1plXcP2VCKnTqCLsAgR0z72x7TCc2jJx
	L4VbcD4hNW46qyuBdD22pu54Y+BxaF8EWLvvSHtcmSiLBo22/we7PPfAq3iCslQJucOxqI6yZ7V7H
	BNLfW5ckabx2vMyEU2eavFtqz2Ltk8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyuh-0002VD-7G; Fri, 24 Apr 2020 14:02:43 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyuQ-0002Sp-A0
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:02:28 +0000
Received: by mail-wr1-x42f.google.com with SMTP id s10so10977372wrr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 07:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=7ZczxD3IWu8/fwlBlJGiVi7Lo8lRg9T/jE4rdraMVHA=;
 b=M/YU1V3r+a/4U52L4urd8LZmQAjraZmMFffJo/cvoynAvedsZpr+HGLFo5pARAE9na
 aNeIvVge/RB983yam/OB4Dstz4W/2DpFAh7aAlIbbtNrVhpsWWQN38K2JhtgEYZF6qel
 6nVp8RnxVrK0SyRbHWDyAeGu19yJmMqGc3wu65ExvQPi76vWrRYLkhfaclE6k3fmu3X4
 +TQ1dVRTEka/4ssVjBPKTTvrV2Zewt1b9l0AuV7smmkflPuKcwC0gAX2jV1AqwevOFZ9
 Yq/iZZptWBnlysoFCKRzNWYIrYrcar5GNpBXxvniX+/rnV/84xJvYluscPYl+/GRJ/Th
 t/SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=7ZczxD3IWu8/fwlBlJGiVi7Lo8lRg9T/jE4rdraMVHA=;
 b=Sa6PFlZhtMViKrK6SxOmMWmztu8npyQeplUGiI9Ji+YuvZJVeP0r8496jV4gRqZInl
 tm86/21i84u4OJLtk9dpvcgKeAuTf6BoA+7IfraP2kG5PNzXmQt78SPItnu0mDu8tAJV
 QVOmSpTfKpXw9RbeFLmkQ3SkjbzXHw/jYC0CW6Kcp3AKrYkwAagkhH8ZMnTVJ+Lr83aU
 UPIa50286nJsTN2nD0JB1FOAg/1MBv+5qV92SjF5Ekf/e4zzTdBYQD6g+Iir/yQIdKHU
 QTvwLZn/k19QLJxukwdQetdtcy40Pg1KVw5Y71SHk05CFXpFJ2WrH1iqesek8nWFNP/d
 Canw==
X-Gm-Message-State: AGi0PuZXCVRb0xoZEhx3tFvgbHI5aQRvRelU0BREe+j7Ehp37OSAtLYQ
 j+jJXIeux4Y/XWGxaQ+mt9SJSw==
X-Google-Smtp-Source: APiQypKaNGGMpvmyVINuIht/92jMND+x+I0jOdoShhcOzF62gR5+c4rD4idckshS2G+eaaNLoMu3DQ==
X-Received: by 2002:adf:bb0d:: with SMTP id r13mr11991980wrg.251.1587736943098; 
 Fri, 24 Apr 2020 07:02:23 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v131sm3061051wmb.19.2020.04.24.07.02.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:02:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 00/14] crypto: allwinner: add xRNG and hashes
Date: Fri, 24 Apr 2020 14:02:00 +0000
Message-Id: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070226_373240_11B48E83 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42f listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello

The main goal of this serie is to add support for TRNG, PRNG and hashes
to the sun8i-ss/sun8i-ce.
The whole serie is tested with CRYPTO_EXTRA_TESTS enabled and loading
tcrypt.
The PRNG and TRNG are tested with rngtest.

Regards

Change since v1:
- removed _crypto_rng_cast patch

Corentin Labbe (14):
  crypto: sun8i-ss: Add SS_START define
  crypto: sun8i-ss: Add support for the PRNG
  crypto: sun8i-ss: support hash algorithms
  crypto: sun8i-ss: fix a trivial typo
  crypto: sun8i-ss: Add more comment on some structures
  crypto: sun8i-ss: better debug printing
  crypto: sun8i-ce: move iv data to request context
  crypto: sun8i-ce: split into prepare/run/unprepare
  crypto: sun8i-ce: handle different error registers
  crypto: sun8i-ce: rename has_t_dlen_in_bytes to cipher_t_dlen_in_bytes
  crypto: sun8i-ce: support hash algorithms
  crypto: sun8i-ce: Add stat_bytes debugfs
  crypto: sun8i-ce: Add support for the PRNG
  crypto: sun8i-ce: Add support for the TRNG

 drivers/crypto/allwinner/Kconfig              |  43 ++
 drivers/crypto/allwinner/sun8i-ce/Makefile    |   3 +
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      |  99 +++-
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 365 +++++++++++++-
 .../crypto/allwinner/sun8i-ce/sun8i-ce-hash.c | 415 ++++++++++++++++
 .../crypto/allwinner/sun8i-ce/sun8i-ce-prng.c | 189 ++++++++
 .../crypto/allwinner/sun8i-ce/sun8i-ce-trng.c | 123 +++++
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 135 +++++-
 drivers/crypto/allwinner/sun8i-ss/Makefile    |   2 +
 .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 198 +++++++-
 .../crypto/allwinner/sun8i-ss/sun8i-ss-hash.c | 446 ++++++++++++++++++
 .../crypto/allwinner/sun8i-ss/sun8i-ss-prng.c | 167 +++++++
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  |  93 +++-
 13 files changed, 2236 insertions(+), 42 deletions(-)
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c

-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
