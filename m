Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6604834F12
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 19:37:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VW6Wvl4L7GtzMFnX2pU49sdROWh+v7/NsIi5RFHIQgk=; b=iB/QEEharimTVz
	70rAmXB2MZX+r+rNVjItC62ZgmsgyJ4tVWCEN0bJy+CX1vtUBXVg9bh9GrKFqfjBRae2peSSeNZ2Y
	LS7+fnLfMOSePWcW3p0JggcdkgLXe1DGUIp7sgXJqbxx5gFBVPJKKgzV80gXmh/f61G4HAYaQRMDc
	0YfA3LY3QL2hyGSbbSJ/YgubBYG7DizcR6XsHnB/k+kFJSSnYOzSG4vex4kBzMqc8uL2A5Yl3ooAl
	Ox1akkwB6YlpVzFtYYbzzdWoxvfv+Dvq40TQQIfm0zLx5nP+P+2gvs99SNV0YcLW7fLD30CLpLQM2
	qpqzwDMz90vO7nDihbpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYDMz-00050R-5E; Tue, 04 Jun 2019 17:37:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYDMm-0004sY-47; Tue, 04 Jun 2019 17:36:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C4F50AE03;
 Tue,  4 Jun 2019 17:36:54 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Eric Anholt <eric@anholt.net>
Subject: [PATCH 3/4] clk: bcm2835: register Raspberry Pi's firmware clk device
Date: Tue,  4 Jun 2019 19:32:23 +0200
Message-Id: <20190604173223.4229-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604173223.4229-1-nsaenzjulienne@suse.de>
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_103656_835360_14B38479 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, ptesarik@suse.com, sboyd@kernel.org,
 viresh.kumar@linaro.org, mturquette@baylibre.com, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Registers clk-raspberrypi as a platform device as part of the driver's
probe sequence.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/clk/bcm/clk-bcm2835.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index ccb0319fc2e9..6f370e6bafed 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -2098,6 +2098,7 @@ static int bcm2835_mark_sdc_parent_critical(struct clk *sdc)
 
 static int bcm2835_clk_probe(struct platform_device *pdev)
 {
+	struct platform_device *rpi_fw_clk;
 	struct device *dev = &pdev->dev;
 	struct clk_hw **hws;
 	struct bcm2835_cprman *cprman;
@@ -2150,8 +2151,18 @@ static int bcm2835_clk_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	return of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
-				      &cprman->onecell);
+	ret = of_clk_add_hw_provider(dev->of_node, of_clk_hw_onecell_get,
+				     &cprman->onecell);
+	if (ret)
+		return ret;
+
+	rpi_fw_clk = platform_device_register_data(NULL, "raspberrypi-clk", -1,
+						   NULL, 0);
+	ret = PTR_ERR_OR_ZERO(rpi_fw_clk);
+	if (ret)
+		dev_err(dev, "Failed to create platform device, %d\n", ret);
+
+	return ret;
 }
 
 static const struct of_device_id bcm2835_clk_of_match[] = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
