Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 092BDAF564
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 07:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lw3MHT0xR6+42OpI0SKKzkfsPRjj2K6/AgZ/UjYdxoA=; b=QMe
	VsRu501S55B6jlc1hm7cnhkrBEq62EG5rtRog7dk1fshfXhyJ7ghrno5nb5eVMMcp7DAB39ZHcp1f
	Plb6ydRql8gid5rUnGjH7JP3v11Krqnhf16eYRqCa1L62SJO4rj2ms8eqvUzoTNp3EsnSytwxcvE+
	6XpVVW+eKhvQ6d6JO7KFJOp1397bvRLKiuDafRQrwHhqpYvDJ0/XS/3G+2KeOLT2elTVe4nCRTk5t
	QRByQ1PQcUjay3GqzrszbSvJ7QtGxQPdkPmghVzRBTCKru6GErhf+iyFfcYRQXBZvFrUoI9XFXGmu
	uvvoQNFuYr1mGrGSCm2kfd4a2Q30yLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7uzV-0000D5-GD; Wed, 11 Sep 2019 05:16:29 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7uzH-0000CR-Ix
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 05:16:16 +0000
Received: by mail-pf1-x441.google.com with SMTP id q5so12869189pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 22:16:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=BMbiIR1LyRY98dnnELG+YAf1kawqGEANpBbQC+CCbhM=;
 b=hXFF7s+PuFW/NxL4QbBtCtkypBM6BCKYfL5Y4lDxq0MOLXR5iPqBGXyy6lo6DNUTzf
 bfCuPZIzKyEo5zHuuJ4/fcTkFLpI0wmW7ZILWwHnD4bjemvW3FE/mnuDq5PIvxzlDSvW
 H+OdfrFmDdj+G6wKnx6ypaSLghjQ0p14FssHQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BMbiIR1LyRY98dnnELG+YAf1kawqGEANpBbQC+CCbhM=;
 b=OMkA4q6B6LacLRsCovfI40NsQMv54nRHRiysZiRRSksSbXS5cO9bGJoDXs/wHVSlez
 PMOiRfkjoYlAkwQeowhTJyCjk9Wypd4bv5pqQ54/PeL0DUbr5gVNKCm6n1EgZQAF6ECY
 ElxQZo+L5PMo6Qi+hWKE+tinKBFn6oqsjJlTsOeAshz/+98z1cglRNxAqDtqJdPDu8Q8
 SZIBi6JOZFmker6JngsYmr9Q5VqgOmWJxoE8zQzOsxN5eGR0+dAA6Ihpbcku9iMFIUk+
 CEvWqDXpHqfmU7uTT7ZV/CLGXDhPKgNqQOOUstzfz6aDIzQ4DBMQ2U38tbqCqTcFTCZ6
 WzWA==
X-Gm-Message-State: APjAAAWlBhbzh7BQAAi2rGVVlRJ/lIPinkk2xI39wR0OV+SDUuja/S+0
 8jUdakBkq2ad2m+KLj+v7MNxJA==
X-Google-Smtp-Source: APXvYqwYQWfMQ6vWWOF3mSdlh/pc8D0x/hHtJukanbuXtbH4cOkp3f+6D5/1gN28cXGa7MC9q4xGzA==
X-Received: by 2002:a63:6a4a:: with SMTP id f71mr30755038pgc.409.1568178973942; 
 Tue, 10 Sep 2019 22:16:13 -0700 (PDT)
Received: from rayagonda.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id h186sm33650986pfb.63.2019.09.10.22.16.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 10 Sep 2019 22:16:12 -0700 (PDT)
From: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
To: Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/1] pinctrl: iproc: Add 'get_direction' support
Date: Wed, 11 Sep 2019 10:41:25 +0530
Message-Id: <1568178685-30738-1-git-send-email-rayagonda.kokatanur@broadcom.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_221615_634331_6A107653 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add 'get_direction' support to the iProc GPIO driver.

Signed-off-by: Rayagonda Kokatanur <rayagonda.kokatanur@broadcom.com>
---
 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
index b70058c..d782d70 100644
--- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
@@ -355,6 +355,15 @@ static int iproc_gpio_direction_output(struct gpio_chip *gc, unsigned gpio,
 	return 0;
 }
 
+static int iproc_gpio_get_direction(struct gpio_chip *gc, unsigned int gpio)
+{
+	struct iproc_gpio *chip = gpiochip_get_data(gc);
+	unsigned int offset = IPROC_GPIO_REG(gpio, IPROC_GPIO_OUT_EN_OFFSET);
+	unsigned int shift = IPROC_GPIO_SHIFT(gpio);
+
+	return !(readl(chip->base + offset) & BIT(shift));
+}
+
 static void iproc_gpio_set(struct gpio_chip *gc, unsigned gpio, int val)
 {
 	struct iproc_gpio *chip = gpiochip_get_data(gc);
@@ -784,6 +793,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
 	gc->free = iproc_gpio_free;
 	gc->direction_input = iproc_gpio_direction_input;
 	gc->direction_output = iproc_gpio_direction_output;
+	gc->get_direction = iproc_gpio_get_direction;
 	gc->set = iproc_gpio_set;
 	gc->get = iproc_gpio_get;
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
