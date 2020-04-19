Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D471AF75F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Apr 2020 07:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oPC+kpewhWu3mm+LL0E9v8IhlDeIBKl2eUGKgiv7DJA=; b=VlcNh+9amtHpu8bHrIVP6UFm+a
	l1XjQIcU2rcAU3puUtg9A1ti5C7sS+7/9sYmvxKuN86O/JRNNdRpD1XH97jK7Q5mHugdAB4OfNbui
	oAxZE8ZzgBDpd0cyfH7ezU3r8qgA4aqUqp6yIMwCEj8HzcToPSNDlTdTLRl82VSDzQLQwFVIVjYWy
	QNsDqAM7j7wCupIFHKcaO/Qv4akpNNlix8eQLiIgT5aeqZ5GwIpgn+3pk064n7XY4hpTtZZXjiUbW
	HMoRmLq6ZPnxiA2Jh9XvvSgMfUAy6zTXPu4eoS3PlfnKndNTpRw44z5FrbHkJMW9DhZp6uu4x0l8Q
	8tPw+IoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQ2uE-00018R-DA; Sun, 19 Apr 2020 05:54:14 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQ2tZ-0000bO-Js; Sun, 19 Apr 2020 05:53:35 +0000
Received: by mail-lj1-x241.google.com with SMTP id u15so6395420ljd.3;
 Sat, 18 Apr 2020 22:53:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ETRJ8mYOQ9yujZCmmqXpwwej2/FIPoryFM9Z1P/Qlt4=;
 b=doXg7c2ioYYkK4WQWUgxwqfnC7y2oLopTk782suwNGNXZ0e7YECuLuH2BXq+6ZPgii
 S6cwZkCRxikfxD7Xqvv8gidbuAvo0P4hWDBIPYgJhqmFpOYlo+HtrOhrFCtoirYr59FT
 KWAErbGNxbllP5le9+rfK/vIHOhTjG0FEs2g3D3PIadq7Dl+3ywFMt5JDKt07zhqODJb
 VPxDq2Gz1RetdyOB7gG/aoR9ARiVrg6PkCL398UN57t/fFLknoQt8gY2mYR7qCKYk/hE
 PfoDt2bl2yJs2RrFXXNFeqLdVKOGa8PYT7aREueGPMA0xePcoCuEWLRiGuQRcGlDn0ZG
 JBqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ETRJ8mYOQ9yujZCmmqXpwwej2/FIPoryFM9Z1P/Qlt4=;
 b=hrSY9AWdyo9RnIIGVTkTmnpFDsc6Abp4GtFTqWpSFKkYh9Fw55HmOze8J8UHiy2qpR
 fzToQZEResnB6iNthDYWUXJPR1uSfIKghc76SrYNJqE5gLBrHX22jPbJkBklU2b3xE2l
 XWW7XxwJYf2ehSygo1XtRVeenvElafwSNIopWqAJ3tGe0yAs3J5L8NmCRjcOV9KHWK7Z
 +5ueIDOnUq5MJhQifUkgBkYVCmS4cyY9VYoMTnKkaVUEDPXCbETk0EacOk61G9GsErym
 GaWKaeQmwniw/DkiczYjN9n1j2eyy1Li/4Pf1ITkOcERFzNttPREqiPopSrk0tYwkJds
 gQOA==
X-Gm-Message-State: AGi0PubcIjyAPJtIFhAU3pJJh+2rAxmUtaRCbXOGCcvFn3iAfg0ltN04
 KGBDNJho1vnxwCu1ZUo7wmY=
X-Google-Smtp-Source: APiQypIpk5R47A7gcnVm6RNFywZg4lAADQNzbBgdyL8UkwtSc5G/cscsnrcEghuNWSwMncxxIZzIBQ==
X-Received: by 2002:a2e:b889:: with SMTP id r9mr2631829ljp.203.1587275611832; 
 Sat, 18 Apr 2020 22:53:31 -0700 (PDT)
Received: from localhost.localdomain ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id h7sm3366247ljg.37.2020.04.18.22.53.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Apr 2020 22:53:31 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] arm64: dts: meson-g12b-gtking: add initial device-tree
Date: Sun, 19 Apr 2020 05:53:20 +0000
Message-Id: <20200419055322.16138-3-christianshewitt@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419055322.16138-1-christianshewitt@gmail.com>
References: <20200419055322.16138-1-christianshewitt@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_225333_667771_FAE0C927 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
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
Cc: Christian Hewitt <christianshewitt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Shenzen AZW (Beelink) GT-King is based on the Amlogic W400 reference
board with an S922X chip.

- 4GB LPDDR4 RAM
- 64GB eMMC storage
- 10/100/1000 Base-T Ethernet
- AP6356S Wireless (802.11 a/b/g/n/ac, BT 4.1)
- HDMI 2.1 video
- S/PDIF optical output
- Analogue audio output
- 1x USB 2.0 port
- 2x USB 3.0 ports
- IR receiver
- 1x micro SD card slot

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
---
 arch/arm64/boot/dts/amlogic/Makefile             |  1 +
 .../arm64/boot/dts/amlogic/meson-g12b-gtking.dts | 16 ++++++++++++++++
 2 files changed, 17 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts

diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
index eef0045320f2..1fd28e84e808 100644
--- a/arch/arm64/boot/dts/amlogic/Makefile
+++ b/arch/arm64/boot/dts/amlogic/Makefile
@@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
+dtb-$(CONFIG_ARCH_MESON) += meson-g12b-gtking.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-a311d-khadas-vim3.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-s922x-khadas-vim3.dtb
 dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
new file mode 100644
index 000000000000..461da47ed463
--- /dev/null
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
@@ -0,0 +1,16 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 BayLibre, SAS
+ * Author: Neil Armstrong <narmstrong@baylibre.com>
+ * Copyright (c) 2019 Christian Hewitt <christianshewitt@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "meson-g12b-w400.dtsi"
+#include "meson-g12-audio-hdmi-spdif.dtsi"
+
+/ {
+	compatible = "azw,gtking", "amlogic,g12b";
+	model = "Beelink GT-King";
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
