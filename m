Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C17143A9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:14:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IhQm9lh3Hukoz938sqamcgKNskBWzRbjmz/jRBUhzFM=; b=cH5TLH8Fx/jjQ7
	8oEOmzNcYt1QOJNR2KbVkDUdT54Mhe2N2gbGAM7jJbD7dBc2s1l3Ay/HA6ElEG8KAupixk2uZ0lXF
	uNuiIYmBvodbRtcOxAB6zCQ+NY8BozXtHyLBYhEbMTL2RqqRNpvq3NXptwiAwDqiRyoQmWm4A5W/9
	FElZulX2NSDmYYmc+UO2yyFKiaVpGcO4cPs8zMjJXJyNq4u1iMZhfEM1Cw2vK/I3CYWuZlQNnOnGR
	aCLRgDfG9BvrP/NcLTDNeeiE9SeA9RGak4CR32ASOR7BtRLTqOCXWpdA1/y2Y35OAOTpvNY3l8OxX
	v6q3ZHWsLWzqxuOxlf8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqYV-0005T3-7e; Tue, 21 Jan 2020 10:14:43 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqXw-0005CY-GV
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:14:12 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00LA7m7m015244; Tue, 21 Jan 2020 11:14:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=aeYoT+FbX2uK00Gipe/mKHNPFAN0KIzPJU70uie272A=;
 b=ChmW7+hAhBko1pQ9BTS2bhY1LjykTUkISaGS7PWDj5KLriquSRvz+s+M9dw1XZP/Uuzb
 W7CtFP0PqYWrVGROSZpfw5W/vGGSpE/dQdPeVNzsgTWB5Fwq82pP6YkToiY7+0yQH4PI
 B0yBhCj64+gE4+LFQPIQX+mQ0us1e3rwNJkuGAnvvKsDx4nvR409uthMq1eRux7dud4a
 wMUwrdG+97ASDBha3lKKmSghRi0T7JC64Ro0XNi8PC2ct0z621WBZR5G0fntCYFy9ERj
 7Kwn9vBT0F+k1fc/Vjiq5qZ9Q6WhtMQXMsKgjZJY92tt9suJwiV/cgPM7l0LEhZ3ak22 pw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkr1dx2p6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 21 Jan 2020 11:14:01 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D20EC100038;
 Tue, 21 Jan 2020 11:13:55 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7F0332B1872;
 Tue, 21 Jan 2020 11:13:55 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 21 Jan 2020 11:13:54 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/stm: ltdc: add number of interrupts
Date: Tue, 21 Jan 2020 11:13:52 +0100
Message-ID: <1579601632-7001-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-21_02:2020-01-21,
 2020-01-21 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_021409_015118_057E859D 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The number of interrupts depends on the ltdc version.
Don't try to get interrupt which not exist, avoiding
kernel warning messages.

Signed-off-by: Yannick Fertre <yannick.fertre@st.com>
---
 drivers/gpu/drm/stm/ltdc.c | 30 +++++++++++++++---------------
 drivers/gpu/drm/stm/ltdc.h |  1 +
 2 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
index c2815e8..58092b0 100644
--- a/drivers/gpu/drm/stm/ltdc.c
+++ b/drivers/gpu/drm/stm/ltdc.c
@@ -1146,12 +1146,14 @@ static int ltdc_get_caps(struct drm_device *ddev)
 		ldev->caps.pad_max_freq_hz = 90000000;
 		if (ldev->caps.hw_version == HWVER_10200)
 			ldev->caps.pad_max_freq_hz = 65000000;
+		ldev->caps.nb_irq = 2;
 		break;
 	case HWVER_20101:
 		ldev->caps.reg_ofs = REG_OFS_4;
 		ldev->caps.pix_fmt_hw = ltdc_pix_fmt_a1;
 		ldev->caps.non_alpha_only_l1 = false;
 		ldev->caps.pad_max_freq_hz = 150000000;
+		ldev->caps.nb_irq = 4;
 		break;
 	default:
 		return -ENODEV;
@@ -1251,13 +1253,21 @@ int ltdc_load(struct drm_device *ddev)
 	reg_clear(ldev->regs, LTDC_IER,
 		  IER_LIE | IER_RRIE | IER_FUIE | IER_TERRIE);
 
-	for (i = 0; i < MAX_IRQ; i++) {
+	ret = ltdc_get_caps(ddev);
+	if (ret) {
+		DRM_ERROR("hardware identifier (0x%08x) not supported!\n",
+			  ldev->caps.hw_version);
+		goto err;
+	}
+
+	DRM_DEBUG_DRIVER("ltdc hw version 0x%08x\n", ldev->caps.hw_version);
+
+	for (i = 0; i < ldev->caps.nb_irq; i++) {
 		irq = platform_get_irq(pdev, i);
-		if (irq == -EPROBE_DEFER)
+		if (irq < 0) {
+			ret = irq;
 			goto err;
-
-		if (irq < 0)
-			continue;
+		}
 
 		ret = devm_request_threaded_irq(dev, irq, ltdc_irq,
 						ltdc_irq_thread, IRQF_ONESHOT,
@@ -1268,16 +1278,6 @@ int ltdc_load(struct drm_device *ddev)
 		}
 	}
 
-
-	ret = ltdc_get_caps(ddev);
-	if (ret) {
-		DRM_ERROR("hardware identifier (0x%08x) not supported!\n",
-			  ldev->caps.hw_version);
-		goto err;
-	}
-
-	DRM_DEBUG_DRIVER("ltdc hw version 0x%08x\n", ldev->caps.hw_version);
-
 	/* Add endpoints panels or bridges if any */
 	for (i = 0; i < MAX_ENDPOINTS; i++) {
 		if (panel[i]) {
diff --git a/drivers/gpu/drm/stm/ltdc.h b/drivers/gpu/drm/stm/ltdc.h
index a1ad0ae..310e87f 100644
--- a/drivers/gpu/drm/stm/ltdc.h
+++ b/drivers/gpu/drm/stm/ltdc.h
@@ -19,6 +19,7 @@ struct ltdc_caps {
 	const u32 *pix_fmt_hw;	/* supported pixel formats */
 	bool non_alpha_only_l1; /* non-native no-alpha formats on layer 1 */
 	int pad_max_freq_hz;	/* max frequency supported by pad */
+	int nb_irq;		/* number of hardware interrupts */
 };
 
 #define LTDC_MAX_LAYER	4
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
