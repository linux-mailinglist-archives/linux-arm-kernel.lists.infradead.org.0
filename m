Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45301F856B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jun 2020 23:42:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HeMMs4Y1BNowZ2uiz9wUmp+UGRSt5+j7U+5/7gw/VL0=; b=QKj
	jsUPL0piSlvkncBeHjZu1612yNabheUDqYL/FW+lKq7GkO9KbgMraQoHf57sCA6PmlpzWXTeUlsYC
	rFCao01yf2OtXLK5cXpobkQAqXp8H0mVWo30trDoE4mnfx9Fr+SNlaH5fcM0ZxDxBMfA304+7ySxw
	46Wox4aekiK597ArvA9patU2j+gNjSmTg0pYWxIqpBL4LzF/F3RuPqk06J4+zKsvxsmuCypD3RnDX
	evK+xd6rx0p+f+J8+aUCAhwXsA0iPGECa51r03MDSNwrGiIPOZRQ466nVdj/b18ffokTPdMBGuE6i
	cX6x03/XUtxcC0TNTJSNMyRtxqk5owg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkDuL-0002ou-6d; Sat, 13 Jun 2020 21:41:45 +0000
Received: from mta-p8.oit.umn.edu ([134.84.196.208])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkDuC-0002oJ-8J
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jun 2020 21:41:39 +0000
Received: from localhost (unknown [127.0.0.1])
 by mta-p8.oit.umn.edu (Postfix) with ESMTP id 49krdW3Zkvz9vZTv
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:41:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at umn.edu
Received: from mta-p8.oit.umn.edu ([127.0.0.1])
 by localhost (mta-p8.oit.umn.edu [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dbDEWp6XCguQ for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 16:41:35 -0500 (CDT)
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mta-p8.oit.umn.edu (Postfix) with ESMTPS id 49krdW1mSMz9vZTh
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 16:41:35 -0500 (CDT)
DMARC-Filter: OpenDMARC Filter v1.3.2 mta-p8.oit.umn.edu 49krdW1mSMz9vZTh
DKIM-Filter: OpenDKIM Filter v2.11.0 mta-p8.oit.umn.edu 49krdW1mSMz9vZTh
Received: by mail-il1-f198.google.com with SMTP id l11so9211423ils.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 14:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=umn.edu; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=LSFpRsDH7hPv0sXcI0eBKridM6HBdGl5vIGKq0rJzoY=;
 b=auZktx6ehAhBajQlNLlI3wm6+d/hAPq8yaPTIV0vlYaeRrgaW3hoVKPn9qzjsia14p
 PiNxeKtm8fOFcqmrbG++0+2KZ2Jfx9ybuCk8eyx1je4TBejzWJzhBwHirnfDeOZNESDe
 b6qaIEBwyW498ZP7ZKeSkzzbpNwlpEXxglPubM78kJo/euKcITeUPzisctzP3RPMwr87
 7UoQ6m8bnLiqQBIElWMX1q7TpOHphL8f38WMAFGB2PmvGYRT1i5wA4mFRvwLyLMlR4lg
 ZbFZc9kcFMeb0XJEv3c0fbE9WsxIcH9/sgZKUa9+qBQwJV/UP28bN7oFf/506QB9gYTZ
 NZNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=LSFpRsDH7hPv0sXcI0eBKridM6HBdGl5vIGKq0rJzoY=;
 b=X5JgPDF6aOHC3haJEuelr/HjdmcrC8mq02+1XikihxUqeFO05/3DURdUapWh+b4Ch6
 k3gSeAcE+HEYFuOBP5NJXwWo5CHrosUgSoBEBAzc8oAhlIbA1Ol09CSSbWfl8eTiDEdp
 jb2l6bZJKDr8ULsViJDe665qsOT4rvL/BSwxeqqGlHzYcht7rN4HYsa/FszkpSzkPjar
 FUYtedw6N3onfu0WoupsAgT9+CH586BunuPIy9Kj2/ss97yCoykXalUNfJEVT7u+BZzL
 dxqUUcfe2rESJBbaFO2KU6TQsvn+Twwd+hI0+75hgOsrQJsa3NNdPhu0UYJFqRErsV4m
 DGEQ==
X-Gm-Message-State: AOAM5336t6KkOIZemzCSBpRZAuyCqQE7g/a3KYNJP02PrUrBzX7bl5ol
 tDQNUEUd6J9aNEOtnLv1XeruB9eCYz2nwkCVGCPpz/OgElLspMBlWIHr6QtnMJAMliwAIkmdUY2
 av8C93G43jkJ7zwMN0u0rSMxmVLSU6PxZt2BWxZI=
X-Received: by 2002:a92:c9ce:: with SMTP id k14mr19250709ilq.250.1592084494710; 
 Sat, 13 Jun 2020 14:41:34 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyb26JtPoL+OYiwijo1f/aBaj8/q93A9vM3woScZqAS1tFwQgWOSDCRXrCE9R7tquWbd2eGgg==
X-Received: by 2002:a92:c9ce:: with SMTP id k14mr19250688ilq.250.1592084494366; 
 Sat, 13 Jun 2020 14:41:34 -0700 (PDT)
Received: from qiushi.cs.umn.edu ([2607:ea00:101:3c74:4874:45:bcb4:df60])
 by smtp.gmail.com with ESMTPSA id d5sm5174386ioe.20.2020.06.13.14.41.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 13 Jun 2020 14:41:33 -0700 (PDT)
From: wu000273@umn.edu
To: kjlu@umn.edu
Subject: [PATCH] char: hw_random: Fix a reference count leak.
Date: Sat, 13 Jun 2020 16:41:28 -0500
Message-Id: <20200613214128.32665-1-wu000273@umn.edu>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_144136_382519_7925E584 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.84.196.208 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, Herbert Xu <herbert@gondor.apana.org.au>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Philippe Ombredanne <pombredanne@nexb.com>,
 =?UTF-8?q?=C5=81ukasz=20Stelmach?= <l.stelmach@samsung.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, linux-crypto@vger.kernel.org, wu000273@umn.edu,
 Matt Mackall <mpm@selenic.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Qiushi Wu <wu000273@umn.edu>

Calling pm_runtime_get_sync increments the counter even in case of
failure, causing incorrect ref count if pm_runtime_put_sync is not
called in error handling paths. Thus replace the jump target
"err_pm_get" by "err_clock".

Fixes: 6cd225cc5d8a ("hwrng: exynos - add Samsung Exynos True RNG driver")
Signed-off-by: Qiushi Wu <wu000273@umn.edu>
---
 drivers/char/hw_random/exynos-trng.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/char/hw_random/exynos-trng.c b/drivers/char/hw_random/exynos-trng.c
index 8e1fe3f8dd2d..ffa7e0f061f0 100644
--- a/drivers/char/hw_random/exynos-trng.c
+++ b/drivers/char/hw_random/exynos-trng.c
@@ -135,7 +135,7 @@ static int exynos_trng_probe(struct platform_device *pdev)
 	ret = pm_runtime_get_sync(&pdev->dev);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "Could not get runtime PM.\n");
-		goto err_pm_get;
+		goto err_clock;
 	}
 
 	trng->clk = devm_clk_get(&pdev->dev, "secss");
@@ -166,8 +166,6 @@ static int exynos_trng_probe(struct platform_device *pdev)
 
 err_clock:
 	pm_runtime_put_sync(&pdev->dev);
-
-err_pm_get:
 	pm_runtime_disable(&pdev->dev);
 
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
