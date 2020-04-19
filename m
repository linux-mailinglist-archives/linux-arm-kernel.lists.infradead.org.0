Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAC61AFC87
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:12:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlZ+Qq6GpcBE+IFuCJwOiuh/vj4DBH3LLqZN6sX0PQE=; b=cYXtcj4G6M3xw6
	zopZFXSkwW0kIQK53xLi2DB2nDRIxHiz2XaZir5lnH+aN6GSXcOPPFoC6SfqpByQKx5PPpC7Q/TR5
	85l+UXMLEiSbxXlWtnKVBVFIZIu8epmyeCeEb5z2daLkH50eaRrUfNzyBdjukfyRWjd68YTUGhKjl
	Mhebs8IIugeY3nWMwWSjS7scTELYw0dx1HWP/8U+7w1tZE2ZK3cy6LqBUYoRV9zgZFcYYqwURgHYM
	1h7LYXE9Do3dkuv46pE7sseFV7X2ohad4ZsVLRbJb4tl0F/5ip3dqvbMxpzI4fY6sFVMOtChRWATc
	oQAXjelA13IvKzPkqmGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDUS-0007Bm-PJ; Sun, 19 Apr 2020 17:12:20 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQk-0001sp-NQ
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:32 +0000
Received: by mail-ot1-f67.google.com with SMTP id j26so5981012ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3HyKpPbcRN4znVuAjhoeE+CSQVXiKwEz8DNz5m29rBI=;
 b=aykg1HWNzXq0Gi+2dy+qmu7Qcnve8gfdxAKbeJbpGMRprTS//9ow02qM31dWZ2eNgp
 j6nQZYcETPJQ8sSUFVoaR9FTgszBp+iQsAuLRHjKzPv1KvlTqR6TxZ9wuxIrhqnGBQ6i
 mpl1OgUQzCqE/L4jcqjwzfsscQ8d5awhYkDX+IHsblPcEq3roEJI4VNXFfV2rib4VrVq
 +dIJF76jBGO0MQAeHtb7Sam7lZob5Kw5fpjv/yv2Nm6ftXPqxsfSfAzTm13RGeXHyNwb
 GVOtMHBP+icUl1lYlJQM0iowAKxA79FWATvkBG984JUmDfWPuZxeFWC/wXhagslTdXr1
 6zlQ==
X-Gm-Message-State: AGi0PublNPAZ0UyktYcmc6y1+vAsJAe9BMkKtNsr25axzMurVNs+VgE/
 OA4JDeGwHnhrqk/Cf61TgQ==
X-Google-Smtp-Source: APiQypJ3TUDwE5W0Lbu6MaWW9hEAAI/eMa1e4x7PzilWJJUeR5E6pht0rkfYrYUnpXdKfjZXW9G54Q==
X-Received: by 2002:a9d:6c55:: with SMTP id g21mr6432746otq.211.1587316109509; 
 Sun, 19 Apr 2020 10:08:29 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:28 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 12/17] mfd: vexpress-sysreg: Support building as a module
Date: Sun, 19 Apr 2020 12:08:05 -0500
Message-Id: <20200419170810.5738-13-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100830_801343_47ACA706 
X-CRM114-Status: GOOD (  12.19  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Enable building the vexpress-sysreg driver as a module.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/mfd/Kconfig           |  2 +-
 drivers/mfd/vexpress-sysreg.c | 15 ++++-----------
 2 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/mfd/Kconfig b/drivers/mfd/Kconfig
index b1311dea2da1..792766558328 100644
--- a/drivers/mfd/Kconfig
+++ b/drivers/mfd/Kconfig
@@ -2028,7 +2028,7 @@ config MCP_UCB1200_TS
 endmenu
 
 config MFD_VEXPRESS_SYSREG
-	bool "Versatile Express System Registers"
+	tristate "Versatile Express System Registers"
 	depends on VEXPRESS_CONFIG && GPIOLIB
 	default y
 	select GPIO_GENERIC_PLATFORM
diff --git a/drivers/mfd/vexpress-sysreg.c b/drivers/mfd/vexpress-sysreg.c
index 9fb37fa689e0..eeeeb1d26d5d 100644
--- a/drivers/mfd/vexpress-sysreg.c
+++ b/drivers/mfd/vexpress-sysreg.c
@@ -8,6 +8,7 @@
 #include <linux/err.h>
 #include <linux/io.h>
 #include <linux/mfd/core.h>
+#include <linux/module.h>
 #include <linux/of_platform.h>
 #include <linux/platform_data/syscon.h>
 #include <linux/platform_device.h>
@@ -151,6 +152,7 @@ static const struct of_device_id vexpress_sysreg_match[] = {
 	{ .compatible = "arm,vexpress-sysreg", },
 	{},
 };
+MODULE_DEVICE_TABLE(of, vexpress_sysreg_match);
 
 static struct platform_driver vexpress_sysreg_driver = {
 	.driver = {
@@ -160,14 +162,5 @@ static struct platform_driver vexpress_sysreg_driver = {
 	.probe = vexpress_sysreg_probe,
 };
 
-static int __init vexpress_sysreg_init(void)
-{
-	struct device_node *node;
-
-	/* Need the sysreg early, before any other device... */
-	for_each_matching_node(node, vexpress_sysreg_match)
-		of_platform_device_create(node, NULL, NULL);
-
-	return platform_driver_register(&vexpress_sysreg_driver);
-}
-core_initcall(vexpress_sysreg_init);
+module_platform_driver(vexpress_sysreg_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
