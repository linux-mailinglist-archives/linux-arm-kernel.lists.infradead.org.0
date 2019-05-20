Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A75123119
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:13:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1qVwVYNZFyZMdqxrxeMZtWEhZ1GXXWrSY/hFpW5VWCk=; b=p+iA+HcrehXaQQdzNlCOUgfWg9
	pzA6If3TZcITesZkuTeml49HDrWDkhC51KCcHSUufH/9F7rNiAtse9yGpLKv/lPPR+SuS/IKsUGBs
	PR9VRe/1EZPkCvdcork+X22Lyc0adswRS99FomOIOpkgvgQAURSP8aLO1q5atzeUZxGpso6ZnKOoj
	UgCiNADs5q+ZvaD2GTNq6LqKyhYYFQ0fkmuQpLhEJnKQfzgVfabxKraFQQAt1x0QvT2hG+6p8LQW+
	gAyuGlhYob4ca2WpggmsIuoCgMN/nmrSARWx1lJ7XbhrHTy45ZYjXK5p+q/v3yf7DKwGi1P7oJZlC
	Ff5IQ+9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfIT-00050g-Ai; Mon, 20 May 2019 10:13:33 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfHh-000463-Km
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:12:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id c5so6480767pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=FYWsY1+N4H7CLwGBpVFg0VRy5BIrNigGYHZlus/sqGQ=;
 b=ip83O75NZLwCKECGfM8b6w+f/ukjta4M9JaLc+MNN/r+BiHh5U+c3obLbGmXR368fc
 QbjaUkbxGFqa7LV7Z0H0ItwU8gJwB4r5wNeOPOYY/s+jYld1d4r87HmHtf94EhINLOI5
 5dRx8h7+EELboXqiAQTsz3r8c0GVbrj35Bf5fuZOCmENS9jfE/F3GeumyIQ8Q18azMoB
 W1o8N49xYJkVv1nNphy7+SDWOFwWoiVNXHp5Hj2+2m42U4U9SryKWswV8BoJtrBxR09c
 9NeG53QxHzarkWRexNeHOXVUs8hZ+/o5qwGEoBYLMpyEyHJHZdifvWvdDR91wF3dUSrn
 qjBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=FYWsY1+N4H7CLwGBpVFg0VRy5BIrNigGYHZlus/sqGQ=;
 b=c7sLvjKRSfOLRMfZiedazDZQlxh10Y0v6/1p/4P9dcfQrwBCKkMJ8sSw1OBk98W09Y
 tuTMN/sbkFBbnlGC2hwIxRXzjTgfugth6gOUeanpdcUsTMoTDYd2h9iWYyC08yFVLJ+l
 hgRxHzAdn614jJzbRr8Xjvpd+4LAGXaAw8+KrkR8lE/tdUbU5b4nEC5xd560JEFl5G2a
 Vx7u4LcSXU1OGhut/zaLvppFaNbPq/JFtwtDhk9YHwL8Vs2vRmy7HNRdO+nkgIQuJnDf
 YyZ8+eKmdLIYLtnY/rQUCK3U8ro2IfTvkmRUvqhMEy8qkF4Mm0qKK8SC6EuA2Bclfb0p
 v1Eg==
X-Gm-Message-State: APjAAAUBJqYmAbJX709gjRHrCUgiElfRlev9aFNaze5+TBUa2lepVD+3
 7SjTF1uCwbIF7Fxqp23nQBsnzw==
X-Google-Smtp-Source: APXvYqyLvXs0KyuJLGO/nRkJOE9g/rrJIqJslXBXRu3KGM87Ilo86/Rxhvc+xOflJPm5UjVip5uFmw==
X-Received: by 2002:a17:902:bd06:: with SMTP id
 p6mr1223581pls.112.1558347165145; 
 Mon, 20 May 2019 03:12:45 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.41
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 03:12:44 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH 5/9] mmc: sdhci-sprd: Add HS400 enhanced strobe mode
Date: Mon, 20 May 2019 18:11:58 +0800
Message-Id: <20349e8ebd4c1ec64fb5f8cdd9e094d0c1732855.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031247_103007_81DA5270 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, vincent.guittot@linaro.org,
 baolin.wang@linaro.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, arm@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add HS400 enhanced strobe mode support for Spreadtrum SD host controller.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/mmc/host/sdhci-sprd.c |   32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index d91281d..edec197 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -41,6 +41,7 @@
 /* SDHCI_HOST_CONTROL2 */
 #define  SDHCI_SPRD_CTRL_HS200		0x0005
 #define  SDHCI_SPRD_CTRL_HS400		0x0006
+#define  SDHCI_SPRD_CTRL_HS400ES	0x0007
 
 /*
  * According to the standard specification, BIT(3) of SDHCI_SOFTWARE_RESET is
@@ -132,6 +133,15 @@ static inline void sdhci_sprd_sd_clk_off(struct sdhci_host *host)
 	sdhci_writew(host, ctrl, SDHCI_CLOCK_CONTROL);
 }
 
+static inline void sdhci_sprd_sd_clk_on(struct sdhci_host *host)
+{
+	u16 ctrl;
+
+	ctrl = sdhci_readw(host, SDHCI_CLOCK_CONTROL);
+	ctrl |= SDHCI_CLOCK_CARD_EN;
+	sdhci_writew(host, ctrl, SDHCI_CLOCK_CONTROL);
+}
+
 static inline void
 sdhci_sprd_set_dll_invert(struct sdhci_host *host, u32 mask, bool en)
 {
@@ -325,6 +335,26 @@ static void sdhci_sprd_request(struct mmc_host *mmc, struct mmc_request *mrq)
 	sdhci_request(mmc, mrq);
 }
 
+static void sdhci_sprd_hs400_enhanced_strobe(struct mmc_host *mmc,
+					     struct mmc_ios *ios)
+{
+	struct sdhci_host *host = mmc_priv(mmc);
+	u16 ctrl_2;
+
+	if (!ios->enhanced_strobe)
+		return;
+
+	sdhci_sprd_sd_clk_off(host);
+
+	/* Set HS400 enhanced strobe mode */
+	ctrl_2 = sdhci_readw(host, SDHCI_HOST_CONTROL2);
+	ctrl_2 &= ~SDHCI_CTRL_UHS_MASK;
+	ctrl_2 |= SDHCI_SPRD_CTRL_HS400ES;
+	sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
+
+	sdhci_sprd_sd_clk_on(host);
+}
+
 static const struct sdhci_pltfm_data sdhci_sprd_pdata = {
 	.quirks = SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK,
 	.quirks2 = SDHCI_QUIRK2_BROKEN_HS200 |
@@ -346,6 +376,8 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 	host->dma_mask = DMA_BIT_MASK(64);
 	pdev->dev.dma_mask = &host->dma_mask;
 	host->mmc_host_ops.request = sdhci_sprd_request;
+	host->mmc_host_ops.hs400_enhanced_strobe =
+		sdhci_sprd_hs400_enhanced_strobe;
 
 	host->mmc->caps = MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED |
 		MMC_CAP_ERASE | MMC_CAP_CMD23;
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
