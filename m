Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C1E4E67A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wG4cOCIvtDI/u8a0DYAqq2jlNAD5++LnnAII5sKGyiU=; b=pJXabY8PIkkmU7
	l6/lVae/5aLSDLvbXbvGfd6iZlH53kzbDpIH9I4dQyjQWo+mSQsgzOfDaQA0TCuaMk6DnKYBZcdNI
	6VBqq9vbk+HYPCbopjmYpihUYxhbC/ElCD3aVe2OpYvCj6uML0pO41gvwBVVhSPK0OxFB03RN4eta
	GMM6xRlnWCEhicQ9CNjFBS4psntPkAchhWdrhQZaCyNtHT19Xoj57dzPzRfVQQGb7sPwPaX2VPADu
	Kodyw9sUza0esintfUfDcKBKrcddfhbtmDVxfaVXg2AUYzmGmvSmd+IHccPZneU5zcAPDv2397Dg1
	BU2hCz+q6ALzFcXgF67A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHAg-0006s7-LG; Fri, 21 Jun 2019 10:53:30 +0000
Received: from smtp121.iad3b.emailsrvr.com ([146.20.161.121])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHAU-0006qX-J7; Fri, 21 Jun 2019 10:53:20 +0000
Received: from smtp24.relay.iad3b.emailsrvr.com (localhost [127.0.0.1])
 by smtp24.relay.iad3b.emailsrvr.com (SMTP Server) with ESMTP id E12D44009E;
 Fri, 21 Jun 2019 06:53:16 -0400 (EDT)
X-SMTPDoctor-Processed: csmtpprox beta
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=g001.emailsrvr.com;
 s=20190322-9u7zjiwi; t=1561114396;
 bh=lV2bfiKsrsCHwVyTTU5OqwVm0y5wd6eyI9O1PfwzpQA=;
 h=From:To:Subject:Date:From;
 b=u6vzPBTngG+KiVZ/YIymkvv49EWY1A7zcjitAMkROEQnPul9o6NX6OJpiSWdfbXpK
 nm0enxQJIhwSCAMmuG3jYBz7P6Z2Xj8qy7A4bz/21zoJgPKlrZox6QneigzGBG3Dpk
 CDgxdwFEiIHmUcdQjVFE5NIcRKtmOp4S33R1nKi4=
X-Auth-ID: mcdermj@xenotropic.com
Received: by smtp24.relay.iad3b.emailsrvr.com (Authenticated sender:
 mcdermj-AT-xenotropic.com) with ESMTPSA id 9C1D440127; 
 Fri, 21 Jun 2019 06:53:15 -0400 (EDT)
X-Sender-Id: mcdermj@xenotropic.com
Received: from commune.xenotropic.com (c-73-96-52-102.hsd1.or.comcast.net
 [73.96.52.102]) (using TLSv1.2 with cipher DHE-RSA-AES128-GCM-SHA256)
 by 0.0.0.0:25 (trex/5.7.12); Fri, 21 Jun 2019 06:53:16 -0400
From: Annaliese McDermond <nh6z@nh6z.net>
To: eric@anholt.net, wahrenst@gmx.net, f.fainelli@gmail.com, wsa@the-dreams.de,
 swarren@wwwdotorg.org, linux-i2c@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] i2c: bcm2835: Move IRQ request after clock code in
 probe
Date: Fri, 21 Jun 2019 03:52:49 -0700
Message-Id: <20190621105250.19858-2-nh6z@nh6z.net>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190621105250.19858-1-nh6z@nh6z.net>
References: <20190621105250.19858-1-nh6z@nh6z.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_035318_749902_E1B85577 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [146.20.161.121 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: team@nwdigitalradio.com, Annaliese McDermond <nh6z@nh6z.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If any of the clock code in the probe fails and returns, the IRQ
will not be freed.  Moving the IRQ request to last allows it to
be freed on any errors further up in the probe function.  devm_
calls can apparently not be used because there are some potential
race conditions that will arise.

Fixes: bebff81fb8b9 ("i2c: bcm2835: Model Divider in CCF")

Signed-off-by: Annaliese McDermond <nh6z@nh6z.net>
---
 drivers/i2c/busses/i2c-bcm2835.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index 108d2ae4632c..27b2f204c693 100644
--- a/drivers/i2c/busses/i2c-bcm2835.c
+++ b/drivers/i2c/busses/i2c-bcm2835.c
@@ -521,20 +521,6 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	if (IS_ERR(i2c_dev->regs))
 		return PTR_ERR(i2c_dev->regs);
 
-	irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
-	if (!irq) {
-		dev_err(&pdev->dev, "No IRQ resource\n");
-		return -ENODEV;
-	}
-	i2c_dev->irq = irq->start;
-
-	ret = request_irq(i2c_dev->irq, bcm2835_i2c_isr, IRQF_SHARED,
-			  dev_name(&pdev->dev), i2c_dev);
-	if (ret) {
-		dev_err(&pdev->dev, "Could not request IRQ\n");
-		return -ENODEV;
-	}
-
 	mclk_name = of_clk_get_parent_name(pdev->dev.of_node, 0);
 
 	bus_clk = bcm2835_i2c_register_div(&pdev->dev, mclk_name, i2c_dev);
@@ -564,6 +550,20 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
+	if (!irq) {
+		dev_err(&pdev->dev, "No IRQ resource\n");
+		return -ENODEV;
+	}
+	i2c_dev->irq = irq->start;
+
+	ret = request_irq(i2c_dev->irq, bcm2835_i2c_isr, IRQF_SHARED,
+			  dev_name(&pdev->dev), i2c_dev);
+	if (ret) {
+		dev_err(&pdev->dev, "Could not request IRQ\n");
+		return -ENODEV;
+	}
+
 	adap = &i2c_dev->adapter;
 	i2c_set_adapdata(adap, i2c_dev);
 	adap->owner = THIS_MODULE;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
