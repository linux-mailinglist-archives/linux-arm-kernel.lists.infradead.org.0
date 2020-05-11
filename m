Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE59B1CD1D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 08:29:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wo7/Mus4gOeuDbHhlaxzUWv35uzwQA1sFkJlihi/B9w=; b=gk3TO1ESMPDeB0
	pwhA+lj+/wPrZAfHlkaMUC2+2ZqkGDbEPyVdC7ebFzCchBkipwUzmYWqpbc+xlWbIgCskmF1Pfa61
	uv8IveF12F8nuIz0Qf3MIegG2lE0jq+zZ39G9HoWPofp+5fvzfc3QedErvGGWq8Vk7tNSEasI+DGy
	mewSlCP5JJcTa5lZPR5cAcZPd9D/pJn2nrmmeP/BTsGlXTCp38CxEd1dtU/G43JeXz8v7HzV7ei1d
	oCkhe8amXPbD9z2MXkIwwIZaWOToZRcEc0nA/6kAVy6tFcAZvXVpPjIVix3sNht9rpou49UApvncQ
	wF4jY/DQ9AhS1+GQpPMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY1wN-0007am-Ev; Mon, 11 May 2020 06:29:27 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY1wE-0007Zu-OE
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 06:29:20 +0000
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net
 [126.90.202.47]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 04B6SiJ4024114;
 Mon, 11 May 2020 15:28:45 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 04B6SiJ4024114
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1589178525;
 bh=UZ9iiUxPKBmS0Mn31e7Z5LXfKunX+kDfVEaBQd1XIlg=;
 h=From:To:Cc:Subject:Date:From;
 b=uSuUlZR12aW+cvaMThllo+l65i/jh1c6+2jL1BLJwgQVM4KfqexvMG5ymvOeyCH2k
 WJnDjgmDDjvHX6yettUn7zWfG7eMZgwpZcLHyLJ9cQ+1LrKYETAfIbfmNIZWPNSekp
 QekYq6dyw3NHR5L/nWmvYA+WP3J35giy7wOibU93C+Scdd8NtzAUFtezZEVnAq715O
 awaBlks8RzY4Vv84+fOlJxCITct7lik2PpypQPcuQd2fH2HbAgPqMYfhP95+2mgWp/
 JmCTpehBKpHWCJSGMdsYMo/JAuBjuZaaGfknapx0o2KfUTbIFNayKHwonyUW/5I3IY
 n0BxULFplT3ZA==
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-mmc@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH] mmc: sdhci: use FIELD_GET/PREP for current capabilities bit
 masks
