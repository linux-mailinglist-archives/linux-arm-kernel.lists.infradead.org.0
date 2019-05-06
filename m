Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E3A14478
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 08:32:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2qa92e8VxzOHi3ldTtLDQVnLCzK8cR8g8z5CbVadqAY=; b=E46FLDETisnj7S
	Dl/khoVEUNgzCOY+XSpbPg5+D28ErjSWcIGgH9xHskjEopsXbCVdIyDU35jzjFudCN9Wkc2pg/NuV
	oQ1JnORP3hxI+jsbsSsRBQeeFXkyDN13DxcfBbIKgEnDKOQ+OPeTXZJbjDXhRWopUzUbyv0zOICCG
	rEmVBWNqvyjw8XnT8wKKm/m7KsgQMvsl6e5DgLO008OClkjA3rR8q66zK+AaIhVNNHQF2r9Ou5Mfn
	WmYaKLC6tscRntHioNhjjw294tnJ5VdHBRLN2M88YsmlEwvG9cAzpxr/B6z85OVwl4UViagylAQlS
	XM/0Bp9adsb31Sjwejow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNXBB-0006Rb-VM; Mon, 06 May 2019 06:32:49 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNXAo-00063B-9D
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 06:32:30 +0000
Received: by mail-lj1-x242.google.com with SMTP id y8so9811777ljd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 May 2019 23:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0lYTAypefTsA6rgiOiqp/fhl6G3yqAOw0WmKA8YqlOE=;
 b=sd7tK4e74xLXTemy/2DtHZLihMR1DRBgPfzOYEzr2SPR+3Z4gC4xabBlJ5QLI6p7vp
 VZPyKuf4qdcBWV+CMO19D0QjWADlp4HEPEL/5fgIjtjD1oUt6EmS7WnzkYIDH9R7uMwa
 Pz4dJSueFaInMc9ZVIql1yg8P63z2nAf5AEy1YBpsTgXwaawCl9J+pNWdcEkUeGgXRUY
 bdMorbL5lpj07yjdmt7R3uys4asuLLxVaP3gWsRocgLXpbuMz4UtcvZCsx012JjUoRg0
 Vjcb1HN5gHlOUnGfp4XXWcO+CaLQzCVAAEyL242ThsN15OGQ/cfkJLbQoLSBILTXZ99w
 +WKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0lYTAypefTsA6rgiOiqp/fhl6G3yqAOw0WmKA8YqlOE=;
 b=hNKu5s8TxK0EkPtAafeLmT3AvIfQHa6LWAGWETBnLVQ3RjYXqWaPEC1idrrzSD5FTq
 el3ndhi6RXq2SfYpWJmcaI0BUnNAWaANLbISuFJFh2P4KinlOcRhmm0H6729arf1qHGQ
 wZW1ADt6Ybq0+/FqS7nhIt/YvjD1fJERuTin1noSA4a4SGlnRlzWwUr0xz2oy2kNw4ES
 yFWW3z9zDCOOigTav0TY+Ef9pbOKxAnCFcZ6VwHYIh30tDNz2dz973UKcQ2GIOECdx3w
 0o9yts+9bCr0mP/KzyW1rUsx1ARrLCW41DvY/OywMd5m5175SubfsIG+3yJyffpUrz7t
 6zrA==
X-Gm-Message-State: APjAAAX48TVzI5KZGcaXaRj2fV+GZMnXJehniIgS8rt8I6vomZl/kVkd
 n+IVhIn1SLFylW48hXHvLFsjDo0PcYw=
X-Google-Smtp-Source: APXvYqyoKyx792P0Ujo4dqL7k75FoVhzvzi7h6T2Qil+MOCz+DkulVB3VbU3c1Py+/mso8JGfofbFg==
X-Received: by 2002:a2e:858b:: with SMTP id b11mr12092637lji.176.1557124344428; 
 Sun, 05 May 2019 23:32:24 -0700 (PDT)
Received: from linux.local (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se.
 [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id j19sm2122866lfm.29.2019.05.05.23.32.23
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 05 May 2019 23:32:23 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org
Subject: [PATCH 3/3] ARM: ixp4xx: Remove duplicated include from common.c
Date: Mon,  6 May 2019 08:31:09 +0200
Message-Id: <20190506063109.3072-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190506063109.3072-1-linus.walleij@linaro.org>
References: <20190506063109.3072-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_233226_797499_0A2CC37A 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 YueHaibing <yuehaibing@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: YueHaibing <yuehaibing@huawei.com>

Remove duplicated include.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly on the IXP4xx
branch where the IXP4xx rework is pending for v5.2.
---
 arch/arm/mach-ixp4xx/common.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-ixp4xx/common.c b/arch/arm/mach-ixp4xx/common.c
index cc5f15679d29..381f452de28d 100644
--- a/arch/arm/mach-ixp4xx/common.c
+++ b/arch/arm/mach-ixp4xx/common.c
@@ -27,7 +27,6 @@
 #include <linux/cpu.h>
 #include <linux/pci.h>
 #include <linux/sched_clock.h>
-#include <linux/bitops.h>
 #include <linux/irqchip/irq-ixp4xx.h>
 #include <linux/platform_data/timer-ixp4xx.h>
 #include <mach/udc.h>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
