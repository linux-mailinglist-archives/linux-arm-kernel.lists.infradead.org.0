Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1209412CCF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 06:34:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECLdhU3wq11vkhIIV9O8GD81jzdJ/KtSI132tvFMqOQ=; b=fY291pAmMOG7BZ
	Ok7cQizkqn+9TDFBivBYDsEMsMsP0HmXioxaPMG16kAZrk0WRt7ijV8/FFLgNEhFiS8BiuHswFaJ1
	YYPoDPIQEjuWIl6dM6Jg/hZxD+2qsP1JLnjh5ia0HFY21EWsmVOvxedx3SGO/I+ilTxptDzvolMfs
	E0oTelkkDwugdixKd1yRPBLt7XQZqUSXHQ6aVV4c6SjkIRojNZo1HXEPQYA+dOXqL2iNQYzm1psyH
	sgig3E+sfpKQFTYlPddvZG4Xzw8iBssevaprAGEfjO/HqM37mYxlbfnVFJx4Jt2uh9fm7vHFJhyFp
	aWJoJNZVVJE70/H9m6Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilngo-0007wG-FG; Mon, 30 Dec 2019 05:34:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilnft-00078k-4A; Mon, 30 Dec 2019 05:33:07 +0000
X-UUID: b8ed36d208384a9b893b5dd49df283f6-20191229
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=lASBnsWC43Rfu6UB24oYUGd0P99a4d4L+O1D0Rkd/kg=; 
 b=p0BakxZeyUmy4+OrwLlFFIwnpTpmvnZoVDazX1F0Qg56PJUrh4Igyn+7zc/wiknx5mQ0oteUBYquY5u82KvZrWyON6GOpYkVhDMZPYlyze4V3+rt/a1TO5V9Ut/QFQFIF9JyFsfjsIwm3Xrq2ig3b4fqUYxE9YosmZj8SUyTaPE=;
X-UUID: b8ed36d208384a9b893b5dd49df283f6-20191229
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1674888027; Sun, 29 Dec 2019 21:32:59 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 29 Dec 2019 21:33:13 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 30 Dec 2019 13:32:05 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 30 Dec 2019 13:31:31 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <bvanassche@acm.org>, <f.fainelli@gmail.com>
Subject: [PATCH v2 2/6] scsi: ufs-mediatek: add device reset implementation
Date: Mon, 30 Dec 2019 13:32:26 +0800
Message-ID: <1577683950-1702-3-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1577683950-1702-1-git-send-email-stanley.chu@mediatek.com>
References: <1577683950-1702-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_213305_191609_45571C6C 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device reset vops implementation in MediaTek UFS driver.

Cc: Alim Akhtar <alim.akhtar@samsung.com>
Cc: Avri Altman <avri.altman@wdc.com>
Cc: Bart Van Assche <bvanassche@acm.org>
Cc: Bean Huo <beanhuo@micron.com>
Cc: Can Guo <cang@codeaurora.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 33 +++++++++++++++++++++++++++++++++
 drivers/scsi/ufs/ufs-mediatek.h |  9 +++++++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 83e28edc3ac5..37e2c91fc452 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -6,16 +6,25 @@
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
 #include "unipro.h"
 #include "ufs-mediatek.h"
 
+#define ufs_mtk_smc(cmd, val, res) \
+	arm_smccc_smc(MTK_SIP_UFS_CONTROL, \
+		      cmd, val, 0, 0, 0, 0, 0, &(res))
+
+#define ufs_mtk_device_reset_ctrl(high, res) \
+	ufs_mtk_smc(UFS_MTK_SIP_DEVICE_RESET, high, res)
+
 static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
 {
 	u32 tmp;
@@ -269,6 +278,29 @@ static int ufs_mtk_link_startup_notify(struct ufs_hba *hba,
 	return ret;
 }
 
+static void ufs_mtk_device_reset(struct ufs_hba *hba)
+{
+	struct arm_smccc_res res;
+
+	ufs_mtk_device_reset_ctrl(0, res);
+
+	/*
+	 * The reset signal is active low. UFS devices shall detect
+	 * more than or equal to 1us of positive or negative RST_n
+	 * pulse width.
+	 *
+	 * To be on safe side, keep the reset low for at least 10us.
+	 */
+	usleep_range(10, 15);
+
+	ufs_mtk_device_reset_ctrl(1, res);
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
@@ -303,6 +335,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
 	.pwr_change_notify   = ufs_mtk_pwr_change_notify,
 	.suspend             = ufs_mtk_suspend,
 	.resume              = ufs_mtk_resume,
+	.device_reset        = ufs_mtk_device_reset,
 };
 
 /**
diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
index 19f8c42fe06f..ce68ce25fdd7 100644
--- a/drivers/scsi/ufs/ufs-mediatek.h
+++ b/drivers/scsi/ufs/ufs-mediatek.h
@@ -6,6 +6,9 @@
 #ifndef _UFS_MEDIATEK_H
 #define _UFS_MEDIATEK_H
 
+#include <linux/bitops.h>
+#include <linux/soc/mediatek/mtk_sip_svc.h>
+
 /*
  * Vendor specific pre-defined parameters
  */
@@ -29,6 +32,12 @@
 #define VS_SAVEPOWERCONTROL         0xD0A6
 #define VS_UNIPROPOWERDOWNCONTROL   0xD0A8
 
+/*
+ * SiP commands
+ */
+#define MTK_SIP_UFS_CONTROL         MTK_SIP_SMC_CMD(0x276)
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
