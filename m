Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDFB1C566F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 15:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tv5hS4aVeqQY/TKOFwhMsVkPQpVdanCw1JaEDTznCwk=; b=EM9ap+4+am50VV
	WUilJQMAVt+dTTtw7rYLPplfidDyrKFL+salP8cxnpSNrZQZT28C2FcvmQf9EtXtUNcdN/5Z3EmHa
	fe/wR38+19H5zvD+QL3ptkKi9IiJew7bA9JQsuDvS3zDF3QVBYjqPsQAW38FrTW8TKZKYaq0ds8xW
	1OHEzedHmGH969Nyc9Ja+BGY5ctZ0Jq4xCLU+XFPmiNfsVkfwsRVCac+q1+1rPfROx0VYrcvKZ5vf
	GX7I7IUzZwWZ4jxpwLYpFnfBurzzK1Ac+QUT6scVTPUL/h7aUAtT2kb/qp7wRH2QAA/u28Q3gV4Ef
	YUGlj9eISJ283gvkY3rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVxL2-0004Vg-TD; Tue, 05 May 2020 13:10:20 +0000
Received: from smtp09.smtpout.orange.fr ([80.12.242.131]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVxKn-0002il-EN
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 13:10:07 +0000
Received: from localhost.localdomain ([93.23.13.215]) by mwinf5d18 with ME
 id b19t220094ePWwV0319taG; Tue, 05 May 2020 15:10:02 +0200
X-ME-Helo: localhost.localdomain
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Tue, 05 May 2020 15:10:02 +0200
X-ME-IP: 93.23.13.215
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
To: nsaenzjulienne@suse.de, f.fainelli@gmail.com, rjui@broadcom.com,
 sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com,
 wsa@the-dreams.de, wahrenst@gmx.net, nh6z@nh6z.net, eric@anholt.net,
 andriy.shevchenko@linux.intel.com
Subject: [PATCH] i2c: bcm2835: Fix an error handling path in
 'bcm2835_i2c_probe()'
Date: Tue,  5 May 2020 15:09:52 +0200
Message-Id: <20200505130952.176190-1-christophe.jaillet@wanadoo.fr>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_061005_779274_C09A3E2F 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [80.12.242.131 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.131 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A call to 'clk_set_rate_exclusive()' must be balanced in the error handling
path.
Add a corresponding 'clk_rate_exclusive_put()'.

While a it, also balance a 'clk_prepare_enable()' call with a
'clk_disable_unprepare()' call and move a 'free_irq()' to the new error
handling path.

This has the side effect to propagate the error code returned by
'request_irq()' instead of returning -ENODEV.

This way, the error handling path of the probe function looks similar to
the remove function.

Fixes: bebff81fb8b9 ("i2c: bcm2835: Model Divider in CCF")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
---
 drivers/i2c/busses/i2c-bcm2835.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm2835.c b/drivers/i2c/busses/i2c-bcm2835.c
index d9b86fcc3825..7f403e07dff4 100644
--- a/drivers/i2c/busses/i2c-bcm2835.c
+++ b/drivers/i2c/busses/i2c-bcm2835.c
@@ -451,13 +451,14 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 	ret = clk_prepare_enable(i2c_dev->bus_clk);
 	if (ret) {
 		dev_err(&pdev->dev, "Couldn't prepare clock");
-		return ret;
+		goto err_unprotect_clk;
 	}
 
 	irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 	if (!irq) {
 		dev_err(&pdev->dev, "No IRQ resource\n");
-		return -ENODEV;
+		ret = -ENODEV;
+		goto err_unprepare_clk;
 	}
 	i2c_dev->irq = irq->start;
 
@@ -465,7 +466,7 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 			  dev_name(&pdev->dev), i2c_dev);
 	if (ret) {
 		dev_err(&pdev->dev, "Could not request IRQ\n");
-		return -ENODEV;
+		goto err_unprepare_clk;
 	}
 
 	adap = &i2c_dev->adapter;
@@ -483,7 +484,16 @@ static int bcm2835_i2c_probe(struct platform_device *pdev)
 
 	ret = i2c_add_adapter(adap);
 	if (ret)
-		free_irq(i2c_dev->irq, i2c_dev);
+		goto err_free_irq;
+
+	return 0;
+
+err_free_irq:
+	free_irq(i2c_dev->irq, i2c_dev);
+err_unprepare_clk:
+	clk_disable_unprepare(i2c_dev->bus_clk);
+err_unprotect_clk:
+	clk_rate_exclusive_put(i2c_dev->bus_clk);
 
 	return ret;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
