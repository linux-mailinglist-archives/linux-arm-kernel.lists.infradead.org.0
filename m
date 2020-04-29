Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2AD1BE97D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:04:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8B9nCh7RxlyWaHDIstblJdlnEe2vdyc0tujmzcQdCvs=; b=ZBELiUWkvZn6fA
	0HIXxgiQ4eBH19y3I0psxeCKJkA/U+G6x9c4rVlrgWXvzKfiAImjrZO8EDZxgWVH34VMObO73en5y
	DaG2BpGZ0JZ+sN9FMhmSOCHsSO1QzCbiWLe4OXoVfZRfNv5dKTgqyRqbiOXZZTUSc0ENbVnP7+Cz+
	Ni/Zp01IIJtJiegimYDRmvrcBG0cu+ghFVajU5zrQWo6boOnPZUbSL/+7PMZdLy7B64pp7FOTtrHB
	eLEX65lPGd6ItA8RGeB8MOSl3S24pCAWODZyghLxPFOePuE17ePIAnVwY07pf2EYYBI1novqLEtXd
	+Q7taiz3+8vYKWi0cXng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtru-0002yX-St; Wed, 29 Apr 2020 21:03:46 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtn8-0005L6-Sg
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:54 +0000
Received: by mail-ot1-f65.google.com with SMTP id b13so2992265oti.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pWYvadUHhNmHMbwqybGHGQMT9Gw6sFtWQjTu42eM8C0=;
 b=YjCg3Mxa9cT4j/wBp2of99EWhzXh+/du+NSIJ1AmMQLG6iESKy6ozgSbOnFzGodQTr
 979pkvkxSvLud17k5ElTeexujn/ve4s5ZB8/lPhp7ftTh8rFRj8jrZkL5TORNQm2Apn8
 0sonyikaXtzgj8Vw9ABX7rF94C2iVUs4PY2gY5CdZ2tkygnj61zTAvBD7mg7lUNsTLQD
 WZ9YspQdXvgrc5H4mZnepRndelEoWnw8kHnjyBNKUiPw9RqDCJsGM12ZxCf2IlUERT7F
 5Gc1JeCkJlsFcwmi1o9WjWOUQLLO/lBq8wXMGjSFk4EyxUC574ysqr8oVwVC/G8j2eab
 cxTA==
X-Gm-Message-State: AGi0Puap28b5PSa+2d9ajwjfZmZb25xhnScREt6XdjY4+qt1zWm1Ba7T
 CQ/yNIN5IXAeZkYKgTShAw==
X-Google-Smtp-Source: APiQypIEjHDyKVTXOVc+6IBJv/YMhCsxT0ApwM+suaKheeb6cM9wNc0N3d5PdgsvPksLVNF11I2D6A==
X-Received: by 2002:a9d:1ee7:: with SMTP id n94mr27119542otn.26.1588193929527; 
 Wed, 29 Apr 2020 13:58:49 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:48 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 15/16] bus: vexpress-config: Support building as module
Date: Wed, 29 Apr 2020 15:58:24 -0500
Message-Id: <20200429205825.10604-16-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135851_055764_E1B086A8 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Enable building vexpress-config driver as a module.

Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/bus/Kconfig           |  2 +-
 drivers/bus/vexpress-config.c | 10 ++++------
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/bus/Kconfig b/drivers/bus/Kconfig
index 6d4e4497b59b..c16268c53831 100644
--- a/drivers/bus/Kconfig
+++ b/drivers/bus/Kconfig
@@ -183,7 +183,7 @@ config UNIPHIER_SYSTEM_BUS
 	  needed to use on-board devices connected to UniPhier SoCs.
 
 config VEXPRESS_CONFIG
-	bool "Versatile Express configuration bus"
+	tristate "Versatile Express configuration bus"
 	default y if ARCH_VEXPRESS
 	depends on ARM || ARM64
 	depends on OF
diff --git a/drivers/bus/vexpress-config.c b/drivers/bus/vexpress-config.c
index caa35a4cb34d..a58ac0c8e282 100644
--- a/drivers/bus/vexpress-config.c
+++ b/drivers/bus/vexpress-config.c
@@ -7,6 +7,7 @@
 #include <linux/err.h>
 #include <linux/init.h>
 #include <linux/io.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/of_device.h>
@@ -407,15 +408,12 @@ static const struct platform_device_id vexpress_syscfg_id_table[] = {
 	{ "vexpress-syscfg", },
 	{},
 };
+MODULE_DEVICE_TABLE(platform, vexpress_syscfg_id_table);
 
 static struct platform_driver vexpress_syscfg_driver = {
 	.driver.name = "vexpress-syscfg",
 	.id_table = vexpress_syscfg_id_table,
 	.probe = vexpress_syscfg_probe,
 };
-
-static int __init vexpress_syscfg_init(void)
-{
-	return platform_driver_register(&vexpress_syscfg_driver);
-}
-core_initcall(vexpress_syscfg_init);
+module_platform_driver(vexpress_syscfg_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
