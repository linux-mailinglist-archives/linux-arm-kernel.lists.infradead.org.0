Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0225734184
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:16:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0Fjrhw6JInr8iwpp2i9YsSQ5Q9FwzgHVX4Ggrl0Bzxc=; b=daOsHZLYosBU++NjBDmI+pKoJu
	W8VxdzMjIx8ni7oZsZM10+D9lEro7UlQxQ1fT4/ouVrrqH5w7BIrW44xpMAJYp7PuRUnV9wN/8Srg
	mUCqR1SUqJBibRDuvoVoIyl0i3ds6vUrp2HjlmzthsFN9invZDxtc88yNS8UyttKTvDAJmANoQJJn
	pCBQz2GOXXMtAMDDPB22of0RVncWzm2pSyay7grVAZnILtjjgEEr0nALOAWq04jZVrwRVbWHzhDeu
	EeZeoUel+Q62sWc3gapIQBkZrCCLfEbGbzZZr0lVx8RI4A3z9RGFzZW1ECWxHRJs/EgRqlIEFx6jD
	/Szc/jaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY4c4-0002sM-7W; Tue, 04 Jun 2019 08:16:08 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4bE-0001sr-Jl
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:15:35 +0000
Received: by mail-pl1-x644.google.com with SMTP id g21so8050254plq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=Fv2whIvWWtuvlrntuYk8WF1rR93EthhOFv6VYDGUqK0=;
 b=H3U36xsCUdBFRm3KPZyTSWH//zyS50ZT4XZXXWDgwO3Va81kNw7pvlth33eG7dWzrH
 omDFCLKePr2nlgYtOe4W0MyTeJ4hTspfMvXK5YJB64ESExZnjLJlF4IykS6Q6+qbySr0
 zZdBNXibIrWEfD6IroCEc0ndnzGDzqBeIt0hnnv2CuM8D9y+lSHrDjc1ZMTR/GHVCo8W
 t8xBkc6ke362zGEgylzJz4/lIqJ8LwGOolPoY+xSvA8VNzKy2m+syMXqzJNrYUu8XKZA
 IICbKWPnqI21SxfiOPG5/wasSwdfVBzvFuastyGFb12nknN9hTFgpcQM+85KeTbthNc6
 gK/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=Fv2whIvWWtuvlrntuYk8WF1rR93EthhOFv6VYDGUqK0=;
 b=Yj4a3wbQCajsbodB4PVzm4G09BskJBElbISfrIddqxAyEyjX9Yo9Q+l15vEX15nOAl
 oaTpkVCBNpZFGFMDz5+3LtNqadCXniZ2bTk60qst57rNpA4lZ6kYsw5xdtwJ8uYFF1F1
 F3/rGgG2xQLVOWsb5evZ71EStI8ARwecSuH9yyWvNjjp7LhoI+bk50I9OJYwM2DaTh0G
 Eb57Txc3cDy4a+sZOUXRejzWci8MD+l/SJF5AMxG3BuXd/bbpv4J9EOVvtWVYV6wV47C
 t3ZqcnNo9IJ5yNTgcbiFU1Zp2iomMvsM3My1ozQs15ciJvD/psnvK6pFecm9FBNnR8vC
 fO8A==
X-Gm-Message-State: APjAAAXjrfXNYQYzVCI4RgL8KVWrNR0kXuIW2hT8qdNNIY4PSug30A8q
 9DpCH+o3GU/jrNLl0/myBtLcvg==
X-Google-Smtp-Source: APXvYqyY2NQVzf09JwfhQjHqJ106rVkuXkui5CHCsJNhadMPvAeANQiapZZITmLH2ZerWGrncqNblw==
X-Received: by 2002:a17:902:b584:: with SMTP id
 a4mr35666871pls.333.1559636116089; 
 Tue, 04 Jun 2019 01:15:16 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.15.12
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 01:15:15 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH v2 6/9] mmc: sdhci-sprd: Enable PHY DLL to make clock stable
Date: Tue,  4 Jun 2019 16:14:26 +0800
Message-Id: <c784bd147950d3534a92a9f55174c2406eedeb6e.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_011517_170231_6AC4C5BB 
X-CRM114-Status: GOOD (  13.12  )
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

For the Spreadtrum SD host controller, when we changed the clock to be
more than 52M, we should enable the PHY DLL which is used to track the
clock frequency to make the clock work more stable. Otherwise deviation
may occur of the higher clock.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
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
