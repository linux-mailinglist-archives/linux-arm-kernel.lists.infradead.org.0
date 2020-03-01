Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50041174DCF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 15:45:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzRHClk6C3XQLW9+EEesVlPHV6hybOZ9wCKlobk8xYU=; b=gwulqlR1oxCekM
	+yP6mSd1aK/HblPnagN9XxxGzbmTECU9IAbqwBe+i7Lxt5zWNI3PLb5q8q3V2gVEqw2qJVfKdYzu/
	vKAEDf1jKuv0gAMK5CUUwly218QfXctfPoxVw4cr/hhV9/gpV0xrPKrsvfyjyU3Y83GbasquUrQpJ
	7vATrGixO4WcaAahfe5b3A5KRfU18zK9c99Ankh+o+if37IPELnWjdE/VyWaa0PLckdRxZtejc1qs
	oMK/y7b41C8756LvAPSqGGdOeul/Y79zENyLjatctsojHDkSsi0o2JnnCAG4sKMXfCMKvNVw3qAfj
	+uI7TEP03xiTIsw7nRDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Pqn-0003gk-2K; Sun, 01 Mar 2020 14:45:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Pq7-0002pC-L2
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 14:45:09 +0000
Received: from localhost (unknown [193.47.165.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8BF22467B;
 Sun,  1 Mar 2020 14:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583073907;
 bh=cok+QYGvgZtUkk2sWaBItURDOpyh3KShMdFdty6YRIw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rzMH6KM6TgDLGLYnQT8jHa28f7PZj2mg27aud/MRDULnlhzZzCXwCGtGTQnqOaecI
 tzhKJTs4PnNJDAJ0Pva2wcj51Pp+LM24bhvKLnfnEH8GS7ua+GxwCoDxQrFKyMKeAs
 m8upd2Y2Ub4h5MPca/enmlaIoA0Xg+drZSoAnUyQ=
From: Leon Romanovsky <leon@kernel.org>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Subject: [PATCH net-next 02/23] net/broadcom: Don't set N/A FW if it is not
 available
Date: Sun,  1 Mar 2020 16:44:35 +0200
Message-Id: <20200301144457.119795-3-leon@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200301144457.119795-1-leon@kernel.org>
References: <20200301144457.119795-1-leon@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_064507_747285_E1D6647C 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Leon Romanovsky <leonro@mellanox.com>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leon Romanovsky <leonro@mellanox.com>

There is no need to explicitly set N/A if FW not available.

Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
---
 drivers/net/ethernet/broadcom/bcm63xx_enet.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bcm63xx_enet.c b/drivers/net/ethernet/broadcom/bcm63xx_enet.c
index 912e8d101e8d..a877159eafb0 100644
--- a/drivers/net/ethernet/broadcom/bcm63xx_enet.c
+++ b/drivers/net/ethernet/broadcom/bcm63xx_enet.c
@@ -1303,7 +1303,6 @@ static void bcm_enet_get_drvinfo(struct net_device *netdev,
 				 struct ethtool_drvinfo *drvinfo)
 {
 	strlcpy(drvinfo->driver, bcm_enet_driver_name, sizeof(drvinfo->driver));
-	strlcpy(drvinfo->fw_version, "N/A", sizeof(drvinfo->fw_version));
 	strlcpy(drvinfo->bus_info, "bcm63xx", sizeof(drvinfo->bus_info));
 }
 
@@ -2527,7 +2526,6 @@ static void bcm_enetsw_get_drvinfo(struct net_device *netdev,
 				   struct ethtool_drvinfo *drvinfo)
 {
 	strncpy(drvinfo->driver, bcm_enet_driver_name, sizeof(drvinfo->driver));
-	strncpy(drvinfo->fw_version, "N/A", 32);
 	strncpy(drvinfo->bus_info, "bcm63xx", sizeof(drvinfo->bus_info));
 }
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
