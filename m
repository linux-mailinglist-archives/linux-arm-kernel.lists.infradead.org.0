Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4532D1402B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 05:01:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/2r1hQhIBszLs3elsUuuSCQfsUITv+oNsvSuQ5D3ro8=; b=YqU/AWxiShOmvX
	bZJJeYJZTpsdcLJ2PMtwr2vmNx6V1EbLTwvJOOn7Jn7mOJIk3wjUOUiOqnRUzL2BNAhuKl/f65M/W
	5L8NS0AEKfPiI5tWJK6nhqZ2ZF2CypFOhxjqxztJ/Mnqyi2xh7TkR23zybCMdd/5AsrS63XzJsEzA
	WeOI6dR7d1/KINZwhkoqOwBY3rKiTyJh7EfdAtHLDo4eCKWo+f+eaHwXO0NO66oW+yT5BJD5Hfghh
	CZ+t10zTzaYZFrAQkBXFQmqqA3Ddnz9YDMeUkmK1hhOiy0IvdAON34xJ0FAnODhdDN4ApjMNn3Zbq
	lo+OWF/fkzSUFJkmBqEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isIpG-0001FB-3s; Fri, 17 Jan 2020 04:01:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isIov-0001CT-FC; Fri, 17 Jan 2020 04:01:22 +0000
X-UUID: a3320fd2d029439e831887501f622dd4-20200116
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=p2qxacDfCCVqjUwwOgx8vmOgcBiOvdFZh2JOvNF4dco=; 
 b=QfqQN30yiN5NPwUOijX/BKDmh5xRxb0wtMVKh/cRHgS+vpkRmU15dd2elGQzcgLw7yYw3qYrfhRIhiNzlV44WWwX/xHnk1YO4dAtUFTgtvlA3bU6r4C4mhmeYYdbsyJDAU5FWJytmbYRS/aGdeSkzZ0aJDg9Tvw+crpRjld/yOQ=;
X-UUID: a3320fd2d029439e831887501f622dd4-20200116
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1570715849; Thu, 16 Jan 2020 20:01:13 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 Jan 2020 19:52:13 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 17 Jan 2020 11:50:03 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 17 Jan 2020 11:51:09 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 3/3] scsi: ufs-mediatek: enable low-power mode for hibern8
 state
Date: Fri, 17 Jan 2020 11:51:08 +0800
Message-ID: <20200117035108.19699-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200117035108.19699-1-stanley.chu@mediatek.com>
References: <20200117035108.19699-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_200117_520896_2FA0C67E 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

In MediaTek Chipsets, UniPro link and ufshci can enter proprietary
low-power mode while link is in hibern8 state.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 53 +++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index d5194d0c4ef5..f32f3f34f6d0 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -382,11 +382,60 @@ static void ufs_mtk_device_reset(struct ufs_hba *hba)
 	dev_info(hba->dev, "device reset done\n");
 }
 
+static int ufs_mtk_link_set_hpm(struct ufs_hba *hba)
+{
+	int err;
+
+	err = ufshcd_hba_enable(hba);
+	if (err)
+		return err;
+
+	err = ufshcd_dme_set(hba,
+			     UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
+			     0);
+	if (err)
+		return err;
+
+	err = ufshcd_uic_hibern8_exit(hba);
+	if (!err)
+		ufshcd_set_link_active(hba);
+	else
+		return err;
+
+	err = ufshcd_make_hba_operational(hba);
+	if (err)
+		return err;
+
+	return 0;
+}
+
+static int ufs_mtk_link_set_lpm(struct ufs_hba *hba)
+{
+	int err;
+
+	err = ufshcd_dme_set(hba,
+			     UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
+			     1);
+	if (err) {
+		/* Resume UniPro state for following error recovery */
+		ufshcd_dme_set(hba,
+			       UIC_ARG_MIB_SEL(VS_UNIPROPOWERDOWNCONTROL, 0),
+			       0);
+		return err;
+	}
+
+	return 0;
+}
+
 static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 {
+	int err;
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 
 	if (ufshcd_is_link_hibern8(hba)) {
+		err = ufs_mtk_link_set_lpm(hba);
+		if (err)
+			return -EAGAIN;
 		phy_power_off(host->mphy);
 		ufs_mtk_setup_ref_clk(hba, false);
 	}
@@ -397,10 +446,14 @@ static int ufs_mtk_suspend(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 static int ufs_mtk_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
+	int err;
 
 	if (ufshcd_is_link_hibern8(hba)) {
 		ufs_mtk_setup_ref_clk(hba, true);
 		phy_power_on(host->mphy);
+		err = ufs_mtk_link_set_hpm(hba);
+		if (err)
+			return err;
 	}
 
 	return 0;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
