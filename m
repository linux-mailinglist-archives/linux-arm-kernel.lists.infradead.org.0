Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D4C1E6A0E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 21:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dnuMIwK07tW72AjACMW1pxm7yF+bKJMoHy8T+hKGktY=; b=nVY
	5jZlMtKAua60PtbGRPEV+IS1eht9Q4Rh8jTu47FvB1cOhHqx8G6mUsRjOgmDqSNyljUyJEgitOzCJ
	Lv1r3l9HDkyUDvSJ8vmhYSYl5xDwmBgoC9nYUGMWhzC5par03ldhoyFEkE3Ov0DmXo1aOev1qsDhF
	iKBEYNPEMPL75kLDfIo7V4DWMAsb/C+JH2RzjDfbpKpFfXL1RAea6v2xEGPq/P2bhRgwcJMUwYMMr
	i7cz5C+Y4fBfvkLWCmNJoNkVKaL3t1QsWKzjdsZkCzwXaB6Ctd2+mxXUN4U0ArBk1/7Nuhp0cJh6/
	3jVaTITRtyLFuSgRCXUtg5ct2Qd8ilg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeNrl-0004Ma-Cm; Thu, 28 May 2020 19:06:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeNrY-0004Lm-Sf; Thu, 28 May 2020 19:06:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id u13so157361wml.1;
 Thu, 28 May 2020 12:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=4KhJ0czAtInc6S6Xs9xVMwv9E2Cl3DrgPdxIonc8bGQ=;
 b=GQo3w7YNGghCGU1XnVGFhDTXxN7CHLJy5jHWuFWHMjmjY1DpiRjBbt3+fX52jRH4pB
 tA7eVVSlE8fR6l6YVf4FMcg3QGw9Z4pYlIDgPgZQSKKV0j0dosHPzhtTCtH/hxbp8Z2y
 YuT2OSFUyqo1p6xnZfv8yGsn6IgyZ/RY86XrNTrF0cTQGOs4xKDcQU4XJo66BJucPbkh
 W5v7+w+PalWr2jdmjB/N73DKTQh3rTNR/KstTYX1AUE4noSPD5J/z5TOrbuX6rwdWBNw
 2qQE+YZUHkiPOLlLyRhr2ItFHrJwv/nAD1BZX2bfCWn2p0EBGiOpRV39kIQHiLNRaCGl
 W17Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4KhJ0czAtInc6S6Xs9xVMwv9E2Cl3DrgPdxIonc8bGQ=;
 b=iDnGRiKPs1+I7kzAty8I+soHy1ccgtTiOE9Czqlnivfm2rJZHPJZipT8e9FObB7xGY
 +AVP1ddAhNQbFZuPeVfrRmtMFLGWYlHHPbMGMcFJpcMabXmrserzq+5uxLGvsV+EmeR4
 ocmgjtIfp0Ghst8H/oMNuIzUQZQwjix94RrCjhonq1AhZDyxfwresN7l/IUZsHPiHJjt
 ByvfhCfP5B6TeGHI6YFbIoED7+AiAaBRRpepBDi9sAQJl4gU8BV0HCr/+32WgSJUbWCC
 6SQo5WJwdU4GzriPXmvpVwykWRqJvyPSm3WMGxSZPB0u1ryKa2lH4u2UfKbSAtRY7s/7
 UKCg==
X-Gm-Message-State: AOAM532Fio7eHgFu2EIbwgOCAqVfXQ+fAn7TxPof+9ZLU86a9phmRaFR
 6Kvlfv89SRRjaq+8b2aZajw=
X-Google-Smtp-Source: ABdhPJwodjVwERbd9IbT6+7c3t6iPtNjLkkwJVDncWF6oaZ/MtkezkiKEFsDJCsEzoaJBToaLSlodw==
X-Received: by 2002:a1c:3dd6:: with SMTP id k205mr3731402wma.87.1590692803224; 
 Thu, 28 May 2020 12:06:43 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id p7sm6953516wro.26.2020.05.28.12.06.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 12:06:41 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] spi: bcm2835: Implement shutdown callback
Date: Thu, 28 May 2020 12:06:05 -0700
Message-Id: <20200528190605.24850-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_120644_951995_94256F73 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>,
 "open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make sure we clear the FIFOs, stop the block, disable the clock and
release the DMA channel.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/spi/spi-bcm2835.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 20d8581fdf88..237bd306c268 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -1391,6 +1391,15 @@ static int bcm2835_spi_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static void bcm2835_spi_shutdown(struct platform_device *pdev)
+{
+	int ret;
+
+	ret = bcm2835_spi_remove(pdev);
+	if (ret)
+		dev_err(&pdev->dev, "failed to shutdown\n");
+}
+
 static const struct of_device_id bcm2835_spi_match[] = {
 	{ .compatible = "brcm,bcm2835-spi", },
 	{}
@@ -1404,6 +1413,7 @@ static struct platform_driver bcm2835_spi_driver = {
 	},
 	.probe		= bcm2835_spi_probe,
 	.remove		= bcm2835_spi_remove,
+	.shutdown	= bcm2835_spi_shutdown,
 };
 module_platform_driver(bcm2835_spi_driver);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
