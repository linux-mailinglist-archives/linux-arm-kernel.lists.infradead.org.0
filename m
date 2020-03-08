Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C7917D403
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 14:59:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lmm2Rimi18wgoRcw4lbfa2dh8OXp4lngeSQR8+Xvb3E=; b=aQe+Xm+HMo6Kao
	lM4RDVAhvdCQbOggNXVSozkFU4q+fo6ySpkTf0V5luc3AVmJ3k19mxN1ZrINZnQacnuKNNIFPSq6A
	NjnEWrSNlnNZ+9pt+tK8FIv/BqvQBQCarBhOFfcnNilLneWVbBR4PHVZqV4u6aYNgvU2+EH66bI/K
	D1cCOjNJF5kEyZAGLixXAeBbxnA1/Pz/V9ogzZ5gKy4aOr+JFQr8ml17178EG2nzzmT0INCgOscd1
	BiiFvCGO/JntdGEqnguO5swjXyR15q/VLevYx9g44nnFLjOSnuYvE+yeDFTNlv4+nAVbsAcJgwCl8
	PyrxBKY1QJDi8JNpBvTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAwSl-0000np-P2; Sun, 08 Mar 2020 13:59:27 +0000
Received: from mailoutvs14.siol.net ([185.57.226.205] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAwSa-0000mE-SC
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 13:59:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 58ED1521ECB;
 Sun,  8 Mar 2020 14:59:08 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ORomHiAvpyye; Sun,  8 Mar 2020 14:59:08 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id EBC30521ED8;
 Sun,  8 Mar 2020 14:59:07 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 5BFD0521ECB;
 Sun,  8 Mar 2020 14:59:05 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v2 1/2] rtc: sun6i: Make external 32k oscillator optional
Date: Sun,  8 Mar 2020 14:58:48 +0100
Message-Id: <20200308135849.106333-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200308135849.106333-1-jernej.skrabec@siol.net>
References: <20200308135849.106333-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_065917_071552_50FA5F99 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.205 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some boards, like OrangePi PC2 (H5), OrangePi Plus 2E (H3) and Tanix TX6
(H6) don't have external 32kHz oscillator. Till H6, it didn't really
matter if external oscillator was enabled because HW detected error and
fall back to internal one. H6 has same functionality but it's the first
SoC which have "auto switch bypass" bit documented and always enabled in
driver. This prevents RTC to work correctly if external crystal is not
present on board. There are other side effects - all peripherals which
depends on this clock also don't work (HDMI CEC for example).

Make clocks property optional. If it is present, select external
oscillator. If not, stay on internal.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 drivers/rtc/rtc-sun6i.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/rtc/rtc-sun6i.c b/drivers/rtc/rtc-sun6i.c
index 852f5f3b3592..415a20a936e4 100644
--- a/drivers/rtc/rtc-sun6i.c
+++ b/drivers/rtc/rtc-sun6i.c
@@ -250,19 +250,17 @@ static void __init sun6i_rtc_clk_init(struct device_node *node,
 		writel(reg, rtc->base + SUN6I_LOSC_CTRL);
 	}
 
-	/* Switch to the external, more precise, oscillator */
-	reg |= SUN6I_LOSC_CTRL_EXT_OSC;
-	if (rtc->data->has_losc_en)
-		reg |= SUN6I_LOSC_CTRL_EXT_LOSC_EN;
+	/* Switch to the external, more precise, oscillator, if present */
+	if (of_get_property(node, "clocks", NULL)) {
+		reg |= SUN6I_LOSC_CTRL_EXT_OSC;
+		if (rtc->data->has_losc_en)
+			reg |= SUN6I_LOSC_CTRL_EXT_LOSC_EN;
+	}
 	writel(reg, rtc->base + SUN6I_LOSC_CTRL);
 
 	/* Yes, I know, this is ugly. */
 	sun6i_rtc = rtc;
 
-	/* Deal with old DTs */
-	if (!of_get_property(node, "clocks", NULL))
-		goto err;
-
 	/* Only read IOSC name from device tree if it is exported */
 	if (rtc->data->export_iosc)
 		of_property_read_string_index(node, "clock-output-names", 2,
@@ -279,11 +277,13 @@ static void __init sun6i_rtc_clk_init(struct device_node *node,
 	}
 
 	parents[0] = clk_hw_get_name(rtc->int_osc);
+	/* If there is no external oscillator, this will be NULL and ... */
 	parents[1] = of_clk_get_parent_name(node, 0);
 
 	rtc->hw.init = &init;
 
 	init.parent_names = parents;
+	/* ... number of clock parents will be 1. */
 	init.num_parents = of_clk_get_parent_count(node) + 1;
 	of_property_read_string_index(node, "clock-output-names", 0,
 				      &init.name);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
