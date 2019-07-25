Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0337B74EE8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 15:14:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oibBeAThVurnv3Vb+8lCe3VlESyaD6NsA6XQdjWtBws=; b=ue3PhqKL21f2qt
	dxkbopnkVZzT/nUTNJMJs9JaYqsy7uywswn90NiZ9DyCsbnhBNMgTYzR+sD5D/nD1qmR14xY0BcYr
	95WSuJe/KXrhzG/tbhU5X3TXt/o4l20PUdwnQITdjQ1XaesivTFPkE3gXO8We4mh60TFiRV/t9KTe
	en1QV2I8nTUIbLpwYMGp2mRG+YM4p2aATMT3CylGHsA/t5ptON3LPKl8IYKpmmhpBv4nBeYSNf9jn
	hgbzQ1WbfivQq3hpXBe6ZUQWHysvgMCifXpuWz4kYWxo20b3gm0gcyXGQFdAYSCW7GxC/nve51Wfz
	tXlsUOkdtuqBzBWjX9Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqda1-0003hq-Jc; Thu, 25 Jul 2019 13:14:45 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdYR-0002iP-6P
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 13:13:09 +0000
Received: by mail-wm1-x342.google.com with SMTP id p74so44928463wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 06:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=OrxrzHfdR2gckMKegx1yxVHO2Izu+Cmysz1TGZaUt4E=;
 b=QfISO/Ct6slzzGV6lLrDhhZRemPsoiiqhiQTC3XaMtgSBNxZohmAqrUpq1jAFqR+dD
 LCZ1ATz5sYQxONgBqCEHM1/VP+XZQEEJ0LyO1MRdBgSUcSDDheE+Ol+wdV0fLvJ8U+/3
 6PpNnsAm6dMOefMHtl3Mwvyg2xHuuqeLDgNY/dcBT57jOGgT6JJrafHjBNNwOoZWUBSS
 mSx7HDxx9q6W9FMW2j2zbTSL33IPhCuiNjNfwG8nl14aSurScQzrUHrWgekI66xDoe16
 S6Jnfr09xGbs9+BOC+0nhP4Gbpjbr04cNA9lWG8MGsIGhcX2Qv8rsFtoJETIqp35Qh++
 pZDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=OrxrzHfdR2gckMKegx1yxVHO2Izu+Cmysz1TGZaUt4E=;
 b=tntb/7jJDbflxSJYEdFP2afu1185p4g/daCk/wAMWvodQKL5VAdKZMFxzaNT7RUTiK
 VuCef5HQClEJ1PcVkhHe1m+bTZLRBOefM3uyJVtvEizlF6D4TLDC+rhDIc5c8i0YvFsY
 OFLp2CKY0s+wuIblTpN5CJ5d3Al1RIKtE8caTlt1CZ6y3++8X9MlV+JDg/5raAWW7/hM
 WmLLnA5UpCj4bZKY8oNZoEazS9wcS60Un1Q5V3h1mls4Zc3EX7lzJKDftbXmnhwjZKhY
 5hKu157YnjhA5G8IwC16Wxtci5zCWGXAf35aB6JHPdI5VmI6VNcLbSPBIBElxR5rrowv
 aNVA==
X-Gm-Message-State: APjAAAV/ndZfmaHx53V6x6MY4+c3taDcpSN6AniIfTgDZ2Nv/x9RJb2i
 xVZhmfPzmPtw7gZueaM255s=
X-Google-Smtp-Source: APXvYqxYNPRyCf8Ng0zjZFemZwU2WdjjqfvvmBxyWwh8g64OsosMO2a7JphltDJDTF48NPsMJNvm0A==
X-Received: by 2002:a7b:cbc6:: with SMTP id n6mr51283395wmi.14.1564060384593; 
 Thu, 25 Jul 2019 06:13:04 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:af:5b00:6d6c:8493:1ab5:dad7])
 by smtp.gmail.com with ESMTPSA id
 z7sm47119735wrh.67.2019.07.25.06.13.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 06:13:04 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, David Lechner <david@lechnology.com>
Subject: [PATCH v2 2/5] media: davinci-vpbe: remove obsolete includes
Date: Thu, 25 Jul 2019 15:12:54 +0200
Message-Id: <20190725131257.6142-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725131257.6142-1-brgl@bgdev.pl>
References: <20190725131257.6142-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061307_286409_44A7CB44 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Arnd Bergmann <arnd@arndb.de>

The driver builds fine without these.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/media/platform/davinci/vpbe_display.c | 4 ----
 drivers/media/platform/davinci/vpbe_osd.c     | 5 -----
 drivers/media/platform/davinci/vpbe_venc.c    | 5 -----
 3 files changed, 14 deletions(-)

diff --git a/drivers/media/platform/davinci/vpbe_display.c b/drivers/media/platform/davinci/vpbe_display.c
index 000b191c42d8..18f9408013d1 100644
--- a/drivers/media/platform/davinci/vpbe_display.c
+++ b/drivers/media/platform/davinci/vpbe_display.c
@@ -19,10 +19,6 @@
 
 #include <asm/pgtable.h>
 
-#ifdef CONFIG_ARCH_DAVINCI
-#include <mach/cputype.h>
-#endif
-
 #include <media/v4l2-dev.h>
 #include <media/v4l2-common.h>
 #include <media/v4l2-ioctl.h>
diff --git a/drivers/media/platform/davinci/vpbe_osd.c b/drivers/media/platform/davinci/vpbe_osd.c
index 491842ef33c5..91b571a0ac2c 100644
--- a/drivers/media/platform/davinci/vpbe_osd.c
+++ b/drivers/media/platform/davinci/vpbe_osd.c
@@ -16,11 +16,6 @@
 #include <linux/clk.h>
 #include <linux/slab.h>
 
-#ifdef CONFIG_ARCH_DAVINCI
-#include <mach/cputype.h>
-#include <mach/hardware.h>
-#endif
-
 #include <media/davinci/vpss.h>
 #include <media/v4l2-device.h>
 #include <media/davinci/vpbe_types.h>
diff --git a/drivers/media/platform/davinci/vpbe_venc.c b/drivers/media/platform/davinci/vpbe_venc.c
index 425f91f07165..8caa084e5704 100644
--- a/drivers/media/platform/davinci/vpbe_venc.c
+++ b/drivers/media/platform/davinci/vpbe_venc.c
@@ -14,11 +14,6 @@
 #include <linux/videodev2.h>
 #include <linux/slab.h>
 
-#ifdef CONFIG_ARCH_DAVINCI
-#include <mach/hardware.h>
-#include <mach/mux.h>
-#endif
-
 #include <linux/platform_data/i2c-davinci.h>
 
 #include <linux/io.h>
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
