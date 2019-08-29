Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BCFA109B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 06:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XiBzNN4bd+nd2IsbhxPi5DADFkCkjQLoMzCelx9m/5w=; b=pyD1jEiCwvecplJ2d0kHPhO4yZ
	H4D3OfxGDqSTi/MswEvuBAFQLMyJPercAC4p+q2kBJJM6BQe7VWtLwyoKQNUd/Rfm1X5oJmC64yFU
	lo42gFQLHWwZL7OyzceHPqDMSlyEiv2i3hdCccrE3MxSK0fIGi0eegcs9BOqDvCFHJCVD9HLN20V6
	TFBdkXnybYmGN2CPxPYqq9U+qe1a5qWfPVNvXlbv8n7/+Yt97o1uyStkRFs9ABKWvrdzsC/2x3+us
	ETl0cJpSZmuy1sdUSQsfye+5zArJi81PF4r8kwkOrqAKPhmkRC4U+o+tkQBHEut6V01fK5Afo5OJs
	iwIiEHgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3CQz-0007Tl-HW; Thu, 29 Aug 2019 04:53:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3CQR-000747-8t
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 04:52:48 +0000
Received: by mail-pf1-x443.google.com with SMTP id i30so1201300pfk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 21:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GANqF4H1c9ctJZ93xy/AUHApZEM00s/jYLQw6n/4UXM=;
 b=E8Il4awvKrc4JNdKEdEKQ5KR7arPWnH6d5OGIRjXAoOZw2t1vKXjcuR64RT/n9LSis
 k7NHI1RR6uliGdlKYdourRu3GpPK1LOQhRTyYO8KvHPjx3CekCpevwFNyeEYFmq++6Hy
 pSy9iOm1V3Ui7LzZp5XwML27WdpcEL4nphvBY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GANqF4H1c9ctJZ93xy/AUHApZEM00s/jYLQw6n/4UXM=;
 b=prRySkb3NLis5vihRCMTVpDT5lh6QD6nMixYes03dkd2r5dTncQf29QUdo+wIBTVy6
 oN60Nz+NDoC3sSAgIQ+rkmfhFsUDY/ym0A0CiHHhKCMu1h6kYCk67Za+OAPJl7dZ6TP9
 TUsszxZXmwHlTVlAFDDZWp2RvM+SL8ib14fNU79yErH5QEvNHLJUNce9Eww4CgYWc5BQ
 rmyG6Crzm77UloQr2AsH3znBRTIxhXqqBcdpp8+z1JFekXXNezzNjGJB5IrlYHBv8izV
 Rr5kLfXQjzz0EyLOOfvKkl0XHGw+9PyBqxLV6/by6ChuYB8kqoEFvbtaXXx+TTWghux+
 1maA==
X-Gm-Message-State: APjAAAV+aFdx2018GBs42DjLUl4I5402QP/Lya4Ln1nfX0/frzDWwre3
 sAbydk49GzFBrQ5tLxgJp1ix6g==
X-Google-Smtp-Source: APXvYqyW8b/Ox0XdoME0liJ9cCnqa8HAZOZwlGMSTWggx7M6r7b503/4XWOBBnCwx8KFAvKsNhm5LQ==
X-Received: by 2002:aa7:8a04:: with SMTP id m4mr8851035pfa.65.1567054366484;
 Wed, 28 Aug 2019 21:52:46 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id j1sm1131440pfh.174.2019.08.28.21.52.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 21:52:45 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 2/2] gpio: iproc-gpio: Handle interrupts for multiple instances
Date: Thu, 29 Aug 2019 10:22:28 +0530
Message-Id: <1567054348-19685-3-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
References: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_215247_319134_3471A391 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>

When multiple instance of iproc-gpio chips are present, a fix up
message[1] is printed during the probe of second and later instances.

This issue is because driver sharing same irq_chip data structure
among multiple instances of driver.

Fix this by allocating irq_chip data structure per instance of
iproc-gpio.

[1] fix up message addressed by this patch
[  7.862208] gpio gpiochip2: (689d0000.gpio): detected irqchip that
   is shared with multiple gpiochips: please fix the driver.

Fixes: 616043d58a89 ("pinctrl: Rename gpio driver from cygnus to iproc")
Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
index 20b9864..8729f47 100644
--- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
@@ -114,6 +114,7 @@ struct iproc_gpio {
 
 	raw_spinlock_t lock;
 
+	struct irq_chip irqchip;
 	struct gpio_chip gc;
 	unsigned num_banks;
 
@@ -302,14 +303,6 @@ static int iproc_gpio_irq_set_type(struct irq_data *d, unsigned int type)
 	return 0;
 }
 
-static struct irq_chip iproc_gpio_irq_chip = {
-	.name = "bcm-iproc-gpio",
-	.irq_ack = iproc_gpio_irq_ack,
-	.irq_mask = iproc_gpio_irq_mask,
-	.irq_unmask = iproc_gpio_irq_unmask,
-	.irq_set_type = iproc_gpio_irq_set_type,
-};
-
 /*
  * Request the Iproc IOMUX pinmux controller to mux individual pins to GPIO
  */
@@ -875,14 +868,22 @@ static int iproc_gpio_probe(struct platform_device *pdev)
 	/* optional GPIO interrupt support */
 	irq = platform_get_irq(pdev, 0);
 	if (irq) {
-		ret = gpiochip_irqchip_add(gc, &iproc_gpio_irq_chip, 0,
+		chip->irqchip.name = "bcm-iproc-gpio";
+		chip->irqchip.irq_ack = iproc_gpio_irq_ack;
+		chip->irqchip.irq_mask = iproc_gpio_irq_mask;
+		chip->irqchip.irq_unmask = iproc_gpio_irq_unmask;
+		chip->irqchip.irq_set_type = iproc_gpio_irq_set_type;
+		chip->irqchip.irq_enable = iproc_gpio_irq_unmask;
+		chip->irqchip.irq_disable = iproc_gpio_irq_mask;
+
+		ret = gpiochip_irqchip_add(gc, &chip->irqchip, 0,
 					   handle_simple_irq, IRQ_TYPE_NONE);
 		if (ret) {
 			dev_err(dev, "no GPIO irqchip\n");
 			goto err_rm_gpiochip;
 		}
 
-		gpiochip_set_chained_irqchip(gc, &iproc_gpio_irq_chip, irq,
+		gpiochip_set_chained_irqchip(gc, &chip->irqchip, irq,
 					     iproc_gpio_irq_handler);
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
