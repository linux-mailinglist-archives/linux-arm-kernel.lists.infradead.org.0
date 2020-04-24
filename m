Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AF71B77C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:03:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XmkXCIapmlY98wza/3rq6N1kbcMSfpHyWugL+QAovI8=; b=ZF5A+14idME76qPnJUltsaAl6N
	ouSd7ZPTRGMzYGMOnRyZ0lV6MYqiW2xa3FZjUO4vaWpe/foc3Iklv5IEyGStuSb3LRQoOUUs2zNvz
	92kleHYxhUD4yaZig7jJ96DwhSg3ZcnkRinMj0ckiZ1vcuQVWCFxQImVfUGwQdPv/DaZm+yUhGt6J
	uegP7qV59PhK+ejjunwvUo98tMhYvFcAehNDUY7itX5rHB5y/Hqv4zJzdCn/TB/1B+qAKF36poFzc
	mUExdSMrPWp59cTwuBmVgmzfuTemwMLlcXXCH9hKb330c1vanSyEj4JOVJ4/FRh6VPx4UExrqzEfG
	Vqk4vtxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyv5-0002ig-O7; Fri, 24 Apr 2020 14:03:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyuQ-0002TB-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:02:28 +0000
Received: by mail-wm1-x342.google.com with SMTP id u127so10860836wmg.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 07:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LFDRXwTitCs1nrRc2jOX6sWRaTpGwdnr5FsLJM6PpMw=;
 b=cA4XqStYQ3bJdc/z0XtvsleabRXRTvKKpGNZXfAxCX/J4R/VlS1P2nRctqDhYN9uL6
 hA2YNT9vS+RusmqhGcnw6UYAyyjSiXRvqiayiQ9336ybq5F86jrE1LigdDmvO94775Zq
 XCFX1a6iT7SxxQIlDlmf0D2WspHCYl+NATRjv9SPxzCGKYcOIB2zun6fmLqT/KS9nBEo
 VuEE33Bv6CK7A7p0hZOa2PZyEsdOA64WDIWpuGwahdB+RURUS8C+JTUP4NT+/mar1Mbo
 2cZ1DyAtdkF/RrPfpKJrf7nI0UCnzZRL2GgoKIRtyGGJe8MswS4KBW1ZPXReZYKaE8xR
 EYag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LFDRXwTitCs1nrRc2jOX6sWRaTpGwdnr5FsLJM6PpMw=;
 b=d8LA9BBbq3I0Eg65L+TS/S6qDD1vIXenEr79OUcR1UmDidT9OGd0Zh2LhwHmSIyKvh
 6/dH1aVoYi50CdJmpxUnIqJIOMJuisEu/QWMeBVjHN5kCsetd9XLZRgWTdFOAtjf/woq
 CS/lWiYzxJtgQ6dN31oWLbZjIU8j8wHHQKBMW8vY5C5+YD3IabPvCNrettB/ut5BUzD7
 Ti9Q1oUJqPHQSNGX8zPa+oQDU/iH2PfHU7ZpawBg1fdZLSZHBEP7xIMpG8t3BoU8md4U
 JWOpUJ29yuFcLl/npEbUJmvqRdEYOkM5oWRguDtrI+VzSuDMIorgzAHLyBmBjuNFefJP
 6tGA==
X-Gm-Message-State: AGi0PuYLbqaotRfYYq7grKMSBnARJD82c5rStNK62qApwOYKwBCLUnA3
 O1CqLF1hVs3FZigVg8vIrfLVVw==
X-Google-Smtp-Source: APiQypI7FP3oDj+Ga1cJJbsF1kwlbSAYMlbf8X/KovxXObcFQAoCwc5XUxK3qZl570o61YXVEbKfzQ==
X-Received: by 2002:a05:600c:290f:: with SMTP id
 i15mr9772059wmd.167.1587736944462; 
 Fri, 24 Apr 2020 07:02:24 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v131sm3061051wmb.19.2020.04.24.07.02.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:02:23 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 01/14] crypto: sun8i-ss: Add SS_START define
Date: Fri, 24 Apr 2020 14:02:01 +0000
Message-Id: <1587736934-22801-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070226_434713_5FFBCED1 
X-CRM114-Status: GOOD (  11.94  )
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

Instead of using an hardcoded value, let's use a defined value for
SS_START.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 2 +-
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h      | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
index 5d9d0fedcb06..81eff935fb5c 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -61,7 +61,7 @@ int sun8i_ss_run_task(struct sun8i_ss_dev *ss, struct sun8i_cipher_req_ctx *rctx
 		      const char *name)
 {
 	int flow = rctx->flow;
-	u32 v = 1;
+	u32 v = SS_START;
 	int i;
 
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
index 29c44f279112..f7a64033fc03 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
@@ -13,6 +13,8 @@
 #include <linux/debugfs.h>
 #include <linux/crypto.h>
 
+#define SS_START	1
+
 #define SS_ENCRYPTION		0
 #define SS_DECRYPTION		BIT(6)
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
