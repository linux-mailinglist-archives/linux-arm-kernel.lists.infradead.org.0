Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEA050D43
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RHIs/2FJViz/BbnieVUKlRhbce5zEL83+swezN6DdI8=; b=tkH
	ZLUcDpnCc6tTdKl2bDe0g8qYn9b3oSYZYGv1MpzNWXv0rzz6GLPSz8upcYF+YOjlLPWMiuNr9ajlS
	8FoJzOQ8b48/93mD50KhuAz53yv++Hh8RjAtlnBVzx85sjnlbgrhoWMVAkL2wGYL+CA86r1WQAHg9
	j9jb1iNGXUNiRC6NhDaFSvPtlaml9NFOVX/teiYAUGjC6fbXD3mEAMxiOd0A1fGgiCxsaQUQc2Mno
	MK2bbwlwTlVtr6ARl0XadnjsShHrgF6jg9Nm1YKdIv9OF/bxLnsEu2itR3oOgFNOnARuUtQlLQxQB
	nyBbRWsW1QgUHWQhnuOZI+uO0kjE5mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPdO-0001Xc-Nq; Mon, 24 Jun 2019 14:07:50 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPdC-0001X7-00
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:07:39 +0000
Received: by mail-io1-xd42.google.com with SMTP id u19so1288195ior.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=03apFXZ4DhKsed7tdajOvwJKFsSf8Y4I5P3qFLjRkKo=;
 b=I2Fo6XRAMMVOjvK9E4plBFmE6GbrgJNAzyqNah9iq40Vff1Sw1lpbcprdLQnGMx0eX
 xlzZChXLaTQXOyI22/oiBXxsGauWHWJoqH9029TFw6qyRQcnIRC/gDVZYqeTZVO/9/ny
 x/vHEcTt1jha1w58oRB6H9f2iJX0p/tSvZo5TIOk5x4NFIjQAn+nA1vNlrqf1DP3asNE
 lAnhxpsOMxb1xsuRRPUjobmfukOlvQ1DETmQUIXj8Sq8l4vGUCHzAtmp75+gaGegyo1X
 84V+T86qp0e3GuFTf6Z+v8yV8zgTzDwqZoLeNq0BOmMlLyJjTw/MySnlGVfPhXpYa1qj
 YLXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=03apFXZ4DhKsed7tdajOvwJKFsSf8Y4I5P3qFLjRkKo=;
 b=VZWiwOoP9SxS0NTssgT2UdZplcjkyLDQLPY7rh92yzuLTmJrTWjjwbPHxBZRPv0iQI
 l0lbZu8mfMI2WkPM75agNQS1w+0TY42od2X+mXqei+HpbWMCxIk04RxZM2JIUKfWbclN
 5XWxwmC9YWwB5YVJA+f8LHgSFgOIP2kPBsl79QQGjsbF7hERDjRcTr4GFW4f/Eub7pOT
 i0lkNsFrpTOyti/PCavFzL/qUX6YqqRuNd6D8es7PUZVSRX83hE8XO3PZWM8BYRw26cc
 BqQVRHrkBDFoMqHtdqV/Knz7cGgURBqfOYtljbAf3pyoVn5SJKRRXS7FRoEcWXivBhoN
 Cspw==
X-Gm-Message-State: APjAAAVZXzbBd0FiWSKSlrLMXOG4A4sXz7vupAirLkF4mD3m0t3Fen/q
 0t8ZMQGSR8Uag06Ss0ucqPM=
X-Google-Smtp-Source: APXvYqyyScY1CjudlFtny0U4SJFuFhECkaYbbnN7rZimu7Yub+mmjUoXj+OQyw0DAdw//wlggWdGLA==
X-Received: by 2002:a5d:9703:: with SMTP id h3mr21151624iol.152.1561385256497; 
 Mon, 24 Jun 2019 07:07:36 -0700 (PDT)
