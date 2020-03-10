Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C657E17F046
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 06:55:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=E4HY04gLwzoxAlYeaz8y08a7B9fsBP9uIFyrZ48Vt1s=; b=D23
	XrBQRrmdjvAuGEjNqutUMm60ONJRpR8yxSanKDlhMKhGejtHLuCJkNwYsrJB02IGy3zgs71H82vFv
	75Xosj7TnDhUYsuLsAgpFvCq7hH0ZdAy2gL05vC7BxaYgAo1ReJNEvSqCrbzVRYjqQhIOX/R9KrlR
	suVCQKbzj0NDqlgXEr783chW9iYbP8y1CXtx+oDubhvvlsSBy3y/rhq0/s95uOBUMp7fyG3fIFgvm
	mygx3qmQjbYVEJuWesP0TqQp8CWtCG4yfCnD5bWo16F7h9ONyRn/HysmV5NpUSkrdSvnG9egx5UXm
	TY2XLvVliNpcY78NQuWb3iZGyqitKDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBXr1-0002z2-JI; Tue, 10 Mar 2020 05:54:59 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBXqq-0002yP-7P
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 05:54:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4439F200431;
 Tue, 10 Mar 2020 06:54:46 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A960200438;
 Tue, 10 Mar 2020 06:54:40 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 79D9B40245;
 Tue, 10 Mar 2020 13:54:33 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rjw@rjwysocki.net, viresh.kumar@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] cpufreq: imx-cpufreq-dt: Correct i.MX8MP's market segment
 fuse location
Date: Tue, 10 Mar 2020 13:48:16 +0800
Message-Id: <1583819296-7763-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_225448_412016_94CEDBBC 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX8MP's market segment fuse field is bit[6:5], correct it.

Fixes: 83fe39ad0a48 ("cpufreq: imx-cpufreq-dt: Add i.MX8MP support")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 0e29d88..de206d2 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -19,6 +19,8 @@
 #define IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK	(0xf << 8)
 #define OCOTP_CFG3_MKT_SEGMENT_SHIFT    6
 #define OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 6)
+#define IMX8MP_OCOTP_CFG3_MKT_SEGMENT_SHIFT    5
+#define IMX8MP_OCOTP_CFG3_MKT_SEGMENT_MASK     (0x3 << 5)
 
 /* cpufreq-dt device registered by imx-cpufreq-dt */
 static struct platform_device *cpufreq_dt_pdev;
@@ -45,7 +47,13 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 	else
 		speed_grade = (cell_value & OCOTP_CFG3_SPEED_GRADE_MASK)
 			      >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
-	mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK) >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;
+
+	if (of_machine_is_compatible("fsl,imx8mp"))
+		mkt_segment = (cell_value & IMX8MP_OCOTP_CFG3_MKT_SEGMENT_MASK)
+			       >> IMX8MP_OCOTP_CFG3_MKT_SEGMENT_SHIFT;
+	else
+		mkt_segment = (cell_value & OCOTP_CFG3_MKT_SEGMENT_MASK)
+			       >> OCOTP_CFG3_MKT_SEGMENT_SHIFT;
 
 	/*
 	 * Early samples without fuses written report "0 0" which may NOT
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
