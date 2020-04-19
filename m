Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 901761AFC78
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:09:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UM+JBp0UGEPm+F4G/YF8mfaLJ9Kv0qHvBIjZqUzBwL8=; b=jxVwpAcPGW6ffV
	AG5OVG78MY5qTqe5hleByS0xKgXk0PYJdjB2q09EsnWYyllm2GHupoIYP12iI+1mv6PZz+7tbhGmv
	kw6PkkidjagbSK2WkHzjj5yrKI864ge4yQjEc4LJJhGPF3xBXJwgtw+2m6hwcL/3tZaQ+7gROtl3d
	QxSi36ci6Ymd11QEJDl1glPCmzFsNqp0CI6DukpjcHu6bk5BUyyG7eZ+OwaYigqItkGgMZL1sl7gf
	DpK+9l/r/LElCamM+Eqdlpso2NZRV5zgljSbsjMNSyr+KuLABzimoQNqDTubRaGgiHgpUzSOKUMZE
	eCtjs+VAr2QwajDDEtEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDS2-0002mc-F3; Sun, 19 Apr 2020 17:09:50 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQZ-0001io-O7
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:21 +0000
Received: by mail-oi1-f196.google.com with SMTP id r25so6772184oij.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rkm1yVQrueouMlMynX/IUSbPHuMCnuzEP4ZMzc2uSk4=;
 b=GrMKezMh7dB9qqzFyOQWmYNYOcGamgawBnjbv0RgL6RrsEvRVBQdK2CqVWWbwXuQ2M
 kHvJHBkYz+qr86+kmUEGd9nwmqrlDfnsCmmooIZgzFiRnsgMokNkQIFQuY/6rXZDVfLI
 4yLddef/TqA4DfXe1Gjru1uCy/72wr45YrhZkrGq1undjm6JK7vNud2gWEDf6dNSdLRh
 9Ce8CsH6gFkV0yLvKYDD8h887+AJGCT0Ph5G1xTNoEr1EDDwBV2VwFUkHwwe7VnSNPqE
 3INw0L5YM9+DI1h27C4M4oxG+aqwKHdEnoyOe4FNArUqeqKnCRVL45/R7KSL2KUwlSis
 77dA==
X-Gm-Message-State: AGi0PuZ8o9QDweChcKCbDuRoTtZRVI6U+xf8Oz0ALVTyVPUUyu63pS7p
 dsAA4oNFoTFZKpex944cnw==
X-Google-Smtp-Source: APiQypLVQEjKhtfaW8eTl7YjGxsB7Qz3p8JXmiFRCoXKab90R013s1nz5LZs7Fjm2ta59f95TNmGeQ==
X-Received: by 2002:aca:f254:: with SMTP id q81mr8228410oih.12.1587316098741; 
 Sun, 19 Apr 2020 10:08:18 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:18 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 04/17] power/reset: vexpress: Support building as a module
Date: Sun, 19 Apr 2020 12:07:57 -0500
Message-Id: <20200419170810.5738-5-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100819_801889_2A2D97DE 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
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

Enable building the VExpress power-off/reset driver as a module.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Sebastian Reichel <sre@kernel.org>
Cc: linux-pm@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/power/reset/Kconfig             |  2 +-
 drivers/power/reset/vexpress-poweroff.c | 10 ++++------
 2 files changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/power/reset/Kconfig b/drivers/power/reset/Kconfig
index 890380302080..0ba18221ba40 100644
--- a/drivers/power/reset/Kconfig
+++ b/drivers/power/reset/Kconfig
@@ -182,7 +182,7 @@ config POWER_RESET_VERSATILE
 	  reference boards.
 
 config POWER_RESET_VEXPRESS
-	bool "ARM Versatile Express power-off and reset driver"
+	tristate "ARM Versatile Express power-off and reset driver"
 	depends on ARM || ARM64
 	depends on VEXPRESS_CONFIG
 	help
diff --git a/drivers/power/reset/vexpress-poweroff.c b/drivers/power/reset/vexpress-poweroff.c
index 90cbaa8341e3..8a6d3add894c 100644
--- a/drivers/power/reset/vexpress-poweroff.c
+++ b/drivers/power/reset/vexpress-poweroff.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/delay.h>
+#include <linux/module.h>
 #include <linux/notifier.h>
 #include <linux/of.h>
 #include <linux/of_device.h>
@@ -87,6 +88,7 @@ static const struct of_device_id vexpress_reset_of_match[] = {
 	},
 	{}
 };
+MODULE_DEVICE_TABLE(of, vexpress_reset_of_match);
 
 static int _vexpress_register_restart_handler(struct device *dev)
 {
@@ -145,9 +147,5 @@ static struct platform_driver vexpress_reset_driver = {
 		.of_match_table = vexpress_reset_of_match,
 	},
 };
-
-static int __init vexpress_reset_init(void)
-{
-	return platform_driver_register(&vexpress_reset_driver);
-}
-device_initcall(vexpress_reset_init);
+module_platform_driver(vexpress_reset_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
