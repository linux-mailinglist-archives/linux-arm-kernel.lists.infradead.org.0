Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E2F36196E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 05:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8+KHWOItIpEGZz4OcUqm49Mdzn5raqIMadO5FmxSnU8=; b=DGv
	amUyg/DnVDdlKTn88pCrOAKpf9ydmh7qTuGn3NHdiGKfejhPh1DWxPNygKk2SJ7rBVK9T1roOLCOh
	zwMNJD7Co9ExtFzqB4m863G6m+vjaP5kXmUirmeccNKZsexue4PM4T6v5Kym2kovS16LzJwIVrojY
	uC6FVBe0qLtPlZX8cEdS4TT7X5/4DbHhGw46skxfmQDyPuHwF9k/vVuCWc1QFZ50mvIcQCnBljPLj
	1p4EGndFLllKFtHDa2n5dagKquUU343G70y0f+BfoIFA14xbiyD3wmnursJcMHvU72S9CUG3rH/oG
	pEDfezaHIC+I67L2E4vnOn0jxqMV67w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkK4v-0004TS-FA; Mon, 08 Jul 2019 03:12:33 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkK4k-0004Sc-UT
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 03:12:24 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8A51D1A0028;
 Mon,  8 Jul 2019 05:12:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 459DD1A0D76;
 Mon,  8 Jul 2019 05:12:12 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7422D402A6;
 Mon,  8 Jul 2019 11:12:05 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rjw@rjwysocki.net, viresh.kumar@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] cpufreq: imx-cpufreq-dt: Add i.MX8MN support
Date: Mon,  8 Jul 2019 11:03:08 +0800
Message-Id: <20190708030308.1815-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_201223_127045_C85C706B 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

From: Anson Huang <Anson.Huang@nxp.com>

i.MX8MN is a new SoC of i.MX8M series, it also uses speed
grading and market segment fuses for OPP definitions, add
support for this SoC.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/cpufreq/imx-cpufreq-dt.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/imx-cpufreq-dt.c b/drivers/cpufreq/imx-cpufreq-dt.c
index b54fd26..4f85f31 100644
--- a/drivers/cpufreq/imx-cpufreq-dt.c
+++ b/drivers/cpufreq/imx-cpufreq-dt.c
@@ -44,10 +44,11 @@ static int imx_cpufreq_dt_probe(struct platform_device *pdev)
 	 * According to datasheet minimum speed grading is not supported for
 	 * consumer parts so clamp to 1 to avoid warning for "no OPPs"
 	 *
-	 * Applies to 8mq and 8mm.
+	 * Applies to i.MX8M series SoCs.
 	 */
 	if (mkt_segment == 0 && speed_grade == 0 && (
 			of_machine_is_compatible("fsl,imx8mm") ||
+			of_machine_is_compatible("fsl,imx8mn") ||
 			of_machine_is_compatible("fsl,imx8mq")))
 		speed_grade = 1;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
