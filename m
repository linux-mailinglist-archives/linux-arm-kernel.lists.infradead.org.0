Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53552D5B5C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 08:22:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06VTLE7+d/N//m4p3ur/eiLrmBVd5y8Oai6pZkZH6P8=; b=H3mIOQAV5w3Bkp
	18eZLinXq4VRxhvg09xSsq9mC4XaFJlAK8b6Q1JF4+/IVOBRMtAgQSPPVlZUMlIGI+3jRT/PoT1x8
	tMIC1GdvJ3jOeaQ4bn0O9WlGgDyi+/uJGx0XjLnlqWbBZmw4Ky4vifZ8nciCupUUGa1EXeZNEJcZ0
	deYGpPgxR2xi7VLvb9cK+SERHBHTTyM3D5e3KRroU+fI5b0eNpR1Dm22jtt7nemk2BGI/iU+aX5J0
	EzA6+MLJw5w/7Ox+JkbGSjX74pk4puKc7EestJxsUQzfLO66DYytKEEX6TtQiwYTimZdWvVZGnn21
	uzObE4wAYBMRpWFJrpuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJtkd-0000GT-69; Mon, 14 Oct 2019 06:22:39 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJtkJ-00006z-2o
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 06:22:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id a2so9768117pfo.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 13 Oct 2019 23:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nMERlWSqQRpIHeocTwvdTvcdslf3WCnckyLXrl+iP2k=;
 b=EhVRSGM/LVYHndUx4a8Zhw+E2VhZIauOz0cXdSAihhZcoRRe1lcywXPeUWJLUyo8Yq
 yOHvDRn1xC82Y7kBakikHc8wW1FqjCoAx5tl0zLn8jC9CP5sOsLBF1+eqnPpGBLoc+dD
 5OyjOhz3Z0U147rH8M9ZpDD5Zuo1/E5yr6vOc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nMERlWSqQRpIHeocTwvdTvcdslf3WCnckyLXrl+iP2k=;
 b=nbZUDTlPqObQuflSNEIywI0UxR9m3z+L9i22kfnLWpIMVQXA1pgoQD8+hbzJ7M8i1o
 xjui96y0VVTD4ZPZukDoNKp/V0IkJRDTALzzu5w6Jv9vyVtCgSy+0RKY35HqiNRq9fK7
 t/c4XYPNWbKatfKR7LGKnHmquS9RnEKmxsDRSiK+jJ2VW7BPB3TCgSgdAaA9FWgkutCN
 y2STlR5WKPIQIMql77bKwFCATaosel4kZoqKB4jWUWRnr1nnOHviv/rdW4BWlaqhCQO3
 YHZFsBi4YHY8yZQSuNK9ufNfMrQfrx2G3w+lBfW+ls5QnUg8gYTA2JR4NqmRRMdBgiaz
 Gp6A==
X-Gm-Message-State: APjAAAVJAjvekmqpszrQq8/ZNJUVX8uj4/1KejNqRcTUkXkQHoEBhf8y
 11vtLDCiZCG7nI4zxyzExJVmew==
X-Google-Smtp-Source: APXvYqy3/l0QJtpAHiodbnHKrO53hokveu9msEsRRqy/09MKQZsPbt/kdZKbFPRJlmD1RtGRgsX36w==
X-Received: by 2002:a62:4ed6:: with SMTP id
 c205mr29952341pfb.170.1571034137207; 
 Sun, 13 Oct 2019 23:22:17 -0700 (PDT)
Received: from shiro.work (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.googlemail.com with ESMTPSA id g24sm16874074pfi.81.2019.10.13.23.22.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 23:22:16 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: 
Subject: [PATCH 4/4] ARM: mstar: Add dts for msc313e based BreadBee board
Date: Mon, 14 Oct 2019 15:15:59 +0900
Message-Id: <20191014061617.10296-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014061617.10296-1-daniel@0x0f.com>
References: <20191014061617.10296-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_232219_259682_BC1C76D2 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 Linus Walleij <linus.walleij@linaro.org>, Stefan Agner <stefan@agner.ch>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "Paul E. McKenney" <paulmck@linux.ibm.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, Icenowy Zheng <icenowy@aosc.io>,
 devicetree@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Pitre <nico@fluxnic.net>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Paul Burton <paul.burton@mips.com>, Andrew Morton <akpm@linux-foundation.org>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BreadBee is an opensource development board based on the
MStar msc313e SoC.

Hardware details, schematics and so on can be found at:
https://github.com/breadbee/breadbee

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 .../boot/dts/infinity3-msc313e-breadbee.dts   | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 arch/arm/boot/dts/infinity3-msc313e-breadbee.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index bf0aa53d3a13..e546dfafef55 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1276,6 +1276,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 	mt8127-moose.dtb \
 	mt8135-evbp1.dtb
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
+dtb-$(CONFIG_ARCH_MSTAR) += infinity3-msc313e-breadbee.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts b/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
new file mode 100644
index 000000000000..cf185878c412
--- /dev/null
+++ b/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "infinity3-msc313e.dtsi"
+
+/ {
+	model = "thingy.jp breadbee";
+	compatible = "thingyjp,breadbee", "mstar,infinity3", "mstar,infinity";
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
