Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B87E182EE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 12:20:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3YowtKE/3T8pPrtDXXl5s390lEcB6YN7qFy/K0wt0oM=; b=DzOfgt/KBbYt74
	/zccnmFkOkp3GtXjrlT0kp7gyzdXSIZqouX9gtJDmZLWf/kN4VqhTutFwk8YAJzsO9BHqn3fKStH3
	8McSoWnVrP/hZG3AAz80iPC7p+he3iGGVIv+xaqML5z7adLSXuhm0BoC5UbyvXWq4ugLETIjVM0En
	6zK6Ki9d8hNyCxw+vt6lX54J9W6rgO2Ak8QBgXRXboSYRQ5PMucoT/h29Zc5CIISGFHLDkVUhw107
	NfwS/K+IYjHGTOCryODzOXI5KUSpURrjacSJyOs+ihHDLgiSztebPui6Cd8inq+jfjQQgeXC7BCJs
	8y98dHauUdXYCpuJt9Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCLt3-0005ay-AZ; Thu, 12 Mar 2020 11:20:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCLs5-0003w5-2C; Thu, 12 Mar 2020 11:19:26 +0000
X-UUID: 9922745286b849dc8b2f4028f431896f-20200312
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=AFM96yV028irlR8soZH4MHzhmotsvDaTG8EF1C+nQj8=; 
 b=oDMnyCLm98t0/8JlAfcXunlhWaFFc4TwnG+LuE82GY25oqm6E1RILsq/LwMTjpr4k24GeY4ClNrEIcrhe6hgPYw1YZGlkfCm2BTU/onIV3+sFkQuK8PCHV3WsFepWjE/0+RyyFlKflecFZZvk4MxsJwq/nZGOi8PJql8xXdYKbo=;
X-UUID: 9922745286b849dc8b2f4028f431896f-20200312
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1848984985; Thu, 12 Mar 2020 03:19:20 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 04:09:17 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 19:06:59 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Mar 2020 19:08:50 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 5/8] scsi: ufs-mediatek: replace all delay places by common
 delay function
Date: Thu, 12 Mar 2020 19:09:05 +0800
Message-ID: <20200312110908.14895-6-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200312110908.14895-1-stanley.chu@mediatek.com>
References: <20200312110908.14895-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_041925_123479_BB2090A9 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A common delay function is introduced in UFS core driver, thus
ufs-mediatek can use it to replace all delay codes.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 3b0e575d7460..0ff6781654fd 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -100,17 +100,6 @@ static int ufs_mtk_bind_mphy(struct ufs_hba *hba)
 	return err;
 }
 
-static void ufs_mtk_udelay(unsigned long us)
-{
-	if (!us)
-		return;
-
-	if (us < 10)
-		udelay(us);
-	else
-		usleep_range(us, us + 10);
-}
-
 static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
@@ -123,7 +112,7 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
 
 	if (on) {
 		ufs_mtk_ref_clk_notify(on, res);
-		ufs_mtk_udelay(host->ref_clk_ungating_wait_us);
+		ufshcd_wait_us(host->ref_clk_ungating_wait_us, 10, true);
 		ufshcd_writel(hba, REFCLK_REQUEST, REG_UFS_REFCLK_CTRL);
 	} else {
 		ufshcd_writel(hba, REFCLK_RELEASE, REG_UFS_REFCLK_CTRL);
@@ -138,7 +127,7 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
 		if (((value & REFCLK_ACK) >> 1) == (value & REFCLK_REQUEST))
 			goto out;
 
-		usleep_range(100, 200);
+		ufshcd_wait_us(100, 100, true);
 	} while (time_before(jiffies, timeout));
 
 	dev_err(hba->dev, "missing ack of refclk req, reg: 0x%x\n", value);
@@ -150,7 +139,7 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
 out:
 	host->ref_clk_enabled = on;
 	if (!on) {
-		ufs_mtk_udelay(host->ref_clk_gating_wait_us);
+		ufshcd_wait_us(host->ref_clk_gating_wait_us, 10, true);
 		ufs_mtk_ref_clk_notify(on, res);
 	}
 
@@ -430,12 +419,12 @@ static void ufs_mtk_device_reset(struct ufs_hba *hba)
 	 *
 	 * To be on safe side, keep the reset low for at least 10us.
 	 */
-	usleep_range(10, 15);
+	ufshcd_wait_us(10, 5, true);
 
 	ufs_mtk_device_reset_ctrl(1, res);
 
 	/* Some devices may need time to respond to rst_n */
-	usleep_range(10000, 15000);
+	ufshcd_wait_us(10000, 5000, true);
 
 	dev_info(hba->dev, "device reset done\n");
 }
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
