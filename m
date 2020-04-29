Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD1C1BE976
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cg4jIVRFEFR+bGnxYo7tZnAunAPtUAYMqBwvUgPXh0g=; b=EP7hqAW5tDGBID
	5G4TVpc8N1YX2kXzVQ9cWu11NXqrx5bGeSDCZrdg6xtwXCwHZYAs3O54JpOSA91w4K9df6AFEwN5M
	ZnCOAx8XHGgfg5N+XvqRjqxa66mwXYmMqpnfcrJSAolw9uxKkFiizqsYvdti13Yc6L1lO9xgfl4Bz
	TqdJyYyl3GE7wPgtv1eVB3yjnxq1Tbua6SxHdcCWcKTmDb6GUqNw2hpnA9Qbkp8qyE1VeRY0re7WO
	Tolzbe9ya2j42RSxYS+i6JEAtHD8EHF+A9yMwxd1Ixie/4ffrMDbZNVIIyiAUa4aCNZej+5X6hT3B
	bXA2hoqMaBttktZCf4LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtqE-0001WQ-Ee; Wed, 29 Apr 2020 21:02:02 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtn0-0005Dw-7Z
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:44 +0000
Received: by mail-ot1-f67.google.com with SMTP id i27so2980852ota.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xStMKk0H1Os/f4XhAPdtzwoAZgabWI5+EIoJOxpP6QU=;
 b=tFQE2IJz3bpGHWBTiJLO1qqoQi4OXAg5pHDpEfh1rmMGrCsrsF+V1DimkQQ6qSNhq2
 9u+Pbsg0TC0ULm088NYPGzm/gGT+WTwNl9bCxcOia4HlWiqWdmD9tUhkCMAl+fJHaa+K
 ACyxPN13e1gXO3ZfHpU04+76wP13gzW/apm6H3ZXbOJvW+47hR3Dw82Z5P3hHPl56ZjR
 5DDWtSbWHmj78CkJ7dyaw0GHi1NjTg3hM5AJJaZcVI4bQ9YzSJzrYTRHcbl4eqqEgu1B
 vE3TYIjiT3S0B3ffEHKplHGpU5T/GnaNDXVMMuvccnrvnnXXcwND/0aB6w7Hsl6nvJMz
 g/0A==
X-Gm-Message-State: AGi0PuatCimThjXvAOVqdyE7BE+4CU5mrQIb4Qk3eMW4QlLRd5XSsJ2c
 n25fUsGJBb7jKGWfyXTz8A==
X-Google-Smtp-Source: APiQypK3kk60mycPcQlbrx8lkRNiDbkLmjHejw1+fZgz13WaNX4EQAK5LW9ZdLCUGNgRh1SQc9dLUg==
X-Received: by 2002:a9d:37c9:: with SMTP id x67mr27294346otb.207.1588193921255; 
 Wed, 29 Apr 2020 13:58:41 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:40 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 09/16] mfd: vexpress-sysreg: Drop unused syscon child
 devices
Date: Wed, 29 Apr 2020 15:58:18 -0500
Message-Id: <20200429205825.10604-10-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135842_409998_957A3C83 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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

The "sys_id", "sys_misc" and "sys_procid" devices don't have a user
anywhere in the tree and do nothing more than create a syscon regmap for
a single register or 2. That's an overkill for creating child devices.
Let's just remove them.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Rob Herring <robh@kernel.org>
---
Note that the other GPIO child devices could probably be removed and
added to the bgpio driver. Unfortunately, the model dts files were
never updated 6 years ago. Not sure if the models really need LEDs...

v2:
 - Add missing commmit message
---
 drivers/mfd/vexpress-sysreg.c | 36 -----------------------------------
 1 file changed, 36 deletions(-)

diff --git a/drivers/mfd/vexpress-sysreg.c b/drivers/mfd/vexpress-sysreg.c
index 0b9cc67706c7..90a4eda2ba2b 100644
--- a/drivers/mfd/vexpress-sysreg.c
+++ b/drivers/mfd/vexpress-sysreg.c
@@ -43,10 +43,6 @@
 
 /* The sysreg block is just a random collection of various functions... */
 
-static struct syscon_platform_data vexpress_sysreg_sys_id_pdata = {
-	.label = "sys_id",
-};
-
 static struct bgpio_pdata vexpress_sysreg_sys_led_pdata = {
 	.label = "sys_led",
 	.base = -1,
@@ -65,24 +61,8 @@ static struct bgpio_pdata vexpress_sysreg_sys_flash_pdata = {
 	.ngpio = 1,
 };
 
-static struct syscon_platform_data vexpress_sysreg_sys_misc_pdata = {
-	.label = "sys_misc",
-};
-
-static struct syscon_platform_data vexpress_sysreg_sys_procid_pdata = {
-	.label = "sys_procid",
-};
-
 static struct mfd_cell vexpress_sysreg_cells[] = {
 	{
-		.name = "syscon",
-		.num_resources = 1,
-		.resources = (struct resource []) {
-			DEFINE_RES_MEM(SYS_ID, 0x4),
-		},
-		.platform_data = &vexpress_sysreg_sys_id_pdata,
-		.pdata_size = sizeof(vexpress_sysreg_sys_id_pdata),
-	}, {
 		.name = "basic-mmio-gpio",
 		.of_compatible = "arm,vexpress-sysreg,sys_led",
 		.num_resources = 1,
@@ -109,22 +89,6 @@ static struct mfd_cell vexpress_sysreg_cells[] = {
 		},
 		.platform_data = &vexpress_sysreg_sys_flash_pdata,
 		.pdata_size = sizeof(vexpress_sysreg_sys_flash_pdata),
-	}, {
-		.name = "syscon",
-		.num_resources = 1,
-		.resources = (struct resource []) {
-			DEFINE_RES_MEM(SYS_MISC, 0x4),
-		},
-		.platform_data = &vexpress_sysreg_sys_misc_pdata,
-		.pdata_size = sizeof(vexpress_sysreg_sys_misc_pdata),
-	}, {
-		.name = "syscon",
-		.num_resources = 1,
-		.resources = (struct resource []) {
-			DEFINE_RES_MEM(SYS_PROCID0, 0x8),
-		},
-		.platform_data = &vexpress_sysreg_sys_procid_pdata,
-		.pdata_size = sizeof(vexpress_sysreg_sys_procid_pdata),
 	}, {
 		.name = "vexpress-syscfg",
 		.num_resources = 1,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
