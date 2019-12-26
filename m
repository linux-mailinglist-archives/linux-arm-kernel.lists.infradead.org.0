Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA3F12AAB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 07:56:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mGkKcoW0IOBtMxpN/v4pJE/LJag6Katn06Yjp73jhLw=; b=ZPIorEUsPpwfGfo829mVizlCfS
	QhZAWlICPP4yehhMdMCU1dHanEXkuEeeF7QDb6Ftb9lcodqaZakDGaAAgfCW28jX3uqvdK1MAL2xh
	jokU7H6ok4pAEULWBXkRVmmIskkl8Mmm4/+QElgZbTTFXWz84h5pjgEp4acGRijUxmbWDY5Q4RF5/
	pyWbuHy8HQFfyi9ZCPK/Fp+A+yv5rWVJO2PgN1NAHC3aXx0fx7iejH+11g9x1mb0kgNGIIrOFXAlj
	eXjTCdr59gfJx6AYCXjXsQDqhxekeqmL9WorN0FJ5QDsqDLoVm+0E0R8srYZR5uYxqlfcKlGVmUZY
	Ch1y642A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikN4a-0006jo-3U; Thu, 26 Dec 2019 06:56:40 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikN40-0006Ym-Mi
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 06:56:06 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 78D541A163E;
 Thu, 26 Dec 2019 07:56:03 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8E5F71A0BFA;
 Thu, 26 Dec 2019 07:55:58 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 48DE7402B3;
 Thu, 26 Dec 2019 14:55:52 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rjw@rjwysocki.net, viresh.kumar@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] cpufreq: imx-cpufreq-dt: Add i.MX8MP support
Date: Thu, 26 Dec 2019 14:52:47 +0800
Message-Id: <1577343167-16376-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577343167-16376-1-git-send-email-Anson.Huang@nxp.com>
References: <1577343167-16376-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_225604_877070_E6487023 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Add i.MX8MP cpufreq DT support for speed grading and market
segment check.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index 85a6efd..912e93d 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -35,7 +35,7 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	if (of_machine_is_compatible("fsl,imx8mn"))
+	if (of_machine_is_compatible("fsl,imx8mn") || of_machine_is_compatible("fsl,imx8mp"))
 		speed_grade = (cell_value & IMX8MN_OCOTP_CFG3_SPEED_GRADE_MASK)
 			      >> OCOTP_CFG3_SPEED_GRADE_SHIFT;
 	else
@@ -54,7 +54,8 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 		if (of_machine_is_compatible("fsl,imx8mm") ||
 		    of_machine_is_compatible("fsl,imx8mq"))
 			speed_grade = 1;
-		if (of_machine_is_compatible("fsl,imx8mn"))
+		if (of_machine_is_compatible("fsl,imx8mn") ||
+			of_machine_is_compatible("fsl,imx8mp"))
 			speed_grade = 0xb;
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
