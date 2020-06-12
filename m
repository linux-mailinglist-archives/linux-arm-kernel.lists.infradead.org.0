Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 450541F787F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EScb45uFlAbd0K21UHJGIPNf2ELpCnKkjhrQqslDjjM=; b=Y1ILUnMiJa7n01
	tpJdhul6I2leVUZ4bL8h5PbT1kds9S3eM0GO8c8+isv9oenfpI5Zm386ibxraG6UTeRSKXaLnkEar
	yGYFjnMzjZBCSzaLRMhwVm/JSNiCBaELZOfzQvcPTdjXk9e1Az9nxfIJyKZeTx2GBsIQL7Rx6l5qQ
	ysSfj1jUbIBqCTqqcIyaX1rD/w2l5sXfRmVJSUTjF671fB7xVutTKpdC30FdmajNECvlpgNaqV2I+
	0eoqskRUd8nb9YyTEynyMVHYUHxxVQ3M5bIUe3k0OhirI2dF2VtP07ioZSvwqtz4pvT6G4x9DIw98
	pJZOet0iVESWFI7FciPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjjQ0-0001QA-Eq; Fri, 12 Jun 2020 13:08:24 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjjOw-0000yh-35
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:07:20 +0000
Received: by mail-pl1-x641.google.com with SMTP id m7so3722123plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 06:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Z1wL/nTpoCfTcg366NsnGcxAQJ1eOVS2RuakcWo4bpQ=;
 b=bbWvobokn1hMGVtYjKXn8jL0a0LeCtMPDb1/be00BoCaEAZ9W9JD9qacJJFtGsl/Gd
 wUw1uPOr1miju7K8G5AWTsSAkKvNGpPiZ1SZrNiZzCJmRWHK97DhicFtvnPiFjZshXmx
 hi5trNaMbOZLaFoD3CLLZcM131hIwxj10onW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Z1wL/nTpoCfTcg366NsnGcxAQJ1eOVS2RuakcWo4bpQ=;
 b=JurqwiWoPqcSG8W5dNhy2L1zPk2pzlcki8jnIYqLGPBkMemu2aIPOyY7w9APCKja9n
 tjOB2flMag+ugYI96XdPrZOTLKPORVmVc/n+V2YvZ9bkhWle7TDa5tEoVaDXJFDNxcZt
 caimnl1mq43uHfye6KMXJMoMEWtmwWh3bsb/NGX+Xb5fNzejreLBeiS1MtG9NshUpq5H
 6l6kRVc7xoQ8mIbiq6vMq23d3ZyLlbY6CqKKQmH1kINK1wzsay+mtSZsjCXlR3qfbo0a
 osw9VOMEa1+Z+yXFzaquWHxK+klN+a5ofIAApj5x/zDqAXHQN+wygndBwd0cH2JLgAWM
 mGog==
X-Gm-Message-State: AOAM532vfSKa8smcFoDWk055cdsMtdyg+1LVBJ78YwmA0u4W0MVnvTnV
 Q57Pe5rieITWliYG4gN50cUWIA==
X-Google-Smtp-Source: ABdhPJztVlOEvC0EqrVons+BbjARSXkv+88YEx+nBZ1tLtU1TyUeHyNXKIoIxoaYXc/0nKINXqE1Yw==
X-Received: by 2002:a17:902:82ca:: with SMTP id
 u10mr11312443plz.294.1591967237499; 
 Fri, 12 Jun 2020 06:07:17 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp.
 [114.171.61.116])
 by smtp.googlemail.com with ESMTPSA id k12sm5481939pgm.11.2020.06.12.06.07.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Jun 2020 06:07:16 -0700 (PDT)
From: Daniel Palmer <daniel@0x0f.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 10/12] ARM: mstar: Add mercury5 series dtsis
Date: Fri, 12 Jun 2020 22:00:10 +0900
Message-Id: <20200612130032.3905240-11-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200612130032.3905240-1-daniel@0x0f.com>
References: <20200610090421.3428945-1-daniel@0x0f.com>
 <20200612130032.3905240-1-daniel@0x0f.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_060718_161704_A99E2519 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
 [URIs: linux-chenxing.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 Will Deacon <will@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, Gregory Fong <gregory.0xf0@gmail.com>,
 Doug Anderson <armlinux@m.disordat.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Christian Lamparter <chunkeey@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, afaerber@suse.de,
 Mark Brown <broonie@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds a family level dtsi for the mercury5 and then a
chip level dtsi for the ssc8336n chip.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 MAINTAINERS                              |  1 +
 arch/arm/boot/dts/mercury5-ssc8336n.dtsi | 14 ++++++++++++++
 arch/arm/boot/dts/mercury5.dtsi          |  7 +++++++
 3 files changed, 22 insertions(+)
 create mode 100644 arch/arm/boot/dts/mercury5-ssc8336n.dtsi
 create mode 100644 arch/arm/boot/dts/mercury5.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index 7673acf55172..246951ab0888 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2117,6 +2117,7 @@ S:	Maintained
 W:	http://linux-chenxing.org/
 F:	Documentation/devicetree/bindings/arm/mstar.yaml
 F:	arch/arm/boot/dts/infinity*.dtsi
+F:	arch/arm/boot/dts/mercury*.dtsi
 F:	arch/arm/boot/dts/mstar-v7.dtsi
 F:	arch/arm/mach-mstar/
 
diff --git a/arch/arm/boot/dts/mercury5-ssc8336n.dtsi b/arch/arm/boot/dts/mercury5-ssc8336n.dtsi
new file mode 100644
index 000000000000..7d4a4630c25c
--- /dev/null
+++ b/arch/arm/boot/dts/mercury5-ssc8336n.dtsi
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "mercury5.dtsi"
+
+/ {
+	memory@20000000 {
+		device_type = "memory";
+		reg = <0x20000000 0x4000000>;
+	};
+};
diff --git a/arch/arm/boot/dts/mercury5.dtsi b/arch/arm/boot/dts/mercury5.dtsi
new file mode 100644
index 000000000000..f68e6d59c328
--- /dev/null
+++ b/arch/arm/boot/dts/mercury5.dtsi
@@ -0,0 +1,7 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2020 thingy.jp.
+ * Author: Daniel Palmer <daniel@thingy.jp>
+ */
+
+#include "mstar-v7.dtsi"
-- 
2.27.0.rc0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
