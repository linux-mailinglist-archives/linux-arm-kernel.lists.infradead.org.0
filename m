Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFF4136ED8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 14:57:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qt515P6Q1yNN/Bja6dxriN/j2ZAdQeVBZ3vIG7KZOr8=; b=lNC
	802Adp44q5s0ktyprRsunPyCoLvs90+Zmvf1LpF3O9GdRrwY+Nbq7LZoeqj7I2jjPWtXtaG4Lug91
	+cXb2/Bk9+9CCg2HlqegscbBFgmiBjbEfm4STUAkiRXHDXRRlggZLUjAGgVZKrqjcwpJ7hrSJGZGh
	r8xX1sOYnxY5fQr1IXivrueQDPQmoqfvEPVaK78LiGXpyJJeEPwZblxL1/+6ttG0UhwVZIc5bx5Vc
	0ZEFJ96zaNsDdA52pa/D1PPn/G0vuY12l+c6YhNLa0Z4Lmsg1KNP+BeWuVEqeSeYATxYMwsqyi88t
	f+L4XNJPanbQPuT44bXNLBJ7azywy4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipun0-0001jj-PA; Fri, 10 Jan 2020 13:57:26 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipumt-0001jC-Dl; Fri, 10 Jan 2020 13:57:21 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 00ADuLH8021001;
 Fri, 10 Jan 2020 22:56:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 00ADuLH8021001
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1578664582;
 bh=zVyX+jnC81yFPW4LBhJZnImuwwlFDcqtIGqjvmZlyqg=;
 h=From:To:Cc:Subject:Date:From;
 b=vwOmdHD4C4wa/uGHgTN9FkESn/XEWK+Uevv4ZerrGKBY1PZMEDPK7/IWY78IuB2Mg
 4sGcQi7DeKxMh93gH9tb9e5OTYcmRtDlOlgj2FJP7o/S+vnzRE0FEhO29I2LlM9G70
 pLjgpTZ5+v9HHS7E9f+5BUTWn//cnwGU5oXYOi8NfAzmB6X/5vFUzsugJ9Za6S2Hqr
 DzuvkJaDVrha+uERl+0LNUmJC9ys9+d1BUA1BQEg6t3YC6vRiQfWmuFBtSSZZcALJz
 NbDpOLMUsOlv7cxWnKuD1Dln0Rvk0GIuNl1zSysPA3whmpr9SBm+7ufHhfEAZAHV5J
 ga5SnnQ6h6Uaw==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org
Subject: [PATCH v2] staging: vc04_services: remove header include path to
 vc04_services
Date: Fri, 10 Jan 2020 22:56:15 +0900
Message-Id: <20200110135615.11617-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_055719_685528_E922273E 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Masahiro Yamada <masahiroy@kernel.org>, linux-kernel@vger.kernel.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up some relative paths in #include "..." directives, and remove
the include path to drivers/staging/vc04_services.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - fix up some relative paths.
    I tested with/without O= option this time.

 drivers/staging/vc04_services/Makefile                        | 2 +-
 drivers/staging/vc04_services/interface/vchi/vchi.h           | 4 ++--
 .../staging/vc04_services/interface/vchiq_arm/vchiq_shim.c    | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vc04_services/Makefile b/drivers/staging/vc04_services/Makefile
index afe43fa5a6d7..54d9e2f31916 100644
--- a/drivers/staging/vc04_services/Makefile
+++ b/drivers/staging/vc04_services/Makefile
@@ -13,5 +13,5 @@ vchiq-objs := \
 obj-$(CONFIG_SND_BCM2835)	+= bcm2835-audio/
 obj-$(CONFIG_VIDEO_BCM2835)	+= bcm2835-camera/
 
-ccflags-y += -Idrivers/staging/vc04_services -D__VCCOREVER__=0x04000000
+ccflags-y += -D__VCCOREVER__=0x04000000
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 56b1037d8e25..ff2b960d8cac 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -4,8 +4,8 @@
 #ifndef VCHI_H_
 #define VCHI_H_
 
-#include "interface/vchi/vchi_cfg.h"
-#include "interface/vchi/vchi_common.h"
+#include "vchi_cfg.h"
+#include "vchi_common.h"
 
 /******************************************************************************
  * Global defs
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 0ce3b08b3441..efdd3b1c7d85 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -3,7 +3,7 @@
 #include <linux/module.h>
 #include <linux/types.h>
 
-#include "interface/vchi/vchi.h"
+#include "../vchi/vchi.h"
 #include "vchiq.h"
 #include "vchiq_core.h"
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
