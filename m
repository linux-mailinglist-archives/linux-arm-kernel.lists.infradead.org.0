Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E8EB0581
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 00:19:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0n+bM4Z5Gk8pDr9VPC3MNyQcLD80i/yL86hmehz/eIs=; b=GKwIUBaeKbtmoocHGjhDIjsCGf
	JrEc9nbXBhnY0IpRCmfScKk08qjD3cD03/hY9B3h640G0S7/QjMOw+sAJPiDDfIt+yozI9xJZpGUj
	xtktVs9R3as+yL/uK2wN3hWasAMOuJvx1AParKCjZRokX4eECV+HYl42wl49rZG9+B83o45ErjYfb
	jpQvidOereuqZy9p4VuVkyyfsJQVa8oO9FNW6Wz0vk5j4fPYynPhsibF0L0ylwCcUAU1OF1OU9/a3
	iXSF8z3Gmzft9KQdVT4hQJ99G5XjWydLW76YtNjGomIZxlGpobsS0iua+ETQEJFMgHqS9X6R+6k+4
	hM5ukVUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Axn-0008UW-VP; Wed, 11 Sep 2019 22:19:48 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Ax4-00084q-Oy
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 22:19:06 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so14594777pfl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 15:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=6COMbNYiBAH3DK2IekDUzK6LyWxPCeshYdSnc/L9JbE=;
 b=MKCb5mvqx7vPVDdvPX6sQfysgXJv0ZZJl6EQ2OfyWJs4KKhQeIz+B5sY8CGkAWe3mr
 WLLmqjsA62JkEmSYcKh9IBNCO5nQso0zq79qJrBlQAJmaW0S5IAnKvrcnzq40sGoS9fj
 Thwp/O6v/DqgKe76f6Z/ADzXrx88+AIR8oKZ3M8cWyMWwh6Q2LF85onrjItleYz8UGWh
 h4lTXaIxEHBMSA9jLY5z/8YCeJ409s0es7VB4Usz3wWUBWqFHOR069KpMZN42JNP1vuj
 C09KT4kazMZogjTUByrzFV8gjkhdl2Cy95jtqmoC4mm48r0qtR/TblXm8+DreAIqVFUq
 4nFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=6COMbNYiBAH3DK2IekDUzK6LyWxPCeshYdSnc/L9JbE=;
 b=fnkdE/QNdP5ILAaYauSfGBS1gkjhj44UKRWzfaoPQo+1clyf48q5oYDGAXl9DA3fOM
 vNdBIWgfgWJJgwRU6fVQLPt7qsHX1tsQVU5gsP7ha8zS2xuCtpOJE6X0CYXwsfFIDUmD
 kHfxefmmGiC3clGIXhLrjlX4xEqltaWaFVrkIq3nhV8u2Q+I/n0F3czgMYxItvCj2sdB
 v/IRcrOx7j7mWWo3KoHgy+AV6ApEv6xwDm0lCwcAjT1MOhnRFNVxOAnSc5Naix/y8De0
 10LrFAs/5jA9WSUk/YPsrLr6HbopWqPkmQCuJT/JVT86gpQAm5Y+5RpG03SieVsywW6a
 0DRA==
X-Gm-Message-State: APjAAAXWHC5APZJwuygMx+UdEY5UaiqCKttX1r/2dPyigHf0EXraMaYi
 3JKmliFZHaqPQMd+OKEBF0hUYw==
X-Google-Smtp-Source: APXvYqz+YhEdUNHVYAJHHVB+HxkousclqJcLJHmh0ogARlkU8Fktq7uSORReGl5PSbO3udOKXbq3uQ==
X-Received: by 2002:a65:6102:: with SMTP id z2mr34643771pgu.391.1568240341618; 
 Wed, 11 Sep 2019 15:19:01 -0700 (PDT)
Received: from localhost ([49.248.179.160])
 by smtp.gmail.com with ESMTPSA id i194sm4085709pgc.0.2019.09.11.15.19.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Sep 2019 15:19:01 -0700 (PDT)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 arm@kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Sebastian Reichel <sre@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 2/4] arm64: Kconfig: Fix BRCMSTB driver dependencies
Date: Thu, 12 Sep 2019 03:48:46 +0530
Message-Id: <21b9dd0bf0bbc80b69bc81a7efb88243e4981c56.1568239378.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
In-Reply-To: <cover.1568239378.git.amit.kucheria@linaro.org>
References: <cover.1568239378.git.amit.kucheria@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_151902_882901_94F87DE9 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Push various BRCMSTB drivers behind ARCH_BRCMSTB dependency so that it
doesn't get enabled by default on other platforms.

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 drivers/bus/Kconfig         | 1 +
 drivers/power/reset/Kconfig | 1 +
 drivers/soc/bcm/Kconfig     | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 1851112ccc29..d80e8d70bf10 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -22,6 +22,7 @@ config ARM_CCI400_PORT_CTRL
 
 config BRCMSTB_GISB_ARB
 	bool "Broadcom STB GISB bus arbiter"
+	depends on ARCH_BRCMSTB
 	depends on ARM || ARM64 || MIPS
 	default ARCH_BRCMSTB || BMIPS_GENERIC
 	help
diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 651b763f80cd..6f0b1ed1a05a 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -59,6 +59,7 @@ config POWER_RESET_BRCMKONA
 
 config POWER_RESET_BRCMSTB
 	bool "Broadcom STB reset driver"
+	depends on ARCH_BRCMSTB
 	depends on ARM || ARM64 || MIPS || COMPILE_TEST
 	depends on MFD_SYSCON
 	default ARCH_BRCMSTB || BMIPS_GENERIC
diff --git a/drivers/soc/bcm/Kconfig b/drivers/soc/bcm/Kconfig
index 648e32693b7e..5a8ff33241ae 100644
--- a/drivers/soc/bcm/Kconfig
+++ b/drivers/soc/bcm/Kconfig
@@ -24,6 +24,7 @@ config RASPBERRYPI_POWER
 
 config SOC_BRCMSTB
 	bool "Broadcom STB SoC drivers"
+	depends on ARCH_BRCMSTB
 	depends on ARM || ARM64 || BMIPS_GENERIC || COMPILE_TEST
 	select SOC_BUS
 	help
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
