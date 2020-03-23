Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5FD518F6D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 15:26:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8YNBJphGdbWy2F8osygCssUcQVepn1ScVlb5i5SCJSo=; b=CNR
	WtOm21BfzpT1Y2HJ14sVeLq7F2q3r5Kb9rqEGWz62YLP53EizuP255VjZERUCv9ySVidlKGx2pxcd
	BxMpPgW4pqqxPXFq6YLZSe+frCEbVJ0tj+SvVyzPwr6n1W+MH8Hzzt4FzBsLMe1N91zZZ3up/iNXB
	Oht1AJvYp4D49MKKLX8RvsLNdqr1TYg/tDvkyVKdZ7XgG+w4sH05GCvpva2JvneeYyfg5LNA0YWn4
	snX2IlPYsKDYnZqzTzX100tvatpQwyz6paxMZO+1qRHhXOJHPsJ5oxJuvv1nDyoOPO1kjiebYzqJD
	s4d9x8pSf235BxlSb8InsX3lkSkwwRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGO2D-0000PZ-Kc; Mon, 23 Mar 2020 14:26:33 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGO25-0000O7-NR
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 14:26:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BA6D3201262;
 Mon, 23 Mar 2020 15:26:23 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0C05F200ED6;
 Mon, 23 Mar 2020 15:26:18 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CCFB3402AF;
 Mon, 23 Mar 2020 22:26:10 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] thermal: imx8mm: Fix build warning of incorrect argument type
Date: Mon, 23 Mar 2020 22:19:16 +0800
Message-Id: <1584973156-25734-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_072625_904848_C9DB8C66 
X-CRM114-Status: UNSURE (   7.23  )
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

Fix below sparse warning:

drivers/thermal/imx8mm_thermal.c:82:36: sparse: sparse: incorrect type in argument 2 (different address spaces), expected unsigned long const volatile *addr
drivers/thermal/imx8mm_thermal.c:82:36: sparse: expected unsigned long const volatile *addr

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/thermal/imx8mm_thermal.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/imx8mm_thermal.c b/drivers/thermal/imx8mm_thermal.c
index c32308b..0d60f8d 100644
--- a/drivers/thermal/imx8mm_thermal.c
+++ b/drivers/thermal/imx8mm_thermal.c
@@ -75,15 +75,14 @@ static int imx8mp_tmu_get_temp(void *data, int *temp)
 {
 	struct tmu_sensor *sensor = data;
 	struct imx8mm_tmu *tmu = sensor->priv;
+	unsigned long val;
 	bool ready;
-	u32 val;
 
-	ready = test_bit(probe_status_offset(sensor->hw_id),
-			 tmu->base + TRITSR);
+	val = readl_relaxed(tmu->base + TRITSR);
+	ready = test_bit(probe_status_offset(sensor->hw_id), &val);
 	if (!ready)
 		return -EAGAIN;
 
-	val = readl_relaxed(tmu->base + TRITSR);
 	val = sensor->hw_id ? FIELD_GET(TRITSR_TEMP1_VAL_MASK, val) :
 	      FIELD_GET(TRITSR_TEMP0_VAL_MASK, val);
 	if (val & SIGN_BIT) /* negative */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
