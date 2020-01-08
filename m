Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B43D133950
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 03:56:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O+JiQycWE+qdV2S0y49PTovGAF4Mc4M+P12dB+kJH7o=; b=H0z
	yh07SvX8o7Refxp5EO8nz9ZcH85qhhxFiUeEVMFfRZT7g7AK9ZWTgzx6cMEprfC/ymxc9cq7BnhVh
	6YuW6F4Ax1P683YKGybchiCAcntJXXirHD394+ZMeP/AWPsW3XTvvb4b8zB6fy7Gb3+H0zKL1cVZ8
	0VFMEUZgbKRCTpl+RYPhWgO0lPOxLnTivTRW5PHH/PvK5Ow4Xhvzjm4HfNj74mwI5O5kSsR/7fUOM
	Y4qgMfslprOg14All8xUTfBTea9ZuruJV/PjCZU55CC7tTKJICu5glfpQ1cQRZ6L5lueNyC+dCRZ8
	OFIiVtzSKDX50FrIkPWgMlXXgnVKmqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1WP-00041b-9M; Wed, 08 Jan 2020 02:56:37 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1WI-00041E-Kb
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 02:56:31 +0000
Received: by mail-pf1-x441.google.com with SMTP id z16so864339pfk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 18:56:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=QyroB5LXjxb8iNcU2ElAPCjALtlsDRJIi4SawaB0E7c=;
 b=E3n6Gk5MirvuWn2qz2nIHVm+5Hxjz4Nq4wAdMyekVm9lA2tuXwuqxrIjy+bHKC6aRy
 29YP9weDLGP7P9gpfg+rJTz8bKsZdziuhhe78aqk5P0FQYw1x1Cxt19eIwU3FiJ6Y/k7
 NwXUcOVepPCx6qcmZeR+tgGPaRqDgKb8TnZr5eOO6Qw/aIROygskXs0fAuif0zs0puaX
 h/4PakQlPNNXEue27pSySzbAqBiXhfLYjmtKEBgQj+uimEl4Q+aHoJ78jWSQW04VJ+Z7
 glvcWowQ6cbxVX7rUq4/7W7IeFANAJQqoleuAoftLI05xvciZ6epm3pCB+V5Xm/OFS0B
 6TWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=QyroB5LXjxb8iNcU2ElAPCjALtlsDRJIi4SawaB0E7c=;
 b=Wg+ln+GLy4gjDwAi3bh4x68qbe/YAl3XyaZ+TEwO7AjBqtsMaed6hGmaea1rQyeR1c
 Ew1lDQ2n/Hn3r8S8GRTInHk34+A0BpNqgjtt4h5QHb2GspdUqiwKZbZ6IeOh7xBcOMUc
 lE1wgsv+FJMeKqwTKJFdDQXEYxdqkeN6o6nF9wVa0DD1Jj/jxorhR8M8iXbK9IBtMR0e
 C0pMDHXtnYfB8/0aPR3QcSOZG9p2uxSSvBQdYUAkovSlrBBfXRYxMsj84LzZ2IgTD0J6
 s2l39SQAJPX7j2L0MBtli/hwF8eKSX7TFkdS1Uli/2ARcheAwAqGlighiXIEEHYa1vXw
 X7zg==
X-Gm-Message-State: APjAAAUfP5akjpCFzTqZ9cvcjFYQSid0zfcP7cAxBHCkAtQIdsWIFt4u
 vmEq7uh9frCAXixSgJfSF0Y=
X-Google-Smtp-Source: APXvYqx2B0gxIFJca1dgjrpJf7auzNgufbWz8vdqEcAFaSebP15mW1okQWAH7ySFcWH1sK9e1o+WwA==
X-Received: by 2002:a65:538b:: with SMTP id x11mr2823226pgq.395.1578452189886; 
 Tue, 07 Jan 2020 18:56:29 -0800 (PST)
Received: from localhost (199.168.140.36.16clouds.com. [199.168.140.36])
 by smtp.gmail.com with ESMTPSA id 144sm1021480pfc.124.2020.01.07.18.56.28
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 18:56:29 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com
Subject: [PATCH] net: stmmac: pci: remove the duplicate code of phy_mask
Date: Wed,  8 Jan 2020 10:56:24 +0800
Message-Id: <20200108025624.13968-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_185630_699545_3C11CFC9 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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

The value of phy_mask will be passed to phy_mask of struct mii_bus
before register mdiobus, the mii_bus was obtained by mdiobus_alloc()
and set mii_bus->phy_mask as zero by default. so It doesn't need to
set phy_mask as zero again in this driver.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---
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
