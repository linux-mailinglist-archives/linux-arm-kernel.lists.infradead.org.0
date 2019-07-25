Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7534743C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 05:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nQPDPcqdpoRfps6Cwv7lclXjS0RK5M9T+1cDMyaMb0U=; b=J9r
	P5FEYTrawRRAzdr/tIpGq4LAuEyICpRWaNB5YkVWyeXSyTSxPKyU5Py6spzWa0kGgyEGI2z1pxDCc
	iqM+sValK9++mGhMNcIdqQPsxW9tnSmp3cQHxWTOXQazVXyHVjslIucPrzcCo3UOrAITYl0E4Hm93
	lgKRPdGUEYv3uu34R4l+mG8oB3jlpqDEM8ZJAWUx2Jl9t1zzoIaSqc9yxRu0fafGsuyIMaTkRYMWk
	ojaj+z1g4pQbQRqpnnQasgZ3VNWhnYESLtaaXDQortyg0ZU/QEoJ+dBXGf3NnByxGooRGWiPEl+O8
	XxBrm/3mM5y+0GQ22WVjKB6copX+pdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqUDp-0000Ko-SM; Thu, 25 Jul 2019 03:15:13 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqUDW-0000Jf-4n
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 03:14:55 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so22801647plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 20:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=d8zAZdYdFYnAKeGUMM1HDcFEcRWpV4qUBdYUY3kZ1R4=;
 b=by6yQkSrA0xrXCkVd2p56DdCMDU+fw5aGoa1iht0nQD0OAhJZw4B3UQbu+h2/1yc1+
 VTMv0AnB1dySbfomphS20W9h47YsdHbao5FhDETtOEpqWyRkplCr2ts1LeB2kO/T/Z6K
 KBkhu+rhdeg83KTlFMUAfYqgwEQXD9GfJHS4LylNE+yXpVUIkJP6bFOkxfOuSo4zzvTv
 KT7WqOBMPHHU0hwxmogxWswSyCy/4qUD5tWNwczwFUO61lqOhYLjEZhuqGKJTYBVZK/b
 ixRvYpeLTWjXD6nG3Pf0cNJPC3k6iQ+kmmNUbiIW6XxmB9J0BXZowDaJnwQweS02RZVZ
 xWFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=d8zAZdYdFYnAKeGUMM1HDcFEcRWpV4qUBdYUY3kZ1R4=;
 b=gGyTOgGeL7/q3QJQxvBr623OHiRmPT4mthzK5Dfnq+tRhngo4PuGrWILmMpv0dfDuZ
 cz7Xp3eyRMHcrQPCbQv8HfLs0+dgH1w3ilwXm4i/20IOjyAWxkYCDm0YIdKJdqmWwsJa
 0leQ/yUtFiqYqAkOdcAQppNVLo16ZtfAcRFbcj87E1TTyaaZ1rEZp6nPBIZ+ftKbwLq7
 v2Zi7tFrM6JBRy8HFnPo5BeqOKfR3CGHzSFALyFOBfsE8NnVHDLhxwDskWX3W6iv9FPu
 fwO/BWZTzvpyDM5Oh6aoB6juC31Fq4gJ4JGBLHbNNiz81iYpVZ+HtgqVpA82Z8GIYFil
 czVA==
X-Gm-Message-State: APjAAAVHchSAnWVGHlOa5yeFLgvNFqgAN9nXShoWMWOhv3c89B2N8JqD
 O/V2to116Icu1L+FHWF3nW3Qtw==
X-Google-Smtp-Source: APXvYqyoBiLIlDrap+emCU2iQLvP6fpx//LZ5imPHXCXcFl29Th1MEb/wFY3AOK32KYuA2i9itfSRw==
X-Received: by 2002:a17:902:9a04:: with SMTP id
 v4mr86248231plp.95.1564024490804; 
 Wed, 24 Jul 2019 20:14:50 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id u70sm10973358pgb.20.2019.07.24.20.14.44
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 24 Jul 2019 20:14:50 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 ludovic.desroches@microchip.com, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, ben-linux@fluff.org, jh80.chung@samsung.com,
 orsonzhai@gmail.com, zhang.lyra@gmail.com, huziji@marvell.com
Subject: [PATCH v5] mmc: host: sdhci: Fix the incorrect soft reset operation
 when runtime resuming
