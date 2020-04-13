Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A281A64DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 11:59:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MH2Rf0uf2Zxgu2qtlaZIf8+JUIoxACHPrSea8Yi9hvo=; b=qjaIonoAQlIktcm0HFP4rxckjc
	zUxCP3pu01UWJ7ICEshQfotSkhEIicp/Chhkxpw0gpY3z+3pZ0MHfZRcfqiCBr8e2RaDvyUK+wZiX
	5XRl6S5TBEGjwCbewgi6Vp0KzlrqlHitZGGVeugx8b/oe+ALnfeMhwBjkcbPq0BHTcaa9AbFG83nW
	vA2CmtgIZi0Efthum9qNQbEnAQ7hJeoDoEM21RMWSr/2BjhY9C+ymPLiIIOr3c/N2nQ6VUvvjKABN
	F64heAuf8+herb7cI4Q46Zj0CYOp4oaqWkpxt7D9WWArSL7zeZYy+HZbWwCTgJCZLRGwdMP8hNOmj
	oumwqQmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNvri-0006Se-CW; Mon, 13 Apr 2020 09:58:54 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNvrB-0006I0-T4
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 09:58:23 +0000
Received: by mail-wm1-x341.google.com with SMTP id g12so1533962wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 02:58:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZwalgJuNdjnU0AH+11/7zFoA2oqP3wkRvVgbyS9b41k=;
 b=hic0LQuAXzvi55O0zIA1+YYH0IaWo9xC6vNrqNKXLLE6t0L6s65KOJhN2ySvxwcaE2
 UfpBNhMUnreUZzRG1E2zPrmC6E882yDFM38Nqmou6PyCY3k8V+xPS7+g12jaoJ40sbtd
 Na78pDLRDN972JR27+HedgP0hp2YZr+kaZn7+6ffaTRd5EpINuUaixRJk+H8oTDDVm0x
 1zgcOCRHq9S4JbpMWp9Ov9y8sZ3zgzPPIg2qqd4fzqCI7cLTI0AbSyXIXKxCAFObL179
 r0l+C857kcmKVfYtAQon5Het54zWNG1nzv3p8J10WWj9y1jJ5kbLOXTccIXAHxj2DJ0h
 OQcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZwalgJuNdjnU0AH+11/7zFoA2oqP3wkRvVgbyS9b41k=;
 b=VohVBAFX6mz+FVeacKNVGt2B0NucE0zk47Ni5D875AgrngKp6xDZqbfE/tei1Doq1E
 oSpHIwL0JtAJ0KRPdZKEuFTPRYo+ZhTDVtzyXIQ207Us77l5F3Ru2dUDd6vO3zjktqFZ
 eUC6ILCjFTbS3GYit+aXoJnP3XuCe9KIKytmuGRmwKbst62+Ygptr76Rpur1lzqoDyYp
 HLO1SP6KiJ44jAHCr+i2LJj1kqwKgC2hO00YOvUuuKOYoUHl8NYHNbmK40nTBztTqhjV
 8IML0dgQXgi7EhGDY1MfIfd1ZeWrmwSzeBbCv90KvKRIT8Hrxo99YlGgws1/VEWqDhdy
 t6Yw==
X-Gm-Message-State: AGi0PuZyJbXIMVCzYR210B5fAY8XaCAbGsSK+6SU5AZlHYErSP/em4xg
 cqGDTFwVpw7SMH2VRf3UCiIueA==
X-Google-Smtp-Source: APiQypJGFd0fTWn2WQshxc7mhyVpmXdUe15UiicQpmsE/HOuu386yGM2whwLZD+UKBrpdMA2K809kg==
X-Received: by 2002:a1c:750a:: with SMTP id o10mr17606357wmc.124.1586771897331; 
 Mon, 13 Apr 2020 02:58:17 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v21sm13594491wmj.8.2020.04.13.02.58.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 02:58:16 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 1/9] crypto: rng - add missing __crypto_rng_cast to the rng
 header
Date: Mon, 13 Apr 2020 09:58:01 +0000
Message-Id: <1586771889-3299-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586771889-3299-1-git-send-email-clabbe@baylibre.com>
References: <1586771889-3299-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_025821_940907_448BEE51 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

This patch add __crypto_rng_cast() to the rng header like other
__algo_cast functions.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 include/crypto/rng.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/crypto/rng.h b/include/crypto/rng.h
index 8b4b844b4eef..0e140f132efe 100644
--- a/include/crypto/rng.h
+++ b/include/crypto/rng.h
@@ -198,4 +198,9 @@ static inline int crypto_rng_seedsize(struct crypto_rng *tfm)
 	return crypto_rng_alg(tfm)->seedsize;
 }
 
+static inline struct crypto_rng *__crypto_rng_cast(struct crypto_tfm *tfm)
+{
+	return container_of(tfm, struct crypto_rng, base);
+}
+
 #endif
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
