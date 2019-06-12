Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F46C42EA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 20:26:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9iEAgHSGGLmTICp17OD3CoSjr8QjxKbeYX39KYIZQ4=; b=r25LXUeK3RwUf/
	E8npo5zMi8TtXTxgB9qUXHuJ7MF0rn+tvhVaaZUWIQKYBqtp7K/Xvz2wDjlnK3kqb1s/+Fda/JSj4
	BJPHcpHJ5a2Aggoypb9sRbu3XyZk7sVz7/UAEm88X7Fv/qIqXtG+y/r45l9gwmJ+WYaH0j5cxwPei
	ng/Dn767PzAUt29em4PztgLnYjn8qq5s64IipYNTuaIwh3nnANJbZkeHtcSmQcA/zCHzIbdHqhgph
	XrWWI3Sdn9I28HGk/G0RaKdAvnCL1omFEBMrjOYSO2ijeg8Qamob1SUqYDgFmMrr9OJ5dPwzRfX0a
	JneabfO3ypUN8YBv8rDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb7xX-0000pv-7Y; Wed, 12 Jun 2019 18:26:55 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb7w2-0008F5-9T; Wed, 12 Jun 2019 18:25:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E0C22AFFA;
 Wed, 12 Jun 2019 18:25:20 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 5/7] clk: raspberrypi: register platform device for
 raspberrypi-cpufreq
Date: Wed, 12 Jun 2019 20:24:57 +0200
Message-Id: <20190612182500.4097-6-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190612182500.4097-1-nsaenzjulienne@suse.de>
References: <20190612182500.4097-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_112522_503548_5A4ECEB1 
X-CRM114-Status: GOOD (  10.49  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, sboyd@kernel.org, viresh.kumar@linaro.org,
 mturquette@baylibre.com, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As 'clk-raspberrypi' depends on RPi's firmware interface, which might be
configured as a module, the cpu clock might not be available for the
cpufreq driver during it's init process. So we register the
'raspberrypi-cpufreq' platform device after the probe sequence succeeds.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Acked-by: Eric Anholt <eric@anholt.net>
---

Changes since v2:
  - Use raspberrypi_clk struct to store cpufreq platform_device

 drivers/clk/bcm/clk-raspberrypi.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index fef1f7caee4f..1654fd0eedc9 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -34,6 +34,7 @@
 struct raspberrypi_clk {
 	struct device *dev;
 	struct rpi_firmware *firmware;
+	struct platform_device *cpufreq;
 
 	unsigned long min_rate;
 	unsigned long max_rate;
@@ -272,6 +273,7 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 
 	rpi->dev = dev;
 	rpi->firmware = firmware;
+	platform_set_drvdata(pdev, rpi);
 
 	ret = raspberrypi_register_pllb(rpi);
 	if (ret) {
@@ -283,6 +285,18 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	rpi->cpufreq = platform_device_register_data(dev, "raspberrypi-cpufreq",
+						     -1, NULL, 0);
+
+	return 0;
+}
+
+static int raspberrypi_clk_remove(struct platform_device *pdev)
+{
+	struct raspberrypi_clk *rpi = platform_get_drvdata(pdev);
+
+	platform_device_unregister(rpi->cpufreq);
+
 	return 0;
 }
 
@@ -291,6 +305,7 @@ static struct platform_driver raspberrypi_clk_driver = {
 		.name = "raspberrypi-clk",
 	},
 	.probe          = raspberrypi_clk_probe,
+	.remove		= raspberrypi_clk_remove,
 };
 module_platform_driver(raspberrypi_clk_driver);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
