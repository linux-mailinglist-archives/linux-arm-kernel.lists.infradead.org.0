Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9FD1A64DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 11:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VwRRr4KLTrTDJvhn15DyujeIlz8f6U6DyTotfHLUvY8=; b=Vv2
	ghAt9Kl596qhBice4sIHgL/5EcmrHmrWR3TNpsgdnNSF1iCXNGhjrI4Dmk/tjbmMZxGVqU8za7g+n
	BJuGWtbyl9HFyyrOvZjoDocKIjHiDph/v7efhkCcwE39HzPtIu0kfGIFN/+iw2EsWB1A3+JDWT4ih
	njlRef/qhnSlf5Uem/HpAVl3cT6GWupv/OoHgM7ytG4l1m4TxnnvTPjfDMDRSAAWe4ugCntjs5WS3
	ugRNIp7udlFXVLjD85q/3fEgQjn8xCJSrV9YsQ8Z+pTp+GymNKqY83Ok7fb105eZGRENsPYe6RZl6
	fexiqdUYpGizZy0fWgB1iZr4zTgtXgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNvsM-0007JO-OY; Mon, 13 Apr 2020 09:59:34 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNvrB-0006Hz-UW
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 09:58:24 +0000
Received: by mail-wm1-x331.google.com with SMTP id a81so9361493wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 02:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=KmcsA4T+S+WWzjH6BirzHHu1f070Cb4n75Vt4bzQ7mw=;
 b=TVnoFVdP7i6NzzFLwMjWxM3xlqFbcIBq1o9J7E/bTBQ0uzOW8+UegM9N09q07Gb8Pt
 MtHvv7jPmDm/EdqTc8LOg/VtKYICEGws/lMAkblH+kM813ZU0JoJaasghx3IwTGcKd0E
 42OvmNEcHZQ5VCaiHTIO84mRy6CrDZH8EYAeCVp6AgaElvoo718tEt+wJ/84V0XUhhxN
 f4duhfvRg/ia9fT3MeUk6BGznNj5Tixq/bRylfXGr/Iior1h1ImD3+qM5aYCgzxIx0Zi
 yW2DdRaVcQZ3x6NikAgM+x5H/bYYq4FjWTKQPFlyunUiyUqYCPVn2Bmk98TFUkVTHkTB
 0DAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=KmcsA4T+S+WWzjH6BirzHHu1f070Cb4n75Vt4bzQ7mw=;
 b=t7y3ZX9xghx6/bolZX9G+iyREoMyFubDXCGGrDozXLJEs8vlIH1mkWszA6a+anMUF7
 P4rouZtdB9jjQnLvQS3t5XfKioAnFySrw6KOGnUGK+jAcL0pqEYu3l/2kGmWkXZlItaY
 em7mGQ0Wd7YHmdkkjv5qRe2lYPzoUG9kMITxXKBeMNkucwaCy0aELfdAFn5YAWmccuHO
 62F3rLs9mWwcIiP0Iz6ztgPb/6KVNOPVPZLFQn9kOq51yzsOX05s2srcel5To0sV5TVI
 i9GhDe9o9VBH2Bv/eyGOiXEWBMo6xWyiHL3OIML35GU19XrlbKSOlO3NdsBeo0QSvIn+
 WwOA==
X-Gm-Message-State: AGi0Puaae3G68rLjs9TfRcI5Q/IfmaW1ww+Enub8sjjOspcFuYRp3aba
 ZprQiiyQA5hDL85TApFsYGzOJw==
X-Google-Smtp-Source: APiQypJWhZgB3lIgt3ffPi7fAbvHp4h7OWcPtzktkowmrfegct/r94XOEfrUl2q5rZ1a2eCTjGu2EA==
X-Received: by 2002:a1c:7d15:: with SMTP id y21mr17172416wmc.57.1586771896214; 
 Mon, 13 Apr 2020 02:58:16 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v21sm13594491wmj.8.2020.04.13.02.58.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 02:58:15 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 0/9] crypto: sun8i-ce: support TRNG, PRNG and hashes
Date: Mon, 13 Apr 2020 09:58:00 +0000
Message-Id: <1586771889-3299-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_025821_979502_15716411 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
to the sun8i-ce.
The whole serie is tested with CRYPTO_EXTRA_TESTS enabled and loading
tcrypt.
The PRNG and TRNG are tested with rngtest.

Note that the first patch is common with the recent sun8i-ss PRNG+hashes serie.

Regards

Corentin Labbe (9):
  crypto: rng - add missing __crypto_rng_cast to the rng header
  crypto: sun8i-ce: move iv data to request context
  crypto: sun8i-ce: split into prepare/run/unprepare
  crypto: sun8i-ce: handle different error registers
  crypto: sun8i-ce: rename has_t_dlen_in_bytes to cipher_t_dlen_in_bytes
  crypto: sun8i-ce: support hash algorithms
  crypto: sun8i-ce: Add stat_bytes debugfs
  crypto: sun8i-ce: Add support for the PRNG
  crypto: sun8i-ce: Add support for the TRNG

 drivers/crypto/allwinner/Kconfig              |  26 ++
 drivers/crypto/allwinner/sun8i-ce/Makefile    |   3 +
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      |  99 ++++-
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 365 ++++++++++++++-
 .../crypto/allwinner/sun8i-ce/sun8i-ce-hash.c | 415 ++++++++++++++++++
 .../crypto/allwinner/sun8i-ce/sun8i-ce-prng.c | 191 ++++++++
 .../crypto/allwinner/sun8i-ce/sun8i-ce-trng.c | 123 ++++++
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 135 +++++-
 include/crypto/rng.h                          |   5 +
 9 files changed, 1323 insertions(+), 39 deletions(-)
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
