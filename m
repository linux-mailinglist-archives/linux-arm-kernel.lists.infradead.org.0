Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFFCD9BB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 22:24:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2jdfao8rO6ofKgc6By5hlLXc8oNMQ+YMuSv2AUT/EQs=; b=jmK0A3ownI11MK
	+kOCvd/U6s4e0aP7Ghz/V7fSCxbFgRYLxb1hA1KuDq5tvJkRNA8nf3loXLfVwEUc8NL3kPXA+93Cd
	pUBBmAvo8K6t/iNMkce5aZbCUvsXQwAXTCxXBp6B5x9Bd8+Jzk1d2FxxBdcIKLGQGsW2jsau86umi
	bmKlgEkqR2vzMMA2xP8R6NrAIX2BGmIiH/WqbuIfkHoQSI5//bgTjnZKxAtCjcQTjniXpSYapzyqB
	KCJDJ6zCHmYgNgRyZ2l92KeIOemkTGgCObpSiNOBlj1OGeTRUAVXKbB07HyNIwQCNZlZo5TyNtdof
	GuhVbjVFkMRgoTzwkvrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpq3-00030R-71; Wed, 16 Oct 2019 20:24:07 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpin-0003YN-F9
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 20:16:39 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 8D67C1C0004;
 Wed, 16 Oct 2019 20:16:33 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: linux-rtc@vger.kernel.org
Subject: [PATCH 3/5] rtc: vt8500: remove superfluous error message
Date: Wed, 16 Oct 2019 22:16:24 +0200
Message-Id: <20191016201626.31309-3-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191016201626.31309-1-alexandre.belloni@bootlin.com>
References: <20191016201626.31309-1-alexandre.belloni@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_131637_674214_D67270D9 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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

The RTC core now has error messages in case of registration failure, there
is no need to have other messages in the drivers.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/rtc/rtc-vt8500.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/rtc/rtc-vt8500.c b/drivers/rtc/rtc-vt8500.c
index f84e534a8793..c2ab394912bb 100644
--- a/drivers/rtc/rtc-vt8500.c
+++ b/drivers/rtc/rtc-vt8500.c
@@ -224,11 +224,8 @@ static int vt8500_rtc_probe(struct platform_device *pdev)
 
 	vt8500_rtc->rtc = devm_rtc_device_register(&pdev->dev, "vt8500-rtc",
 					      &vt8500_rtc_ops, THIS_MODULE);
-	if (IS_ERR(vt8500_rtc->rtc)) {
-		dev_err(&pdev->dev,
-			"Failed to register RTC device -> %d\n", ret);
+	if (IS_ERR(vt8500_rtc->rtc))
 		return PTR_ERR(vt8500_rtc->rtc);
-	}
 
 	ret = devm_request_irq(&pdev->dev, vt8500_rtc->irq_alarm,
 				vt8500_rtc_irq, 0, "rtc alarm", vt8500_rtc);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
