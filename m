Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8170C1F7881
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:08:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S5Cgh3nwaci0igFqyDXCDyb+cRFubyX85zmpWaaRI9w=; b=o11/vsF+e+2tKO
	oUkZBtfKZ7wLAhV2bRVx3J3hZwQVuk5OqQugImpVJWS5zOAGjqL1vQh/X6eS0ED/AxW25GxCQ/myW
	+zmIHHCgfFOh14rRpCxiYKUCdvuHcu8hjdT0jy0xmFDpE6Cgp4yZPETojktzK2sJQsKzdP1JUPdmb
	W7A96qUaHHH3SApFHoDYbZEd4zshzzQxLmmz3XkMXBKC/3KCy+ez4ndT/m/L7pqiH85cMmHRCI/7q
	wWFiuF/FIU0Zfw/z974ErOBtL8ptgZ2Yl2U2svJjUJKZgkQhKGf0xyqvIgsWCM9GKSgoYThCrsCOU
	37cwB1lSCC+4c6MWfQdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjQK-0001gH-TP; Fri, 12 Jun 2020 13:08:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjPN-0001Ff-25
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:07:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id j6so183545pgh.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:07:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jxsELow/CoU16NBO8fCV4XFh+Vs58ACm8fFgodBIGbU=;
 b=NuI67t30a905WyYSCiYxuh1Ijiy1/Wa8B9xKb7AeSHFnLHPFAIM5Sfi0YIomasGcew
 vVxJOto3eAaqYzWsjqsn7w8L+iymOA09GwfQopEKadpZaPvLxDTOSYJT3oV7wXg0kOiL
 Vtd2INi2ObnQNjqAPVoxyFZ4bIGuxdHbbZ3S0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jxsELow/CoU16NBO8fCV4XFh+Vs58ACm8fFgodBIGbU=;
 b=KAMfYr6D8XgqdkLTzkM6aCebKL013ff70m5uU8HCf/ab7jQHoO0pQGFWccNekfmtXh
 QEnqT/h0hml92KoFjAPKfaIi30VVG8WGP6i3iayhkP2EKTtwkizybCatqC21J4BsA1Qy
 /KRIqFLTSJmtr5vC6VXeLOzAGzbtfeyLg200m/E9LW9AH+Cxw0LVX+CDq0bllXoDvChK
 A+S3CsBHkc5XT8wjbGh1f3uVHGtPX+6kqySxI4stSAe1unm02TunvjXVXWP6iYT+uPaL
 GFEbY9Dm6LZQF2qOhX+j0qDeBfVP/mvKzrH8YIDVBjsthrxmdQCqI8G0yXI2gi3spwGs
 6d0g==
X-Gm-Message-State: AOAM531tTb9hU0g1BRCZ5xC3bqdj68FPazrxYjzaoafxfsi1hOJdNZsX
 bqAGzIBt4/9jFu/H/V4NNDnZYA==
X-Google-Smtp-Source: ABdhPJz2Y/2ZRGcxpgC59S7WYCQmMiJa7Peh3f0jjhater+MI9bFf679XvSAX4tfw/CcBWsGldRl5w==
X-Received: by 2002:a62:e503:: with SMTP id n3mr11081283pff.197.1591967263956; 
 Fri, 12 Jun 2020 06:07:43 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id k12sm5481939pgm.11.2020.06.12.06.07.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:07:43 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 11/12] ARM: mstar: Add dts for msc313(e) based BreadBee
 boards
Date: Fri, 12 Jun 2020 22:00:11 +0900
Message-Id: <20200612130032.3905240-12-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200612130032.3905240-1-daniel@0x0f.com>
References: <20200610090421.3428945-1-daniel@0x0f.com>
 <20200612130032.3905240-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060745_147971_DC882847 
X-CRM114-Status: GOOD (  14.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Daniel Palmer <daniel@thingy.jp>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Sam Ravnborg <sam@ravnborg.org>, Ard Biesheuvel <ardb@kernel.org>,
 Stephan Gerhold <stephan@gerhold.net>, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, daniel@0x0f.com,
 Russell King <linux@armlinux.org.uk>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Nathan Huckleberry <nhuck15@gmail.com>, devicetree@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, allen <allen.chen@ite.com.tw>,
 Lubomir Rintel <lkundrak@v3.sk>, Rob Herring <robh+dt@kernel.org>,
 Gregory Fong <gregory.0xf0@gmail.com>, Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, afaerber@suse.de,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

BreadBee is an opensource development board based on the
MStar msc313(e) SoC.

Hardware details, schematics and so on can be found at:
https://github.com/breadbee/breadbee

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/Makefile                    |  3 +++
 .../dts/infinity-msc313-breadbee_crust.dts    | 25 +++++++++++++++++++
 .../boot/dts/infinity3-msc313e-breadbee.dts   | 25 +++++++++++++++++++
 3 files changed, 53 insertions(+)
 create mode 100644 arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
 create mode 100644 arch/arm/boot/dts/infinity3-msc313e-breadbee.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e6a1cac0bfc7..4a5f8075a4f6 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1342,6 +1342,9 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += \
 	mt8127-moose.dtb \
 	mt8135-evbp1.dtb
 dtb-$(CONFIG_ARCH_MILBEAUT) += milbeaut-m10v-evb.dtb
+dtb-$(CONFIG_ARCH_MSTARV7) += \
+	infinity-msc313-breadbee_crust.dtb \
+	infinity3-msc313e-breadbee.dtb
 dtb-$(CONFIG_ARCH_ZX) += zx296702-ad1.dtb
 dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-ast2500-evb.dtb \
diff --git a/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts b/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
new file mode 100644
index 000000000000..f24c5580d3e4
--- /dev/null
+++ b/arch/arm/boot/dts/infinity-msc313-breadbee_crust.dts
@@ -0,0 +1,25 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+/dts-v1/;
+#include "infinity-msc313.dtsi"
+
+/ {
+	model = "BreadBee Crust";
+	compatible = "thingyjp,breadbee-crust", "mstar,infinity";
+
+	aliases {
+		serial0 = &pm_uart;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&pm_uart {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts b/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
new file mode 100644
index 000000000000..1f93401c8530
--- /dev/null
+++ b/arch/arm/boot/dts/infinity3-msc313e-breadbee.dts
@@ -0,0 +1,25 @@
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
+	model = "BreadBee";
+	compatible = "thingyjp,breadbee", "mstar,infinity3";
+
+	aliases {
+		serial0 = &pm_uart;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&pm_uart {
+	status = "okay";
+};
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
