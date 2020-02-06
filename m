Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48E9154049
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=v5YHNoyI7oTIyuA/0YeoAKUp3UL2M/6ZlvxapEtQ52M=; b=g4rG98+2qNan+HwUHCKTPmZYZR
	R+BhaQwdKLUctxZskmFf2ip3pCGkkWw02quE6uNrGUCmqwI2/3GmXPAKmJNN7Wl3R3wNBWyEXfhAp
	+jB4jRnZi3x9glB6EXzLfevUEH/rMQc4x0GD2OXF1q7KogD29DIAU47D65Jp3fmdcDXDxqg6sLo5/
	nfxnZ/Rl+errSVkllKlrCuBap+hhFzTIkWPvVnb2MpVGrN5GQxo+HUL/Wzd0RvJwoPjz5RRyD5cpu
	v+74ztxlgFUAYSOarO/ymoFA/NQhe1SEBDz63u2MnY2KdERIg42QswbBX41dSj1LELGvH5FCJ/Umu
	jQ0wjKKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izcc8-0005lM-51; Thu, 06 Feb 2020 08:34:20 +0000
Received: from mail25.static.mailgun.info ([104.130.122.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcbm-0005cR-Di
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:33:59 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1580978038; h=References: In-Reply-To: Message-Id: Date:
 Subject: Cc: To: From: Sender;
 bh=9SGjnvm6LlZlgsWKDoqurru12ybAut9xXpgs6hQ/Ncc=;
 b=oK8D7HcK+k46UFb0d+Tg3rzukGKtwFb2+2mv3dY+R4fIcqoo2+xQjKtGjLnVLKjhCBNkwk92
 T2N1hkfYw3VFXbHFFGkypFe7kpvKipNOulp9kw488xhwLRoSyhuIpw9WkDUpCcBOmqIjMGUE
 BfHgqzuLJk1GV5rdQiL90EjLIq0=
X-Mailgun-Sending-Ip: 104.130.122.25
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5e3bcf74.7fa316d76ca8-smtp-out-n03;
 Thu, 06 Feb 2020 08:33:56 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id 63E36C447B4; Thu,  6 Feb 2020 08:33:54 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from pacamara-linux.qualcomm.com (i-global254.qualcomm.com
 [199.106.103.254])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: cang)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 92BA7C447A2;
 Thu,  6 Feb 2020 08:33:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 92BA7C447A2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=none smtp.mailfrom=cang@codeaurora.org
From: Can Guo <cang@codeaurora.org>
To: asutoshd@codeaurora.org, nguyenb@codeaurora.org, hongwus@codeaurora.org,
 rnayak@codeaurora.org, linux-scsi@vger.kernel.org, kernel-team@android.com,
 saravanak@google.com, salyzyn@google.com, cang@codeaurora.org
Subject: [PATCH v7 3/8] scsi: ufs: Remove the check before call setup clock
 notify vops
Date: Thu,  6 Feb 2020 00:33:22 -0800
Message-Id: <1580978008-9327-4-git-send-email-cang@codeaurora.org>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1580978008-9327-1-git-send-email-cang@codeaurora.org>
References: <1580978008-9327-1-git-send-email-cang@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_003358_581076_28564A37 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The functionality of vendor specific ops should be handled properly in
platform specific driver, but should not count on the UFS driver.

Signed-off-by: Can Guo <cang@codeaurora.org>
Reviewed-by: Bean Huo <beanhuo@micron.com>
Reviewed-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufshcd.c | 26 ++++++--------------------
 1 file changed, 6 insertions(+), 20 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index 83ae093..bbc2607 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -7402,16 +7402,9 @@ static int __ufshcd_setup_clocks(struct ufs_hba *hba, bool on,
 	if (list_empty(head))
 		goto out;
 
-	/*
-	 * vendor specific setup_clocks ops may depend on clocks managed by
-	 * this standard driver hence call the vendor specific setup_clocks
-	 * before disabling the clocks managed here.
-	 */
-	if (!on) {
-		ret = ufshcd_vops_setup_clocks(hba, on, PRE_CHANGE);
-		if (ret)
-			return ret;
-	}
+	ret = ufshcd_vops_setup_clocks(hba, on, PRE_CHANGE);
+	if (ret)
+		return ret;
 
 	list_for_each_entry(clki, head, list) {
 		if (!IS_ERR_OR_NULL(clki->clk)) {
@@ -7435,16 +7428,9 @@ static int __ufshcd_setup_clocks(struct ufs_hba *hba, bool on,
 		}
 	}
 
-	/*
-	 * vendor specific setup_clocks ops may depend on clocks managed by
-	 * this standard driver hence call the vendor specific setup_clocks
-	 * after enabling the clocks managed here.
-	 */
-	if (on) {
-		ret = ufshcd_vops_setup_clocks(hba, on, POST_CHANGE);
-		if (ret)
-			return ret;
-	}
+	ret = ufshcd_vops_setup_clocks(hba, on, POST_CHANGE);
+	if (ret)
+		return ret;
 
 out:
 	if (ret) {
-- 
The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
a Linux Foundation Collaborative Project

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
