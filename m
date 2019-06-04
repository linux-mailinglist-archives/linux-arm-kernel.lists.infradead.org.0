Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 585CD34223
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tqFoRkB3kCzEB4tY6j5yIvypEbJCVRTN5yFIGJTl698=; b=Ou4AG3crxI/v7LQU4PHJSYB0qG
	k0p/Pa7a/mV6WskwVO/aCorH614fmA9ziGnSGggt5txoDgbvuFwrRq27niTWWA/jA/mTATMXRXLFk
	olKF1ZSuSpjJSZQ59bkCiqWNFDaX0GaRojyTi9MWnoi3wW/i+EIBZtIDPitlEx0hFfw8ARuJ8/9E8
	NGlXE8sxSAaudAHFoe8eN4F8j01XxvyIkLPSA00kaPbn0qrm3LH/mc+DaGIo0OHqUT4ERJMKHxu2u
	+HecsO3sQuZCuLomFVoCkoefKIbu4eKBOh+Z7nj9Uq2Xu1+IpFwBmtcinvZzLvUe/GQqvOYZ/K7dD
	L2WYDwXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY57p-0000H1-PX; Tue, 04 Jun 2019 08:48:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY57k-0000Gl-0A
 for linux-arm-kernel@bombadil.infradead.org; Tue, 04 Jun 2019 08:48:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TOlsjtC4xw7paP6GLK66GH91I1tWkZ+EZIFEIW5p75U=; b=RypqynbS2d+Dx8Aq5N46Q/ABw
 gQnn47Fua6MP4AUBAgVzdSr+9QfSYpweMlc1uXLdP0efstVtDFSgcXuCNAcvVDCs9BSQJl6rIxNkf
 bf/jSQ+l15n7IEnAEFQc/LcRhgdZPzHjsmboTp8kTBGs2pH/DL+3pSij9G1vMPL9Q8gidiIQypeGf
 v/CQYpgQw3wyLgaflmyPeWU9pUBG8fhxyGmnBPpZ3+3fUsGV09C8gAJ7Li2emMw3+ts6r2ECZTALK
 PZZLdVWskZgLeqkoPGmHmToGycZm6X2V9UX9P5EXdIEApftpCXfScA3m8suSZMK0EAZqo+ZtDMMrZ
 driEZUVow==;
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4bS-0002Gf-Tw
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 08:15:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id t16so3392912pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 01:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=TOlsjtC4xw7paP6GLK66GH91I1tWkZ+EZIFEIW5p75U=;
 b=qaONNRck0VSqSeEFSOIDrDdwNVqam1arR0HmFCCadTly5tfEezmZl/GFaWhI/7TQfN
 RQ6gW6EZEuoPs9CdoaToEvKbIq2C3zwGq1zwuFQyQFoo8MrMNrCjuzQWvGcxZs9YaMli
 kCRfDvs8CAIf1t4jOmKx059r6Tkrdnwz0JVhnZZY4gISheGDg0UDge8aji8Ns1w8xoVO
 9hA0ZxHnKp2WqK6zP9qKk8YpGZBZZjftzm8orDryDi0oIPCxOqGCTCWfU10fkgFDbzHp
 JkyAILrpHAbcLRYQr/UlT+qhmUKqKiN98MjLD2vmH3oUA+c6CXAOptQ4GUpmvp2EIUo1
 8q8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=TOlsjtC4xw7paP6GLK66GH91I1tWkZ+EZIFEIW5p75U=;
 b=pfWQnkV5ORnjUbPy5K3NKwNWgnjBseuXOOunZttVfOx1tPH9/zi8X8uHgvu6c5ufA6
 Wnh4iMNOgjcF1Sf+47LByWt6B2ZN5vVDlXNmOBnViUBYaa25Oe0UJmabJHPKsn8W0+FX
 oTu/ErIXgsuxLADCWxAPOKVZe+OzfJGXsFrU1slqyPuHbwy0e6SUrKJYXBQDW8JEgzKE
 awaIG9VjuZzsSDhYXw+DM/wWlhJseXJ7q4GJNMJsvR4iWhYaYy0BX2Z0FIey8hLzh+EN
 Oe2rqRFsYF/aXknIdat+zIwYUBxjQtOmyOhfjMp6b+wll0XmNZ3tcTWkiFlvKib2zX88
 C2Mw==
X-Gm-Message-State: APjAAAXRF42jTnk3xbjMpEY8GlDt3BZ2SNp9dDnwTOCNk8ZRPw0Quesb
 6Q6N0rEkfsTvWkI2OJkIEWLGpA==
X-Google-Smtp-Source: APXvYqyiD1H2V0tnEmhgJvP9bNOu+eLMPl8+2+HiQlloePQjflI2qDezrKoJ0Ojd++7/j55cX4dXMQ==
X-Received: by 2002:a63:6f8d:: with SMTP id
 k135mr29774834pgc.118.1559636124909; 
 Tue, 04 Jun 2019 01:15:24 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.15.20
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 04 Jun 2019 01:15:24 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: adrian.hunter@intel.com, ulf.hansson@linaro.org, zhang.lyra@gmail.com,
 orsonzhai@gmail.com, robh+dt@kernel.org, mark.rutland@arm.com,
 arnd@arndb.de, olof@lixom.net
Subject: [PATCH v2 8/9] mmc: sdhci-sprd: Add PHY DLL delay configuration
Date: Tue,  4 Jun 2019 16:14:28 +0800
Message-Id: <3565c86c5373384b50610113e2fe2992531f105a.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_041531_002262_3E317785 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Set the PHY DLL delay for each timing mode, which is used to sample the clock
accurately and make the clock more stable.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
Acked-by: Adrian Hunter <adrian.hunter@intel.com>
---
 drivers/mmc/host/sdhci-sprd.c |   51 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/mmc/host/sdhci-sprd.c b/drivers/mmc/host/sdhci-sprd.c
