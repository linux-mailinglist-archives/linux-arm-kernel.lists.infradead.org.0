Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C0712239A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 06:23:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1YnTnGr7lW7uw4iVe6Z6VBzjwkZ9EgANUKqqunq9qkw=; b=RJqZT5PifpdV4A
	rz02y3w7K3tg1G4uGZJPKs+5aDVAkF155gaWzxCW1Stlt1zSyPMqb7lTGPY30TygjDNiTUyYD0beV
	8K5pj6i+SzhFGuNspjssWMLJrYRcp56NWlJPWj0cRgjibLpEN8qyrTr5zyS5iKLdbuMlDkd/MEeJz
	UzP1AG8k/nfhTH0xh/l+04lYfKKM3Nfbw1t4fJ/FsQ5ZsBwEX9fltw6zGWfd/3j7mnwjDezX5WBUQ
	QqCaVL2ensUizHOZm9QDIEvb5BXfhwzBLMHqC9Q1gQeKjDpx98SzveCcVXJoyQeWPQYEyT8PI3UmS
	c/qvTthNEcIgCzRVDQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih5Kn-0007CX-5K; Tue, 17 Dec 2019 05:23:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih5Ke-0007Bk-VP; Tue, 17 Dec 2019 05:23:42 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 889B12072B;
 Tue, 17 Dec 2019 05:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576560218;
 bh=gTBRUZTAj08OEJZUmrm/ewxMPRPrawoPjsr3dDQQ800=;
 h=From:To:Cc:Subject:Date:From;
 b=SSPOk5UWGjZTQF6arwuC5jG8hGqYNW46VN3fEW/EXcGphRgBAd8SLL9XMd9oAqlYc
 5Uo82aPrM4+6gfnmxEVTCypMUFrPpQO2lb1/Bg8Sx8DHftePSkav+lA3nXRYLGUSQM
 DUYxQIXqlSuL6dT78rQO6yCxRJfX0bvcZJZmzS50=
Received: by wens.tw (Postfix, from userid 1000)
 id 57AA75FCA8; Tue, 17 Dec 2019 13:23:36 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] thermal: rockchip: enable hwmon
Date: Tue, 17 Dec 2019 13:23:28 +0800
Message-Id: <20191217052328.25633-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_212341_031063_FE16DCA5 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@kernel.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

By default of-based thermal driver do not have hwmon entries registered.

Do this explicitly so users can use standard hwmon interfaces and tools
to read the temperature.

This is based on similar changes for bcm2835_thermal in commit
d56c19d07e0b ("thermal: bcm2835: enable hwmon explicitly").

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/thermal/rockchip_thermal.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 9ed8085bb792..d53ba7dabf16 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -19,6 +19,8 @@
 #include <linux/mfd/syscon.h>
 #include <linux/pinctrl/consumer.h>
 
+#include "thermal_hwmon.h"
+
 /*
  * If the temperature over a period of time High,
  * the resulting TSHUT gave CRU module,let it reset the entire chip,
@@ -1210,7 +1212,11 @@ rockchip_thermal_register_sensor(struct platform_device *pdev,
 		return error;
 	}
 
-	return 0;
+	/* thermal_zone doesn't enable hwmon as default, enable it here */
+	sensor->tzd->tzp->no_hwmon = false;
+	error = thermal_add_hwmon_sysfs(sensor->tzd);
+
+	return error;
 }
 
 /**
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
