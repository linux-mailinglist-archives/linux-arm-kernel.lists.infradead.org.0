Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 147F8182EEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 12:21:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=deLzRMz9w1sMjLoAJy4FnvRBPrjvXTDW2/zE1fkjF9E=; b=d3VgKHJnb8mocs
	4ahfnhQ0zwRtMSsmVjm+EpeNhFAl0ciXX50I8WbahSExsp6UpvES6wgGfwnGi+DQhACcf5djvpeIc
	zBE9pPZ9+IKAsxuSDjeAvbGEWa9IJ7dENkiYHJXVQux32iZDSmi9657NVFvuGHvhkTk63DcKj5ynT
	VMmUCVSRZRYJg+GTbLNw25+K2BG+FA4rR0gIuqUtyGHQsJxuMahc3vHK75CVt15JFrdJdRz4aLTmM
	F7LW4rpWVWsRUeZN0yaFKGGcKyhONjLLJ1aBFnsrRk5d2DojE19Q5kaEUrN+qBbBceBBjCFoYatf1
	pist4AMQWCJZUzFGSbEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCLtS-0006SN-7s; Thu, 12 Mar 2020 11:20:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCLs6-0003w5-NS; Thu, 12 Mar 2020 11:19:28 +0000
X-UUID: fb65c50c89ce4bae826f6a66553bc23b-20200312
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=4TIG4byHma4NOdZnY1tFZDNMEK8I4hnml0HdV5eY6KA=; 
 b=OlTNiGFOOFTvmvLHVaCzbKDR2kwplWDqXztmi745OwdwJAOIkVKGib9PjfzmW3fLmWmxpzW+KKvnG+kKkSXdh85VTmj4rpV4WbvSjhiuMhDDz6dEJiBrmJtz6t8qhiv6ugpxmNFf4355OwfJ5m5dRUc4RImI6MjOiTgfOMPqMxE=;
X-UUID: fb65c50c89ce4bae826f6a66553bc23b-20200312
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 228233227; Thu, 12 Mar 2020 03:19:20 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 04:09:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 19:06:22 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Mar 2020 19:08:50 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v2 4/8] scsi: ufs: introduce common delay function
Date: Thu, 12 Mar 2020 19:09:04 +0800
Message-ID: <20200312110908.14895-5-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200312110908.14895-1-stanley.chu@mediatek.com>
References: <20200312110908.14895-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 640FA8D674D04502A57F937DF8F04FAFA73D2CCC4DDAA72B2DC102A3490FAD1C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_041926_931913_84D95543 
X-CRM114-Status: GOOD (  12.67  )
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

Introduce common delay function to collect all delay requirements
to simplify driver and take choices of udelay and usleep_range into
consideration.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 27 ++++++++++++++++++---------
 drivers/scsi/ufs/ufshcd.h |  1 +
 2 files changed, 19 insertions(+), 9 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index b4988b9ee36c..ce65d321a73f 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -597,6 +597,18 @@ static void ufshcd_print_pwr_info(struct ufs_hba *hba)
 		 hba->pwr_info.hs_rate);
 }
 
+void ufshcd_wait_us(unsigned long us, unsigned long tolerance, bool can_sleep)
+{
+	if (!us)
+		return;
+
+	if (us < 10 || !can_sleep)
+		udelay(us);
+	else
+		usleep_range(us, us + tolerance);
+}
+EXPORT_SYMBOL_GPL(ufshcd_wait_us);
+
 /*
  * ufshcd_wait_for_register - wait for register value to change
  * @hba - per-adapter interface
@@ -620,10 +632,7 @@ int ufshcd_wait_for_register(struct ufs_hba *hba, u32 reg, u32 mask,
 	val = val & mask;
 
 	while ((ufshcd_readl(hba, reg) & mask) != val) {
-		if (can_sleep)
-			usleep_range(interval_us, interval_us + 50);
-		else
-			udelay(interval_us);
+		ufshcd_wait_us(interval_us, 50, can_sleep);
 		if (time_after(jiffies, timeout)) {
 			if ((ufshcd_readl(hba, reg) & mask) != val)
 				err = -ETIMEDOUT;
@@ -3565,7 +3574,7 @@ static inline void ufshcd_add_delay_before_dme_cmd(struct ufs_hba *hba)
 	}
 
 	/* allow sleep for extra 50us if needed */
-	usleep_range(min_sleep_time_us, min_sleep_time_us + 50);
+	ufshcd_wait_us(min_sleep_time_us, 50, true);
 }
 
 /**
@@ -4289,7 +4298,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 	 * instruction might be read back.
 	 * This delay can be changed based on the controller.
 	 */
-	usleep_range(1000, 1100);
+	ufshcd_wait_us(1000, 100, true);
 
 	/* wait for the host controller to complete initialization */
 	retry = 10;
@@ -4301,7 +4310,7 @@ int ufshcd_hba_enable(struct ufs_hba *hba)
 				"Controller enable failed\n");
 			return -EIO;
 		}
-		usleep_range(5000, 5100);
+		ufshcd_wait_us(5000, 100, true);
 	}
 
 	/* enable UIC related interrupts */
@@ -6224,7 +6233,7 @@ static int ufshcd_abort(struct scsi_cmnd *cmd)
 			reg = ufshcd_readl(hba, REG_UTP_TRANSFER_REQ_DOOR_BELL);
 			if (reg & (1 << tag)) {
 				/* sleep for max. 200us to stabilize */
-				usleep_range(100, 200);
+				ufshcd_wait_us(100, 100, true);
 				continue;
 			}
 			/* command completed already */
@@ -7783,7 +7792,7 @@ static void ufshcd_vreg_set_lpm(struct ufs_hba *hba)
 	 */
 	if (!ufshcd_is_link_active(hba) &&
 	    hba->dev_quirks & UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM)
-		usleep_range(2000, 2100);
+		ufshcd_wait_us(2000, 100, true);
 
 	/*
 	 * If UFS device is either in UFS_Sleep turn off VCC rail to save some
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index fec004cd8054..4683e7bf6640 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -781,6 +781,7 @@ int ufshcd_init(struct ufs_hba * , void __iomem * , unsigned int);
 int ufshcd_make_hba_operational(struct ufs_hba *hba);
 void ufshcd_remove(struct ufs_hba *);
 int ufshcd_uic_hibern8_exit(struct ufs_hba *hba);
+void ufshcd_wait_us(unsigned long us, unsigned long tolerance, bool can_sleep);
 int ufshcd_wait_for_register(struct ufs_hba *hba, u32 reg, u32 mask,
 				u32 val, unsigned long interval_us,
 				unsigned long timeout_ms, bool can_sleep);
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
