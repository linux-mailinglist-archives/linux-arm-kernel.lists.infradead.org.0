Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E991AFC9E
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 19:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udhetA+yoCn1cT1fg/xTfoxfICRDEtDZeMP7ItsVYxM=; b=IFeVobrQYR/DyZ
	y+QPi3i6okKDJVjh2SohJWWJ72DObY9d1tJLGbF2x8VlgcUithytzwdaTTwAwd1HmAI3gd1v6dbEz
	DzM0K7CpdcUrF29Q9j+IktuuML5fi08DKLgYsELv/LvMsnz6XbOmAJaaIhe/V01RFsxh4o9keMn5R
	4si+zK7lck4tJs/Sb5/cgLRDjKQWXS+/+IlxvZC3tLq7uHqCAeA8m3GXELqmcAXjBd9B+59uzdCcT
	Zc7XxAQLC7EZlm6PjvFuCuZr4wotcDmp2j9utEqVdgtjB9GskqI8pQlazH4/sew7OybadBiV8ih7R
	fZRAuXKztGiqoE0Sg3gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQDVN-0007xV-CM; Sun, 19 Apr 2020 17:13:17 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQDQp-0001x8-II
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Apr 2020 17:08:37 +0000
Received: by mail-ot1-f67.google.com with SMTP id c3so5953809otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 10:08:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EBjrivoY+dBlZy5hXEimly9aG7ilu27sG29Xt5twimM=;
 b=MVRAM8CVEIj3KCWQhq/xJw/+JX7qflO/zv4K1LVii9gaKWgGlOAI/yXTVixsaEGcb4
 O5a/nhmjLk2mFgowCphiAZbTwH1N638K4oe2rdkQO0X0Xk6RNYLmaJUAbBcT6gVrCQQF
 sQHNbYnmlleha6uqrxybBYiGDa3dMkNwlVs6gZqKzfFpnCJTByDAWFgCepocdA5VfmOk
 qIwYs9i7fUAAOiB8xt/OHf33uZ8PwkDtl081hMQ8e7Z3qGE2ITYE/oT7OGDBzfwrR8FQ
 3nw3p31ZwWLvuzLmZGQvWqqGQ1JDAJpvscnLBXa/9L4CNM1KvIOF0nIGLLl4D+OXeWiS
 pJpw==
X-Gm-Message-State: AGi0PubJ8S7muwgy8/MAyb3GnmCZ6WHTWLnH5gbGfPTSYYcXu6bJd77y
 95jdxoG/G9nli7f3ohywBA==
X-Google-Smtp-Source: APiQypL94dbwiZMtLp3Y9iPspqjTiyd4nMHmIxz5FPIZ7BgIvaacRyIdkubSgHJoGyF7liSeKobz+Q==
X-Received: by 2002:a05:6830:160c:: with SMTP id
 g12mr6519994otr.335.1587316114376; 
 Sun, 19 Apr 2020 10:08:34 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id u205sm9661938oia.37.2020.04.19.10.08.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 10:08:33 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH 16/17] bus: vexpress-config: Support building as module
Date: Sun, 19 Apr 2020 12:08:09 -0500
Message-Id: <20200419170810.5738-17-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200419170810.5738-1-robh@kernel.org>
References: <20200419170810.5738-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_100835_687079_FBEE5D09 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
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

Enable building vexpress-config driver as a module.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
