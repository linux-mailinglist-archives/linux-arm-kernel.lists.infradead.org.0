Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC63115B5D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 07:39:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NKF+6AYDfp4NgE/yyqwqIZ++vuGZf+yIT7HNpGp078=; b=A0yas84mKTl+es
	x00JMzpR0TrGeCp/XAA6Y4iGoqgIkXLctLL8TjxWT/Apr6Gwi6U1bg7U1s+BbaQ2TcgMIv4l9bdjW
	gD1rdpVByyo0i/uBjdPRyQGDKosb6XTKvzPmbjbHlOUJncb6o4PheiolgJv0Qk03pyWyFBprB7IGN
	31LFiz9gU3DZHcMdRsiLkfoTfQBochheBn5pHDTwDzgd2YFEA85i/YImTj+BXDoHdZHQIhuOQG1nL
	bP+ZvpMFrZiVIDhl+SLNisJVax33LiyJss8vh73TLnbskjadhebLZYw4gmAYuMjzl2/lGSzFUiWBJ
	VwmV7tzfS1sPPB5Jpi+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idTkW-0003uH-So; Sat, 07 Dec 2019 06:39:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idTkP-0003tN-1X; Sat, 07 Dec 2019 06:39:22 +0000
X-UUID: e05e125153d9401b898bf37850b2e51f-20191206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=FsOPpGNcvyN3hqCpKWKad5Cxcn0GwUWSQI3FseIG2Rg=; 
 b=Ch2EJJRY4iHukue/yzS8oQ9cnCLyxaAYDIp8wKWnk6b2vAHc5j440FyHfuc5usvXgozSluJe0PiAnf0NO/IOaFu68v3rDG8/39vFGnzV6jGZPPo/v+gUEuh2fKLUwUpiubf/r9KC6REHx8Q/NWhF6iF8b4IW2RFhgYTKgHFH2c0=;
X-UUID: e05e125153d9401b898bf37850b2e51f-20191206
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2086838484; Fri, 06 Dec 2019 22:39:13 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 22:40:08 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 7 Dec 2019 14:38:51 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 7 Dec 2019 14:38:44 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>
Subject: [PATCH v1 2/2] scsi: ufs-mediatek: add device reset implementation
Date: Sat, 7 Dec 2019 14:39:08 +0800
Message-ID: <1575700748-28191-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1575700748-28191-1-git-send-email-stanley.chu@mediatek.com>
References: <1575700748-28191-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_223921_096445_312114F7 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device reset vops implementation in MediaTek UFS driver.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 27 +++++++++++++++++++++++++++
 drivers/scsi/ufs/ufs-mediatek.h |  7 +++++++
 2 files changed, 34 insertions(+)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 83e28edc3ac5..6a3ec11b16db 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -6,10 +6,12 @@
  *	Peter Wang <peter.wang@mediatek.com>
  */
 
+#include <linux/arm-smccc.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
+#include <linux/soc/mediatek/mtk_sip_svc.h>
 
 #include "ufshcd.h"
 #include "ufshcd-pltfrm.h"
@@ -269,6 +271,30 @@ static int ufs_mtk_link_startup_notify(struct ufs_hba *hba,
 	return ret;
 }
 
+static void ufs_mtk_device_reset(struct ufs_hba *hba)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(MTK_SIP_UFS_CONTROL, UFS_MTK_SIP_DEVICE_RESET,
+		      0, 0, 0, 0, 0, 0, &res);
+	/*
+	 * The reset signal is active low. UFS devices shall detect
+	 * more than or equal to 1us of positive or negative RST_n
+	 * pulse width.
+	 *
+	 * To be on safe side, keep the reset low for at least 10us.
+	 */
+	usleep_range(10, 15);
+
+	arm_smccc_smc(MTK_SIP_UFS_CONTROL, UFS_MTK_SIP_DEVICE_RESET,
+		      1, 0, 0, 0, 0, 0, &res);
+
+	/* Some devices may need time to respond to rst_n */
+	usleep_range(10000, 15000);
+
+	dev_info(hba->dev, "device reset done\n");
+}
+
 static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
@@ -303,6 +329,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
 	.pwr_change_notify   = ufs_mtk_pwr_change_notify,
 	.suspend             = ufs_mtk_suspend,
 	.resume              = ufs_mtk_resume,
+	.device_reset        = ufs_mtk_device_reset,
 };
 
 /**
diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
index 19f8c42fe06f..b03f601d3a9e 100644
--- a/drivers/scsi/ufs/ufs-mediatek.h
+++ b/drivers/scsi/ufs/ufs-mediatek.h
@@ -6,6 +6,8 @@
 #ifndef _UFS_MEDIATEK_H
 #define _UFS_MEDIATEK_H
 
+#include <linux/bitops.h>
+
 /*
  * Vendor specific pre-defined parameters
  */
@@ -29,6 +31,11 @@
 #define VS_SAVEPOWERCONTROL         0xD0A6
 #define VS_UNIPROPOWERDOWNCONTROL   0xD0A8
 
+/*
+ * SiP commands
+ */
+#define UFS_MTK_SIP_DEVICE_RESET    BIT(1)
+
 /*
  * VS_DEBUGCLOCKENABLE
  */
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
