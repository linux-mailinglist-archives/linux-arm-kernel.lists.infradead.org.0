Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D5C1A7379
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 08:17:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z7b+5Q1nxBCxmE5rwPJgbMCsZfDaC2BeCXG5F8a2+oM=; b=Wcx
	qE+H9+YyLUueYUhSvpVeoMrMutk/bs4tDXsYHABaS6CGGTeiJpGOQDOw5D0eweK3YQdGAY0EbwBxC
	REkt7WSTkK8fXJ7gRoh/MMcN4/x/d/B925jFLu7h6fRV9NxQCpbD7Z8QnO0wMdL/uEbeCVO0E00Xr
	kwwIEm23zU35an+HKGBkbTSVk7aQjVTCWFph8ZvbTBvNjCj2grqjxRFfHtrwqDQtZFCKdyjhBwyUO
	fVbM4WGDh79u29U6Z3y9V+GDfOBYFM/SVrwAib4RQB8ImcIeoeMMuoX/oFOm5daoiLv01WiONFwHr
	rKnJtDa0W8mOKb/E0m19u8h0xOg5JBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOEsv-0003Lu-Cu; Tue, 14 Apr 2020 06:17:25 +0000
Received: from labrats.qualcomm.com ([199.106.110.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOEsS-0003CP-Em; Tue, 14 Apr 2020 06:16:57 +0000
IronPort-SDR: GF+nhx7pQG5Eg2UGkLUudbnUbCQzLoEq+k3j4XEYypW5RCLFBgcA1kgW9dhsR/G1jrHiUQ2pfu
 y4tcVGbk6/oBJWG/HWuxHpiLGKh9Ujh2QzIpFKwO4FTUc9if6Jr1WeBNWUL8yJBUeC7UTcoM4I
 EU3QbUOhpMpT4IGo408k+3dMtD18YNm202DnGiZZMz/bjvXUZXWPNiP6Af9mYJeKv8p8sA8IAg
 RkJvlbQEnfZRQhOTMM1/o3dSLhfBAtguxNZPkYk9V2FZOW2VIEAUIFEJj87g44rsDN4GvnGP68
 L2Y=
X-IronPort-AV: E=Sophos;i="5.72,381,1580803200"; d="scan'208";a="46834943"
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
 by labrats.qualcomm.com with ESMTP; 13 Apr 2020 23:14:56 -0700
Received: from pacamara-linux.qualcomm.com ([192.168.140.135])
 by ironmsg03-sd.qualcomm.com with ESMTP; 13 Apr 2020 23:14:54 -0700
Received: by pacamara-linux.qualcomm.com (Postfix, from userid 359480)
 id CE87E3B21; Mon, 13 Apr 2020 23:14:54 -0700 (PDT)
From: Can Guo <cang@codeaurora.org>
To: asutoshd@codeaurora.org, nguyenb@codeaurora.org, hongwus@codeaurora.org,
 rnayak@codeaurora.org, linux-scsi@vger.kernel.org, kernel-team@android.com,
 saravanak@google.com, salyzyn@google.com, cang@codeaurora.org
Subject: [PATCH v2 1/1] scsi: ufs: full reinit upon resume if link was off
Date: Mon, 13 Apr 2020 23:14:48 -0700
Message-Id: <1586844892-22720-1-git-send-email-cang@codeaurora.org>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_231656_536438_8C03D31E 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Bart Van Assche <bvanassche@acm.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Venkat Gopalakrishnan <venkatg@codeaurora.org>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 open list <linux-kernel@vger.kernel.org>, Avri Altman <avri.altman@wdc.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alim Akhtar <alim.akhtar@samsung.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Tomas Winkler <tomas.winkler@intel.com>,
 Stanley Chu <stanley.chu@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, Bean Huo <beanhuo@micron.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Asutosh Das <asutoshd@codeaurora.org>

During suspend, if the link is put to off, it would require
a full initialization during resume. This patch resets and
restores both the host and the card during initialization,
otherwise, host only reset and restore may fail occasionally.

Signed-off-by: Asutosh Das <asutoshd@codeaurora.org>
Signed-off-by: Can Guo <cang@codeaurora.org>
Reviewed-by: Bean Huo <beanhuo@micron.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Acked-by: Stanley Chu <stanley.chu@mediatek.com>

Change since v1:
- Incorporated Alim's comments.

---
 drivers/scsi/ufs/ufshcd.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 64e42ef..90313c8 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -8048,9 +8048,13 @@ static int ufshcd_resume(struct ufs_hba *hba, enum ufs_pm_op pm_op)
 		else
 			goto vendor_suspend;
 	} else if (ufshcd_is_link_off(hba)) {
-		ret = ufshcd_host_reset_and_restore(hba);
 		/*
-		 * ufshcd_host_reset_and_restore() should have already
+		 * A full initialization of the host and the device is
+		 * required since the link was put to off during suspend.
+		 */
+		ret = ufshcd_reset_and_restore(hba);
+		/*
+		 * ufshcd_reset_and_restore() should have already
 		 * set the link state as active
 		 */
 		if (ret || !ufshcd_is_link_active(hba))
-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum, a Linux Foundation Collaborative Project.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
