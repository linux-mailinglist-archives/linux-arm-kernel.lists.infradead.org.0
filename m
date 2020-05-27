Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1291E3F73
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:57:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GjOLcrYgoZPGX+joZqPs/X6JJXMaLPr9LEQuOdfh8lA=; b=KPxiyZPpLUc6AI
	7xtVwG/mzK7CMrEqCwHnR1VMInSPdZu6aQ93OljVlkx6r0SeGYoBmeoHKM0IpetdiRHlJOG2P4vuH
	Xpj6jdhs1vc1AREqfI9pl0BsJv/i67poEJn0EylEqDtAG43a7ydICScnNoB62nmYKPXHgfVEdkfjY
	T93noIuQj7K0Wk6i+kP+fI0QjVbXYQCmGmiYhqJtQFZQJquFG8mtX8QgDKTozDAJRsLZB/r4xnzrJ
	agO5O8fOEYKbS1YkwxGVqh1+981+9hNgPOUvbd4P+rxL0me9SE/ghbYpIo20xcVo+rJ8kvCgSAsQD
	tniWYhPkHk1RLImqTbkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdtkl-0001LA-37; Wed, 27 May 2020 10:57:43 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdtka-0001KD-Fw
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:57:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590577052; x=1622113052;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qRA+oC9tZx1B+vIUo3ULzvQS5oErAP6UNoXsB48BUDA=;
 b=DO7QecKplhsaeg4Z+kDDpjej5x+IpOe8lpL66B2VPDyiiDMlqOqk3k6R
 1T+vcPC/c1S7OR+C9NfA0epZqlzh2HRiN6OgIsFOdedCQ8AYllm6xhMi2
 nao1C/Mgw4S0JOXRu3KSJmspUh8ys18zerKMJGKunXOcRmp+nWgPg+RNx
 UdciEeVSqFNtPcCP1I7zQYn0Pq2pakvFcNjXr6BYkU76YlzQvcyNLGgdZ
 gVgucv1r68Ri0n96kT7knerlYVwGt5u+Eaq2GxWTdmYA+3dzvphjU68pF
 6LkLRVeGcDjPRjH3zfSTKNshqnDX9t1dQgJmDohY8oBeWE1/kTTWrWePs w==;
IronPort-SDR: AZDZqxdfCTzspJ/Gm4ZZw0RNHGplphn57NF+/SJJdoQzSqBpVLiNFiPBI+NnlMFWVWesqcFQPG
 uLYxGJeRp6PKuYGdO+IsXxfJoAr0jEV3Ns6I3xVVyaBspezSlJRN1uS8PbTvhBux5+sMcp5V/p
 BvwqTqFYEAsjFG3eNFLQtf7HUv1KYq/djmn8YuuUbOO90rXnHgJlpdGYcVSjoskBkEsDmVrwea
 pZNSNdmwehjm7qJbCD9sEEBg7HTCcdbh2C43Kvp2KxRIYmdwlQNlvKbpUGMaPzNLTPJd3RSatS
 xes=
X-IronPort-AV: E=Sophos;i="5.73,441,1583218800"; d="scan'208";a="74602760"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 03:57:27 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 03:57:20 -0700
Received: from ROB-ULT-M18282.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 03:57:15 -0700
From: Eugen Hristev <eugen.hristev@microchip.com>
To: <ludovic.desroches@microchip.com>, <linux-mmc@vger.kernel.org>,
 <adrian.hunter@intel.com>, <ulf.hansson@linaro.org>
Subject: [PATCH] mmc: sdhci-of-at91: fix CALCR register being rewritten
Date: Wed, 27 May 2020 13:56:59 +0300
Message-ID: <20200527105659.142560-1-eugen.hristev@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_035732_580371_44AEF1C6 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Eugen Hristev <eugen.hristev@microchip.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When enabling calibration at reset, the CALCR register was completely
rewritten. This may cause certain bits being deleted unintentedly.
Fix by issuing a read-modify-write operation.

Fixes: 727d836a375a ("mmc: sdhci-of-at91: add DT property to enable calibration on full reset")
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 drivers/mmc/host/sdhci-of-at91.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/mmc/host/sdhci-of-at91.c b/drivers/mmc/host/sdhci-of-at91.c
index 25f4e0f4f53b..1ece2c50042c 100644
--- a/drivers/mmc/host/sdhci-of-at91.c
+++ b/drivers/mmc/host/sdhci-of-at91.c
@@ -121,9 +121,12 @@ static void sdhci_at91_reset(struct sdhci_host *host, u8 mask)
 	    || mmc_gpio_get_cd(host->mmc) >= 0)
 		sdhci_at91_set_force_card_detect(host);
 
-	if (priv->cal_always_on && (mask & SDHCI_RESET_ALL))
-		sdhci_writel(host, SDMMC_CALCR_ALWYSON | SDMMC_CALCR_EN,
+	if (priv->cal_always_on && (mask & SDHCI_RESET_ALL)) {
+		u32 calcr = sdhci_readl(host, SDMMC_CALCR);
+
+		sdhci_writel(host, calcr | SDMMC_CALCR_ALWYSON | SDMMC_CALCR_EN,
 			     SDMMC_CALCR);
+	}
 }
 
 static const struct sdhci_ops sdhci_at91_sama5d2_ops = {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
