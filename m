Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5BD1102D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 17:47:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tWPdocaAx7pSK3w+0wOPyfR9FrABz3gLxheErM22ulo=; b=uWVcqcR4Hjh1is
	wlHE1wBxYD5DFIFE+Rxv35FNQDCb4s1Jrl+7LY/GOmTu3wOBTPxaeh66/k6QsTzfcn+5kcuUl2WJc
	0Riy39SKS4T3oZ1h1FhavsjV08YJbjqwJnVh3W6KetuFKW7YCkoKSHk/FkkwXrydaWtxBBDnLFfIc
	3yUr1GUq+uTEEBM5mKdtHNMyEFeI9+AQLpLno4giPrNG3DyBrvxQdQYxUCl6xoFwEdtkP+j/OQ8EG
	NJCZpwW4Cx4hsjodRPzhWMKT2sL7DHEW4Pgcug8S0ZPxJtaY+gZpq4M22ChLwdMe8DCNHRR9EexM6
	AnUpziQNQfaP2YaPXkiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icBKi-0007r8-GZ; Tue, 03 Dec 2019 16:47:28 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icBKZ-0007qI-EV
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 16:47:22 +0000
X-Originating-IP: 90.76.211.102
Received: from localhost.localdomain (lfbn-1-2154-102.w90-76.abo.wanadoo.fr
 [90.76.211.102]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 83DF21C000F;
 Tue,  3 Dec 2019 16:47:11 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>
Subject: [PATCH] regulator: rk808: Lower log level on optional GPIOs being not
 available
Date: Tue,  3 Dec 2019 17:47:09 +0100
Message-Id: <20191203164709.11127-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_084719_622160_888C35E5 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, u.kleine-koenig@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RK808 can leverage a couple of GPIOs to tweak the ramp rate during DVS
(Dynamic Voltage Scaling). These GPIOs are entirely optional but a
dev_warn() appeared when cleaning this driver to use a more up-to-date
gpiod API. At least reduce the log level to 'info' as it is totally
fine to not populate these GPIO on a hardware design.

This change is trivial but it is worth not polluting the logs during
bringup phase by having real warnings and errors sorted out
correctly.

Fixes: a13eaf02e2d6 ("regulator: rk808: make better use of the gpiod API")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/regulator/rk808-regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 61bd5ef0806c..97c846c19c2f 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -1297,7 +1297,7 @@ static int rk808_regulator_dt_parse_pdata(struct device *dev,
 		}
 
 		if (!pdata->dvs_gpio[i]) {
-			dev_warn(dev, "there is no dvs%d gpio\n", i);
+			dev_info(dev, "there is no dvs%d gpio\n", i);
 			continue;
 		}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
