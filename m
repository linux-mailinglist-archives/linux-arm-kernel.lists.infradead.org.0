Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2B63D4DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 20:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NKydtWsCzsBCnh2TqMrrdcNphS3bLGMm2FR7v1VjbCc=; b=Mjw0TNY/SbC5KE
	0QA6QGZG7JG4flaC1NG2N557EJti/usuZIY6A7nvUeWRdrFp2BKi3RKDR/eB3PWNmCJaJzRZshh7D
	dNVNuu/F1ZjfCyKeJrYRdHOiVqryR/uMa5nDzbL5qF89yiszNxg0FQE2NoyoDNNNCL1+LEAW5Cpk8
	+l+TerX+9f1eSuh1nIhqs0X8eZ232cL/BFOrKK9DIZPH6B2oCAqk8Qkam7B5H10n+LOpkLW5Xhv7S
	NsyRUJ6+Og+XyRmnWa4G7JiwVodDC9/53GsbvvqxmcInuBJ2Pl6odHZeVUI1deSvHIqihMKc6/6KT
	FfZMn3yDzazQaoy0ttnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hal6W-00023X-Kv; Tue, 11 Jun 2019 18:02:40 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hal6L-000230-4b; Tue, 11 Jun 2019 18:02:30 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D3FE6AEF7;
 Tue, 11 Jun 2019 18:02:27 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/7] firmware: raspberrypi: register clk device
Date: Tue, 11 Jun 2019 19:58:38 +0200
Message-Id: <20190611175839.28351-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190611175839.28351-1-nsaenzjulienne@suse.de>
References: <20190611175839.28351-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_110229_342931_70C43163 
X-CRM114-Status: GOOD (  11.27  )
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

Since clk-raspberrypi is tied to the VC4 firmware instead of particular
hardware it's registration should be performed by the firmware driver.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Acked-by: Eric Anholt <eric@anholt.net>
---
 drivers/firmware/raspberrypi.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
index 61be15d9df7d..da26a584dca0 100644
--- a/drivers/firmware/raspberrypi.c
+++ b/drivers/firmware/raspberrypi.c
@@ -20,6 +20,7 @@
 #define MBOX_CHAN_PROPERTY		8
 
 static struct platform_device *rpi_hwmon;
+static struct platform_device *rpi_clk;
 
 struct rpi_firmware {
 	struct mbox_client cl;
@@ -207,6 +208,12 @@ rpi_register_hwmon_driver(struct device *dev, struct rpi_firmware *fw)
 						  -1, NULL, 0);
 }
 
+static void rpi_register_clk_driver(struct device *dev)
+{
+	rpi_clk = platform_device_register_data(dev, "raspberrypi-clk",
+						-1, NULL, 0);
+}
+
 static int rpi_firmware_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -234,6 +241,7 @@ static int rpi_firmware_probe(struct platform_device *pdev)
 
 	rpi_firmware_print_firmware_revision(fw);
 	rpi_register_hwmon_driver(dev, fw);
+	rpi_register_clk_driver(dev);
 
 	return 0;
 }
@@ -254,6 +262,8 @@ static int rpi_firmware_remove(struct platform_device *pdev)
 
 	platform_device_unregister(rpi_hwmon);
 	rpi_hwmon = NULL;
+	platform_device_unregister(rpi_clk);
+	rpi_clk = NULL;
 	mbox_free_channel(fw->chan);
 
 	return 0;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
