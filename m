Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04244D9BBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fpr0wl0rhIKjwSvsWsPlEznDcFBgzTRa4/j+NjysyCs=; b=hU1vc/+rNtdiZm
	8ExEUQcRALWNh914hsv61Ss26ykL1adS57RKmWWh71H0A8KvhJiAbR+m6kvq7KlvSJeS9FVvL7tMm
	aiHoSzO3Zvsf9NujhKVHkU6OY7TVBOJjYZeOEyl/mq1YowSwU9GqbvnC37X16h6o6DYbbBz7LFjnG
	76VVB+L4JXuzUZAi4s0ct6CrXJd/vP5kiK5xOL7CS1AHJ0qLTUUWspz38sfTUXbZNV6dgVH1vx36s
	BcSYQJOL4er8lAVhfdFjfxy3A/zrBEIwcsqzHFUG4KCKFZoWvBBP2+dGbbUoZ3eAvu6bdFbYnTjJS
	Dbol3b6Swvw3L8hkqbwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpqa-0003SC-C5; Wed, 16 Oct 2019 20:24:40 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpit-0003eB-TF
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:16:48 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 1569E1BF207;
 Wed, 16 Oct 2019 20:16:34 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 4/5] rtc: vt8500: convert to devm_rtc_allocate_device
Date: Wed, 16 Oct 2019 22:16:25 +0200
Message-Id: <20191016201626.31309-4-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016201626.31309-1-alexandre.belloni@bootlin.com>
References: <20191016201626.31309-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_131644_163906_E3FB4DB5 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Tony Prisk <linux@prisktech.co.nz>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This allows further improvement of the driver.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-vt8500.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/rtc/rtc-vt8500.c b/drivers/rtc/rtc-vt8500.c
index c2ab394912bb..0761478861f8 100644
--- a/drivers/rtc/rtc-vt8500.c
+++ b/drivers/rtc/rtc-vt8500.c
@@ -222,11 +222,12 @@ static int vt8500_rtc_probe(struct platform_device *pdev)
 	writel(VT8500_RTC_CR_ENABLE,
 	       vt8500_rtc->regbase + VT8500_RTC_CR);
 
-	vt8500_rtc->rtc = devm_rtc_device_register(&pdev->dev, "vt8500-rtc",
-					      &vt8500_rtc_ops, THIS_MODULE);
+	vt8500_rtc->rtc = devm_rtc_allocate_device(&pdev->dev);
 	if (IS_ERR(vt8500_rtc->rtc))
 		return PTR_ERR(vt8500_rtc->rtc);
 
+	vt8500_rtc->rtc->ops = &vt8500_rtc_ops;
+
 	ret = devm_request_irq(&pdev->dev, vt8500_rtc->irq_alarm,
 				vt8500_rtc_irq, 0, "rtc alarm", vt8500_rtc);
 	if (ret < 0) {
@@ -235,7 +236,7 @@ static int vt8500_rtc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	return 0;
+	return rtc_register_device(vt8500_rtc->rtc);
 }
 
 static int vt8500_rtc_remove(struct platform_device *pdev)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
