Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF8A1B01A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 08:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OAeK8HaaL8aK/7+2+RuXbBcoM3ucX73jTvdspIlTECk=; b=jf8MEY8s3uxXre
	J2Y4rZvEELkfh/ENL+Fbt+MAyyfu/ULEgJZL5yijDg7X28b55tMwR8187Pq8PeygPZw3l9f/CZV3v
	a35Z/ebmRMD0YzPZeidOfZ825C4bXeHFmxPnNnuvO6UKSPkFXhct2dT50jtjHV4SEbHeSaV7OREpv
	cn3XB52Vf04sa46OvHbBVJQtD84IeyNeAEIYeEP1oB/TkKPWZXyr3NYtoqVXvhPO6leQvz3p4H+xD
	/ZX+T0pMgMGIIb9Vd7gaMuihzNl1Soij7yrPOFw6fS0n/O76ejmC246BYEiiGnnU8dM41jy4K2SGS
	k0M9eaIRcAkocL053ZVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQQ3Z-0004aC-0g; Mon, 20 Apr 2020 06:37:25 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQQ3A-0004QP-Gs
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 06:37:01 +0000
Received: by mail-lj1-x243.google.com with SMTP id b2so3156688ljp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 Apr 2020 23:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jq9Jh0TKwA8YQNw5xjvTZAjOUcByK3QOtFlVD/4pCH4=;
 b=EYaoVkMKK+0POxE/PQ43s/A7sgyOcJxr+k3hIgGKWp4X17HgVtIM0AdVQqkKe9Vm+0
 RTOerhMIr45RJv95XWtz3FDXDBYWjS60/dwsHXtHlAgwxilVwz1goNdUFgfW/lm7sxXo
 EEvCZfG99JpJSU6Xck3nsEhsOdr6FEoR44nMer4KG/QprQxBnjl8mBDcKvRBCkcPwb7u
 HNOtFJgXtawMEkjNTWOCi7jYkhbQQeR57zNqOTmNDGQdJMdK5BJktFXqAWTd0RJEzl61
 pXjBCnTH2oimeEBM1WR5t7PSd14AFKNxqbqyQDo32ZCwqyTxSNU5llrtWfF2ez0Lo/qq
 9szQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jq9Jh0TKwA8YQNw5xjvTZAjOUcByK3QOtFlVD/4pCH4=;
 b=AhkjxdKXieyxoFz8MUOOQSXvYAxyXK9fE509reDeuCdqelJhtd96uO3jmX6rC4Zlg4
 NGZo93ofVSDOgLhKgiyylbDf6qOnPit+ch8q5mUbDTtIS1bJzGUql3r2HfhBiVXH/0ck
 V2t1HShzAnTucnYOSPCC0j2pCqI7297XoNE8dFA3bYRpRlpw5gkwjZu0mqQk1Ivq0mCn
 K+8b25uhlQkcXfpdQV9aKdMRqRnCnS2iHLOj0awVbotutzQgk7Kt8FWfh+iwq/vuWiNF
 nk+6S6xRoO9Pgs4WhWzNKSuzqXng+lpRUbH7DtCQQ2PdBbhaPgsTk95ZmRI/8nv19bbp
 R+cg==
X-Gm-Message-State: AGi0PuYPfm9x52FZm3bxrhSFY0P5Ly40tiXmeC67QJYjaZPft/jytnty
 FBA8Ulny33Or0JGfE0EIsQIGMEGhbVs=
X-Google-Smtp-Source: APiQypIke3gtMBAkyzf9AgFbhbB3t1PTRyRAjlrqgeSeBdv/TaQeVq/FGbHFIWZ3JydGhGUrzB5Blg==
X-Received: by 2002:a2e:9207:: with SMTP id k7mr163968ljg.124.1587364618907;
 Sun, 19 Apr 2020 23:36:58 -0700 (PDT)
Received: from localhost.localdomain
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id f9sm134648ljp.88.2020.04.19.23.36.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2020 23:36:58 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: integrator: Add some Kconfig selections
Date: Mon, 20 Apr 2020 08:34:56 +0200
Message-Id: <20200420063456.388725-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_233700_553651_CDE6AD9C 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CMA and DMA_CMA Kconfig options need to be selected
by the Integrator in order to produce boot console on some
Integrator systems.

The REGULATOR and REGULATOR_FIXED_VOLTAGE need to be
selected in order to boot the system from an external
MMC card when using MMCI/PL181 from the device tree
probe path.

Select these things directly from the Kconfig so we are
sure to be able to bring the systems up with console
from any device tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/mach-integrator/Kconfig | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-integrator/Kconfig b/arch/arm/mach-integrator/Kconfig
index fbc35e9db46d..106670c37c94 100644
--- a/arch/arm/mach-integrator/Kconfig
+++ b/arch/arm/mach-integrator/Kconfig
@@ -4,6 +4,8 @@ menuconfig ARCH_INTEGRATOR
 	depends on ARCH_MULTI_V4T || ARCH_MULTI_V5 || ARCH_MULTI_V6
 	select ARM_AMBA
 	select COMMON_CLK_VERSATILE
+	select CMA
+	select DMA_CMA
 	select HAVE_TCM
 	select ICST
 	select MFD_SYSCON
@@ -34,14 +36,13 @@ config INTEGRATOR_IMPD1
 	select ARM_VIC
 	select GPIO_PL061
 	select GPIOLIB
+	select REGULATOR
+	select REGULATOR_FIXED_VOLTAGE
 	help
 	  The IM-PD1 is an add-on logic module for the Integrator which
 	  allows ARM(R) Ltd PrimeCells to be developed and evaluated.
 	  The IM-PD1 can be found on the Integrator/PP2 platform.
 
-	  To compile this driver as a module, choose M here: the
-	  module will be called impd1.
-
 config INTEGRATOR_CM7TDMI
 	bool "Integrator/CM7TDMI core module"
 	depends on ARCH_INTEGRATOR_AP
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
