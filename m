Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA63F34170
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:15:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=H292Kw9SwsODfPHExXD+oV4xEQU7BFv+kfIswCaNNFA=; b=is2Uyng9V5sIe1YApJUZRAMVXK
	4Y33HuBjPQ0SPfBHNxpV2DSzuIsDDJWII5YTRQpsHBMsGHS9PmOu+DFHOX4mwkXc4pqa6wxMQxNe6
	ts+MqB4NwsLaSDdUzxRz/nwWz1stWwOXkHjKrDZKgkTeJ4k5oevVUpZObGMsWY2LroHLJNf1jhV1i
	pJosnZqrTq1YnQMwcyWpKGBU6Yb8ptpOo6SVNJ/M+weyyPmYrgpFWlFLl80qehkeWirobyGsW6v37
	ik4Dizy1RkcfboDxiWQZb0pkyETaPR1zgF8fAOSjaBbVJSorUTrLtjoBHwZ3sq8+fd0VIETzYpLpK
	1gEcigFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4bV-00026S-Mo; Tue, 04 Jun 2019 08:15:33 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4b1-0000Vy-Ey
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:15:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id s24so7894457plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=FdrxifC9VKJDfmhJlZCtT+SJXQU8nyEdMzYOjCE23wE=;
 b=O+2GCVHo8+jdVe0br2gCJmuVnoyN4ac5Q7dhggvalzYPiUr+vQUkbbNC7rkfnG/DMc
 Po9EnLA2txYJNYbCrgFTev4bagodznF/DhZ9ndevRxjnCflMa2CwWoR1iVBRqmrNGZhr
 6ajDgOfmCMYdyDcsNoyNSHvDeqsSB9N7tBPXRUpbID/7kXrqXOAlXM6/ujiDUcHeJ1Na
 Cl2K8MyOB4vbDBYM0Cg/SoLMUchkU1OA+KdEsjrCfciLpldwdMyZVr/j/L9QG5gSdY64
 bnykp/4rdv3o9rQoqFm+Y7Mzq++0RgDOJOy74UVZSB378K3GAr+Sh03UEiXRAIYzVGUE
 iGEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=FdrxifC9VKJDfmhJlZCtT+SJXQU8nyEdMzYOjCE23wE=;
 b=HQL5bc5SAtT/KRrDzgT/6FEtRDngvylLcGJDHtdIYAVGqYrYIkdksL1mmm0arCHizj
 VtJaABW4ge8YykvR7/TKK8dg35toZBVEcrDGFLHZ9pw3MhNlSJqkN7dEWyNnrtj0Ye5u
 fdbNMGMbl9+hjcnJOUhZYx7fLZr2XXgciI3pAb96vpcy7CUCX53wg9PUwAEHQLMM07ro
 LAOyO2Bf1AStlAn6OVFvsggA7yFbVnfdt2i0ocYIpcSZYawyNlJOEQnU6gz528Jtrqdx
 +NhVSJp6Kw2xKDyTi1O8Q4i8AyLxKEJtd6/9ZSWJh7FaHBU1y/TM5MK7j8KWB5fmfvsI
 01iQ==
X-Gm-Message-State: APjAAAXXO/QYNwFEUIdZwyBkFBS1f4wmM7DT5K7muvj5W38ZzPMlPPdM
 ITXuq1jnaRgetEwb/KRvhDdQBQ==
X-Google-Smtp-Source: APXvYqz2jjWsddPWnn+pjc0wk/Ss7eehLdPZxkHhdASSNlIhF2ImTI/Mu4NCkGO5CgDpbsuTkVMbEQ==
X-Received: by 2002:a17:902:7e0e:: with SMTP id
 b14mr9660980plm.257.1559636102504; 
 Tue, 04 Jun 2019 01:15:02 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.14.58
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 01:15:02 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH v2 3/9] mmc: sdhci-sprd: Add optional gate clock support
Date: Tue,  4 Jun 2019 16:14:23 +0800
Message-Id: <3bd7f5b0d4c78b75f8c4067a34f79396b4fd0a5c.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011504_392634_D386005F 
X-CRM114-Status: GOOD (  14.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, baolin.wang@linaro.org,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For the Spreadtrum SC9860 platform, we should enable another gate clock
'2x_enable' to make the SD host controller work well.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-sprd.c |   35 +++++++++++++++++++++++++++++------
 1 file changed, 29 insertions(+), 6 deletions(-)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index e741491..31ba7d6 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -60,6 +60,7 @@ struct sdhci_sprd_host {
 	u32 version;
 	struct clk *clk_sdio;
 	struct clk *clk_enable;
+	struct clk *clk_2x_enable;
 	u32 base_rate;
 	int flags; /* backup of host attribute */
 };
@@ -364,6 +365,10 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	}
 	sprd_host->clk_enable = clk;
 
+	clk = devm_clk_get(&pdev->dev, "2x_enable");
+	if (!IS_ERR(clk))
+		sprd_host->clk_2x_enable = clk;
+
 	ret = clk_prepare_enable(sprd_host->clk_sdio);
 	if (ret)
 		goto pltfm_free;
@@ -372,6 +377,10 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	if (ret)
 		goto clk_disable;
 
+	ret = clk_prepare_enable(sprd_host->clk_2x_enable);
+	if (ret)
+		goto clk_disable2;
+
 	sdhci_sprd_init_config(host);
 	host->version = sdhci_readw(host, SDHCI_HOST_VERSION);
 	sprd_host->version = ((host->version & SDHCI_VENDOR_VER_MASK) >>
@@ -408,6 +417,9 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_set_suspended(&pdev->dev);
 
+	clk_disable_unprepare(sprd_host->clk_2x_enable);
+
+clk_disable2:
 	clk_disable_unprepare(sprd_host->clk_enable);
 
 clk_disable:
@@ -427,6 +439,7 @@ static int sdhci_sprd_remove(struct platform_device *pdev)
 	mmc_remove_host(mmc);
 	clk_disable_unprepare(sprd_host->clk_sdio);
 	clk_disable_unprepare(sprd_host->clk_enable);
+	clk_disable_unprepare(sprd_host->clk_2x_enable);
 
 	mmc_free_host(mmc);
 
@@ -449,6 +462,7 @@ static int sdhci_sprd_runtime_suspend(struct device *dev)
 
 	clk_disable_unprepare(sprd_host->clk_sdio);
 	clk_disable_unprepare(sprd_host->clk_enable);
+	clk_disable_unprepare(sprd_host->clk_2x_enable);
 
 	return 0;
 }
@@ -459,19 +473,28 @@ static int sdhci_sprd_runtime_resume(struct device *dev)
 	struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);
 	int ret;
 
-	ret = clk_prepare_enable(sprd_host->clk_enable);
+	ret = clk_prepare_enable(sprd_host->clk_2x_enable);
 	if (ret)
 		return ret;
 
+	ret = clk_prepare_enable(sprd_host->clk_enable);
+	if (ret)
+		goto clk_2x_disable;
+
 	ret = clk_prepare_enable(sprd_host->clk_sdio);
-	if (ret) {
-		clk_disable_unprepare(sprd_host->clk_enable);
-		return ret;
-	}
+	if (ret)
+		goto clk_disable;
 
 	sdhci_runtime_resume_host(host);
-
 	return 0;
+
+clk_disable:
+	clk_disable_unprepare(sprd_host->clk_enable);
+
+clk_2x_disable:
+	clk_disable_unprepare(sprd_host->clk_2x_enable);
+
+	return ret;
 }
 #endif
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
