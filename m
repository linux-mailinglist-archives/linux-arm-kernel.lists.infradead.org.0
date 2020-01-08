Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2DF3133C47
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f0FluHzBleugIP3GJxzcgYTegdOfTjdKWmKZQneZPl8=; b=i1gwPfaay/pAP6o1zfCNBDCIiz
	zuMPtjX9grsLX78pDolWns7pNNuDxpdpS5PxXe4gLZWnNSWwmajPiKy6THoGLfKrmusez5YPlFO58
	CFazE6K1bH2VhyhD9DQ/W425cPOaXYec/kTw6+C0+SKLIfZFBz8WLdQ/k5/H3wB3kbOa5UFzOo/3+
	ZCKTC/WMVTtauzgOvPIBdP5Q7xlwNq2gIjog0yKzcFCjI4RH/MC/IZpzPduGczo1dVXrd6j6wPuCs
	VYx21g0q0WnMtFPaL/9CtTtyOeHJehbZHI8eBOBd+eKe1DeuoThzc0tbV8sOOi79kfB2AKgChA4Ds
	gytQW1eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip5ju-0004o0-RG; Wed, 08 Jan 2020 07:26:50 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip5ji-0004mM-MV
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:26:40 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a6so678724pjh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 23:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YgvywnLyYzODjdUN5pjBnIAoT8QXrKrof9jZ9KWS50M=;
 b=uJidx6V2kVrDoRpmQOqy4JLM9x5893Q3qDlXO6/DMPh9J1EyCqLWtKvbpB3Z6msKqg
 5DL89PlYEk6z3WSMFSLvW5H3UEoFOSYT94WkBEBxqGu1uuP+/Ty+LUD+3cMHtg0TockK
 CFznXxPOuKWpd4a+0bT3DaI68Apws19E/q7N8NT5fnXok79vlaZk/ABWhqY1sn5X/g+t
 vePRaCC9Nm0H89xhY1jlQujIMlrjsq1CMC/YnAYV10m4KlIuyZORz7ltiPih5NUngisk
 E4JU2H0JUuCoutaTj1grPfT2ebbLC0e6pltRWdoKwOPOBtiUWlai7vt63S6Ut5QJYS1v
 BHIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YgvywnLyYzODjdUN5pjBnIAoT8QXrKrof9jZ9KWS50M=;
 b=FU93oPYpmd71C3VTcp5+zfooqWAYsiq1DnZUQMjDCL6kPj2ONViywhlrQ0low3u10A
 KR/zvu8k1dsYSSLgzRfmLEeuZ3DODT81NK/F17IG+BMK3WUtJ7yUrycsCN3KXPCX4iwx
 RHlc31RQBlswcl9f+4QU3e2MBavnsj3Pmd7GcFFZ/8rSqT+WJRbMnKcY71X5EaItQjj2
 wlNpUtHTrwmDAspTokwe+7hgoGx5vVwFapuIVQThal32Mzx2MxXJxDPxX+5uGYXmh8Qg
 6YjJ7nsqPyIbiUWNoLMLGU4hMlxhwS7AnK0Ek8h6SC8jlRH6ITFUDQKa+qsJEHVe/3hZ
 5TYg==
X-Gm-Message-State: APjAAAV0Fm+nNdoEwPzX3mBXRvyRNf+RNwlIvS1zBzyb6nVG43w9+j30
 n76g2OCtomcgQCjlMpWZr90=
X-Google-Smtp-Source: APXvYqwH9CfosT7s9ifO/AANNX8jvBDu0cCJazDa/8NyLgjjws4FKAWfUxN4dlltGJliD+L0TTNA6Q==
X-Received: by 2002:a17:902:8c90:: with SMTP id
 t16mr3926013plo.186.1578468397944; 
 Tue, 07 Jan 2020 23:26:37 -0800 (PST)
Received: from localhost (199.168.140.36.16clouds.com. [199.168.140.36])
 by smtp.gmail.com with ESMTPSA id o98sm1865266pjb.15.2020.01.07.23.26.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 23:26:37 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com,
 martin.blumenstingl@googlemail.com, treding@nvidia.com, andrew@lunn.ch,
 weifeng.voon@intel.com, tglx@linutronix.de
Subject: [PATCH v2 1/2] net: stmmac: pci: remove the duplicate code of set
 phy_mask
Date: Wed,  8 Jan 2020 15:25:49 +0800
Message-Id: <20200108072550.28613-2-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108072550.28613-1-zhengdejin5@gmail.com>
References: <20200108072550.28613-1-zhengdejin5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_232638_811994_9C99CBE1 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zhengdejin5[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zhengdejin5[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: netdev@vger.kernel.org, Dejin Zheng <zhengdejin5@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All members of mdio_bus_data are cleared to 0 when it was obtained
by devm_kzalloc(). so It doesn't need to set phy_mask as 0 again.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---

Changes since v1:
    adjust some commit comments.

 drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
index 8237dbc3e991..40f171d310d7 100644
--- a/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
+++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_pci.c
@@ -65,7 +65,6 @@ static void common_default_data(struct plat_stmmacenet_data *plat)
 	plat->force_sf_dma_mode = 1;
 
 	plat->mdio_bus_data->needs_reset = true;
-	plat->mdio_bus_data->phy_mask = 0;
 
 	/* Set default value for multicast hash bins */
 	plat->multicast_filter_bins = HASH_TABLE_SIZE;
@@ -154,8 +153,6 @@ static int intel_mgbe_common_data(struct pci_dev *pdev,
 	plat->tx_queues_cfg[6].weight = 0x0F;
 	plat->tx_queues_cfg[7].weight = 0x10;
 
-	plat->mdio_bus_data->phy_mask = 0;
-
 	plat->dma_cfg->pbl = 32;
 	plat->dma_cfg->pblx8 = true;
 	plat->dma_cfg->fixed_burst = 0;
@@ -386,8 +383,6 @@ static int snps_gmac5_default_data(struct pci_dev *pdev,
 	plat->tso_en = 1;
 	plat->pmt = 1;
 
-	plat->mdio_bus_data->phy_mask = 0;
-
 	/* Set default value for multicast hash bins */
 	plat->multicast_filter_bins = HASH_TABLE_SIZE;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
