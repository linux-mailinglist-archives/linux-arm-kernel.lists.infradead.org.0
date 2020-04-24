Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B21F1B77E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=laGvcBoFjXzOy5fiBXQVfwEvpGahWO6u+h6u5DVQ6n0=; b=hZ34WoaVMM3A54tMHFtdJAD4Tw
	U2YZFuVyhqjiqWtFpLx7VaZuqKKF0CJIU0LP7xvCQD7/kyNBLLCkyOJeYATQ7yqQemYb1URCxEMCR
	8VqdhQpbzzyv2iEMlF+lBbUKNAJzqNiSPqvPjcsZZP6L3nk7csSsv/qZ5aEIiGVgIDI4JiygRKovR
	/EG/UIQ8uBSKDHJxXEmCNCNo5hmYU7mj44tKQsHBKosKGX82ka2cpfGhWNaQ/Y41S6rS4fXVjDVlI
	laTfuUVO7YSwQ8dTfvSN100YtEsQiKEc6eGQTHV4AA4myKVS8kmyL/ZOCvMLP5K8cmrRAon3kiJHN
	QZSMkZng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRywK-0003nP-NS; Fri, 24 Apr 2020 14:04:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyub-0002bh-1D
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:02:38 +0000
Received: by mail-wm1-x342.google.com with SMTP id u16so10854900wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 07:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SU0E9luozURTZ9TC+AsIeijArTCKSbuhSsq3JPq3G+Q=;
 b=FuoPfzJUK/ct5OaBTFDq9xyu8VZKYeQiFwCDQAeXPwGBBmcCFdiZLenmH3KNChIAjM
 c+Zax04FMpjAF11s0LW7x4jKqmzTHMzPYvIXkBqY5XF3YXiPsqRxXPmNQm0Q6/520H++
 HPxrRjWNsHr/lqXPWUKY8XQjN0VB3QUzRfJuPw3zgfd15dEIGQ57jpSRi7fE3p6cXdkx
 6NLzXSr4vNC9bN937sTzCCxJHmkGQLUwwcDJnpVBdpT9/yDiGxyps94d2eKaYsXjW8nI
 magVDUKbL+sJZKEDdI3RHiVbTHBQEFwb5y4azCLqdR1LABFCY4rDHAA0MYDddOaimcrL
 qdyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SU0E9luozURTZ9TC+AsIeijArTCKSbuhSsq3JPq3G+Q=;
 b=rp/uGeMHHR1fx1Ehd+sW1S0JXsKLQQKRF7z6+bv3MR66OSIGHY6Rlfp7rfvM9D6cfC
 i9YTgG9BxWmp+ODimXcIm3naOLouF1E1Z9nn/inyCf7sLqvAVOclV6U+QtbLRivi9oJc
 L08tGfPqcXDdfm7sw0s79mjquJkVpY+jU79VvaPTTW7IWGgzDfX7wpB6TsZOM/D2Nmql
 YQo3QbbROMC/lveots5HBnDp5wT7LZYJGWfTW+xP6nsQ45DCYiGzjvOHM2HwRf2gf812
 nByUWLcWEtTfs71UxUJhT38t8M5Jlz71rw23/mSIGZCtp60wK8V8jIuwFGGJ2tUu4yIU
 B8aQ==
X-Gm-Message-State: AGi0PuZrYx3aFa+2tAC4UadRqE/LHkQIOccJx1zEfqIwY6KxSitYYcpd
 c7qtzLBg8a4Fj2kE2EIqIEzWkg==
X-Google-Smtp-Source: APiQypI0A8PJKVgaS0meuPVlaPvfocGUfiVkxmyRS+dPjkui9z0Cj6/x2YMQuD8fNlV3vVje8fNMtQ==
X-Received: by 2002:a1c:4304:: with SMTP id q4mr11080546wma.152.1587736955755; 
 Fri, 24 Apr 2020 07:02:35 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v131sm3061051wmb.19.2020.04.24.07.02.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:02:34 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 06/14] crypto: sun8i-ss: better debug printing
Date: Fri, 24 Apr 2020 14:02:06 +0000
Message-Id: <1587736934-22801-7-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070237_212115_1E5B7DFF 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

This patch reworks the way debug info are printed.
Instead of printing raw numbers, let's add a bit of context.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
index cd408969bd03..8ab154842c9e 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -420,19 +420,19 @@ static int sun8i_ss_dbgfs_read(struct seq_file *seq, void *v)
 			continue;
 		switch (ss_algs[i].type) {
 		case CRYPTO_ALG_TYPE_SKCIPHER:
-			seq_printf(seq, "%s %s %lu %lu\n",
+			seq_printf(seq, "%s %s reqs=%lu fallback=%lu\n",
 				   ss_algs[i].alg.skcipher.base.cra_driver_name,
 				   ss_algs[i].alg.skcipher.base.cra_name,
 				   ss_algs[i].stat_req, ss_algs[i].stat_fb);
 			break;
 		case CRYPTO_ALG_TYPE_RNG:
-			seq_printf(seq, "%s %s %lu %lu\n",
+			seq_printf(seq, "%s %s reqs=%lu tsize=%lu\n",
 				   ss_algs[i].alg.rng.base.cra_driver_name,
 				   ss_algs[i].alg.rng.base.cra_name,
 				   ss_algs[i].stat_req, ss_algs[i].stat_bytes);
 			break;
 		case CRYPTO_ALG_TYPE_AHASH:
-			seq_printf(seq, "%s %s %lu %lu\n",
+			seq_printf(seq, "%s %s reqs=%lu fallback=%lu\n",
 				   ss_algs[i].alg.hash.halg.base.cra_driver_name,
 				   ss_algs[i].alg.hash.halg.base.cra_name,
 				   ss_algs[i].stat_req, ss_algs[i].stat_fb);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
