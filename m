Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A74B095C5D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 12:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4yyUSden74RtIWpZbhHNbWGv4cRPCwpWM6zp4S77L/I=; b=jfXU24g0iMxEFE
	YGRWbH8mrQOulHtWsRSVFUqcH/20eQbYCrM/QXm7SNlktrXNKm/TjI2YtyPjcaf7IxxDjyUXGHxec
	T5NrjDbyF4KcIa5/JAhgg7Ec3F0tn42gqp0cwSs4fFO7/Htcd1fWh9snM90rF/pcaruyP44D+b/xN
	Bb4p0rumTbrQrdyKacWMZLJOmQ3vWTCokA/2gZZi8vWLh4nCHtmiOA+mGKYAkF64J3wRvRLR9F42b
	DRk9dDuWAJRb3/PwH2lytDC00vjSn9edLvaF3Kh8/E3TwzD/Lfmhhj9Fl7nSbiQ0h8l8RxtW9clNo
	Y8UYQpFv7gEvrlE2ZAdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i01VR-0005w8-I6; Tue, 20 Aug 2019 10:36:49 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i01VD-0005vj-K8
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 10:36:36 +0000
Received: by mail-lj1-x243.google.com with SMTP id t14so4642172lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 03:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9BhRNloGM9rGtdVzF7Ok31PjYXsvAmFykARPZ+eezjQ=;
 b=tonv3EUDh+kJSv2oOcIl8zcZ9UQMZmJ3H3GPzvgmJNjWN3Y7mx79KfSciCYaIWf4Y9
 5c6Zt44ax8flfdgm6Gp6ZRRIa3uOmlYOWr9IXay08Amtw8qp4t+PNBf5m2teaCd9EJnS
 R/aMAsxnTd4XFUU/6QTij9sD9aMizzALW+kdr0gk5dihM5pZ+7y93ZmDU4VQokB0kQDT
 qtJr/CCVIsM1WAfbcTyfHUYzGPN78suFna3D5Z0QFitGXic2Xr6tWzu62D2QtMdx5O7d
 DbipItMmUBFfWMJAOGE5it+cLX11oESecEc4WvdWUakxb4LQX8cOuWbl8KlUG8A+zHO9
 oadQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9BhRNloGM9rGtdVzF7Ok31PjYXsvAmFykARPZ+eezjQ=;
 b=jl+q3bwIQhTpPwbZa1EGdkxBw3QsX2jA1ZwavGZ9LtGtcJVb5DQtyklIXsBIJjnrSB
 hNfdbSQrFBKseZzdH7EeWKc4Pnrbky2QdJUBRlARqZdaHkYzdLcaPNLbkacX2z/7o73c
 IPqebGfYJ+kBm20YHZ1lg8f9CTF/e2TriszmNc8DIsfoO9q7XYBWge4PjyccyrOt1RPt
 Ey7t/Wle/m661/57VMNj/GFucYVDy9z4Rbfhke1yMVwWvNSRlvo26Qsy1EpRSTrLbUYt
 SYyR1DwNhbRTMewD5lqClFsCvGhEXpAcys1c/wqDbjEwaWV9bXmI8J1JDaEEnz93JrVl
 5Bww==
X-Gm-Message-State: APjAAAX2UgMjhF4ylMmxUosbP8U0wh8jgO0zMk+TVxedlInD0BjHAq5/
 q8uwDl1Y8uJ57nTb5MG3OcSfAtYPkZCeSg==
X-Google-Smtp-Source: APXvYqzxji2YO722uMpImeHo2rTM+7qtDLRCTcXaBaN4GbJC453K29vrFef033gttkfRuo3Nc5GFIA==
X-Received: by 2002:a2e:65ca:: with SMTP id e71mr15363428ljf.61.1566297393668; 
 Tue, 20 Aug 2019 03:36:33 -0700 (PDT)
Received: from localhost.localdomain
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id q25sm2773658ljg.30.2019.08.20.03.36.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 03:36:32 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: scoop: Use the right include
Date: Tue, 20 Aug 2019 12:34:29 +0200
Message-Id: <20190820103429.7028-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_033635_665176_849CDB23 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Richard Purdie <rpurdie@rpsys.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a GPIO driver so it should include
<linux/gpio/driver.h> not <linux/gpio.h>

Cc: Richard Purdie <rpurdie@rpsys.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly for v5.4 if
OK.
---
 arch/arm/common/scoop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/common/scoop.c b/arch/arm/common/scoop.c
index 60130bd7b182..6edb961bd6c1 100644
--- a/arch/arm/common/scoop.c
+++ b/arch/arm/common/scoop.c
@@ -8,7 +8,7 @@
  */
 
 #include <linux/device.h>
-#include <linux/gpio.h>
+#include <linux/gpio/driver.h>
 #include <linux/string.h>
 #include <linux/slab.h>
 #include <linux/platform_device.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
