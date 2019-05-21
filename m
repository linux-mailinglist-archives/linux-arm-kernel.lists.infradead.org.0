Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7EAE245B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 03:45:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2tbLyJsQv9yj4e7RKjmZM6qOv1y7zCjAQ5oEbtlwM/Y=; b=r0VhdBH7O9ddNO
	KASEDTA31AbqzGCV2c1vMhRTzuEVG675V6J7IWzXKC3+NIm4HDQY7OxHpGTH95edHW/6mN5qUQFXd
	IB+LUnqzPyf15hNvmYZAoqKPJr3j8XbovCdw70sJUt1HoRv37qV0qRhZn0VZTu2mHVL/IGrW8eBph
	GUypUBG59pKzSwEmqoLA/CXf+XcqOkxFTyqHosWWrUvhrKPj9FWYyprulw6eWmuKOphrRCK/iWz1h
	u1Zb+9xqm/oSvFGlT5TKUCmjfs70C8UjzU01jyYBdzDlTyNCcisiDlzGYwfYUbR3RIowkOjYlfEfY
	COcf5csXEs/G3Z4inviw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hStqG-00020o-IC; Tue, 21 May 2019 01:45:24 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hStpn-0000Xh-2u
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 01:44:56 +0000
Received: by mail-lf1-x144.google.com with SMTP id v18so11770863lfi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 18:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DLwpITDJbH5GI5CFlNLCDZnAvlJ2JECuaH3FVz5jQ5k=;
 b=nc5a/KsEMcVoq6iBMo/C0IvsYkcvzmucaBFXWw3GgFh0cZpi4S9sN9h1x2M5kHvkLn
 MVT0MBwK4GFo1uxbnDhXjxwv1cwNa6vePHF0D4vlh3vyX/NdHXy5+LZcn2CHXgwgxu1I
 QwGAX0aPck9SLodc9S1b7ljh90PpPpz3QuhPczXoaJlrvPVARo9d2nh+ujUemaqa9CVC
 yZfR7L61GFDrlBpFa/H5QBS68E66esak9zZakSqe1tH4cwNa0XkOcIPUXYRx2AC7ZJHC
 1B4IABaJCy+vo1EBmeMgVu/TfA6dmV5SYLnjALuh66iuUICNBXVOcq+ufilrzJuRaBcf
 Vqjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DLwpITDJbH5GI5CFlNLCDZnAvlJ2JECuaH3FVz5jQ5k=;
 b=F+Tq0ohjFgNxclJm13BmT5fOBgKAj2xwoDa0WDlgyHkw6WljHWXzh434M53i/IQuVK
 H1OfyotHzofn9Ci0lKfi/djFx10Htk/rw5j6qgxFgLH+NOjh6ZBrVGLF1hsm0OfgPcn1
 mZBUt0dE9d1+Tw4E4X/Sy01lToKKocO49xIEjM2eXcZTr8q95hYJkxXIg+dBd59UcwHm
 f+5jHPgXjSScldRTiKZ3omhzL1hjanGbhtID+0avW4hcOGGbhJkLet733UcnK84sSY0t
 t5KQYyOyM/rdWmUuHdNCsQZbl/6u0FJEYQv4MsXJ93Mjeov9kSINQ/3PCRjhiQzDzZKH
 V25g==
X-Gm-Message-State: APjAAAW++Xx/HG0rBGlMyshsqEqKPyrJjcTd76UcI9r5WEmMcLuK8MEi
 vAWW+LbS9AOEu22ekl5pajOWxAko1nM=
X-Google-Smtp-Source: APXvYqym65vKc1lj6JMWNuKDdwTdiBZGWjB5942CUn4kX+K1vymVGH+Inyj1JJ+kszkG8nPRhn5eJQ==
X-Received: by 2002:a19:1dc3:: with SMTP id
 d186mr37313728lfd.101.1558403092858; 
 Mon, 20 May 2019 18:44:52 -0700 (PDT)
Received: from localhost.localdomain
 (c-d2cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.210])
 by smtp.gmail.com with ESMTPSA id z11sm4232194ljb.68.2019.05.20.18.44.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 20 May 2019 18:44:51 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/9 RESEND 2] mtd: afs: Move AFS partition parser to parsers
 subdir
Date: Tue, 21 May 2019 03:42:19 +0200
Message-Id: <20190521014230.18463-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521014230.18463-1-linus.walleij@linaro.org>
References: <20190521014230.18463-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_184455_128974_DD19F452 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