index e6eda13..024c3c5 100644
--- a/drivers/mmc/host/sdhci-sprd.c
+++ b/drivers/mmc/host/sdhci-sprd.c
@@ -29,6 +29,8 @@
 #define  SDHCI_SPRD_DLL_INIT_COUNT	0xc00
 #define  SDHCI_SPRD_DLL_PHASE_INTERNAL	0x3
 
+#define SDHCI_SPRD_REG_32_DLL_DLY	0x204
+
 #define SDHCI_SPRD_REG_32_DLL_DLY_OFFSET	0x208
 #define  SDHCIBSPRD_IT_WR_DLY_INV		BIT(5)
 #define  SDHCI_SPRD_BIT_CMD_DLY_INV		BIT(13)
@@ -72,6 +74,24 @@ struct sdhci_sprd_host {
 	struct clk *clk_2x_enable;
 	u32 base_rate;
 	int flags; /* backup of host attribute */
+	u32 phy_delay[MMC_TIMING_MMC_HS400 + 2];
+};
+
+struct sdhci_sprd_phy_cfg {
+	const char *property;
+	u8 timing;
+};
+
+static const struct sdhci_sprd_phy_cfg sdhci_sprd_phy_cfgs[] = {
+	{ "sprd,phy-delay-legacy", MMC_TIMING_LEGACY, },
+	{ "sprd,phy-delay-sd-highspeed", MMC_TIMING_SD_HS, },
+	{ "sprd,phy-delay-sd-uhs-sdr50", MMC_TIMING_UHS_SDR50, },
+	{ "sprd,phy-delay-sd-uhs-sdr104", MMC_TIMING_UHS_SDR104, },
+	{ "sprd,phy-delay-mmc-highspeed", MMC_TIMING_MMC_HS, },
+	{ "sprd,phy-delay-mmc-ddr52", MMC_TIMING_MMC_DDR52, },
+	{ "sprd,phy-delay-mmc-hs200", MMC_TIMING_MMC_HS200, },
+	{ "sprd,phy-delay-mmc-hs400", MMC_TIMING_MMC_HS400, },
+	{ "sprd,phy-delay-mmc-hs400es", MMC_TIMING_MMC_HS400 + 1, },
 };
 
 #define TO_SPRD_HOST(host) sdhci_pltfm_priv(sdhci_priv(host))
@@ -276,6 +296,9 @@ static unsigned int sdhci_sprd_get_min_clock(struct sdhci_host *host)
 static void sdhci_sprd_set_uhs_signaling(struct sdhci_host *host,
 					 unsigned int timing)
 {
+	struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);
+	struct mmc_host *mmc = host->mmc;
+	u32 *p = sprd_host->phy_delay;
 	u16 ctrl_2;
 
 	if (timing == host->timing)
@@ -314,6 +337,9 @@ static void sdhci_sprd_set_uhs_signaling(struct sdhci_host *host,
 	}
 
 	sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
+
+	if (!mmc->ios.enhanced_strobe)
+		sdhci_writel(host, p[timing], SDHCI_SPRD_REG_32_DLL_DLY);
 }
 
 static void sdhci_sprd_hw_reset(struct sdhci_host *host)
@@ -381,6 +407,8 @@ static void sdhci_sprd_hs400_enhanced_strobe(struct mmc_host *mmc,
 					     struct mmc_ios *ios)
 {
 	struct sdhci_host *host = mmc_priv(mmc);
+	struct sdhci_sprd_host *sprd_host = TO_SPRD_HOST(host);
+	u32 *p = sprd_host->phy_delay;
 	u16 ctrl_2;
 
 	if (!ios->enhanced_strobe)
@@ -395,6 +423,28 @@ static void sdhci_sprd_hs400_enhanced_strobe(struct mmc_host *mmc,
 	sdhci_writew(host, ctrl_2, SDHCI_HOST_CONTROL2);
 
 	sdhci_sprd_sd_clk_on(host);
+
+	/* Set the PHY DLL delay value for HS400 enhanced strobe mode */
+	sdhci_writel(host, p[MMC_TIMING_MMC_HS400 + 1],
+		     SDHCI_SPRD_REG_32_DLL_DLY);
+}
+
+static void sdhci_sprd_phy_param_parse(struct sdhci_sprd_host *sprd_host,
+				       struct device_node *np)
+{
+	u32 *p = sprd_host->phy_delay;
+	int ret, i, index;
+	u32 val[4];
+
+	for (i = 0; i < ARRAY_SIZE(sdhci_sprd_phy_cfgs); i++) {
+		ret = of_property_read_u32_array(np,
+				sdhci_sprd_phy_cfgs[i].property, val, 4);
+		if (ret)
+			continue;
+
+		index = sdhci_sprd_phy_cfgs[i].timing;
+		p[index] = val[0] | (val[1] << 8) | (val[2] << 16) | (val[3] << 24);
+	}
 }
 
 static const struct sdhci_pltfm_data sdhci_sprd_pdata = {
@@ -428,6 +478,7 @@ static int sdhci_sprd_probe(struct platform_device *pdev)
 		goto pltfm_free;
 
 	sprd_host = TO_SPRD_HOST(host);
+	sdhci_sprd_phy_param_parse(sprd_host, pdev->dev.of_node);
 
 	clk = devm_clk_get(&pdev->dev, "sdio");
 	if (IS_ERR(clk)) {
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
