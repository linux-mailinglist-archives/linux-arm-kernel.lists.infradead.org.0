Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52441BE96C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1a/IfMZt9731vz/sMXQ+iFFaaGn1TsniaXVEkLMRgo=; b=Jbg4xGZ4kAdpcD
	WcgDDwapRan4TRVKArWk72fr9Qs+hjkL7D+FX4Sq2/2cDZIVaWnGjzIx3kUm4mTD0k9yj6lnpXwA7
	cp554n4jXdVH/zcsZwlqTXlAYl2bhTy2A47RXfOuIJYxZ0oWs5S9VI/TEGcBpFNkPLjrCDCLqdVJi
	a21dhElci1jRuDgHj3zciyvv0nG+0hQ/+IyJLE8tC1cbDoKewM9V0hjAG65ihQcEVkLrTTkXv4+N6
	0Ed/z2A+xBMn+Icr5/XFquNj5tPk5GUEdbhuSDoB/LPaHM/ZGY/cSWXbEZwEruedCGFQFsK0aZ6p7
	2Ny6gHuAn2QssoFWQFQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtok-000686-5n; Wed, 29 Apr 2020 21:00:30 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtmu-00057Y-Ge
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:37 +0000
Received: by mail-oi1-f194.google.com with SMTP id j16so3116402oih.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D2qb/OvsZeuot/6uM8EwDvWFdbtAPyr2Mv3N5hc2RTw=;
 b=dKj41Liezrypkr59eRjVcysMh7lm21dCy0O/1azB94e5Wq+QoF8T06GMRD8N1wZiml
 4onEwyPoa9ClI7Ehix4MhwpmCJ5Dl0mJ3k1fRZPc8rpMroRdVSajZYade10z6cvB7DWC
 wfzJ/HMrJsWkKdvmj8R2OU3C3RatA3vY6Sn7HxZ1hvZ/1JgJ0OoQPPacZPoxc4AZZXmb
 0m5H1fIs7mfX7ijGdIOWG/mLYx20l8Cq/C1+yyxlpi5iJFiCR4J8c23E01Y0PvKJ9Dbn
 DSqZkJhIy96+dBA2jCyEaMGTancSGrY8m+YKYqHvFCGqPelXCVlshpugVgloL6ZQ3HuU
 By9g==
X-Gm-Message-State: AGi0PuZjml3G27PrUSW/NYOgb/zpTp+0/9nTrFBBq8oVfY/t0ZqEqnXO
 ztI9k7JeY4FivmU2crEKKA==
X-Google-Smtp-Source: APiQypInPg4wr8U7ru0AiPOb2rYYQ+qLy6mnlNZK1mQLdkr/zxHbjhm53Jiw7qfUFFZqUi5e6teEPA==
X-Received: by 2002:aca:b382:: with SMTP id c124mr140690oif.64.1588193915509; 
 Wed, 29 Apr 2020 13:58:35 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:34 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 05/16] clk: versatile: Only enable SP810 on 32-bit by
 default
Date: Wed, 29 Apr 2020 15:58:14 -0500
Message-Id: <20200429205825.10604-6-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135836_571907_B0ABEB7F 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While 64-bit Arm reference platforms have SP810 for clocks for SP804
timers, they are not needed since the arch timers are used instead.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/clk/versatile/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
index df0d50bb846c..a47dd6c86d2e 100644
--- a/drivers/clk/versatile/Kconfig
+++ b/drivers/clk/versatile/Kconfig
@@ -17,7 +17,7 @@ config ICST
 
 config CLK_SP810
 	bool "Clock driver for ARM SP810 System Controller"
-	default y if ARCH_VEXPRESS
+	default y if (ARCH_VEXPRESS && ARM)
 	---help---
 	  Supports clock muxing (REFCLK/TIMCLK to TIMERCLKEN0-3) capabilities
 	  of the ARM SP810 System Controller cell.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
