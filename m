Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AB71F71B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 03:27:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U0rAHtMl8bdsdEzfa5W0Ezb3t5uwrHbHf3xmdpCIRHY=; b=S9e1ZfPfoFpsHR
	GFD7pUiLMyqVsdecoYrFLfoZQsYKf/TFGhtDRrcfCeVc8dvCYr4AklMTobV2j1Miilhkcq3U5vB35
	cFoZEMntn7MKtrqfhrmzivL4X3DWq2/hsYY90Ub9LdRy6WLb7DvTBnWCUqPdk9BGM/Q6XVeYngBxU
	FhETecTZs8I8nYAx2p/yaGjGeauyA//zbmCKBpfQtzVRM9YU25uWBDGRK8HvBg8dTGbfPGAdAJ/d8
	rZti0/5vnv9954c2gwMz89MXV2XdjE9OvddjimJuTfVUT3O/wOPQXjXyGY+Gi/w0oVKWN8TTcqdNn
	be/ZwVrO9s7Me0AnchHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjYTE-0000Uk-DE; Fri, 12 Jun 2020 01:27:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjYSm-0000LD-Sm; Fri, 12 Jun 2020 01:26:34 +0000
X-UUID: b58034fc879b49d7879452e84a651e69-20200611
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=TyNotqRzhDuLovK50I1nRQ2Gr24GvWjdCq+YG5zKk4w=; 
 b=Wvc8xVa7xhd0QL4FONMSFmBabbAcIpl5uWTuS/wAtvXb6MyglwlkGs5jFTKbIB1HuCGLMEEJDiIHKTRJ7VkoNSiqIUyecZ41Zr4aZZjFRscy/9mq/U7uLb4MLImhGADGMyB2FgbokhDVNDGz2KK0Ez/PkNbmZ9RMQDmiimLs1KQ=;
X-UUID: b58034fc879b49d7879452e84a651e69-20200611
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1009256973; Thu, 11 Jun 2020 17:26:31 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 11 Jun 2020 18:26:23 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 09:26:22 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 12 Jun 2020 09:26:22 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 2/2] scsi: ufs: Cleanup device vendor name and device quirk
 table
Date: Fri, 12 Jun 2020 09:26:25 +0800
Message-ID: <20200612012625.6615-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200612012625.6615-1-stanley.chu@mediatek.com>
References: <20200612012625.6615-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_182632_939821_2639C9F9 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cleanup below items,
- Sort vendor name in alphabetical order
- Squash device quirks as compact as possible in device quirk table
  to enhance performance of the lookup
- Sort device quirks in alphabetical order

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs_quirks.h |  2 +-
 drivers/scsi/ufs/ufshcd.c     | 15 ++++++---------
 2 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/scsi/ufs/ufs_quirks.h b/drivers/scsi/ufs/ufs_quirks.h
index e80d5f26a442..2a0041493e30 100644
--- a/drivers/scsi/ufs/ufs_quirks.h
+++ b/drivers/scsi/ufs/ufs_quirks.h
@@ -13,9 +13,9 @@
 #define UFS_ANY_MODEL  "ANY_MODEL"
 
 #define UFS_VENDOR_MICRON      0x12C
-#define UFS_VENDOR_TOSHIBA     0x198
 #define UFS_VENDOR_SAMSUNG     0x1CE
 #define UFS_VENDOR_SKHYNIX     0x1AD
+#define UFS_VENDOR_TOSHIBA     0x198
 #define UFS_VENDOR_WDC         0x145
 
 /**
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 1da1df6ea47e..c197a3315d21 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -219,22 +219,19 @@ static struct ufs_dev_fix ufs_fixups[] = {
 	UFS_FIX(UFS_VENDOR_MICRON, UFS_ANY_MODEL,
 		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
 	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
-		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
-	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
+		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM |
+		UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE |
 		UFS_DEVICE_QUIRK_RECOVERY_FROM_DL_NAC_ERRORS),
-	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
-		UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE),
+	UFS_FIX(UFS_VENDOR_SKHYNIX, UFS_ANY_MODEL,
+		UFS_DEVICE_QUIRK_HOST_PA_SAVECONFIGTIME),
+	UFS_FIX(UFS_VENDOR_SKHYNIX, "hB8aL1" /*H28U62301AMR*/,
+		UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME),
 	UFS_FIX(UFS_VENDOR_TOSHIBA, UFS_ANY_MODEL,
 		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
 	UFS_FIX(UFS_VENDOR_TOSHIBA, "THGLF2G9C8KBADG",
 		UFS_DEVICE_QUIRK_PA_TACTIVATE),
 	UFS_FIX(UFS_VENDOR_TOSHIBA, "THGLF2G9D8KBADG",
 		UFS_DEVICE_QUIRK_PA_TACTIVATE),
-	UFS_FIX(UFS_VENDOR_SKHYNIX, UFS_ANY_MODEL,
-		UFS_DEVICE_QUIRK_HOST_PA_SAVECONFIGTIME),
-	UFS_FIX(UFS_VENDOR_SKHYNIX, "hB8aL1" /*H28U62301AMR*/,
-		UFS_DEVICE_QUIRK_HOST_VS_DEBUGSAVECONFIGTIME),
-
 	END_FIX
 };
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
