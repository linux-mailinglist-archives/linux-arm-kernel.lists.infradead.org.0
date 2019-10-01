Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7013DC2DF5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 09:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RBDiMPnRYQ0aMpIW+hdKew4efLJiWzD913yZROs1GaU=; b=ua7ZWdErrU0Sq8
	IF73WkRKdm+9DN5nWvjZcLyhdMLhojhtSOdfWZKlgVD6zLgmrQRM0876y6W4lmOpGXlKW06gYWZjp
	pKLKbSWyJV+G65qyC8TityUyzI1nMNOLAck4baqwkp8GGy9FIgYOeJgjZLi05+scYWUeAS79aTHCE
	gvQWqufWdq/NMxzw9wh+BCsqkKmptD1mkw+AORHWtoG0yZt3p9DZtZUA4hvK7EkYRf0IhT9c3K62T
	zmU+rIit627jcWVNg7QvbQ063iSyiT3OpZnMkdwa/faxNDoWt1er6aX1/khsk15Lws1RQ5R5MN2VM
	+xWYppuy7BFSvfv6n6Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCrt-0006Y6-6s; Tue, 01 Oct 2019 07:46:45 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCrk-0006XZ-Rc
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 07:46:38 +0000
Received: by mail-lf1-x144.google.com with SMTP id c195so9072568lfg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 01 Oct 2019 00:46:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AYtH0xezdvSLQsvmbQlwGdY8Ss7r3P92OZJMWwKpMig=;
 b=CBrA0omiFTOt/gX7fjGyBw9VQ6DsWQIDeVDEps0yaz3WRR1hlDOmmSmLJGmLm6zY8t
 zNvRgFDFPE7GwwvI6UfIjpDKzdG7Zxj1P269T93UGMQZtfWR0ox6cZ4XGs6cv6EoI8hC
 BrNYXFKwRiZ5qi7kZzr3hXr6re7/ISPO1n6pOfyBncN4slJ6MjI4ICLFoallAo//O/eN
 KkEIu7W6rb1P1LGdZZDKMnBC2jeAkco7LUD3WTXjSIqpG6gz2S5HzYc4NGlSOVHh/X1a
 9FkAJQ3JlirjOaSGIY+pJ9d+d+EHqPGbUp/3Gi4qxOIpLD+SnSSV/ks8NCnllTlRlaUy
 oJiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AYtH0xezdvSLQsvmbQlwGdY8Ss7r3P92OZJMWwKpMig=;
 b=KQHXqmDkOPBH9fknwRq2pHJUeUA7L8Om8xDa8hPzjOLZtax8uMxBDKvpeXpUBYqkKR
 wH/ATTgzFL6FI3tFGXyuAyliYu/hQw7HgZ73jJ7r3zCsMlj0ZYKfWilHfFDnySihKKs9
 exo+ABNhxHDp1z29Z3un7It0U8jejUKMCy2swqJoMhZkCwl//yTtQ+HHY2eBDbhRLde0
 0mHUADytX7iOhxYYDbz7dbXQZDt6rNH3kADE5VliKUgyWR/zC7RWoRp7QbU0SZnwlGU2
 LA92FRuxjj2pQSaDw4G7NjcZzY/RyUtWGHMNlVOum8ZWymTmBKYgQ3HK9uz8Kx1uxTLT
 WAbw==
X-Gm-Message-State: APjAAAXMN7qiWstjF1sXGWgGQuhuuWEIHT7eqAk9vU4IANCuRYHgtQrY
 Svu0DAY87u4X4DWYl01wZebFpQ==
X-Google-Smtp-Source: APXvYqxb4sV+jLEHlaGLxwpPHGHGYJJ0secMQtUjZKLD+OFZ4lXqXMrfT+KViUCDHXNeg30Xt71lsQ==
X-Received: by 2002:ac2:4289:: with SMTP id m9mr12776443lfh.139.1569915993271; 
 Tue, 01 Oct 2019 00:46:33 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id 6sm3590592lfa.24.2019.10.01.00.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Oct 2019 00:46:32 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: arm@kernel.org,
	soc@kernel.org
Subject: [PATCH] ARM: dts: ux500: Fix up the CPU thermal zone
Date: Tue,  1 Oct 2019 09:46:28 +0200
Message-Id: <20191001074628.8122-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_004636_920674_5DEA9859 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This fixes up the default ux500 CPU thermal zone:

- Set polling delay to 0 and explain why
- Set passive polling delay to 250
- Remove restrictions from the CPU cooling device,
  we should use all cpufreq steps to cool down if
  needed.

Fixes: b786a05f6ce4 ("ARM: dts: ux500: Update thermal zone")
Suggested-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ARM SoC folks: please apply this directly for fixes.
It addresses some review comments I missed in the patches
that went in to the merge window.
---
 arch/arm/boot/dts/ste-dbx5x0.dtsi | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/ste-dbx5x0.dtsi b/arch/arm/boot/dts/ste-dbx5x0.dtsi
index a53657b83288..bda454d12150 100644
--- a/arch/arm/boot/dts/ste-dbx5x0.dtsi
+++ b/arch/arm/boot/dts/ste-dbx5x0.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/mfd/dbx500-prcmu.h>
 #include <dt-bindings/arm/ux500_pm_domains.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	#address-cells = <1>;
@@ -59,8 +60,12 @@
 		 * cooling.
 		 */
 		cpu_thermal: cpu-thermal {
-			polling-delay-passive = <0>;
-			polling-delay = <1000>;
+			polling-delay-passive = <250>;
+			/*
+			 * This sensor fires interrupts to update the thermal
+			 * zone, so no polling is needed.
+			 */
+			polling-delay = <0>;
 
 			thermal-sensors = <&thermal>;
 
@@ -79,7 +84,7 @@
 
 			cooling-maps {
 				trip = <&cpu_alert>;
-				cooling-device = <&CPU0 0 2>;
+				cooling-device = <&CPU0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
 				contribution = <100>;
 			};
 		};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
