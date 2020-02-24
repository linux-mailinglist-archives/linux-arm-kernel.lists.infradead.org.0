Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9100116B0F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 21:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sYz2TOWmjgNSSIQ8+GyKR53917pnNqDU4urONsHHhqk=; b=dwx
	7JIb8gMkcJjyP0K3Q7xKtDldqQ5EXD127uS1GwPRzK4OROlcVkTj3AfugMkP1NkYMNC8RUVS8BrBy
	p8HBQR6pIuavuvEaVKf1FBOcjXO8bTloU8mwdQ27pcAhT2ijKwt7sHMe7+m4FGcpjXbsnvV4XAUSC
	/dVOHwfafTN2eB3l612KTwzWWk5B2UZfgQV2/iND2Q//ca99swsZKLxkoYSrgCCV7DzLqT4Is0UNT
	qmnL5vfYY7QAkA5RjDz3uV5PYsgyv0zcX4G5dan/+++eJNUrWl+OncfVTPertDhgEXL2NzZqsOup/
	MhfiCMUjBARc5R0taa0CmQlLtVdGcaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6KJH-0000xf-Fi; Mon, 24 Feb 2020 20:26:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6KIs-0000pG-Ol
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 20:26:12 +0000
Received: by mail-wm1-x342.google.com with SMTP id s10so663679wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 12:26:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=F7a1q9zaXkmFSVJOCg0lehp0yKULwcs/09ZgYtgpjUU=;
 b=Wv4HPspEJkZrX2QzJQyje7IucGzsS7rUzgqxdGPdIZWOw1o+1CJE/ZaSrRAZVcUsgq
 u0j8BUdO73nFXL1/pYTcP03ju/oNFNmclaeoU4sE5jx59swnUqq8lX+q5zeRQOgpwNQY
 dFxFHil6Ke115v+VbH7j/GGwfwh02Vv2m9TeR8MErXOIQJClm7N9pouprrxsoSuxpdfh
 9n5nrirbEHkIHINMuriwUoxe7dcdO1DCgXZn1ETFNHbqUMoxNK/Nh8bQoYKFxhXU9UFn
 du5hl+eRew+oYMtTvMnfJ1Q6C+t/JSLZNFZfKD4Eoy8tklMrTY0Lif0/u89udl/fcTSl
 oA+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=F7a1q9zaXkmFSVJOCg0lehp0yKULwcs/09ZgYtgpjUU=;
 b=Sj3J/Vcnx/QzHpM94q9kdVUTuhNOFqvMhusVAUCJLXTLTjyc06xqaEvElWGqJ+LiVi
 XKdFkhFDSD3RMEIHi4uWXXqABs7rG1nsfUEpPSqAc8gZPhCUUs9PYgpoP3hBb6sf4TGb
 0klC2beX4oZOXlwrRs8M8hLi9EHmSy4xljzyDLGN4em3SX9I0buDsEr5FKPUKh+fC9zC
 wuO9emCpq9kgqo1zLMWez0aKqH2BPEcFDYdjr1J+eKqUHSyXftWvGyBLGI4PIjN70GQu
 RNT5SOZF9NohDC3AGuGH45tZqLBS8vlMYjTFcXuAhAiLIay8I+PrLQwgK9pt+diUwBL2
 x5pQ==
X-Gm-Message-State: APjAAAWZEuFLeRmZTagYJ3kjHFw82/5L1OMSW2gBPpj3jnYgCY780w7i
 kr5OZjljVYgsBPyWylNgM8taTQ==
X-Google-Smtp-Source: APXvYqzUO5DyKjGU4OIrt+jNB0R1fsRpxxtROEgWMHzOWaT3f8jOiJ25/0nAzMg/rQtuhxQqHJnnmA==
X-Received: by 2002:a1c:bdc5:: with SMTP id n188mr748049wmf.124.1582575968969; 
 Mon, 24 Feb 2020 12:26:08 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id a7sm13356602wrm.29.2020.02.24.12.26.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 24 Feb 2020 12:26:08 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 1/2] crypto: sun8i-ss: fix description of stat_fb
Date: Mon, 24 Feb 2020 20:26:02 +0000
Message-Id: <1582575963-27649-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_122610_853422_F1398B61 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The description of stat_fb was wrong, let's fix it.

Fixes: f08fcced6d00 ("crypto: allwinner - Add sun8i-ss cryptographic offloader")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
index 5ca8da9311b8..66c78c03e376 100644
--- a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
@@ -205,7 +205,7 @@ struct sun8i_ss_rng_tfm_ctx {
  *			this template
  * @alg:		one of sub struct must be used
  * @stat_req:		number of request done on this template
- * @stat_fb:		total of all data len done on this template
+ * @stat_fb:		number of request which has fallbacked
  */
 struct sun8i_ss_alg_template {
 	u32 type;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