Received: from svens-asus.arcx.com ([184.94.50.30])
 by smtp.gmail.com with ESMTPSA id d17sm13210813iom.28.2019.06.24.07.07.35
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 07:07:35 -0700 (PDT)
From: Sven Van Asbroeck <thesven73@gmail.com>
X-Google-Original-From: Sven Van Asbroeck <TheSven73@gmail.com>
To: Robin Gong <yibin.gong@nxp.com>
Subject: [PATCH] dmaengine: imx-sdma: fix use-after-free on probe error path
Date: Mon, 24 Jun 2019 10:07:31 -0400
Message-Id: <20190624140731.24080-1-TheSven73@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_070738_064841_06F23393 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (thesven73[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thesven73[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If probe() fails anywhere beyond the point where
sdma_get_firmware() is called, then a kernel oops may occur.

Problematic sequence of events:
1. probe() calls sdma_get_firmware(), which schedules the
   firmware callback to run when firmware becomes available,
   using the sdma instance structure as the context
2. probe() encounters an error, which deallocates the
   sdma instance structure
3. firmware becomes available, firmware callback is
   called with deallocated sdma instance structure
4. use after free - kernel oops !

Solution: only attempt to load firmware when we're certain
that probe() will succeed. This guarantees that the firmware
callback's context will remain valid.

Note that the remove() path is unaffected by this issue: the
firmware loader will increment the driver module's use count,
ensuring that the module cannot be unloaded while the
firmware callback is pending or running.

To: Robin Gong <yibin.gong@nxp.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Dan Williams <dan.j.williams@intel.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: dmaengine@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Sven Van Asbroeck <TheSven73@gmail.com>
---
 drivers/dma/imx-sdma.c | 48 ++++++++++++++++++++++++------------------
 1 file changed, 27 insertions(+), 21 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 99d9f431ae2c..3f0f41d16e1c 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -2096,27 +2096,6 @@ static int sdma_probe(struct platform_device *pdev)
 	if (pdata && pdata->script_addrs)
 		sdma_add_scripts(sdma, pdata->script_addrs);
 
-	if (pdata) {
-		ret = sdma_get_firmware(sdma, pdata->fw_name);
-		if (ret)
-			dev_warn(&pdev->dev, "failed to get firmware from platform data\n");
-	} else {
-		/*
-		 * Because that device tree does not encode ROM script address,
-		 * the RAM script in firmware is mandatory for device tree
-		 * probe, otherwise it fails.
-		 */
-		ret = of_property_read_string(np, "fsl,sdma-ram-script-name",
-					      &fw_name);
-		if (ret)
-			dev_warn(&pdev->dev, "failed to get firmware name\n");
-		else {
-			ret = sdma_get_firmware(sdma, fw_name);
-			if (ret)
-				dev_warn(&pdev->dev, "failed to get firmware from device tree\n");
-		}
-	}
-
 	sdma->dma_device.dev = &pdev->dev;
 
 	sdma->dma_device.device_alloc_chan_resources = sdma_alloc_chan_resources;
@@ -2161,6 +2140,33 @@ static int sdma_probe(struct platform_device *pdev)
 		of_node_put(spba_bus);
 	}
 
+	/*
+	 * Kick off firmware loading as the very last step:
+	 * attempt to load firmware only if we're not on the error path, because
+	 * the firmware callback requires a fully functional and allocated sdma
+	 * instance.
+	 */
+	if (pdata) {
+		ret = sdma_get_firmware(sdma, pdata->fw_name);
+		if (ret)
+			dev_warn(&pdev->dev, "failed to get firmware from platform data\n");
+	} else {
+		/*
+		 * Because that device tree does not encode ROM script address,
+		 * the RAM script in firmware is mandatory for device tree
+		 * probe, otherwise it fails.
+		 */
+		ret = of_property_read_string(np, "fsl,sdma-ram-script-name",
+					      &fw_name);
+		if (ret)
+			dev_warn(&pdev->dev, "failed to get firmware name\n");
+		else {
+			ret = sdma_get_firmware(sdma, fw_name);
+			if (ret)
+				dev_warn(&pdev->dev, "failed to get firmware from device tree\n");
+		}
+	}
+
 	return 0;
 
 err_register:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