This moves the AFS (ARM Firmware Suite) partition parser
for NOR flash down into the parsers subdirectory.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/mtd/Kconfig             | 16 ----------------
 drivers/mtd/Makefile            |  1 -
 drivers/mtd/parsers/Kconfig     | 16 ++++++++++++++++
 drivers/mtd/parsers/Makefile    |  1 +
 drivers/mtd/{ => parsers}/afs.c |  0
 5 files changed, 17 insertions(+), 17 deletions(-)
 rename drivers/mtd/{ => parsers}/afs.c (100%)

diff --git a/drivers/mtd/Kconfig b/drivers/mtd/Kconfig
index 79a8ff542883..55cacc1edcd4 100644
--- a/drivers/mtd/Kconfig
+++ b/drivers/mtd/Kconfig
@@ -60,22 +60,6 @@ config MTD_CMDLINE_PARTS
 
 	  If unsure, say 'N'.
 
-config MTD_AFS_PARTS
-	tristate "ARM Firmware Suite partition parsing"
-	depends on (ARM || ARM64)
-	help
-	  The ARM Firmware Suite allows the user to divide flash devices into
-	  multiple 'images'. Each such image has a header containing its name
-	  and offset/size etc.
-
-	  If you need code which can detect and parse these tables, and
-	  register MTD 'partitions' corresponding to each image detected,
-	  enable this option.
-
-	  You will still need the parsing functions to be called by the driver
-	  for your particular device. It won't happen automatically. The
-	  'physmap' map driver (CONFIG_MTD_PHYSMAP) does this, for example.
-
 config MTD_OF_PARTS
 	tristate "OpenFirmware partitioning information support"
 	default y
diff --git a/drivers/mtd/Makefile b/drivers/mtd/Makefile
index 58fc327a5276..806287e80e84 100644
--- a/drivers/mtd/Makefile
+++ b/drivers/mtd/Makefile
@@ -9,7 +9,6 @@ mtd-y				:= mtdcore.o mtdsuper.o mtdconcat.o mtdpart.o mtdchar.o
 
 obj-$(CONFIG_MTD_OF_PARTS)	+= ofpart.o
 obj-$(CONFIG_MTD_CMDLINE_PARTS) += cmdlinepart.o
-obj-$(CONFIG_MTD_AFS_PARTS)	+= afs.o
 obj-$(CONFIG_MTD_AR7_PARTS)	+= ar7part.o
 obj-$(CONFIG_MTD_BCM63XX_PARTS)	+= bcm63xxpart.o
 obj-$(CONFIG_MTD_BCM47XX_PARTS)	+= bcm47xxpart.o
diff --git a/drivers/mtd/parsers/Kconfig b/drivers/mtd/parsers/Kconfig
index fccf1950e92d..419529318504 100644
--- a/drivers/mtd/parsers/Kconfig
+++ b/drivers/mtd/parsers/Kconfig
@@ -1,3 +1,19 @@
+config MTD_AFS_PARTS
+	tristate "ARM Firmware Suite partition parsing"
+	depends on (ARM || ARM64)
+	help
+	  The ARM Firmware Suite allows the user to divide flash devices into
+	  multiple 'images'. Each such image has a header containing its name
+	  and offset/size etc.
+
+	  If you need code which can detect and parse these tables, and
+	  register MTD 'partitions' corresponding to each image detected,
+	  enable this option.
+
+	  You will still need the parsing functions to be called by the driver
+	  for your particular device. It won't happen automatically. The
+	  'physmap' map driver (CONFIG_MTD_PHYSMAP) does this, for example.
+
 config MTD_PARSER_TRX
 	tristate "Parser for TRX format partitions"
 	depends on MTD && (BCM47XX || ARCH_BCM_5301X || COMPILE_TEST)
diff --git a/drivers/mtd/parsers/Makefile b/drivers/mtd/parsers/Makefile
index d8418bf6804a..f7a8fe66e2ca 100644
--- a/drivers/mtd/parsers/Makefile
+++ b/drivers/mtd/parsers/Makefile
@@ -1,3 +1,4 @@
+obj-$(CONFIG_MTD_AFS_PARTS)		+= afs.o
 obj-$(CONFIG_MTD_PARSER_TRX)		+= parser_trx.o
 obj-$(CONFIG_MTD_SHARPSL_PARTS)		+= sharpslpart.o
 obj-$(CONFIG_MTD_REDBOOT_PARTS)		+= redboot.o
diff --git a/drivers/mtd/afs.c b/drivers/mtd/parsers/afs.c
similarity index 100%
rename from drivers/mtd/afs.c
rename to drivers/mtd/parsers/afs.c
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
