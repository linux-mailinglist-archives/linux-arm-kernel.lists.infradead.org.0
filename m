Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B1D1756DC
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 10:22:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zGMCBylH9V+T2VoK/LfvJMsUsuvu/EaIic+2Co5VXHA=; b=LzN6kYVcFuWlii
	6eHkP2Bcvf89zwT2smF72HkaJa72NvHSPJ3Bpsf7ImukTiNj0eIM5s3XrEQpOwXeQf3jEYwjoSfxh
	eFMthP8hZbzF7lfv3WImyWc3CSzND0nD2gE8NhhWc+tSWawUUYPbESD38z/MX23j2KNTXQJXWT0U9
	pg4FY1lXWS4xmOY7Me04bbpZJuN5mQSb7UEvORN42SqCttvd0rNI3DqP+Y5eu8hGf34uS0AoPLmhX
	REqepZh6jK49PdU8gGZQ5OblNPXLTDFyFio7/SaW/tHo1vRj7JkfEF/48UAbarU62WC39G6gjMebM
	FrWLlSfVxw5MBaLLH7xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8hH2-00033N-CV; Mon, 02 Mar 2020 09:22:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8hGt-00031k-SB; Mon, 02 Mar 2020 09:21:57 +0000
X-UUID: 7970c94c01f14af6b1101d8a80f17437-20200302
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=0Y23yxwohWhXaBotvUv65ILHSsUsxieq1MmLFigexZw=; 
 b=vAK36ER269blXWVp9ID1zgWmo9YVYJ4yZROsmsh22z0kJguPv94Cbr9fvWNRUty0Vqt7P2L3rjw3La5SWEKG/lVcW2EhwGaYYQh6HZDR4/lS7+78Nlq0nweI+b+57NW2uey1dIDNMER7A9bgjHAn0Dq1agr8syj3B7JabkS+wL0=;
X-UUID: 7970c94c01f14af6b1101d8a80f17437-20200302
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1297678464; Mon, 02 Mar 2020 01:21:50 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Mar 2020 01:12:37 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Mar 2020 17:09:00 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 2 Mar 2020 17:11:08 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <ebiggers@kernel.org>,
 <martin.petersen@oracle.com>, <avri.altman@wdc.com>,
 <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [RFC PATCH v1] scsi: ufs-mediatek: add inline encryption support
Date: Mon, 2 Mar 2020 17:11:38 +0800
Message-ID: <20200302091138.10341-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1E0A8519FB5C75622F8B15201DA37225490402B846AFCF514B41CA5CB4FE07DC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_012155_920066_4B1C3B25 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 light.hsieh@mediatek.com, satyat@google.com, linux-fscrypt@vger.kernel.org,
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, matthias.bgg@gmail.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add inline encryption support to ufs-mediatek.

The standards-compliant parts, such as querying the crypto capabilities
and enabling crypto for individual UFS requests, are already handled by
ufshcd-crypto.c, which itself is wired into the blk-crypto framework.

However MediaTek UFS host requires a vendor-specific hce_enable operation
to allow crypto-related registers being accessed normally in kernel.
After this step, MediaTek UFS host can work as standard-compliant host
for inline-encryption related functions.

This patch is rebased to the latest wip-inline-encryption branch in
Eric Biggers's git:
https://git.kernel.org/pub/scm/linux/kernel/git/ebiggers/linux.git/

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 27 ++++++++++++++++++++++++++-
 drivers/scsi/ufs/ufs-mediatek.h |  1 +
 2 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 53eae5fe2ade..12d01fd3d5e1 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -15,6 +15,7 @@
 #include <linux/soc/mediatek/mtk_sip_svc.h>
 
 #include "ufshcd.h"
+#include "ufshcd-crypto.h"
 #include "ufshcd-pltfrm.h"
 #include "ufs_quirks.h"
 #include "unipro.h"
@@ -24,6 +25,9 @@
 	arm_smccc_smc(MTK_SIP_UFS_CONTROL, \
 		      cmd, val, 0, 0, 0, 0, 0, &(res))
 
+#define ufs_mtk_crypto_ctrl(res, enable) \
+	ufs_mtk_smc(UFS_MTK_SIP_CRYPTO_CTRL, enable, res)
+
 #define ufs_mtk_ref_clk_notify(on, res) \
 	ufs_mtk_smc(UFS_MTK_SIP_REF_CLK_NOTIFICATION, on, res)
 
@@ -66,7 +70,27 @@ static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
 	}
 }
 
-static int ufs_mtk_bind_mphy(struct ufs_hba *hba)
+static void ufs_mtk_crypto_enable(struct ufs_hba *hba)
+{
+	struct arm_smccc_res res;
+
+	ufs_mtk_crypto_ctrl(res, 1);
+	if (res.a0) {
+		dev_info(hba->dev, "%s: crypto enable failed, err: %lu\n",
+			 __func__, res.a0);
+	}
+}
+
+static int ufs_mtk_hce_enable_notify(struct ufs_hba *hba,
+				     enum ufs_notify_change_status status)
+{
+	if (status == PRE_CHANGE && ufshcd_hba_is_crypto_supported(hba))
+		ufs_mtk_crypto_enable(hba);
+
+	return 0;
+}
+
+int ufs_mtk_bind_mphy(struct ufs_hba *hba)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 	struct device *dev = hba->dev;
@@ -494,6 +518,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
 	.name                = "mediatek.ufshci",
 	.init                = ufs_mtk_init,
 	.setup_clocks        = ufs_mtk_setup_clocks,
+	.hce_enable_notify   = ufs_mtk_hce_enable_notify,
 	.link_startup_notify = ufs_mtk_link_startup_notify,
 	.pwr_change_notify   = ufs_mtk_pwr_change_notify,
 	.apply_dev_quirks    = ufs_mtk_apply_dev_quirks,
diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
index fccdd979d6fb..5ebaa59898bf 100644
--- a/drivers/scsi/ufs/ufs-mediatek.h
+++ b/drivers/scsi/ufs/ufs-mediatek.h
@@ -58,6 +58,7 @@
  */
 #define MTK_SIP_UFS_CONTROL               MTK_SIP_SMC_CMD(0x276)
 #define UFS_MTK_SIP_DEVICE_RESET          BIT(1)
+#define UFS_MTK_SIP_CRYPTO_CTRL           BIT(2)
 #define UFS_MTK_SIP_REF_CLK_NOTIFICATION  BIT(3)
 
 /*
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
