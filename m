Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671BD1ACF96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 20:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lCiEsyWCp0du1QuR3emDLMVQEcYisugI81dYIfoSVlk=; b=TbVWw50+Cz/szc
	800dSRR4fktk3lYyRZDnua+9I9zBWv3x+RciRzoTrOApxqm9QfZ9Dakk8vW6j1Vp2CcT+9srp6ZGA
	j8KnnL/lIj8qU8GH0O1oaIXFLSVyHcSMdEROOh/PWyyMv49kx5t9mXq3rQ60N4Dvz78N9PUTk5yZh
	++GGjLddA5EPqvLaoy6zJ11goiekO0cQf3oec2IgyffxlwIKBDZw+aQ//Px5gS/RDSzLaXoQdiYjE
	OFI7UrHVbEkirnWoIGXvRD2cKJ2fv0ZP3MC3892oHLgnNaPtbYayVE/oDAX8iMvwkLXNnAT4V+9Bj
	vRnF4np/Oqta2RvED7BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP9Bt-00011v-Bv; Thu, 16 Apr 2020 18:24:45 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP9BZ-0000ts-Rj
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 18:24:27 +0000
Received: by mail-oi1-x243.google.com with SMTP id r25so7527530oij.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 11:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2E+VoUpcxjbQphezSMSElLeeuveF/zt0QguBrsX5PCw=;
 b=tU5V57h/iPNI4Y1l78anoeSVneu4LlVuHUKxUiMbl8Oy9YR3fE1vFQ54wH7wyaQgPI
 W0LOtOGtwSCtnAVZ725R+5RVA7GGFdpaol+0gzHRFwJL7N9uFl9ckkZSlOCLUh0oB2ZR
 p0t9R/48+mm/QXh4v+8xRp26i0cZu7fkKHmPL6b0TaK0/lC2TAWh9J9pZoCt6DxR7HPM
 dC2WIUlP7P6P5he2r92zp7PIuvR6VAWDL2DuGvCuu98DcvpwNGKzAupDuCVscNSgkmqW
 IIZBNi5m1XUY22XCmTVQkjStgiYYGJSgLC3lUU9CDQBByMp+Bx37BYctTiZw+difdveo
 FLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=2E+VoUpcxjbQphezSMSElLeeuveF/zt0QguBrsX5PCw=;
 b=ASwYelc9kQL3OXMG9kXN/MMb6kZI7bx3HBdfxAgpIrbHxE4xm4/7Ssr39SqVI+TqR2
 NRqKo7qRdueRsbwBsrQbVUe/AEjkIVEXSxuwOk8qsW4N//BIgdI6PnGt8HC3x8FFvBQQ
 9nv6KTrTP9m9h8GX1OsslOqBJjZiHKUB40Us8orU0vhmAQsXPFUYPuoCvaP/EpHfzXNk
 yhKsMMqhBNyCm+lp+vzFSCfqyf10B+c1XOS8bBHghQ1mnAtmt89ZPZUjOrtLvXf/sKHU
 yrxOwiqTbK2HULoU3e6pmTollUrr+mSl5MGGZ/O+eNNLP59WVg0PNkjnb/36vOIeVqyp
 zZQw==
X-Gm-Message-State: AGi0Pub2UEiePJ7RiofdNPQ6cDBVH/qrAS1d56u8A7cD3ajcxNzqQ23S
 awCCpq08UiLi5Ii5j9RZ2qA=
X-Google-Smtp-Source: APiQypJYh1NRb4Bfqrxrls0PNIPJSeRz4pqPGg+Id5hgSKPZZZfHQFC+goUmyTwlAmRhqTKJJj0n0A==
X-Received: by 2002:aca:d705:: with SMTP id o5mr3958283oig.67.1587061461676;
 Thu, 16 Apr 2020 11:24:21 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
 by smtp.gmail.com with ESMTPSA id f45sm7307785otf.30.2020.04.16.11.24.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 11:24:20 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH] mmc: sdhci-of-arasan: Remove uninitialized ret variables
Date: Thu, 16 Apr 2020 11:24:02 -0700
Message-Id: <20200416182402.16858-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_112425_928266_5AB3848C 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kernelci . org bot" <bot@kernelci.org>, linux-mmc@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Manish Narani <manish.narani@xilinx.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang warns:

drivers/mmc/host/sdhci-of-arasan.c:784:9: warning: variable 'ret' is
uninitialized when used here [-Wuninitialized]
        return ret;
               ^~~
drivers/mmc/host/sdhci-of-arasan.c:738:9: note: initialize the variable
'ret' to silence this warning
        int ret;
               ^
                = 0
drivers/mmc/host/sdhci-of-arasan.c:860:9: warning: variable 'ret' is
uninitialized when used here [-Wuninitialized]
        return ret;
               ^~~
drivers/mmc/host/sdhci-of-arasan.c:810:9: note: initialize the variable
'ret' to silence this warning
        int ret;
               ^
                = 0
2 warnings generated.

This looks like a copy paste error. Neither function has handling that
needs ret so just remove it and return 0 directly.

Fixes: f73e66a36772 ("sdhci: arasan: Add support for Versal Tap Delays")
Link: https://github.com/ClangBuiltLinux/linux/issues/996
Reported-by: kernelci.org bot <bot@kernelci.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/mmc/host/sdhci-of-arasan.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-arasan.c b/drivers/mmc/host/sdhci-of-arasan.c
index 16e26c217a77..18bf0e76b1eb 100644
--- a/drivers/mmc/host/sdhci-of-arasan.c
+++ b/drivers/mmc/host/sdhci-of-arasan.c
@@ -735,7 +735,6 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
 		container_of(clk_data, struct sdhci_arasan_data, clk_data);
 	struct sdhci_host *host = sdhci_arasan->host;
 	u8 tap_delay, tap_max = 0;
-	int ret;
 
 	/*
 	 * This is applicable for SDHCI_SPEC_300 and above
@@ -781,7 +780,7 @@ static int sdhci_versal_sdcardclk_set_phase(struct clk_hw *hw, int degrees)
 		sdhci_writel(host, regval, SDHCI_ARASAN_OTAPDLY_REGISTER);
 	}
 
-	return ret;
+	return 0;
 }
 
 static const struct clk_ops versal_sdcardclk_ops = {
@@ -807,7 +806,6 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
 		container_of(clk_data, struct sdhci_arasan_data, clk_data);
 	struct sdhci_host *host = sdhci_arasan->host;
 	u8 tap_delay, tap_max = 0;
-	int ret;
 
 	/*
 	 * This is applicable for SDHCI_SPEC_300 and above
@@ -857,7 +855,7 @@ static int sdhci_versal_sampleclk_set_phase(struct clk_hw *hw, int degrees)
 		sdhci_writel(host, regval, SDHCI_ARASAN_ITAPDLY_REGISTER);
 	}
 
-	return ret;
+	return 0;
 }
 
 static const struct clk_ops versal_sampleclk_ops = {

base-commit: a3ca59b9af21e68069555ffff1ad89bd2a7c40fc
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
