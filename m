Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5988D12BE27
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 28 Dec 2019 18:19:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LCGk6GkrqwN09WRs5Kjm9uG8elpiPH+4Oy/APA1NpYI=; b=oMr
	znqpEA1Z3yloZc5SSCb/bRpSGd1BHI/WqgosHM6x7xHtx9K2TwoCQBTZ2qEzADFttku3BQQdrvuOU
	IjODk+m85iLqWbqg0NMJrp6sgWmcrlPvmUR6ggabBYfV4WWJtzv/FIkLdt/blKqyRlBSR3PshwAHn
	QIwM75H9XLP8iQQQE9EsrDs1dN3r2jEP7J3wpwgjXRNhm/vMfiYjgrkd5u6b+JgdiGYf6kft44WmR
	sABuQJbY3idGvfR4sEFWbVB691O7mKtNHWEL7q/usfcitQBbljhcsDIje5/pz8cqpAM/WJM+63pLB
	YTL8gIEEOBprnNHmow/hlxKEC9B5wfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilFkF-0004t8-45; Sat, 28 Dec 2019 17:19:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilFk5-0004lM-Ve
 for linux-arm-kernel@lists.infradead.org; Sat, 28 Dec 2019 17:19:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id i23so10840873pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 28 Dec 2019 09:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=FiMHugGI2SCi9C3dDQzjMOwRF2K4ZM/Z5Jm8OBdk0Go=;
 b=RZCly8ji31p7Xt4Hj6EkPS3N/kCphrM6mBe92jJuH4ze8P4XehMlOrBzu4vLwl2DBh
 UxNZorHnafSVoOGoaJZswMeYJxotcXUg9mFaqnTEzvAyCTt5Jy1ioG0Q+pc3xruykGKC
 OhF8CvmVkuf1WuQLPitVKHzCRkJsjnzEeQV6lnW4/Odfy+4Ah2j0HP2Ba14fCPGoy+lo
 dKchkjUWWTOIPjoyq3fzx+dWfHSEOnA5woAORiVCFRslmymAfNVqWz+a1XHew/w8h6Tc
 qgCRwtXKD2JkWQ0g4nY2ve1rCqASylKAr7nlx50y8Q0tqjEk4lu/w5MI+RmIxAkh5sAx
 nP5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=FiMHugGI2SCi9C3dDQzjMOwRF2K4ZM/Z5Jm8OBdk0Go=;
 b=V4Go5TaljcTZhC98+hiWo+Krts6dTbc3QpPDdCVLkT6dRoFOHJPu7kd4+Fr9agraeq
 TCMs4AqZhOweiUIwNNN/jTHRLinhfjIKwk17dPzXibuWzShvR444UX+05ADTErVjSSmv
 ECEQfurr1NS7GmfWz1vcwn7qFrXe9ZQtfBXN9lfLVm+Pndsen9JGc1Bsk1HMQDy+3E6J
 0ZovXuoXSEHc99rwOvRUDmTQJQmcTXzYRyp+q6tmqP06hDpEQLTE9CZCXQmhq2xLTW+3
 NdGcx7H36zezfX7mgbb9Y8NZD2XexaWCZ+CWntku9eISaVe/vJ8Qkmf6JBlacxWkN8AO
 dkrQ==
X-Gm-Message-State: APjAAAUZx2hewAdaQQBMpCTtzz2UABGMURvrh9P8fGUsejvP+pWx4DeP
 +isv6aCFaVWxXeZ5DFhGwtI=
X-Google-Smtp-Source: APXvYqxjy3BTwgLF7BDkuN5JUeHsAIUKWbiir6L5CsL8HKEj3UN2B09QCkFrBemJGGf5KPtSwT2VYw==
X-Received: by 2002:a63:4f59:: with SMTP id p25mr60354435pgl.230.1577553547545; 
 Sat, 28 Dec 2019 09:19:07 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id t65sm45802140pfd.178.2019.12.28.09.19.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 28 Dec 2019 09:19:06 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, mripard@kernel.org, wens@csie.org,
 anarsoul@gmail.com
Subject: [PATCH] thermal: sun8i: Add hwmon support
Date: Sat, 28 Dec 2019 17:19:04 +0000
Message-Id: <20191228171904.24618-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_091910_028393_98B9048C 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Expose sun8i thermal as a HWMON device.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 23a5f4aa4be4..619e75cb41b0 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -20,6 +20,8 @@
 #include <linux/slab.h>
 #include <linux/thermal.h>
 
+#include "thermal_hwmon.h"
+
 #define MAX_SENSOR_NUM	4
 
 #define FT_TEMP_MASK				GENMASK(11, 0)
@@ -477,6 +479,10 @@ static int sun8i_ths_register(struct ths_device *tmdev)
 							     &ths_ops);
 		if (IS_ERR(tmdev->sensor[i].tzd))
 			return PTR_ERR(tmdev->sensor[i].tzd);
+
+		if (devm_thermal_add_hwmon_sysfs(tmdev->sensor[i].tzd))
+			dev_warn(tmdev->dev,
+				 "Failed to add hwmon sysfs attributes\n");
 	}
 
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
