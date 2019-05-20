Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBEA2311B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 12:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Prdp1oHXtgxq6xUGRh+qQZ1liBpstVrOFRc4mShORMQ=; b=cGfLjdmcNjuhGpnOAx4foBSLMJ
	TlPARra/07xrYJGie5NvJoc9vL1LuuZ7Bs7PKc6wnA6V5/l7o9omPho9oCPo0I1nkhEOpGnc+o3VK
	0Lq3PXneSXbsU1+IQw2CPZxxdeIwU62rAF3sk/Dblvi8CjUmDX+FhRejWiunLT+1/6B91RwVipVZk
	H5fNnwsDPMdtNLkfEzAPuSeDBmayvM/nQwnymG26xmP925nWHCelPOrf0qjoY68LEgwGNxhPhYiB/
	Z58G09O8qUpAPdaxqXQZLqcq+38rgNmnhO6hdX2RIDvmc4vpP2Wm79zWM+DKPXzuyQOWF3XnpkKb4
	CKU5nxyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSfIe-0005Ft-7X; Mon, 20 May 2019 10:13:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSfHl-0004CT-MX
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 10:13:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id p15so6508427pll.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 03:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=tBhcNYJtRLrxmBnBaA1yOUVcPiTzc/ssEh1mPTrnJ9A=;
 b=LyscKN3AqfXVoetIgjkoE69HYU9HnAi1xdi1PsWubJiP8Qrv8OJyrz1r2HMdsL4FBb
 lQn9hJZO7LhXiuRReQ8WMnJHmvQGs73mt7wOAguu18mV051cJZf2rpUwMXUW0v5M7sX9
 TvQolobA/OMQm2Qf0tBTfekBPWmgcCL6eG6yRhsfz2miwtlncfd8UJe5AxOATOoorLtg
 aKfpmc+QwDJvg2iLFU3gYYgI8aETuhnyGo4OvUdSKWAbXe9XZgN9iZW4BWb7f5B1mwcL
 Oq/7pqCRe+GigkPGu0MRkAyzZbtoql9Vlz0TruCFPEe35lqvZ5iuPcuIhdBuBcBlUgv3
 +2sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=tBhcNYJtRLrxmBnBaA1yOUVcPiTzc/ssEh1mPTrnJ9A=;
 b=XM8GjHHLIOY9PQe4OhGoXujmdUPbzcmFgtjfRDfJOU7Yz8N/Fsqt/62jx7V2efocvn
 Q5FCpypgeUnfvYwEFhqL4PVU0hLxsNGm9SogKNeGG2Ou1dyABOcd3H+xH/JDofwgm3Q0
 iDZ4LS75EOf8fjEvaQI/0Qc2pViMSHoE4X40JSbR7ivdZm6gz/CpaINGHuFf9lqGQgP1
 h4Vu4ntRuWGYZfbhl9p+xAq+AayJxgRVdaPiv3joxowwH2yE0EWneJjX+ZG4aOibCZ1N
 QnUrAE6H23b8PdzpDDxSSpcr4372AX84/kvuASfHrpUm2OltEMm+mfscwj8dXil/6jB2
 Uu1A==
X-Gm-Message-State: APjAAAUqXtNsGnKMLJWnzXDq8c+WVBaBCOCs0+csjyGMDFf3lpQigjN1
 tFrTmDLKoGQgxwJD3HPGNfSHHA==
X-Google-Smtp-Source: APXvYqyFiTD5jg2bS8KMLdnLigkZ1ZpgDu8OSnk/Yqe5VY5FLXMLHH0OVIJRSmVdYEuPei5O7fmmFQ==
X-Received: by 2002:a17:902:7202:: with SMTP id
 ba2mr21102932plb.177.1558347169203; 
 Mon, 20 May 2019 03:12:49 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id b3sm30098127pfr.146.2019.05.20.03.12.45
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 03:12:48 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH 6/9] mmc: sdhci-sprd: Enable PHY DLL to make clock stable
Date: Mon, 20 May 2019 18:11:59 +0800
Message-Id: <270e86bf6b1ce138e40830fb63c9bcf150440426.1558346019.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558346019.git.baolin.wang@linaro.org>
References: <cover.1558346019.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_031250_400139_0B014D38 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

