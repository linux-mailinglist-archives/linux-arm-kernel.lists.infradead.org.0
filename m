Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDAD1AFC7E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:11:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tqw8rSkgz3ba76nbNuoHCMG5B9ltZTVLKJlBiPLFOgs=; b=jD8k58A01BRef5
	DeOug2yKrSCYwMmNNRdorxJGYEx/W7GcWLH6siA90Fq5B3JvypKqPxjGQ3UxpfFFjzEpS8vLi6f0Y
	dE3H6FR8nXPApVG0VwdtQiTODsqXVKVCHMBP+rNsV7zYnB52r8SuGi8pStm/iTVlFk7NpSDIBxcki
	DEumrM+5rrCEPyfgnYJZzvNryooO41718J5xNfuGfi2c6I77CP229Ukugiy8tn9nFJlhmO3QlBeQt
	uLmtNEPSEn7OQINw3g3vZZr2aPR5c6cbqbaYAo8McFySypuurTNTtaR9f3am62HGYIuGbKTbLmjB2
	lVLacYNpQ1Kc4P2cOavQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDTO-0006FC-Ab; Sun, 19 Apr 2020 17:11:14 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQe-0001nN-KU
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:26 +0000
Received: by mail-ot1-f68.google.com with SMTP id h11so518888ots.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HqpSGKoXLi3sKkfdberr101LzIYIKH6zzFoEGRY23rQ=;
 b=CZ8A8mbvg1Pg+JW3sHfG161uAqK5rJRP3JO4yEwv91NiYrfBesT/y1V3TC7NgQAS9y
 vcrk3JxVIqqSkTL6iNfVy5yeyryZzG4P76sNUwpPJtIsRHn4uv/Fcw+bqWTRoiTpHMSA
 XNOgPoMaSoms28THDfAt0UV2yRxE2k63gFu9LWA/BkldYskXI3CHle3+Kk9PCiCxsLdu
 xGQbUa2nXNGrBpChfniTf1HnHgGsizBIHIhl3t7zT82n8fRpPGMtYlAJFvO+LGO5T0M+
 UIG8baJbUyLn9GelkFae7hxrn/1vME46Rfh0Nt7b9Ex5Azp2E/g068fR1jAtdck4vACq
 W5MQ==
X-Gm-Message-State: AGi0Pub1TPOOxYUmES5SLWuCD9sU8SMLsyV93UyVjQXY1DFLfLvqUFsm
 hlWzUWmM8GpYEfGVSEJDst4JYdU=
X-Google-Smtp-Source: APiQypIFr2mQFKNOYpHIWrxwJ0w/H0567uuPX+ub6eDgSKHRgh3fJS5CSFDmpVpY8TCgeusy5wORrQ==
X-Received: by 2002:a9d:4e11:: with SMTP id p17mr797808otf.35.1587316103723;
 Sun, 19 Apr 2020 10:08:23 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:23 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 08/17] clk: vexpress-osc: Support building as a module
Date: Sun, 19 Apr 2020 12:08:01 -0500
Message-Id: <20200419170810.5738-9-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100824_685569_7E6B490A 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
 Michael Turquette <mturquette@baylibre.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable building the vexpress-osc clock driver as a module.

Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/clk/versatile/Kconfig            |  4 ++--
 drivers/clk/versatile/clk-vexpress-osc.c | 10 ++++------
 2 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
index 5bdd5c98990b..9de2396dcf9b 100644
--- a/drivers/clk/versatile/Kconfig
+++ b/drivers/clk/versatile/Kconfig
@@ -15,8 +15,8 @@ config CLK_SP810
 	  of the ARM SP810 System Controller cell.
 
 config CLK_VEXPRESS_OSC
-	bool "Clock driver for Versatile Express OSC clock generators"
-	depends on VEXPRESS_CONFIG || COMPILE_TEST
+	tristate "Clock driver for Versatile Express OSC clock generators"
+	depends on VEXPRESS_CONFIG
 	default y if ARCH_VEXPRESS
 	---help---
 	  Simple regmap-based driver driving clock generators on Versatile
diff --git a/drivers/clk/versatile/clk-vexpress-osc.c b/drivers/clk/versatile/clk-vexpress-osc.c
index 5bb1d5a714d0..b2b32fa2d7c3 100644
--- a/drivers/clk/versatile/clk-vexpress-osc.c
+++ b/drivers/clk/versatile/clk-vexpress-osc.c
@@ -7,6 +7,7 @@
 #include <linux/clkdev.h>
 #include <linux/clk-provider.h>
 #include <linux/err.h>
+#include <linux/module.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/slab.h>
@@ -108,6 +109,7 @@ static const struct of_device_id vexpress_osc_of_match[] = {
 	{ .compatible = "arm,vexpress-osc", },
 	{}
 };
+MODULE_DEVICE_TABLE(of, vexpress_osc_of_match);
 
 static struct platform_driver vexpress_osc_driver = {
 	.driver	= {
@@ -116,9 +118,5 @@ static struct platform_driver vexpress_osc_driver = {
 	},
 	.probe = vexpress_osc_probe,
 };
-
-static int __init vexpress_osc_init(void)
-{
-	return platform_driver_register(&vexpress_osc_driver);
-}
-core_initcall(vexpress_osc_init);
+module_platform_driver(vexpress_osc_driver);
+MODULE_LICENSE("GPL v2");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
