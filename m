Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60BA81B77FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wEqry0saUL458WtyG3BtcW5Vo4xZgXvQWsnYcS+qbEQ=; b=jDyclrHI5MU0ATiOR+KpSfuDbY
	/6aBx/+FpGmuhlYGcymVAyrs4qCH9yODVrwVsqrbh9O159nk7GFuv6ILqrB4J9zG9qF2/lJyDFHWo
	mw2CgTIkgGPNqsvy18zw2FPTrUcOEVoJAtlDs9R1i92tTaIX94tyH+OvlLMUhUEAtuDvwYZP7Vg76
	VpIBrhKznDPo7Fw0FRh+R9+/LXyUfwpklsVyBN3Lv/6e9Ga+A+hfF5U86asAX6v5cTDdAg6Pmozzd
	l9AGiGuBnA4A487jQ5VFALuRNwWsiawXqNcdYK95rHfckwfx3/UkaE0qzC6BzL8zzpGPEWY8NxtsS
	A0dcgqzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyye-0008Jl-2C; Fri, 24 Apr 2020 14:06:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyur-0002qo-FN
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:02:55 +0000
Received: by mail-wm1-x343.google.com with SMTP id x4so10587268wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 07:02:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=xLoFk+SNurZVpCfpASFCu44pZDZ5n7kdegjD0roxl1w=;
 b=XDD8OZHHcykHrfUF/QkzvETaDtj44B8/0Jm+jzhCvL01F9xFv75Iw/AZDYvhkR2aAY
 fqLKfFlIPtHr4ZBYCdCKsN7mlNYhNlgzvgahbdv+YzKl1VrPgLKRRWp/Bfh8w3Zz2uuc
 Go48vUxDOatcDiQCnod+/D3tn2bIN4xAioMhSp6svDaYFTWXTkMKt8vwF8kGggrBD8Qd
 aRMEcUqgpFH2j2ld6VWghGzUqgA6HnruHWZtf3QU+lFDD5I6dKoYbbEhWRx5pWRYY6SW
 ysCO5CDtyh1iQYLQvM/hoxPI0cOmYHGPkudYfbQ3u6SY2uIqCJNAy3OhjTVaC+HjTe00
 bF+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=xLoFk+SNurZVpCfpASFCu44pZDZ5n7kdegjD0roxl1w=;
 b=l8NvYjzu2d8cB7U+xiqxDoaLmV3CiDHnMtD695VyyzNIo7EG18u4NEesRTNfT2t62S
 SAtzg7cKb8HM+feUpCIU9w5i3g8bPQQruMKDDgLnpqkDdrFbenCZeBBZQUG5NSsU0VNq
 uL3M2/Fm3mev/G0jv9PbTKvNWQq9srV7988yB1WvcxCsoqe9Pt7u6o+RUoGvoV6q6IoN
 b4YzBLVOu7diRk3nWClH3XTAW9EXkSkssTo+JyMMs5WQnS8C1iP1R4phLRqL+xKkdEUZ
 aRB+88mSy+PmoGYr7Q9txWNa2VvsISlRHIYnox1Dleb1BzHdQBO4kO5DogSVHgO3jx03
 N5cQ==
X-Gm-Message-State: AGi0PuZYmklXGOreNdgAY3TuFatPtw1T8FbCfStnVJTN3NcMK/hMKog8
 l+308g744FqKgPRBe5seSvQ8JQ==
X-Google-Smtp-Source: APiQypJZqMoKZGbxnLiQQrnY+QzhmpGhrUpbzcw4lzCNd/MsrSf3w20Z41MJEi5tbGVTVC5wztnOXw==
X-Received: by 2002:a05:600c:1:: with SMTP id
 g1mr10092915wmc.142.1587736971357; 
 Fri, 24 Apr 2020 07:02:51 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v131sm3061051wmb.19.2020.04.24.07.02.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:02:50 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 12/14] crypto: sun8i-ce: Add stat_bytes debugfs
Date: Fri, 24 Apr 2020 14:02:12 +0000
Message-Id: <1587736934-22801-13-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070253_584583_A7035376 
X-CRM114-Status: GOOD (  11.50  )
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

This patch adds a new stat_bytes counter in the sun8i-ce debugfs.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index 19ced8b1cd89..ef2f1e5aa23a 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -274,6 +274,7 @@ struct sun8i_ce_hash_reqctx {
  * @alg:		one of sub struct must be used
  * @stat_req:		number of request done on this template
  * @stat_fb:		number of request which has fallbacked
+ * @stat_bytes:		total data size done by this template
  */
 struct sun8i_ce_alg_template {
 	u32 type;
@@ -287,6 +288,7 @@ struct sun8i_ce_alg_template {
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
 	unsigned long stat_req;
 	unsigned long stat_fb;
+	unsigned long stat_bytes;
 #endif
 };
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
