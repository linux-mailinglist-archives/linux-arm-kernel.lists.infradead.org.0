Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA936122BE6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 13:39:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=DTItuYiLrbvSlXk+H30nqzMZ/GOzL4bbRz+8zhigVyA=; b=puG
	WgROLc3ZMoaqBNYOFIFM0RFfxbxwXcuPLeKijCm0YzYN3uKOoicRAZe6oqvTXDzz04Gb9L/7seZOk
	4Gx3AJD7wc+GZ8oNeeAKeUwqN81bYgVs5O79bXP1PXh2AQnr6Re/NixuFR06fLW8cwkUOFBiwmdB1
	/lviURdp8yrGg6mPc0oNjvU81zEZpH2om3mJyCbavchHP3w8LZU15arVw31yXSZTItOjnze+hVltS
	VcwX/XPXk+1fDRupfzsgh9Z9sfhsCVld2cicimkX2eIwyoeKyVgs0GJVfHNA1Z6iGhDsJLpw7+7EF
	e9AkOqU5sWI56RVwRs8Axi05cUGKZ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihC8e-0001Zn-OZ; Tue, 17 Dec 2019 12:39:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihC8W-0001ZK-PX; Tue, 17 Dec 2019 12:39:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9169431B;
 Tue, 17 Dec 2019 04:39:35 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 11FBF3F718;
 Tue, 17 Dec 2019 04:39:34 -0800 (PST)
Date: Tue, 17 Dec 2019 12:39:33 +0000
From: Mark Brown <broonie@kernel.org>
To: Jim Quinlan <james.quinlan@broadcom.com>
Subject: Applied "spi: bcm2835: no dev_err() on clk_get() -EPROBE_DEFER" to
 the spi tree
In-Reply-To: <20191216230802.45715-2-jquinlan@broadcom.com>
Message-Id: <applied-20191216230802.45715-2-jquinlan@broadcom.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_043936_873015_A77B68F2 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <scott.branden@broadcom.com>, linux-kernel@vger.kernel.org,
 Ray Jui <ray.jui@broadcom.com>, linux-spi@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Jim Quinlan <jquinlan@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: bcm2835: no dev_err() on clk_get() -EPROBE_DEFER

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.6

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From f4dc4abdce4cc290555604107c04854a911b9441 Mon Sep 17 00:00:00 2001
From: Jim Quinlan <james.quinlan@broadcom.com>
Date: Mon, 16 Dec 2019 18:08:02 -0500
Subject: [PATCH] spi: bcm2835: no dev_err() on clk_get() -EPROBE_DEFER

Use dev_dbg() on -EPROBE_DEFER and dev_err() on all
other errors.

Signed-off-by: Jim Quinlan <jquinlan@broadcom.com>
Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Link: https://lore.kernel.org/r/20191216230802.45715-2-jquinlan@broadcom.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm2835.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 69df79914504..b784c9fdf9ec 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -1317,7 +1317,10 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 	bs->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(bs->clk)) {
 		err = PTR_ERR(bs->clk);
-		dev_err(&pdev->dev, "could not get clk: %d\n", err);
+		if (err == -EPROBE_DEFER)
+			dev_dbg(&pdev->dev, "could not get clk: %d\n", err);
+		else
+			dev_err(&pdev->dev, "could not get clk: %d\n", err);
 		goto out_controller_put;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
