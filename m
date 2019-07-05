Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09782607FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:38:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=doOpy5OMqqABg7doZCnATMrNV8cAxZnup0lnlguATRo=; b=I9Y0EsrEKbcpLBANwHyYu07RpV
	rTZt7//bk5Sd5TUfMwn37Ae4VbkSA8Ig/qF+mm6tMXFbI7UxIDMRWlQcdidzeS8l0qjwoflb2gKMo
	p3SRLWWVQ0BSlOnmakDtQZcIBC7LV39S0GvccrNBTqSghHGAUkrMKIFdru45Bjw2VvRhA3js008tP
	Kcd1JMT/zMw+oE0QnIQkFVbyJRj925itJKNsOZD3lSEG5YjGiWBKN8SzwQoYXcl0zFUxUgLtHQ/YO
	l8HHE89Ih6GTA+2P9Feg/OpFZG1dLZBN17zL2FwUQ0/5LrAKHJg5oTtLGmmDga0+KzaOBr0Igrdj4
	JzUtRKhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPLq-00082F-LI; Fri, 05 Jul 2019 14:38:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPK4-0006B6-Nt
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=z1uXb7aVvbiQhIfdetTPciUIUtx0Lqgn36Y7o9v/CZU=; b=X3tuu2Dljy3In88iWij4vV54q
 gzgPa1Byfz0TkUK1+xdsTCcn/fUveAis2sPDI2rcuRdndm5xjMlh9dTPN3lJOsn71P1SKDRQzYYQm
 RF1nWmGnrKVbRcvq8gajXKEvsQ9EhfTej53dB/0RjNhu7c2GAAJciBG4ueL8f2F11Z2Syh89ESo29
 pXQtEou6Kv+Ah7WhiAGHywBwH2BvRwCUw6UXf0e9I/tXBs+a9/UWjpr0qJz5aJLk0L5mkSt4NtAy0
 QSYmBVHcu730mTaXv7oqasQnHTdqgJO69OLh9QX7lltNeUJSVklZUBs7wbF61yPCk17bRo6iq1Ofv
 eDud7ed1A==;
Received: from inva020.nxp.com ([92.121.34.13])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjGQ0-0007OR-GM
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 05:05:59 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6767A1A0173;
 Fri,  5 Jul 2019 07:05:35 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 87CAF1A0E91;
 Fri,  5 Jul 2019 07:05:23 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AF931402A6;
 Fri,  5 Jul 2019 13:05:09 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, l.stach@pengutronix.de,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, angus@akkea.ca,
 ccaione@baylibre.com, agx@sigxcpu.org, leonard.crestez@nxp.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 2/6] thermal: qoriq: Use __maybe_unused instead of #if
 CONFIG_PM_SLEEP
Date: Fri,  5 Jul 2019 12:56:08 +0800
Message-Id: <20190705045612.27665-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705045612.27665-1-Anson.Huang@nxp.com>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_060556_624454_48DC2F95 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
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

From: Anson Huang <Anson.Huang@nxp.com>

Use __maybe_unused for power management related functions
instead of #if CONFIG_PM_SLEEP to simply the code.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/thermal/qoriq_thermal.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/thermal/qoriq_thermal.c b/drivers/thermal/qoriq_thermal.c
index c7c7de2..2b2f79b 100644
--- a/drivers/thermal/qoriq_thermal.c
+++ b/drivers/thermal/qoriq_thermal.c
@@ -240,8 +240,7 @@ static int qoriq_tmu_remove(struct platform_device *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM_SLEEP
-static int qoriq_tmu_suspend(struct device *dev)
+static int __maybe_unused qoriq_tmu_suspend(struct device *dev)
 {
 	u32 tmr;
 	struct qoriq_tmu_data *data = dev_get_drvdata(dev);
@@ -254,7 +253,7 @@ static int qoriq_tmu_suspend(struct device *dev)
 	return 0;
 }
 
-static int qoriq_tmu_resume(struct device *dev)
+static int __maybe_unused qoriq_tmu_resume(struct device *dev)
 {
 	u32 tmr;
 	struct qoriq_tmu_data *data = dev_get_drvdata(dev);
@@ -266,7 +265,6 @@ static int qoriq_tmu_resume(struct device *dev)
 
 	return 0;
 }
-#endif
 
 static SIMPLE_DEV_PM_OPS(qoriq_tmu_pm_ops,
 			 qoriq_tmu_suspend, qoriq_tmu_resume);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
