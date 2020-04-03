Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7D719DEC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 21:51:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MH2Rf0uf2Zxgu2qtlaZIf8+JUIoxACHPrSea8Yi9hvo=; b=Hi44n4tr7BqGIBZglHn7mW1rfA
	Jn74YPH5AQNqowP1+f5VxYN1tyoaInWbu5lxJHnNfwQZuhbE3/ZEzQXWaMCdfl43FewDlj4FTgqhb
	fLcBnW6op6mpYAM5t9Fq9Q2VxRcaRL9p+v8GG21Tg9N69RMq2JRQhIEpwCvO2ovYypOGzpSq5FRCv
	NHFSfhF1Ahf0WB8nvfb2USnSX6KnZehCPWz3smpyzA1mqhWkiWhaIQS88u/dRzz67eDR9ws8qCAyG
	aE5Lj916sdqXMf0nSlmBMgFZTYJpckt11SLQpqw8sNJrxeiqNLBP5aUXR9zn7UMx4o69CgYc6mO7e
	Mnt1m8Ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKSLK-0006Qy-Lc; Fri, 03 Apr 2020 19:51:06 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKSL3-0006JK-L6
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 19:50:51 +0000
Received: by mail-wr1-x441.google.com with SMTP id h15so9907573wrx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Apr 2020 12:50:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZwalgJuNdjnU0AH+11/7zFoA2oqP3wkRvVgbyS9b41k=;
 b=KUVQPcnyz2hl7SCVBDI+1XsXZwodz/A+BMq7RJInRs48OWppiuWfPyn3Z7e/O+9Ku+
 3HlPHApGLzvMJs+0KFmGHj/6DUC23P9I2sSJDWPkk+YFZ2Q+B78IgzzUYzFLpc+dgn8r
 PndzOOMEAbb8Kg0i01xjsBVBJ/NkY32OR8lgja1akb26BTK54snwotBHjQNvVC7GTLyh
 T8md9A3jE00qFWhh1cLuTU9IBjwacoK0WRSxwOOpWinkGE+CQypkkEAp7Zr+vFheElVz
 E7fXNgg+imGbrYqZWVqTnvq7MHOMaQ1+e19T7UUWL0wfWgjinehkX8CITwHPlCPscYeI
 iVSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZwalgJuNdjnU0AH+11/7zFoA2oqP3wkRvVgbyS9b41k=;
 b=lJxp+IFmuYU2iyPWeOhcQREMUCsrPx7y61kiAwORwbheiJ+oIdc1GF2J7ZD5VvYauA
 3//7VlAB38JMEFmzuC0azr2Hd6r++VRStkqeAT0byCJ9KmCQ/xTUA86F9JUmyJ7qo4NN
 frr3vBpIBrwrlh7SJ3tt44Tch08gPxgxzd4p4TFsvQZm4D+pm7S8mjXwcclzH0QNvMn/
 JZMbuEZXMAyF6Efm6V1+jHueL4i85Yzcp1HZFdtv8lskuERUvrSzGCb8k3M2qg0rRMDi
 8lqWnKvkaQm+Aqe6KZ7h27EuLbbRBeGbGoBtCWp99HwshYgOr22ygGyuAmu/04vB+myk
 vEUw==
X-Gm-Message-State: AGi0PuYhEox9EP6pmXxwcHbIh5zgrz/5s9hpFc5uC0riQN2bWnkEnRm7
 ffrke5kxYHGoD9MzWDwyzxPA0w==
X-Google-Smtp-Source: APiQypJPD3CP1v4p+ZE6U2Aywvu5WeATMjzlv5PMn28lxY1pqFnQhQh7N1RgKP5cr5vCmeFo5f3YRw==
X-Received: by 2002:adf:9e08:: with SMTP id u8mr10686337wre.155.1585943448089; 
 Fri, 03 Apr 2020 12:50:48 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id c17sm8102448wrp.28.2020.04.03.12.50.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 Apr 2020 12:50:47 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 1/7] crypto: rng - add missing __crypto_rng_cast to the rng
 header
Date: Fri,  3 Apr 2020 19:50:32 +0000
Message-Id: <1585943438-862-2-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
References: <1585943438-862-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_125049_711932_50A4AA34 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
