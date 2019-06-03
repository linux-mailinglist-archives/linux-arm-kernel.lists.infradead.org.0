Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7391B32A8A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 10:13:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JA01Cql97Zgk6MSNoaJ+YXM/eHwvxwrTo47XLiz/zVk=; b=CLRxVGodvLtlbHBFiUkRkZzQ8P
	u+aDzsLVPPSAmxMm8acj5dRnyrc1UzqHek7Xd00xtbltcBpwBNT/8PJsAyljJY8WI+Tua+2fZHQnR
	5Zi9AnaSD/YnljnY3qbod51kFV+i4EGb0j3DZBZcALc1LsSYE19c5Caa1DXEtfqghrtBi4GR8Ti6r
	yr1EcLEVw5rXjOpp2ha221QQotOSN0ahMlNkOkd/RkLvhry9ZO43yZvNr9gz/gkshfRYpVFdgvS7u
	rLyq5zI2Ey3KjCwAioSyorZvWl76kbsM14wDPBTzuZ9O/ri4EAa3EZarpswoUVU3Izh0KjE5m+WeY
	CToGdMaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXi66-0006TH-9b; Mon, 03 Jun 2019 08:13:38 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXi5p-0006Mb-Gl
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 08:13:23 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id x538Cdoq002048;
 Mon, 3 Jun 2019 17:12:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com x538Cdoq002048
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1559549561;
 bh=Yy6xaRVBbLuyh41FBcaoTVAl8eAfN9twm28AUEdXycQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MaKfWbk+u3wpVWJQJUa2yLnFBc1y42PpgtLUsd2euIuj4urVlPr7CF3pDUiVLQCfm
 cbghzAtofe1v71Lq3ofmfw0qnkxkiXQKGk5mGwn7i4uEAgWVVFhYLdhFjGeRHcL1ur
 lLrv45psTRB+gbNt6QpZmN25e2h++gW5cnhzbhTFNJvxKosyVvru1UC9SUsynILwR+
 9oEkSV/CyB2TQCjp7vJ8bnzEXO7sZIfTkbNGM9UHd3ACIO5UIyt8aZkvbKRmN++WD2
 Er2T6UQhUw8yCG3IpINybHJn5qvZ2sdf8WY1y4a7g/Jy2q/rESAvpyp4PG62512ngZ
 DUL73jw+4r9gA==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: arm@kernel.org, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: [RESEND PATCH 1/2] memory: move jedec_ddr_data.c from lib/ to
 drivers/memory/
Date: Mon,  3 Jun 2019 17:12:32 +0900
Message-Id: <20190603081233.17394-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190603081233.17394-1-yamada.masahiro@socionext.com>
References: <20190603081233.17394-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_011321_868511_BB5388F5 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

jedec_ddr_data.c exports 3 symbols, and all of them are only
referenced from drivers/memory/{emif.c,of_memory.c}

drivers/memory/ is a better location than lib/.

I removed the Kconfig prompt "JEDEC DDR data" because it is only
select'ed by TI_EMIF, and there is no other user. There is no good
reason in making it a user-configurable CONFIG option.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 drivers/memory/Kconfig                   | 8 ++++++++
 drivers/memory/Makefile                  | 1 +
 {lib => drivers/memory}/jedec_ddr_data.c | 0
 lib/Kconfig                              | 8 --------
 lib/Makefile                             | 2 --
 5 files changed, 9 insertions(+), 10 deletions(-)
 rename {lib => drivers/memory}/jedec_ddr_data.c (100%)

diff --git a/drivers/memory/Kconfig b/drivers/memory/Kconfig
index 392ad4f5c570..477f0f130e5b 100644
--- a/drivers/memory/Kconfig
+++ b/drivers/memory/Kconfig
@@ -8,6 +8,14 @@ menuconfig MEMORY
 
 if MEMORY
 
+config DDR
+	bool
+	help
+	  Data from JEDEC specs for DDR SDRAM memories,
+	  particularly the AC timing parameters and addressing
+	  information. This data is useful for drivers handling
+	  DDR SDRAM controllers.
+
 config ARM_PL172_MPMC
 	tristate "ARM PL172 MPMC driver"
 	depends on ARM_AMBA && OF
diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
index 91ae4eb0e913..9d5c409a1591 100644
--- a/drivers/memory/Makefile
+++ b/drivers/memory/Makefile
@@ -3,6 +3,7 @@
 # Makefile for memory devices
 #
 
+obj-$(CONFIG_DDR)		+= jedec_ddr_data.o
 ifeq ($(CONFIG_DDR),y)
 obj-$(CONFIG_OF)		+= of_memory.o
 endif
diff --git a/lib/jedec_ddr_data.c b/drivers/memory/jedec_ddr_data.c
similarity index 100%
rename from lib/jedec_ddr_data.c
rename to drivers/memory/jedec_ddr_data.c
diff --git a/lib/Kconfig b/lib/Kconfig
index 90623a0e1942..e09b3e081a53 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -531,14 +531,6 @@ config LRU_CACHE
 config CLZ_TAB
 	bool
 
-config DDR
-	bool "JEDEC DDR data"
-	help
-	  Data from JEDEC specs for DDR SDRAM memories,
-	  particularly the AC timing parameters and addressing
-	  information. This data is useful for drivers handling
-	  DDR SDRAM controllers.
-
 config IRQ_POLL
 	bool "IRQ polling library"
 	help
diff --git a/lib/Makefile b/lib/Makefile
index fb7697031a79..cb66bc9c5b2f 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -206,8 +206,6 @@ obj-$(CONFIG_SIGNATURE) += digsig.o
 
 lib-$(CONFIG_CLZ_TAB) += clz_tab.o
 
-obj-$(CONFIG_DDR) += jedec_ddr_data.o
-
 obj-$(CONFIG_GENERIC_STRNCPY_FROM_USER) += strncpy_from_user.o
 obj-$(CONFIG_GENERIC_STRNLEN_USER) += strnlen_user.o
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
