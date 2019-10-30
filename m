Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028BFEA1EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 17:39:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cRfHdRpfYA/0JHjl2l7vQpz/SO3/PrSgZpOsIKIzdb4=; b=Ion/PDeyhn94YQ
	jkDvOU0TcIgMnceA5gu348NnfPFztq+n/prDBy3/2Srb63OWMtzJnZy4NmK49W7i5JG5GsM56aGQz
	/eq8PGcXLMJvH5JHQrfgPGVbDBC1Iz97dpUEJdsCBDxqNcdySu9mSS5JNZiRvS0VGI5U4DhbJ6OhZ
	q3Veb2S9wgXl7WkNg+OE7Dk+uSoZNnuwWLk/mv3PQ+gIaUrE28ZxrpcJ6SweM+t588dhzm/t3OP04
	8ZTw7h2SH1M7Via0Seknq5pTnez2tDjVmpHM+CAjVSV4awXdk1IFVXPHy1kMMhHc6FRfSYL6YUpKw
	y1xN9Ixckr8EFIJwJQhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPr0Y-000731-Q9; Wed, 30 Oct 2019 16:39:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPr0P-00071U-EP
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 16:39:34 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 78A97218AC;
 Wed, 30 Oct 2019 16:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572453571;
 bh=uPpsLnIwswK4MvCgYfMrudAcG0whDitorkLSfI+nb3Q=;
 h=From:To:Cc:Subject:Date:From;
 b=xdkOfd1yvSJdwDk7TNjX9HOowIi2HLFtg17p6P0NFVvETxTk1VqoKCMxbdUwfIY0G
 DZEaIhwLkmobqT0No607KZqrpOI73RtwYdp6hgKBYTEm/tdOwc6pELf22IPS+wmtY1
 dpYphs9pdwMIH6/RoQNz9Eu0TDrTa7y2xV7Z/TMQ=
Received: by wens.tw (Postfix, from userid 1000)
 id 66E5F5FB7D; Thu, 31 Oct 2019 00:39:28 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Markus Mayer <mmayer@broadcom.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>
Subject: [PATCH] thermal: brcmstb: enable hwmon
Date: Thu, 31 Oct 2019 00:38:07 +0800
Message-Id: <20191030163807.17817-1-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_093933_503608_47260929 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chen-Yu Tsai <wens@csie.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

By defaul of-based thermal driver do not have hwmon entries registered.

Do this explicitly so users can use standard hwmon interfaces and tools
to read the temperature.

This is based on similar changes for bcm2835_thermal in commit
d56c19d07e0b ("thermal: bcm2835: enable hwmon explicitly").

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

This patch was only compile tested. A similar patch [1] was submitted to
the downstream kernel, which I did build and actually run on a Raspberry
Pi 4.

This one for mainline is much simpler, as it does not need to deal with
the error path or device removal, due to the use of devres.

 [1] https://github.com/raspberrypi/linux/pull/3307

---
 drivers/thermal/broadcom/brcmstb_thermal.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 5825ac581f56..8353aaa4d624 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -21,6 +21,8 @@
 #include <linux/of_device.h>
 #include <linux/thermal.h>
 
+#include "../thermal_hwmon.h"
+
 #define AVS_TMON_STATUS			0x00
  #define AVS_TMON_STATUS_valid_msk	BIT(11)
  #define AVS_TMON_STATUS_data_msk	GENMASK(10, 1)
@@ -343,6 +345,12 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	/* hwmon not enabled by default. Enable it here. */
+	thermal->tzp->no_hwmon = false;
+	ret = thermal_add_hwmon_sysfs(thermal);
+	if (ret)
+		return ret;
+
 	dev_info(&pdev->dev, "registered AVS TMON of-sensor driver\n");
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
