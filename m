Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A3B118331
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yhYPSj5ToEzcJNrtEqhBajYzwVurcC6LZZ38uQp1SPg=; b=ddAZJqUrBiIbJv
	m1UACWbGiNlF/UK6q/BntIBaRqqEIFWwTRpf/YL/WOE11tdvxHqyUVwelIIE8PfiTjmFSy3IJHYi/
	J4HRX8PrWm+/bJQoYq53onloH1XTv0hch5MO75rK7FSY4Xhv5hoAPkmVnREw39xZUOFFWDYnqNWR0
	oD/BNA9zpxSJrG72drH23p4NuT6ed/NZKU/+dyn2Q03KYZILUQdlWMX5oB0OF9gTdx/MQLtq2JLhx
	MVtuCd/HPm29K4pCfQQUIRb+vFI3xE82NT19AHnNssljlzB27f7TsyLFk0ZeS7op6xpRmm3wRuK0C
	/Bfzq+1NlAHsrzsrHb3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebal-0005dl-1i; Tue, 10 Dec 2019 09:14:03 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iebaa-0005cz-7c
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:13:53 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so7051038plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:13:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GCfrkeTyXUifAsSXxqFl0DpIzo4W83I7gTVb/hoapZE=;
 b=AkHKgIf1NiMnG7Gj7x2uthUKxnDURwF3UhqrsyH10z+eftQxFXaF4KNAasJbiBZ9V1
 3DvKg/DU2FgCZgey7Q+RFcek3e9pYrWSojh9To8RPk8lHAjWbdQBq6fr6J6Jn7MzVFTO
 XO1k5vyjTDrqw6kPwy8BXjqDcioW9DTsi/qDyGx3srujFsYsftsXAb7qqqfvYHHIdbBQ
 qElqsCsYqMP9sQwR6BUM43EErFa5GQuFGe/K86FoGH7+6wKLHCvpPy9v2CMlpMPorGrr
 z89Pb+FS0zKRZJPzSXI26Dg2Khsi7CLQyL/0HqfXsoHzQiKS+MFJls+xi1Q43/FVFY2g
 7ohg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GCfrkeTyXUifAsSXxqFl0DpIzo4W83I7gTVb/hoapZE=;
 b=ESN6VO1YJApmHfwhxDQG46AnhlU2noUmp9ZVPSPx/9SdrcirRBh2urXei0AxUkkWfD
 P7Wc9tQ5ij084AG10yIXJuK/hAqu2U+zEg1EOdp7pFWVPDT/uEGboc9X9+HkuuUC+gq/
 Vy0PTlzax//5Gz/b1Sxl7Y9xYg3+P1rJGFO1iDqkg3r7IRDUAXNDihRdoKSEaN5SbjNi
 6GVcSiniTlzoa9LxAjelUs+WbdKrQUHypO8x6t2dMI4YXKKR5P2B9dGFrRSx2r8kkoDU
 KDx4wv27zrye7xOu5PfAt/3mk9bNZakXlP4qJ5HkxA2DX/26RK+s4ihWWu6SvhUAvLDw
 ZXRQ==
X-Gm-Message-State: APjAAAUGL8Cpe+IOZ2ASLVMDtY4ly+530jT+1GXz+GKui+8MVCEQc8/g
 ZzBIBCMjhnVYe+fz01bWl5o=
X-Google-Smtp-Source: APXvYqyXNyrvXoRs1b7KraoFUwxJ4zaBbmaXa6ETC/lHTsr+/c/QFgorcU4XpIjV8KJ9shxGexFy1w==
X-Received: by 2002:a17:90a:a881:: with SMTP id
 h1mr4259501pjq.50.1575969231329; 
 Tue, 10 Dec 2019 01:13:51 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id g30sm2377368pgm.23.2019.12.10.01.13.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 01:13:50 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] ahci: imx: add a check for
 devm_thermal_zone_of_sensor_register
Date: Tue, 10 Dec 2019 17:13:36 +0800
Message-Id: <20191210091336.23331-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_011352_311024_AEAFC5E7 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, linux-ide@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>, Tejun Heo <tj@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver misses a check for devm_thermal_zone_of_sensor_register().
Add a check to fix it.

Fixes: 54643a83b41a ("ahci: imx: Add imx53 SATA temperature sensor support")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/ata/ahci_imx.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/ata/ahci_imx.c b/drivers/ata/ahci_imx.c
index 948d2c6557f3..c6206b3053c6 100644
--- a/drivers/ata/ahci_imx.c
+++ b/drivers/ata/ahci_imx.c
@@ -1121,6 +1121,7 @@ static int imx_ahci_probe(struct platform_device *pdev)
 	    IS_ENABLED(CONFIG_HWMON)) {
 		/* Add the temperature monitor */
 		struct device *hwmon_dev;
+		struct thermal_zone_device *thermal_dev;
 
 		hwmon_dev =
 			devm_hwmon_device_register_with_groups(dev,
@@ -1131,8 +1132,13 @@ static int imx_ahci_probe(struct platform_device *pdev)
 			ret = PTR_ERR(hwmon_dev);
 			goto disable_clk;
 		}
-		devm_thermal_zone_of_sensor_register(hwmon_dev, 0, hwmon_dev,
+		thermal_dev = devm_thermal_zone_of_sensor_register(hwmon_dev,
+					     0, hwmon_dev,
 					     &fsl_sata_ahci_of_thermal_ops);
+		if (IS_ERR(thermal_dev)) {
+			ret = PTR_ERR(thermal_dev);
+			goto disable_clk;
+		}
 		dev_info(dev, "%s: sensor 'sata_ahci'\n", dev_name(hwmon_dev));
 	}
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