Date: Mon, 11 May 2020 15:28:27 +0900
Message-Id: <20200511062828.1791484-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_232919_027880_5810371E 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [210.131.2.75 listed in bl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use FIELD_GET and FIELD_PREP to get access to the register fields. Delete
the shift macros and use GENMASK() for the touched macros.

Note that, this has the side-effect of changing the constants to 64-bit on
64-bit platforms.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/mmc/host/sdhci-esdhc-imx.c |  6 +++---
 drivers/mmc/host/sdhci.c           | 27 ++++++++++++---------------
 drivers/mmc/host/sdhci.h           | 11 ++++-------
 3 files changed, 19 insertions(+), 25 deletions(-)

diff --git a/drivers/mmc/host/sdhci-esdhc-imx.c b/drivers/mmc/host/sdhci-esdhc-imx.c
index 38cd83118082..9896e03fce71 100644
--- a/drivers/mmc/host/sdhci-esdhc-imx.c
+++ b/drivers/mmc/host/sdhci-esdhc-imx.c
@@ -419,9 +419,9 @@ static u32 esdhc_readl_le(struct sdhci_host *host, int reg)
 
 	if (unlikely(reg == SDHCI_MAX_CURRENT) && esdhc_is_usdhc(imx_data)) {
 		val = 0;
-		val |= 0xFF << SDHCI_MAX_CURRENT_330_SHIFT;
-		val |= 0xFF << SDHCI_MAX_CURRENT_300_SHIFT;
-		val |= 0xFF << SDHCI_MAX_CURRENT_180_SHIFT;
+		val |= FIELD_PREP(SDHCI_MAX_CURRENT_330_MASK, 0xFF);
+		val |= FIELD_PREP(SDHCI_MAX_CURRENT_300_MASK, 0xFF);
+		val |= FIELD_PREP(SDHCI_MAX_CURRENT_180_MASK, 0xFF);
 	}
 
 	if (unlikely(reg == SDHCI_INT_STATUS)) {
diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
index 344a7e0e33fe..7818e650f974 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -4355,35 +4355,32 @@ int sdhci_setup_host(struct sdhci_host *host)
 
 			curr = min_t(u32, curr, SDHCI_MAX_CURRENT_LIMIT);
 			max_current_caps =
-				(curr << SDHCI_MAX_CURRENT_330_SHIFT) |
-				(curr << SDHCI_MAX_CURRENT_300_SHIFT) |
-				(curr << SDHCI_MAX_CURRENT_180_SHIFT);
+				FIELD_PREP(SDHCI_MAX_CURRENT_330_MASK, curr) |
+				FIELD_PREP(SDHCI_MAX_CURRENT_300_MASK, curr) |
+				FIELD_PREP(SDHCI_MAX_CURRENT_180_MASK, curr);
 		}
 	}
 
 	if (host->caps & SDHCI_CAN_VDD_330) {
 		ocr_avail |= MMC_VDD_32_33 | MMC_VDD_33_34;
 
-		mmc->max_current_330 = ((max_current_caps &
-				   SDHCI_MAX_CURRENT_330_MASK) >>
-				   SDHCI_MAX_CURRENT_330_SHIFT) *
-				   SDHCI_MAX_CURRENT_MULTIPLIER;
+		mmc->max_current_330 = FIELD_GET(SDHCI_MAX_CURRENT_330_MASK,
+						 max_current_caps) *
+						SDHCI_MAX_CURRENT_MULTIPLIER;
 	}
 	if (host->caps & SDHCI_CAN_VDD_300) {
 		ocr_avail |= MMC_VDD_29_30 | MMC_VDD_30_31;
 
-		mmc->max_current_300 = ((max_current_caps &
-				   SDHCI_MAX_CURRENT_300_MASK) >>
-				   SDHCI_MAX_CURRENT_300_SHIFT) *
-				   SDHCI_MAX_CURRENT_MULTIPLIER;
+		mmc->max_current_300 = FIELD_GET(SDHCI_MAX_CURRENT_300_MASK,
+						 max_current_caps) *
+						SDHCI_MAX_CURRENT_MULTIPLIER;
 	}
 	if (host->caps & SDHCI_CAN_VDD_180) {
 		ocr_avail |= MMC_VDD_165_195;
 
-		mmc->max_current_180 = ((max_current_caps &
-				   SDHCI_MAX_CURRENT_180_MASK) >>
-				   SDHCI_MAX_CURRENT_180_SHIFT) *
-				   SDHCI_MAX_CURRENT_MULTIPLIER;
+		mmc->max_current_180 = FIELD_GET(SDHCI_MAX_CURRENT_180_MASK,
+						 max_current_caps) *
+						SDHCI_MAX_CURRENT_MULTIPLIER;
 	}
 
 	/* If OCR set by host, use it instead. */
diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
index d7f1441b0fc3..2ff98891bf25 100644
--- a/drivers/mmc/host/sdhci.h
+++ b/drivers/mmc/host/sdhci.h
@@ -233,13 +233,10 @@
 #define  SDHCI_SUPPORT_HS400	0x80000000 /* Non-standard */
 
 #define SDHCI_MAX_CURRENT		0x48
-#define  SDHCI_MAX_CURRENT_LIMIT	0xFF
-#define  SDHCI_MAX_CURRENT_330_MASK	0x0000FF
-#define  SDHCI_MAX_CURRENT_330_SHIFT	0
-#define  SDHCI_MAX_CURRENT_300_MASK	0x00FF00
-#define  SDHCI_MAX_CURRENT_300_SHIFT	8
-#define  SDHCI_MAX_CURRENT_180_MASK	0xFF0000
-#define  SDHCI_MAX_CURRENT_180_SHIFT	16
+#define  SDHCI_MAX_CURRENT_LIMIT	GENMASK(7, 0)
+#define  SDHCI_MAX_CURRENT_330_MASK	GENMASK(7, 0)
+#define  SDHCI_MAX_CURRENT_300_MASK	GENMASK(15, 8)
+#define  SDHCI_MAX_CURRENT_180_MASK	GENMASK(23, 16)
 #define   SDHCI_MAX_CURRENT_MULTIPLIER	4
 
 /* 4C-4F reserved for more max current */
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
