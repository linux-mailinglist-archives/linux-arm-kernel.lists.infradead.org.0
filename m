Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 464883A3FE
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Jun 2019 07:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zn8kmXUaAjxL98O0ZCP8Q+j9NvpiWc7c93EeOzQWGAU=; b=CQ5t2+iR4ouoYC
	E640ORJkZjgT9qK9Y2oOIcMOTtqwXe0B8HvAR61UkIyD2k39pz4MfUM8AywBOQtIpi2RWNNvPC5XV
	wpfw9tWXdzBBOt0qSUElgyuUao63V8iKFIYzyKaNIFiCnnALY4p9JQLnMDsLEQdxnp59iU000m2/x
	Uz/dv0CwtQ/IHpDaEBZgzZaxTN89ZXDYDb2M7ycN3k8jyjXkXSxz8oUANXsXFfcNoA9eWndnTuHU6
	rnP9ZHOgKsxTWQqRb6tMy7XHFzV7MAkFS2JYgBexDRST7ByTxHM94X6oh12YecOi4WuhNjNis+U/i
	RljIl9UZqlBZnD8Hw5mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZqpZ-0005um-JR; Sun, 09 Jun 2019 05:57:25 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZqpN-0005uH-1b
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Jun 2019 05:57:14 +0000
Received: by mail-pg1-x543.google.com with SMTP id l19so685667pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Jun 2019 22:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mUYWP70RDTFI+93NFRrPVCzuklD/oeAhEhCx99S9U8o=;
 b=gXPEdV4gT7JPNVfY2who+GifPoiYdfH9sStCQa8uywQBc4gasuPJLjm8C1Kww+oo0F
 D3pTPP+wpxKbVNs+IdgpvODsnYyT/36N/Vs4zpljDjh740g2ffOsgslmAGq4HPg055Ab
 cBmX07Tt8C1YORsjQzEioUW+ar9HQqljpt4u3T9I13XC1wZQxgJKag4vHtvo+SmSBCCl
 aR54Klr2z9nhElopEv1Vtkxt51oRYM3fdsT+DfQzIGB7vnIm/cuBgd+fiCvmvGky5Bi5
 K8jZmkDiu5afRymh7NMX9kzzVuDcQ44K7/FOkF8MJnS9dJsV/SI2egDaaK2jqRz/+Xhi
 TbKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mUYWP70RDTFI+93NFRrPVCzuklD/oeAhEhCx99S9U8o=;
 b=OF9h/hiG31hs/+DzcJtfIXl0FVHLv3itxRaveRKOgQXOxOk0Hk/smEkVuvFZzF5S8Y
 cs/+t5UE4tWw4ADCuwKyX2oh9rxYx4GGw/onrq3dBKXByQ35GqiJQCwkuQJZyYx7KHFj
 50VfjYFjfqEd0MEMXapuRbzGtn+UtDJiRJv9ti4HkP2s6VJwlygjuBa51DbxmwMfM9Ls
 7CTQvHdqemF615HvY8OASsSoGPRcqsS8R24FKxtEJvCjegPP28UmwZbsI+Uu2b4L9p5e
 rM8Du6re+GeFjKzP0TQlO6/aKOcVHtUkk5PkUUfWVOjV0CDyCAqKYW7C7YLybs6PyuCK
 YW/A==
X-Gm-Message-State: APjAAAXah9ivVGxXJLs/wpwohVEwtYrlRjEgOmznZv4f+6y2nA50o4UB
 0d88dIrFYkphRnPrqbyNjxdW4NtI/4Y=
X-Google-Smtp-Source: APXvYqyoOiRJERFkarQP7/W9+vFK31hqsgl04tvV/3GDz3Xy3v0h2ZD+qJMBXPW31llsyNVW157QoQ==
X-Received: by 2002:a63:1663:: with SMTP id 35mr10426201pgw.253.1560059831794; 
 Sat, 08 Jun 2019 22:57:11 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id 2sm7367848pff.174.2019.06.08.22.57.09
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 08 Jun 2019 22:57:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-i2c@vger.kernel.org
Subject: [PATCH] i2c: imx: Initialize DMA before registering I2C adapter
Date: Sat,  8 Jun 2019 22:56:58 -0700
Message-Id: <20190609055658.3446-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_225713_115626_78936390 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Wolfram Sang <wsa@the-dreams.de>, Andrey Smirnov <andrew.smirnov@gmail.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Chris Healy <cphealy@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allocating DMA after registering I2C adapter can lead to infinite
probing loop, for example, consider the following scenario:

    1. i2c_imx_probe() is called and successfully registers an I2C
       adapter via i2c_add_numbered_adapter()

    2. As a part of i2c_add_numbered_adapter() new I2C slave devices
       are added from DT which results in a call to
       driver_deferred_probe_trigger()

    3. i2c_imx_probe() continues and calls i2c_imx_dma_request() which
       due to lack of proper DMA driver returns -EPROBE_DEFER

    4. i2c_imx_probe() fails, removes I2C adapter and returns
       -EPROBE_DEFER, which places it into deferred probe list

    5. Deferred probe work triggered in #2 above kicks in and calls
       i2c_imx_probe() again thus bringing us to step #1

To avoid having this problem, move i2c_imx_dma_request() to happen
before i2c_add_numbered_adapter().

This problem was encountered on VF610 CFU1 board with
CONFIG_FSL_EDMA=n.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Wolfram Sang <wsa@the-dreams.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: linux-i2c@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/i2c/busses/i2c-imx.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index b1b8b938d7f4..78a909f56f75 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -278,7 +278,7 @@ static int i2c_imx_dma_request(struct imx_i2c_struct *i2c_imx,
 {
 	struct imx_i2c_dma *dma;
 	struct dma_slave_config dma_sconfig;
-	struct device *dev = &i2c_imx->adapter.dev;
+	struct device *dev = i2c_imx->adapter.dev.parent;
 	int ret;
 
 	dma = devm_kzalloc(dev, sizeof(*dma), GFP_KERNEL);
@@ -1153,10 +1153,15 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	if (ret == -EPROBE_DEFER)
 		goto clk_notifier_unregister;
 
+	/* Init DMA config if supported */
+	ret = i2c_imx_dma_request(i2c_imx, phy_addr);
+	if (ret < 0)
+		goto clk_notifier_unregister;
+
 	/* Add I2C adapter */
 	ret = i2c_add_numbered_adapter(&i2c_imx->adapter);
 	if (ret < 0)
-		goto clk_notifier_unregister;
+		goto dma_free;
 
 	pm_runtime_mark_last_busy(&pdev->dev);
 	pm_runtime_put_autosuspend(&pdev->dev);
@@ -1166,16 +1171,12 @@ static int i2c_imx_probe(struct platform_device *pdev)
 	dev_dbg(&i2c_imx->adapter.dev, "adapter name: \"%s\"\n",
 		i2c_imx->adapter.name);
 
-	/* Init DMA config if supported */
-	ret = i2c_imx_dma_request(i2c_imx, phy_addr);
-	if (ret < 0)
-		goto del_adapter;
-
 	dev_info(&i2c_imx->adapter.dev, "IMX I2C adapter registered\n");
 	return 0;   /* Return OK */
 
-del_adapter:
-	i2c_del_adapter(&i2c_imx->adapter);
+dma_free:
+	if (i2c_imx->dma)
+		i2c_imx_dma_free(i2c_imx);
 clk_notifier_unregister:
 	clk_notifier_unregister(i2c_imx->clk, &i2c_imx->clk_change_nb);
 rpm_disable:
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
