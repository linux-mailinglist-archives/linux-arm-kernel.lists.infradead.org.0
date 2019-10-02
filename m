Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EF3C8D76
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 17:57:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bA1RqZte7rzL7BVxAYieqNcMhxRgL+ik1JKasdwVLPY=; b=f1G
	fz3Fzw+5EJbZF+bMkjnpvmQbQCam+uhT62w0nJVfp/vgLkWIM21RPpdVd90vWuuesoJa3ZHwFOn+Q
	zH7KdlBQ4G5Zlpi0d5LMCLMhOYSQRcy2yQnhIVn0OIrC4guHStSZZu94n+HH8TOtyAxuRRopbxn58
	7EJRu4Q3XLnrsyyc6fVyJfdBTcElMDcCWcByc6WOGADaxtEv7qKk0PY/8JVbLm4pUi5MdoksaPLnk
	TdCvW0wvYy+Lcri4jSfNE8RuSxovfiC5LZccz1rHewAMsocxs57Uz/LKq+UxPvUv8TSQBdLlk75VI
	2NuBjbwPpX1DKQIJNUlQf/wNKCPUAaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFh0W-0005X5-Qz; Wed, 02 Oct 2019 15:57:40 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFh0O-0005Wh-Tu
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 15:57:34 +0000
Received: by mail-pl1-x631.google.com with SMTP id d22so7230874pls.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 08:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=Wf9B4YsXk9gokF161k/iRuBPFG5mNkYGFxNwG7giJ34=;
 b=opsLeZMJjn3H9A1cyslACeK8jfmkpkR0Uzeibi1ZF/EaqvAaj82qvW3acYFkEIKZwd
 seC7RLPvnwl9SZ/JwKWHNuTci3hzJov8ohzTfg6EGyFtRBZ2lwcmA9343SHBtnye5q6s
 U07xbrcGkfWAo3F+vvhZ2Wsyy/WrKQefltuMlcFXum0/JsCf+tHfsuQ+tQaEo2GGlUB1
 3KAIVxyN1++XSr8DBQ9uGhc5ucZerwopms1xZ++zRpSuarck7ZVq3x6gatjDuVJpanXG
 OWkkoE1mo+wlAKHFiQqV4IPpfgAJB09ADQkVlZB0zwyNsHjTnWCBT5cc1O+VWcaD4I7C
 3ctQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Wf9B4YsXk9gokF161k/iRuBPFG5mNkYGFxNwG7giJ34=;
 b=G/Rm847I/L+XDxlAkwg6/HLJINNnzLexaGMoIFVwBdA7bcU4UEbz7mIYVxyb8ZJLjm
 N0UD+2hVxuu+wyWEdTWFIv/xl7+iJtUJvgusuCBBTODb1+I97cGCf+L+nrFRXdGLsmXF
 IQ31W3kggRZBSwVHdnWjdOBTmQekZVxYovvts+yUxO4E0sET2sk6KvhuuYFhV+Ps8Kdj
 Bhyjg6gtdD4hhxUMIQIlwBPu1O+zBdeaD7Mhdk9stWe8OiZ/7tZ/PU9ohi/AOC0u2qQg
 7JCNXF7qnVcG0+DNrHyV41VrTmuO81KJFdRBrONDDSw0R4P9agHStBUR9JXwQlTGQuB1
 Ji8A==
X-Gm-Message-State: APjAAAVNlF8VURPDPSS5bnKta7HMuuYXO7mRqZ6MYVDu7w0YjvQPLNRr
 XDCSsH1nS+6Gpju9lkSE8hQ=
X-Google-Smtp-Source: APXvYqyoGpsRfilYh1YdEUbIB9RC7c346FhwL8gPwPkaI4wMogpnkrVavxq2XXF0YkFTosKriqepWg==
X-Received: by 2002:a17:902:d685:: with SMTP id
 v5mr4320225ply.15.1570031851727; 
 Wed, 02 Oct 2019 08:57:31 -0700 (PDT)
Received: from localhost.localdomain ([67.139.187.132])
 by smtp.gmail.com with ESMTPSA id q71sm6600804pjb.26.2019.10.02.08.57.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 02 Oct 2019 08:57:31 -0700 (PDT)
From: Dan Haab <riproute@gmail.com>
X-Google-Original-From: Dan Haab <dan.haab@luxul.com>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH] ARM: dts: BCM5301X: Add DT for Luxul XWC-2000
Date: Wed,  2 Oct 2019 09:57:26 -0600
Message-Id: <1570031846-8330-1-git-send-email-dan.haab@luxul.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_085732_988589_A9F08FD3 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:631 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (riproute[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hauke Mehrtens <hauke@hauke-m.de>,
 =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Dan Haab <dan.haab@legrand.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dan Haab <dan.haab@legrand.com>

It's a simple network device based on BCM47094 with just a single
Ethernet port.

Signed-off-by: Dan Haab <dan.haab@legrand.com>
---
 arch/arm/boot/dts/Makefile                    |  1 +
 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts | 53 +++++++++++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index b21b3a6..f6b578d 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -113,6 +113,7 @@ dtb-$(CONFIG_ARCH_BCM_5301X) += \
 	bcm47094-luxul-abr-4500.dtb \
 	bcm47094-luxul-xap-1610.dtb \
 	bcm47094-luxul-xbr-4500.dtb \
+	bcm47094-luxul-xwc-2000.dtb \
 	bcm47094-luxul-xwr-3100.dtb \
 	bcm47094-luxul-xwr-3150-v1.dtb \
 	bcm47094-netgear-r8500.dtb \
diff --git a/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
new file mode 100644
index 0000000..3343253
--- /dev/null
+++ b/arch/arm/boot/dts/bcm47094-luxul-xwc-2000.dts
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+/*
+ * Copyright 2019 Legrand AV Inc.
+ */
+
+/dts-v1/;
+
+#include "bcm47094.dtsi"
+#include "bcm5301x-nand-cs0-bch8.dtsi"
+
+/ {
+	compatible = "luxul,xwc-2000-v1", "brcm,bcm47094", "brcm,bcm4708";
+	model = "Luxul XWC-2000 V1";
+
+	chosen {
+		bootargs = "earlycon";
+	};
+
+	memory {
+		reg = <0x00000000 0x08000000
+		       0x88000000 0x18000000>;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		status	{
+			label = "bcm53xx:green:status";
+			gpios = <&chipcommon 18 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "timer";
+		};
+	};
+
+	gpio-keys {
+		compatible = "gpio-keys";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		restart {
+			label = "Reset";
+			linux,code = <KEY_RESTART>;
+			gpios = <&chipcommon 19 GPIO_ACTIVE_LOW>;
+		};
+	};
+};
+
+&uart1 {
+	status = "okay";
+};
+
+&spi_nor {
+	status = "okay";
+};
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