Date: Thu, 25 Jul 2019 11:14:22 +0800
Message-Id: <74a6462743e3d73a630d2634880d8866daee333e.1564022625.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_201454_193158_E3C83F3A 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baolin.wang@linaro.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SD host controller specification defines 3 types software reset:
software reset for data line, software reset for command line and
software reset for all. Software reset for all means this reset affects
the entire Host controller except for the card detection circuit.

In sdhci_runtime_resume_host() function, now we will always do software
reset for all, which will cause Spreadtrum host controller work abnormally
after resuming. For Spreadtrum platform that will not power down the SD/eMMC
card during runtime suspend, we should just do software reset for data
and command instead doing reset for all.

To fix this issue, this patch introduces a new parameter of
sdhci_runtime_resume_host() to let it decide if a 'reset for all' shall
be done or not. Meanwhile changes other host drivers to issue a software
reset for all to keep the original logic.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
Changes from v4:
 - Update the commit message.
 - Add a new parameter to decide if a 'reset for all' shall be done or not.

Changes from v3:
 - Use ios.power_mode to validate if the card is power down or not.

Changes from v2:
 - Simplify the sdhci_sprd_reset() by issuing sdhci_reset().

Changes from v1:
 - Add a specific reset operation instead of changing the core to avoid
 affecting other hardware.
---
 drivers/mmc/host/sdhci-acpi.c      |    2 +-
 drivers/mmc/host/sdhci-esdhc-imx.c |    2 +-
 drivers/mmc/host/sdhci-of-at91.c   |    2 +-
 drivers/mmc/host/sdhci-pci-core.c  |    4 ++--
 drivers/mmc/host/sdhci-pxav3.c     |    2 +-
 drivers/mmc/host/sdhci-s3c.c       |    2 +-
 drivers/mmc/host/sdhci-sprd.c      |    2 +-
 drivers/mmc/host/sdhci-xenon.c     |    2 +-
 drivers/mmc/host/sdhci.c           |    4 ++--
 drivers/mmc/host/sdhci.h           |    2 +-
 10 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/mmc/host/sdhci-acpi.c b/drivers/mmc/host/sdhci-acpi.c
index b3a130a..1604f51 100644
--- a/drivers/mmc/host/sdhci-acpi.c
+++ b/drivers/mmc/host/sdhci-acpi.c
@@ -883,7 +883,7 @@ static int sdhci_acpi_runtime_resume(struct device *dev)
 
 	sdhci_acpi_byt_setting(&c->pdev->dev);
 
-	return sdhci_runtime_resume_host(c->host);
+	return sdhci_runtime_resume_host(c->host, 0);
 }
 
 #endif
diff --git a/drivers/mmc/host/sdhci-esdhc-imx.c b/drivers/mmc/host/sdhci-esdhc-imx.c
index c391510..776a942 100644
--- a/drivers/mmc/host/sdhci-esdhc-imx.c
+++ b/drivers/mmc/host/sdhci-esdhc-imx.c
@@ -1705,7 +1705,7 @@ static int sdhci_esdhc_runtime_resume(struct device *dev)
 		esdhc_pltfm_set_clock(host, imx_data->actual_clock);
 	}
 
-	err = sdhci_runtime_resume_host(host);
+	err = sdhci_runtime_resume_host(host, 0);
 	if (err)
 		goto disable_ipg_clk;
 
diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
index e377b9b..d4e7e8b 100644
--- a/drivers/mmc/host/sdhci-of-at91.c
+++ b/drivers/mmc/host/sdhci-of-at91.c
@@ -289,7 +289,7 @@ static int sdhci_at91_runtime_resume(struct device *dev)
 	}
 
 out:
-	return sdhci_runtime_resume_host(host);
+	return sdhci_runtime_resume_host(host, 0);
 }
 #endif /* CONFIG_PM */
 
diff --git a/drivers/mmc/host/sdhci-pci-core.c b/drivers/mmc/host/sdhci-pci-core.c
index 4041878..7d06e28 100644
--- a/drivers/mmc/host/sdhci-pci-core.c
+++ b/drivers/mmc/host/sdhci-pci-core.c
@@ -167,7 +167,7 @@ static int sdhci_pci_runtime_suspend_host(struct sdhci_pci_chip *chip)
 
 err_pci_runtime_suspend:
 	while (--i >= 0)
-		sdhci_runtime_resume_host(chip->slots[i]->host);
+		sdhci_runtime_resume_host(chip->slots[i]->host, 0);
 	return ret;
 }
 
