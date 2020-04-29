Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFB01BE971
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKhjGjxygLjS+755iqhvx7xNXHgrvEf5vxrJQ069MpM=; b=uXWkXXbtAHG25l
	BOa9VpuqmUJHs7tFBYFQedewZmNhZliQSsOkUR8bwubCTO4l8Keaay+r3lL/2FfXXdgd92+B4Gg3M
	+1kMzxUkW34MeXwQ0TLkQdYu3sHx+4mlWA0fHIl6NUvvt9SePs6rGuDX/RN64IBTjdL8eM+nWh8if
	RgTc1uiW2Ulm889kNKMJzET6pzVEbkdEbB1pDzqIDGg9NZZNY//NJ77NNfc2j8glC44oFHYwAiExr
	Avda6N5qB18RY6QqEwGFkJa+hSH11z/F7NC8aupdhD9zu8nw9CEfv/VgqMBf5Q7dU/0Pr+ebqjgau
	17RbyhlF82Q0wFWOqJTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtpf-00012S-RR; Wed, 29 Apr 2020 21:01:27 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtmx-0005Ax-EJ
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:40 +0000
Received: by mail-oi1-f193.google.com with SMTP id m10so3130556oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qg2zxc590nC56Olu/LMLIdebNTiQLSp6hgsD/Wgzqhc=;
 b=R1Fq5g1NKepNZhWA2vmUELQGhkoTo6UE+gHnveDFO4UWjF+zyHT5Fo3m66HBOZU8wt
 iXiv3H/yWdv5ayu8CNowDrzCA/9N24Dt7gARtbU193znkCuegwY+Z2DLTIfwZ7MlyBn6
 L1cm0lTDdpZRrkO/7Mal9n4F/TXyPxjmcM2eB8s4rX160Mp2+0WND08KZZK/8ocsFCIc
 ewTCUgMYM9nYvu8RNLjNM5iolMBNgj0lKFl1APPpdr4DwQ9wZTIw38lQ55f1rt6nFL5j
 06puOknIMbtG0Ptk7z3NZp7eoCiSeJUrC8XjVzgFbfiIyyF2nYGNot/sxj50Z70gz9yi
 jNjw==
X-Gm-Message-State: AGi0Pubz0EhQmJ5G6bzDMHu93oBRshm9LbLXuupSoO2uqJapWIKFb6Aw
 EHEIInmGbaHFnXA3aJdRpw==
X-Google-Smtp-Source: APiQypLrWJY7pYSRXhfCSOB9FxS2TVlt5Ok67NnxttN2E8ckgZPz2Ph897iAX8kOYgBQBWEzEAcFZw==
X-Received: by 2002:a54:4619:: with SMTP id p25mr128029oip.122.1588193918475; 
 Wed, 29 Apr 2020 13:58:38 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:37 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 07/16] clk: vexpress-osc: Support building as a module
Date: Wed, 29 Apr 2020 15:58:16 -0500
Message-Id: <20200429205825.10604-8-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135839_532478_E285F18F 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 drivers/clk/versatile/clk-vexpress-osc.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

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
