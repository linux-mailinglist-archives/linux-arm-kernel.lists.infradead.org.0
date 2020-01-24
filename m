Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8911478BD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 08:00:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQIexWutu/8yCr16NvOJnbd7oUy3M5YltOjJBXxABdE=; b=gpoCqOw5n/dXk3
	i3AKM/j0/sIDdw6sQDQeqO7hXt5TmtT7PUbSC8mGqtealWsIJSYW8DSNXj1Kr+GLpc/O5EM5ymq9W
	1mc/07NQQM6AA5++VhEOOvLMfTz41IZUBPqUT4b25gTjYBgnxt5xwn9FAMI9X1Ux1d8mWoBQkFKIu
	1k27HpFnQ3GRTksPPeORa9rSqgX+ZHW4x2FBiJCpq++owWZn7BQWUQ2LekW8rPeGscuutv0yUKHOH
	OAVNIcosaaPR/eUzKxI55FrDGOoLEGLbaU5RTmgz4pIPehzctlOcuEOfzfzbZGvChI/+o9pcoUhQD
	LeYTRjv5H5RqdjwxaTvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuswg-0006o3-5M; Fri, 24 Jan 2020 06:59:58 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuswW-0006nd-L2; Fri, 24 Jan 2020 06:59:50 +0000
X-UUID: 42917ee3b45c450eb5f7185589ba59d9-20200123
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=r4uFNCZlrJfbAJ6zHc5lh0WBsNxu96UHiQ4PJMYHYz8=; 
 b=V5Vm7bIkKPgkjZPA86djf7vhc3N01MAGvA5lFFUmR3BwIK17VzRzPC64K9t/jjk36K+bQP/i5Wg0xeKAV7EBgVJmjbBVpgh/31RqGRL0R+jAsQKNzVH3VPHwn4alSaQsOWNEYIyzUz4G7XYX7OEqTxUUNFGy+UAtGeM+c5N08OA=;
X-UUID: 42917ee3b45c450eb5f7185589ba59d9-20200123
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1834949673; Thu, 23 Jan 2020 22:59:45 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 23 Jan 2020 22:49:42 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 Jan 2020 14:48:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 24 Jan 2020 14:48:57 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 1/5] scsi: ufs-mediatek: ensure UniPro is not powered down
 before linkup
Date: Fri, 24 Jan 2020 14:49:22 +0800
Message-ID: <20200124064926.29472-2-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200124064926.29472-1-stanley.chu@mediatek.com>
References: <20200124064926.29472-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: EE6B3AAFE2976FDE2B0D0A4B718E0322C10E6D114694D9985155B9BB79974CB92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_225948_697951_DD2B9875 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Mediatek Chipsets will enter proprietary UniPro low-power mode during
suspend with link status as hibern8. Make sure leaving such low-power
mode before linkup to avoid any possible recovery path.

In the same time, re-factor related funciton to improve code readability.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 53eae5fe2ade..7ac838cc15d1 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -30,6 +30,11 @@
 #define ufs_mtk_device_reset_ctrl(high, res) \
 	ufs_mtk_smc(UFS_MTK_SIP_DEVICE_RESET, high, res)
 
+#define ufs_mtk_unipro_powerdown(hba, powerdown) \
+	ufshcd_dme_set(hba, \
+		       UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0), \
+		       powerdown)
+
 static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
 {
 	u32 tmp;
@@ -290,6 +295,8 @@ static int ufs_mtk_pre_link(struct ufs_hba *hba)
 	int ret;
 	u32 tmp;
 
+	ufs_mtk_unipro_powerdown(hba, 0);
+
 	/* disable deep stall */
 	ret = ufshcd_dme_get(hba, UIC_ARG_MIB(VS_SAVEPOWERCONTROL), &tmp);
 	if (ret)
@@ -390,9 +397,7 @@ static int ufs_mtk_link_set_hpm(struct ufs_hba *hba)
 	if (err)
 		return err;
 
-	err = ufshcd_dme_set(hba,
-			     UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
-			     0);
+	err = ufs_mtk_unipro_powerdown(hba, 0);
 	if (err)
 		return err;
 
@@ -413,14 +418,10 @@ static int ufs_mtk_link_set_lpm(struct ufs_hba *hba)
 {
 	int err;
 
-	err = ufshcd_dme_set(hba,
-			     UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
-			     1);
+	err = ufs_mtk_unipro_powerdown(hba, 1);
 	if (err) {
 		/* Resume UniPro state for following error recovery */
-		ufshcd_dme_set(hba,
-			       UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
-			       0);
+		ufs_mtk_unipro_powerdown(hba, 0);
 		return err;
 	}
 
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