@@ -181,7 +181,7 @@ static int sdhci_pci_runtime_resume_host(struct sdhci_pci_chip *chip)
 		if (!slot)
 			continue;
 
-		ret = sdhci_runtime_resume_host(slot->host);
+		ret = sdhci_runtime_resume_host(slot->host, 0);
 		if (ret)
 			return ret;
 	}
diff --git a/drivers/mmc/host/sdhci-pxav3.c b/drivers/mmc/host/sdhci-pxav3.c
index 3ddecf4..e55037c 100644
--- a/drivers/mmc/host/sdhci-pxav3.c
+++ b/drivers/mmc/host/sdhci-pxav3.c
@@ -554,7 +554,7 @@ static int sdhci_pxav3_runtime_resume(struct device *dev)
 	if (!IS_ERR(pxa->clk_core))
 		clk_prepare_enable(pxa->clk_core);
 
-	return sdhci_runtime_resume_host(host);
+	return sdhci_runtime_resume_host(host, 0);
 }
 #endif
 
diff --git a/drivers/mmc/host/sdhci-s3c.c b/drivers/mmc/host/sdhci-s3c.c
index 8e4a8ba..f5753ae 100644
--- a/drivers/mmc/host/sdhci-s3c.c
+++ b/drivers/mmc/host/sdhci-s3c.c
@@ -745,7 +745,7 @@ static int sdhci_s3c_runtime_resume(struct device *dev)
 	clk_prepare_enable(busclk);
 	if (ourhost->cur_clk >= 0)
 		clk_prepare_enable(ourhost->clk_bus[ourhost->cur_clk]);
-	ret = sdhci_runtime_resume_host(host);
+	ret = sdhci_runtime_resume_host(host, 0);
 	return ret;
 }
 #endif
diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index 603a5d9..83a4767 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -696,7 +696,7 @@ static int sdhci_sprd_runtime_resume(struct device *dev)
 	if (ret)
 		goto clk_disable;
 
-	sdhci_runtime_resume_host(host);
+	sdhci_runtime_resume_host(host, 1);
 	return 0;
 
 clk_disable:
diff --git a/drivers/mmc/host/sdhci-xenon.c b/drivers/mmc/host/sdhci-xenon.c
index 8a18f14..1dea1ba 100644
--- a/drivers/mmc/host/sdhci-xenon.c
+++ b/drivers/mmc/host/sdhci-xenon.c
@@ -638,7 +638,7 @@ static int xenon_runtime_resume(struct device *dev)
 		priv->restore_needed = false;
 	}
 
-	ret = sdhci_runtime_resume_host(host);
+	ret = sdhci_runtime_resume_host(host, 0);
 	if (ret)
 		goto out;
 	return 0;
diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
index 59acf8e..4e9ebc8 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -3320,7 +3320,7 @@ int sdhci_runtime_suspend_host(struct sdhci_host *host)
 }
 EXPORT_SYMBOL_GPL(sdhci_runtime_suspend_host);
 
-int sdhci_runtime_resume_host(struct sdhci_host *host)
+int sdhci_runtime_resume_host(struct sdhci_host *host, int soft)
 {
 	struct mmc_host *mmc = host->mmc;
 	unsigned long flags;
@@ -3331,7 +3331,7 @@ int sdhci_runtime_resume_host(struct sdhci_host *host)
 			host->ops->enable_dma(host);
 	}
 
-	sdhci_init(host, 0);
+	sdhci_init(host, soft);
 
 	if (mmc->ios.power_mode != MMC_POWER_UNDEFINED &&
 	    mmc->ios.power_mode != MMC_POWER_OFF) {
diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
index 89fd965..f3cd516 100644
--- a/drivers/mmc/host/sdhci.h
+++ b/drivers/mmc/host/sdhci.h
@@ -781,7 +781,7 @@ void sdhci_adma_write_desc(struct sdhci_host *host, void **desc,
 int sdhci_suspend_host(struct sdhci_host *host);
 int sdhci_resume_host(struct sdhci_host *host);
 int sdhci_runtime_suspend_host(struct sdhci_host *host);
-int sdhci_runtime_resume_host(struct sdhci_host *host);
+int sdhci_runtime_resume_host(struct sdhci_host *host, int soft);
 #endif
 
 void sdhci_cqe_enable(struct mmc_host *mmc);
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
