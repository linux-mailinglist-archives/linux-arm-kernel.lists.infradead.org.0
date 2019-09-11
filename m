Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419C3AF518
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 06:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I8mrzJwH78n0mTs3hrGsgvNTFymvEoPGwnjculc7Yq8=; b=NxamZe12ZLRis4
	aBMoJY9EHinTAd11wiIPjBXKpFteRrL96H5WTzTZJ9S50QIC/b1Utc1vI5ASDULPz/GFGSgrIb0Ue
	bzQahq4N/EcwVUBSpMzjeFQFGPrP2uXAl2KNJK4cARS2F8QNAgVo2QWsiKBUeLZep3gOQTr2wfgG5
	tarJi41p4ZkFa2LbVcWXW1CvozjfmUC8YfpaTTUZwfSyFU1BtvkaEPyPRIYUqHMki126nvtqLJjbM
	AsBff+cyxPjTLTq7/NU3AE2LO3VaXpBy70WLc52sThHXD3muCl6yjtMxIwzDDOj45f5Fq9LwmrbuS
	pFyFbbCbglu0/uc8bR2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7uJU-0004Pk-1C; Wed, 11 Sep 2019 04:33:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7uIU-0003oW-3k
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 04:32:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id r12so12864103pfh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 21:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YheNAKZhR+O+rBJo0i7qqvlhDdwLsChDJZIO9P7slME=;
 b=kNFjCjUvea0XHWJPdyvY0r+85dIkHVCT7I+9E/MpjOp7jyRMdgy6+g/tZE2hXbiFRR
 ga0y+ROyOz7k6wnEQS+d47BvRecHEMHC/R58cNtfZHW7V7pEqrJ+fGOj5Eh68b2FelcF
 urlcSR/OP9NvfABCybM0dk0F5TtCmMF6bne6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YheNAKZhR+O+rBJo0i7qqvlhDdwLsChDJZIO9P7slME=;
 b=ueF9/ygArNa79RB/XBas38/KR1uZ5a1hKPCCJNgFGfyb8fqRM0sSWkd0Y9bklvSCNG
 bWj/U9dI2etT/GDBsCAlAMavBGRo/Lj4+YnBpyvRjcT5pN/hPyod94Pbg06Z96CBbxMO
 T8lFmKX1i/rCApM4C7F05UH/RUf0EwtDPegdi/s2u2qW+1DlWcr+TQpDFdnhAT/Oby1y
 +CvlvkHaD3xEETBc96vfYV1X7Q89iBnd1e5wNxLee91eVIKDYpJPXw+vFJydDDLfWxe1
 TGcz/7gx2gWIdIKBI2xM6V2OXXDiqz77MS0Bknmio3BqNJ3Xi+KXh6Q8TG7LssWCdG/K
 9KCw==
X-Gm-Message-State: APjAAAXDKDMpMkDiW4t/Y6sPdhszD+Lpd/lQ3ogtRrGxfUSm89rBIks5
 8CokUAMN5Gs5XiMT/PvY1UF7YMf5GF/S8A==
X-Google-Smtp-Source: APXvYqwSVKFkTYL4JJwL/JG5MI+zsD5tHooAAwNraD8s/fXAVxr/CUokXoZ0fyQ0s+4Hp53MPTWGwg==
X-Received: by 2002:aa7:8dcf:: with SMTP id j15mr30177292pfr.5.1568176320919; 
 Tue, 10 Sep 2019 21:32:00 -0700 (PDT)
Received: from shiro.work (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.googlemail.com with ESMTPSA id u17sm264700pjn.7.2019.09.10.21.31.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 21:32:00 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC 4/4] ARM: mstar: Add dts for msc313e based BreadBee board
Date: Wed, 11 Sep 2019 13:31:42 +0900
Message-Id: <20190911043142.3734-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911043142.3734-1-daniel@0x0f.com>
References: <20190911043142.3734-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_213202_213337_60DE10B2 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Daniel Palmer <daniel@0x0f.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BreadBee is an opensource development board based on the
MStar msc313e SoC.

Hardware details, schematics and so on can be found at:
https://github.com/breadbee/breadbee
---
 MAINTAINERS                            |  1 +
 arch/arm/boot/dts/Makefile             |  1 +
 arch/arm/boot/dts/msc313e-breadbee.dts | 26 ++++++++++++++++++++++++++
 3 files changed, 28 insertions(+)
 create mode 100644 arch/arm/boot/dts/msc313e-breadbee.dts

diff --git a/MAINTAINERS b/MAINTAINERS
index c71c3ec3d43f..2768d6e07afb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1961,6 +1961,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
 F:	arch/arm/mach-mstar/
 F:	arch/arm/boot/dts/msc313*.dtsi
+F:	arch/arm/boot/dts/msc313e-*.dts
 S:	Maintained
 
 ARM/NEC MOBILEPRO 900/c MACHINE SUPPORT
diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 9159fa2cea90..b4b5f639859a 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1265,6 +1265,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 	mt8127-moose.dtb \
 	mt8135-evbp1.dtb
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
+dtb-$(CONFIG_ARCH_MSTAR) += msc313e-breadbee.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/msc313e-breadbee.dts b/arch/arm/boot/dts/msc313e-breadbee.dts
new file mode 100644
index 000000000000..470ea5fd94a7
--- /dev/null
+++ b/arch/arm/boot/dts/msc313e-breadbee.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "msc313e.dtsi"
+
+/ {
+	model = "thingy.jp breadbee";
+	compatible = "thingyjp,breadbee", "mstar,msc313e", "mstar,msc313";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+		bootargs = "console=ttyS0,115200";
+	};
+
+	aliases {
+		console = &pm_uart;
+	};
+};
+
+&pm_uart {
+	status = "okay";
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
