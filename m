Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D025F13445F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:57:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EInQbbtrnEIDVUydU46kgE2Feb6BewTcDB3La0d2sSs=; b=Dad
	9b8F/587ev02No/qungaqQ21VTRLdunncz++5uKmry+bspKrmVygPbt9KOV+hEfrH40kD0mhe4hs1
	hOt/BjfkukBODNlNIkPEmS+bAX7y1yMxAfSg8BlPKA/6b5+jiE1ptlu8QGdqw7EfHaouS8oS4hOk6
	U0mEpK9t+DTKZtGgFHVsU3GRCnN0JtW1/KAP/vEr9Cp+oRSJqbrj630L1YrM1/xcUWhsqZUnl/yqq
	zxiscx8gICYaM3YBSRvP/BnkEGJUrQ77/fUMrHeDHULtpJgFAlZuskekBxlgvF8J3w5iScNLJTD30
	XHNdWQay4HDiuAP7rgy+nk8wlpJVcgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBpr-00047K-GM; Wed, 08 Jan 2020 13:57:23 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBpk-00046z-M8
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:57:17 +0000
Received: by mail-pg1-x544.google.com with SMTP id k25so1624228pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 05:57:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=qW90h0u7OkzvuxRNBAEqi37oJNoUhGwMxLdMwSq1ERo=;
 b=ZuGH2Wj7E14zCp5yindCZWoGHDv7ZOtdQkjnWFD/TfhMWtzS5Xjx+Ks05Fl2umCQxf
 EwAYwY4mV93SL+T2LKRB2AKRlzgneyqlPV9+PBcc+kYeq0wtMtXTqZzh+iMfAGZykg5t
 bsXvfP9i0+/OUWaiq8Yb/DbC56N6DhngQyjiL/KvhG0SBBWjGObMFVfuZpH/KoawWCEC
 kZ++1T2HP0Zo17uKVoZgu5w2akM4e0txuiFbtd0x2Mp5QarS++fKapcAfnehZ0Y6DmGT
 +jkspmJJdJmz24vJoFEOMTHp7MjLgC84FQk7mylrMVEbCBsKb73X2F0mFKvAE2/+TKAX
 9OWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=qW90h0u7OkzvuxRNBAEqi37oJNoUhGwMxLdMwSq1ERo=;
 b=H4Op6fYbojSkUN8zE6mzl9NJEB24EqfHbtiL0MUZgHHVFOfjk5Oe/hVoDyX6tRAMa9
 Uz43cP2Wdrwe5DkJn4zrT+hVDuJRuAYFqlGKRXYo3XDOvZacqOsN+A5WyLs4R0/N9VeN
 1Ze83jSRXkKt2ZhWrUCI9A4R6kLizeh5+DTmKskm5wr88nySR7QrMDqmV/XAXqMxhXG6
 tWeCq5aijxyIRYUc2167xElmJqUmJUHilxTu90RV/Hd/gwZ8J+tjTL2IF7kzUH2fAugX
 bV1A3Rp8AjNYckCpw4hqzYSkeXEHUyWv4M+hKpFvX0eHinVEbLwBIwe7AmYCD48InDZr
 qylw==
X-Gm-Message-State: APjAAAU6Ds1Yzy3XMW2YUpx9/2h/7QNfaZE/xDR/9tQ2Gwta3Kyq0u5/
 lqyp+V5W16j338BsB8Hryns=
X-Google-Smtp-Source: APXvYqzMlnEoYbJ22LLGcHWee0yQGtrOCZXdglioPZIVFM1/YGxuYCvFUALBewJvzxtmga1BAo495w==
X-Received: by 2002:a65:56c9:: with SMTP id w9mr5145925pgs.296.1578491835938; 
 Wed, 08 Jan 2020 05:57:15 -0800 (PST)
Received: from localhost (199.168.140.36.16clouds.com. [199.168.140.36])
 by smtp.gmail.com with ESMTPSA id s185sm3984867pfc.35.2020.01.08.05.57.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 Jan 2020 05:57:15 -0800 (PST)
From: Dejin Zheng <zhengdejin5@gmail.com>
To: peppe.cavallaro@st.com, alexandre.torgue@st.com, joabreu@synopsys.com,
 davem@davemloft.net, mcoquelin.stm32@gmail.com
Subject: [PATCH v3] net: stmmac: pci: remove the duplicate code of set phy_mask
Date: Wed,  8 Jan 2020 21:56:49 +0800
Message-Id: <20200108135649.6091-1-zhengdejin5@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_055716_748421_284AE9FF 
X-CRM114-Status: GOOD (  10.92  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

All members of mdio_bus_data are cleared to 0 when it was obtained
by devm_kzalloc(). so It doesn't need to set phy_mask as 0 again.

Signed-off-by: Dejin Zheng <zhengdejin5@gmail.com>
---

Changes since v2:
    Abandoned the other commits, now only this one commit is
    in the patch set.

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