For the Spreadtrum SD host controller, when we changed the clock to be
more than 52M, we should enable the PHY DLL which is used to track the
clock frequency to make the clock work more stable. Otherwise deviation
may occur of the higher clock.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/mmc/host/sdhci-sprd.c |   44 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 43 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index edec197..e6eda13 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -22,6 +22,13 @@
 /* SDHCI_ARGUMENT2 register high 16bit */
 #define SDHCI_SPRD_ARG2_STUFF		GENMASK(31, 16)
 
+#define SDHCI_SPRD_REG_32_DLL_CFG	0x200
+#define  SDHCI_SPRD_DLL_ALL_CPST_EN	(BIT(18) | BIT(24) | BIT(25) | BIT(26) | BIT(27))
+#define  SDHCI_SPRD_DLL_EN		BIT(21)
+#define  SDHCI_SPRD_DLL_SEARCH_MODE	BIT(16)
+#define  SDHCI_SPRD_DLL_INIT_COUNT	0xc00
+#define  SDHCI_SPRD_DLL_PHASE_INTERNAL	0x3
+
 #define SDHCI_SPRD_REG_32_DLL_DLY_OFFSET	0x208
 #define  SDHCIBSPRD_IT_WR_DLY_INV		BIT(5)
 #define  SDHCI_SPRD_BIT_CMD_DLY_INV		BIT(13)
@@ -56,6 +63,7 @@
 #define SDHCI_SPRD_CLK_MAX_DIV		1023
 
 #define SDHCI_SPRD_CLK_DEF_RATE		26000000
+#define SDHCI_SPRD_PHY_DLL_CLK		52000000
 
 struct sdhci_sprd_host {
 	u32 version;
@@ -200,9 +208,33 @@ static inline void _sdhci_sprd_set_clock(struct sdhci_host *host,
 	}
 }
 
+static void sdhci_sprd_enable_phy_dll(struct sdhci_host *host)
+{
+	u32 tmp;
+
+	tmp = sdhci_readl(host, SDHCI_SPRD_REG_32_DLL_CFG);
+	tmp &= ~(SDHCI_SPRD_DLL_EN | SDHCI_SPRD_DLL_ALL_CPST_EN);
+	sdhci_writel(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);
+	/* wait 1ms */
+	usleep_range(1000, 1250);
+
+	tmp = sdhci_readl(host, SDHCI_SPRD_REG_32_DLL_CFG);
+	tmp |= SDHCI_SPRD_DLL_ALL_CPST_EN | SDHCI_SPRD_DLL_SEARCH_MODE |
+		SDHCI_SPRD_DLL_INIT_COUNT | SDHCI_SPRD_DLL_PHASE_INTERNAL;
+	sdhci_writel(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);
+	/* wait 1ms */
+	usleep_range(1000, 1250);
+
+	tmp = sdhci_readl(host, SDHCI_SPRD_REG_32_DLL_CFG);
+	tmp |= SDHCI_SPRD_DLL_EN;
+	sdhci_writel(host, tmp, SDHCI_SPRD_REG_32_DLL_CFG);
+	/* wait 1ms */
+	usleep_range(1000, 1250);
+}
+
 static void sdhci_sprd_set_clock(struct sdhci_host *host, unsigned int clock)
 {
-	bool en = false;
+	bool en = false, clk_changed = false;
 
 	if (clock == 0) {
 		sdhci_writew(host, 0, SDHCI_CLOCK_CONTROL);
@@ -214,9 +246,19 @@ static void sdhci_sprd_set_clock(struct sdhci_host *host, unsigned int clock)
 			en = true;
 		sdhci_sprd_set_dll_invert(host, SDHCI_SPRD_BIT_CMD_DLY_INV |
 					  SDHCI_SPRD_BIT_POSRD_DLY_INV, en);
+		clk_changed = true;
 	} else {
 		_sdhci_sprd_set_clock(host, clock);
 	}
+
+	/*
+	 * According to the Spreadtrum SD host specification, when we changed
+	 * the clock to be more than 52M, we should enable the PHY DLL which
+	 * is used to track the clock frequency to make the clock work more
+	 * stable. Otherwise deviation may occur of the higher clock.
+	 */
+	if (clk_changed && clock > SDHCI_SPRD_PHY_DLL_CLK)
+		sdhci_sprd_enable_phy_dll(host);
 }
 
 static unsigned int sdhci_sprd_get_max_clock(struct sdhci_host *host)
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
