Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14762915FB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 11:51:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WKDbqn86ICJGbqsqWHwEuTJ3i3g9NvX7daYk3/wsPN4=; b=YqlN1AFvk5VZSA
	e0qkVzbdTTSu4Hv7L0kVIp35p3QCogOIx1kzcyUvpcJR8pynfyf2IVwDEyT6CDEl5GcM0jH87GskL
	n0rl3NEp0/T4VFoGxeEs50WfgV96C1xKO3haxIceNyqI33WN7PAglMtVQc0+p+JYGHCqCZBYCXctq
	xUv3BqZ6zthA6L0i+fu59WJ1Uf4kwC7DYrpyBH/I+pndoqmYlDeNqkjB2kR8+SGEHJ3as+LXDhbvl
	KfDyNlvwAdVwYGYdi/3VOWvJ4Y5KG+8kLEQ0Bdc7QP3ucDwgR57bMRPqTk+BuDb97CC/5wj8EbNU7
	kwBv/6W+1q5rFo4ckH/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzHqf-0006bH-2y; Sun, 18 Aug 2019 09:51:41 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzHqS-0006at-En
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 09:51:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id 196so5420183pfz.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 18 Aug 2019 02:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ingics-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fPFwCZoR+0RfxABah+OM05It7kpLvC0foG3il7KX154=;
 b=Zj7X6NrLuEUJqmZRqJ5jLUufow80BiJ4nT/gAmJ32eCfAj4hrkYoA7VfdC7+9hNWkA
 gLGdnC8bU5FErbKMKjvLer9grsQYgcFpKMwvOO6qWsQpxgjvopot4QYNDZ8LXEViMWBs
 foPKXvDqTTXOul+cohKI9Il5Vr0ExIk34v/Zn0+X/+7kP1AWh2QxkdIvttb5FW0XFqz9
 1n6oyWkrT5yTvEIRqM9By42Ndmr9J311fw7auUizjKAuTunSIDSfkax2wpldoAM/LuQg
 dhdeVqD0zJ+HZ13ndw/7bcpWcX4HfrWaOHsFOmYLF9h+9U3s8exeC7HvMnTcUOsbKS45
 lC+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fPFwCZoR+0RfxABah+OM05It7kpLvC0foG3il7KX154=;
 b=WqB5JloCtq032sSEffvF2B6zGXIpS+q9tt6lYaeAj2Ag581h+8BVuNES1XLSMHaID4
 wCnhog8HxUdBh9whmBolLugns5mM7wGOlYraDLUAvwwPVo6V/k29VWQPKod9a7e5q2g4
 +CdOUHEKyh6LbT+yzIABhixcHa7KGPpKaMYBsmumpDmG0Qm3vxfKzKLTowap2sMZPWyt
 SnON0THQKZcGgp3f5xsxQle/jP7RQ8cakRhjAbCqO4DYE4HAjK4F7btMK/8whozQWpFR
 z6nWWreBLTjr0DLjLZux/kSpTTQTjY+JtbT3b4dlYO1IIMlNmZ17uEWkrZvd25TaT1fZ
 uULg==
X-Gm-Message-State: APjAAAU4Ptsuca3f5LhuYEc6IcXaFjpLbcZrtusYdxImFxjKDkxvHmTv
 SfYtoReGZM8xyUn3sOOEfph+tfpp5Yo=
X-Google-Smtp-Source: APXvYqyCBVPN67Etp2d4Z4UMUzanossGvxZde/BprjcHVcrqXWrltSRca87GAVuKDet9K5vh+P84EQ==
X-Received: by 2002:a63:4522:: with SMTP id s34mr15011368pga.362.1566121887112; 
 Sun, 18 Aug 2019 02:51:27 -0700 (PDT)
Received: from localhost.localdomain (122-117-179-2.HINET-IP.hinet.net.
 [122.117.179.2])
 by smtp.gmail.com with ESMTPSA id v145sm13203521pfc.31.2019.08.18.02.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2019 02:51:26 -0700 (PDT)
From: Axel Lin <axel.lin@ingics.com>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] spi: zynq-qspi: Fix missing spi_unregister_controller when
 unload module
Date: Sun, 18 Aug 2019 17:51:13 +0800
Message-Id: <20190818095113.2397-1-axel.lin@ingics.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_025128_522802_993988EE 
X-CRM114-Status: GOOD (  10.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Axel Lin <axel.lin@ingics.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_spi_register_controller to fix missing spi_unregister_controller
when unload module.

Signed-off-by: Axel Lin <axel.lin@ingics.com>
---
 drivers/spi/spi-zynq-qspi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 3155e2cabb1e..4a5326ccf65a 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -694,7 +694,7 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 	ctlr->setup = zynq_qspi_setup_op;
 	ctlr->max_speed_hz = clk_get_rate(xqspi->refclk) / 2;
 	ctlr->dev.of_node = np;
-	ret = spi_register_controller(ctlr);
+	ret = devm_spi_register_controller(&pdev->dev, ctlr);
 	if (ret) {
 		dev_err(&pdev->dev, "spi_register_master failed\n");
 		goto clk_dis_all;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
