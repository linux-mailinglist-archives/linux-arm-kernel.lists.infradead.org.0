Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C64109E40
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 13:49:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxXG879WXo9f0vOE/mgfRPYbCvVmu5hTH+ZZrSSMU2g=; b=Xic8SC4ImVkAaL
	4FfmAqkU/2NBHzNX2ySVFSrGwQ5+p4qbWhdI2RhzZ6xF540WYFkmK0LWNLYpEoDF6CR7E9ZYINEqo
	aBYQ7S81LQ2OCrUnNNIC4QhJuOrYs8cPQz4gV6SVCVSDgt2aTKeo3TMM5/0IO47t3049xrZ4WD/VH
	kiiu9UoKxcZfgGRzlrHyomnXgSeu3ceU3hQ6ljfhuz+YeciWchB3fsuUH2D23dh79dOJI+3Y9tixi
	/9beJ1sLVnbr9UPbe3fGIO0lyhnCkCcIUzg92kYjOu365DDvDHIGIKBBpaIPrWwSeDeoOyPQfN88E
	Y3wNxfhl+X2vM3i9ewkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZaH3-0004Ew-Pl; Tue, 26 Nov 2019 12:48:57 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZaFz-00028P-O7
 for linux-arm-kernel@lists.infradead.org; Tue, 26 Nov 2019 12:47:53 +0000
Received: by mail-lj1-x241.google.com with SMTP id t5so20098120ljk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 Nov 2019 04:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jSJxYjoX98bZdF5uLL7uqfaEgtFrbHqVfIiky5EZ03Q=;
 b=VYEBEjL2KR1lJeKRhhV7qo6xY9HfKcwsAw9SjpWeulH2KsqnfWzp1OZb3Ey7TyofOA
 mjrbYfOPs9Rqp++sOrHzr3rFE5Ske7F4tS1w3AkF6xea0KHfbib+gC03N7nUl9uowy7L
 OFlbLRabTlOLIkASNk3tBDStUeT0dMTjcZtOMI8Q5uhbaeL2GB9U2bKVUU4RP66AqZbK
 23rwzsIRc2S6rpNAlyRn+10UQbgKYTrcYELFJ1Dk5QxviFvs1GeSr+1PZgSi3Hv+efjh
 uFO33FxpHOv8tLDDpkXdetLmcJqm2nsZWkbTlyVLx8N+Oa/FEBmHSnbEdCnqq8DiyDLR
 3hzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jSJxYjoX98bZdF5uLL7uqfaEgtFrbHqVfIiky5EZ03Q=;
 b=Aiggp+MTXX1rqAzvOY26bO2pGjLBDDLQNp18VzSHnDATbpuvDQmqvxzp4/rHpadMDD
 hgzIy0VlGVABByvln5+99adtv9meQQfjZqJzHCQgzglknw7dNU3FJR+oeM0ZsKp1dYFy
 Gbs65qxFK3rGp1ZN9myEF2U9VeySFLMw54UVLEJYw7cH1mFgvHEnVhP4pdIejCQKNVjF
 5hF7Y5PtS21pYvmdGwRSVeuJ8lx7gx2AuHBp7QTxmDwB1ygja819d0AklkTpkvQoxFUO
 +/UMnb8Z2ZyKDKkpmRI1WR7V6Wwec8lxluYsInfF42g2vr5b34bXx2j6ov3hncFwKfAD
 ewhQ==
X-Gm-Message-State: APjAAAWvYSiO3N+8n5qgaB3198TQDh0gi8mRv9U+cTkChW5CmMoZwqX7
 nnZed2fJrxp8Jw5laOKRkhPi+nGRheE=
X-Google-Smtp-Source: APXvYqyLZNGrA2/ndb893kbjC9sVWgadAqT7S1eY7m6svChMn857LBp5r5KJycTiLL1HYTiCMpCBeg==
X-Received: by 2002:a05:651c:20f:: with SMTP id
 y15mr25999216ljn.31.1574772469521; 
 Tue, 26 Nov 2019 04:47:49 -0800 (PST)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id j10sm14874lfc.53.2019.11.26.04.47.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 04:47:48 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/4] ARM: dts: ux500: Add devicetree for HREF520
Date: Tue, 26 Nov 2019 13:47:37 +0100
Message-Id: <20191126124738.77690-3-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191126124738.77690-1-linus.walleij@linaro.org>
References: <20191126124738.77690-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_044751_837610_E91DCA24 
X-CRM114-Status: GOOD (  15.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Stephan Gerhold <stephan@gerhold.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reference design is very similar to the others just that
it has a different display mounted on the user interface
board, and some GPIOs where shuffled around.

As this is the first board that uses DB8520 we create the
DB8520-specific DTSI file here.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/Makefile            |  3 ++-
 arch/arm/boot/dts/ste-db8520.dtsi     | 15 +++++++++++++++
 arch/arm/boot/dts/ste-href520-tvk.dts | 22 ++++++++++++++++++++++
 3 files changed, 39 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/ste-db8520.dtsi
 create mode 100644 arch/arm/boot/dts/ste-href520-tvk.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index b21b3a64641a..3de5a3e5cd79 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -1171,7 +1171,8 @@ dtb-$(CONFIG_ARCH_U8500) += \
 	ste-hrefprev60-stuib.dtb \
 	ste-hrefprev60-tvk.dtb \
 	ste-hrefv60plus-stuib.dtb \
-	ste-hrefv60plus-tvk.dtb
+	ste-hrefv60plus-tvk.dtb \
+	ste-href520-tvk.dtb
 dtb-$(CONFIG_ARCH_UNIPHIER) += \
 	uniphier-ld4-ref.dtb \
 	uniphier-ld6b-ref.dtb \
diff --git a/arch/arm/boot/dts/ste-db8520.dtsi b/arch/arm/boot/dts/ste-db8520.dtsi
new file mode 100644
index 000000000000..48bd8728ae27
--- /dev/null
+++ b/arch/arm/boot/dts/ste-db8520.dtsi
@@ -0,0 +1,15 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+
+#include "ste-dbx5x0.dtsi"
+
+/ {
+	cpus {
+		cpu@300 {
+			/* cpufreq controls */
+			operating-points = <1152000 0
+					    800000 0
+					    400000 0
+					    200000 0>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/ste-href520-tvk.dts b/arch/arm/boot/dts/ste-href520-tvk.dts
new file mode 100644
index 000000000000..f8c0c1e6aa04
--- /dev/null
+++ b/arch/arm/boot/dts/ste-href520-tvk.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Device Tree for the HREF520 version with the TVK1281618 UIB
+ */
+
+/dts-v1/;
+#include "ste-db8520.dtsi"
+#include "ste-hrefv60plus.dtsi"
+#include "ste-href-tvk1281618-r3.dtsi"
+
+/ {
+	model = "ST-Ericsson HREF520 and TVK1281618 UIB";
+	compatible = "st-ericsson,href520", "st-ericsson,u8500";
+
+	soc {
+		vmmci: regulator-gpio {
+			gpios = <&gpio0 5 GPIO_ACTIVE_HIGH>;
+			enable-gpio = <&gpio2 14 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+		};
+	};
+};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
