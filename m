Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 607AC1E4CE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 20:13:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TboBtPR/Fak1+yi6y6cSpRGWlqaDOs8HdYj+X6Q9IMc=; b=S6iUBwlum6iuTh
	ou9lnt3yX4QYTRKPWER2rHtj9iuiZgopqzimz9ILsDdzgRoQGW8f64l40cKvU8OOUj6qVS7QdPmZs
	xEDVyA8yl/BI1+OzWVa/Fcc4RyDWoHN4+OsCkq9kKnBBSiduy8faa6cuskzYxg+w5wu3o6SfFGzVl
	986bDc5sNK6naSeH5VcFEkO0/Xsf1+I5FdMzIj3T9UuOPPXdRfe13kNnsyZM9hGf8XS7bnM2D3RZr
	2YbD8mPA0zW7/8+OxE6okjtcVUJvJxqr7426ZtTacLfCosUljTCc6PCW8PA5OqWBO2+ZrsFJ88LNj
	wgD6SGdO2uSmIb08OqVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je0YO-0001db-A9; Wed, 27 May 2020 18:13:24 +0000
Received: from mail-io1-f66.google.com ([209.85.166.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je0YD-0001cy-Ih
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 18:13:15 +0000
Received: by mail-io1-f66.google.com with SMTP id k18so27179180ion.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 May 2020 11:13:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/EruCW5OyzYkTpIMEcZw9VvP4rIyANLSRqMpkEmMESc=;
 b=ffH5KYPu1mvuHGiGb+G7wyjjpoFMhr6otgS37NUxv9hChJRKB1WQFbn7hMlPxhxl+U
 qTGg192BtTivVYU5rzNvFQYxj4qSU1mVND4CGND7nE4mG36eoiFaFJToNfnwJlr3H1GS
 k/cJJ0pPjDNHtV87sluxnkjOyRHzvv8TtaGxB/H+T3y2dH6t8YreKtGUfyO3R+KBfcIm
 +pLueEw0qHa3sH8CAdLcI9gV0/IPRVIc9UTVQYsPqUrvQgA5EiLznLDnC/e0cj5EaZI0
 jLDxl+/s3T2TLir/7WPh9k32xDV4+ISaJKCmHhqiaprv0Julw1GndzzIXUp/p2GUeiWL
 eSMg==
X-Gm-Message-State: AOAM532ZfzKCF2wxjD1pOaMeFa4Hep6ACdohaV6mdvMunoi2mWh2TYK9
 gn+l8a51DL6/KmQEhNqwcw==
X-Google-Smtp-Source: ABdhPJxUSllQ00lt5W6Ku5+TyPaZgvzDvlMqASKxBalVSX3oZwrMtPe4WkxLJ5GjLAWgGk9w552hsQ==
X-Received: by 2002:a6b:ee15:: with SMTP id i21mr22853775ioh.179.1590603189487; 
 Wed, 27 May 2020 11:13:09 -0700 (PDT)
Received: from xps15.herring.priv ([64.188.179.252])
 by smtp.googlemail.com with ESMTPSA id e12sm1562445ioc.37.2020.05.27.11.13.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 May 2020 11:13:08 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: soc@kernel.org
Subject: [PATCH] clk: versatile: Fix kconfig dependency on COMMON_CLK_VERSATILE
Date: Wed, 27 May 2020 12:13:07 -0600
Message-Id: <20200527181307.2482167-1-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_111313_616202_872FB243 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.66 listed in wl.mailspike.net]
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
Cc: anders.roxell@linaro.org, Stephen Boyd <sboyd@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-clk@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If COMPILE_TEST is enabled, then COMMON_CLK_VERSATILE can be disabled
when dependent options like ICST are selected resulting in kconfig
warnings:

WARNING: unmet direct dependencies detected for ICST
  Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
  Selected by [y]:
  - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] || ARCH_MULTI_V7 [=y])
  - ARCH_VEXPRESS [=y] && ARCH_MULTI_V7 [=y]
  - ARCH_ZYNQ [=y] && ARCH_MULTI_V7 [=y]

WARNING: unmet direct dependencies detected for CLK_SP810
  Depends on [n]: COMMON_CLK [=y] && COMMON_CLK_VERSATILE [=n]
  Selected by [y]:
  - ARCH_REALVIEW [=y] && (ARCH_MULTI_V5 [=n] || ARCH_MULTI_V6 [=n] || ARCH_MULTI_V7 [=y])

Fix this by dropping COMMON_CLK_VERSATILE and just using 'menu' instead
of 'menuconfig'.

Fixes: 81134fb541d4 ("clk: versatile: Rework kconfig structure")
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-clk@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
Please apply this along with Ander's fixes to the SoC tree. 

Note that this patch[1] is also need to resolve the kconfig issues. 
Michal said he would apply it.

Rob

[1] https://lore.kernel.org/linux-arm-kernel/20200409221829.29421-1-robh@kernel.org/

 drivers/clk/versatile/Kconfig | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
index a0ed412e8396..8c1b0e8e8d32 100644
--- a/drivers/clk/versatile/Kconfig
+++ b/drivers/clk/versatile/Kconfig
@@ -1,11 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-menuconfig COMMON_CLK_VERSATILE
-	bool "Clock driver for ARM Reference designs" if COMPILE_TEST
-	default y if ARCH_INTEGRATOR || ARCH_REALVIEW || \
-		ARCH_VERSATILE || ARCH_VEXPRESS
-
-if COMMON_CLK_VERSATILE
+menu "Clock driver for ARM Reference designs"
+	depends on ARCH_INTEGRATOR || ARCH_REALVIEW || \
+		ARCH_VERSATILE || ARCH_VEXPRESS || COMPILE_TEST
 
 config ICST
 	bool "Clock driver for ARM Reference designs ICST"
@@ -32,4 +29,4 @@ config CLK_VEXPRESS_OSC
 	  Express platforms hidden behind its configuration infrastructure,
 	  commonly known as OSCs.
 
-endif
+endmenu
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
