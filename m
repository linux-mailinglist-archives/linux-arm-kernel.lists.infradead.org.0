Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1711A64E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 12:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e4FYO0H0jvc8gv79jGuGS22TMdzQx/wdhHiY/U+yJcs=; b=DnXzoUkEHRuOO4FPTw/UGAy2B8
	cBkDQ7V8OqpiJ1pOf5P288NoPCB/afv1CNDyJWdAOFLpuNyjK/2ht2VMccJ0zrI3ZdYQJSpq1BM/r
	j6XN89kRjdk3eBXlwIl6jAqMgPR2/871soHp+aw6IJkCcDkVNSXMV5uxFxf0G+6JHBeMAqpTmRVnE
	mIK1uK6rPVINmelQOVc5KzhzVF0Wgw6xpH0bZUuGLrR32o195CePCTHQQFKXXiqC0PULP1UskUNrP
	2hM6g9xPX8lNWsGYy1WV4HolEwLUxgoRU/b/gGgq4AlUT3oCzZ7HPHMqwzA1YshHW3aqxIYxwbB90
	vnkedfrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNvt5-0007qn-Hv; Mon, 13 Apr 2020 10:00:19 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNvrE-0006JT-2V
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 09:58:26 +0000
Received: by mail-wm1-x344.google.com with SMTP id h2so8825606wmb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 02:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=KJ5PBE+QCFWEenkZ4gUgAJxpbhutHi1vjlsaJ3JQibs=;
 b=e1WrT4KcRVi9wuVJVygj8vhAkk71TGHmHpMYTjCJuHliLGWyDssU9cGqkK2CSWVejb
 4tT7JgSQKtWSPtNh3MjeQe8Xag+jQXEUvDzA4/c/aaEnJYs60cHLHBhujmeY4hi+2jOZ
 QOgTyQT1PBEuG3CNM4Dzr7gnqon6jRP/XbvFjRMA5pLCqDH5m4NWksv6aOpkM35twxc1
 C5RVOi9OWRzoAxTOoZeZX/Rqh/7Sb5KQ8kMAoxCxBZfIrd4KOqCmv7p62qTS15T2tZaM
 4LPqKZuEN8KUTxxGwhYIznawduuzubHIjr/o+hRL6rcZfZRKmub0W2+6H1q20NktRFAE
 pIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=KJ5PBE+QCFWEenkZ4gUgAJxpbhutHi1vjlsaJ3JQibs=;
 b=W6ie6nQuRn19JRbtR6osy793+I5oC57cb77Fy6V8QxpV7bjK4k1t3nk2rnE1JGAtXI
 w2WR7/0o1vT+zl47r09ZuMntGPN39EU5QW09R/t2h+xAYBVWc7gDZlUPgYFZLoT6Nuxh
 cOZoAMu9TYXyw8Qu63LuBVD1HfrJqhwWhz7T5Y9l9IA9m/n/HnCtOXryhhRYRqUqlvGH
 Axug6g5oWdGI65dozFTP2ubPxSpX+0OZALz6M8u1xPMIloxs/gLV6cElgNOPIwVgRVVs
 6ya7vuRpPqu6ygFEB8AmSdnNo/MGWrmd4SRzzNY8Q7sjoW7qA4nN9NoE+pdioSRnNh9B
 DqBQ==
X-Gm-Message-State: AGi0PubJeyhJUcAjEOhDJOhSmS25T4U69odTMWB+lwqv9fNYXoHKs0Dn
 E7BbtsyyZ9NfqxGjrD8u6OOhlw==
X-Google-Smtp-Source: APiQypI8Oui5Njp9cGwOgZMXxDuOowTpat6FLkW6gIqG5p+5OQvCmGnkx5jBVxT8gj6Q9S2kjdEoxw==
X-Received: by 2002:a1c:c90a:: with SMTP id f10mr17527326wmb.179.1586771902925; 
 Mon, 13 Apr 2020 02:58:22 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v21sm13594491wmj.8.2020.04.13.02.58.22
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 02:58:22 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 7/9] crypto: sun8i-ce: Add stat_bytes debugfs
Date: Mon, 13 Apr 2020 09:58:07 +0000
Message-Id: <1586771889-3299-8-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586771889-3299-1-git-send-email-clabbe@baylibre.com>
References: <1586771889-3299-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_025824_142298_B7F77B67 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
