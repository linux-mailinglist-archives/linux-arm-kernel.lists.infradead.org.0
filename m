Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733EC1F8BEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 02:20:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+Sq12q8JCGx8wRMUtUskotUtHb0Z5CPDXq1it2EdtM=; b=csj2xLi1HImLeR
	36IYNx2WrxLpMHAFLmqXb+wQKXe4biLkJY3QCPgdEfInZcSjBSxB9+Y1c4i5QDTzZv5VLcHYcaRdG
	RCNPpiwphTcR6TUHgoKBWn3+LFg8tAcwTZGKOH1d5fsQ7mT1C2rgJJsoOnweD/rAuL8Qfej6AoUeq
	ZMstAXsrglVWU/1Udo/FuKLFoDYeR6wYQaL+3RBW8/Cj+S2xIXxHwLGWZT4xU4+V+Ee0jKR5Iz8K6
	ka0Y/rHojpXiPMaI0KqATA4Pb42Y9R9rerftA6iK1ryUdCCfZaUhA/mcsAemVgxCyNNd/G2SSRWgr
	GyoyB5blBfLRBTsc28vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkcr7-0005xj-G3; Mon, 15 Jun 2020 00:20:05 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkcqN-0005QI-04
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 00:19:20 +0000
Received: by mail-ej1-x641.google.com with SMTP id dr13so15511787ejc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 17:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sMTnpuFTK9jMtHgfDYfsLFnZ16e3Qp2YKWz6Fg/OOQQ=;
 b=TMNNMnFOmmen27sobkCbO/xSOzIoROxVXssX4s+9qM9gKFKpBNvv4poHe354kO8kXM
 x+NT1ijS7ZTZkGoMohxBwyFdzGESdLYqQ58GeUuuOR2pXScfC6b58wpDHY0H+2QZ814d
 +u104JG+82FO24SGOu/jkVTmg2FMv0LHg4orVIE4qK971JwvT5QzI31rSa/JDj5AK/d5
 USVTLKwKjIhxH7HUdYc9o8e4SbuTMhwy5J3rt10eSd8q6LhjSSyYYDfJ0wbld9QdvUvH
 3/Z4s7gCKFlIWv82r6BxlZMGM9A+lXAexHsyxJet1K8NTtU8VoyNhGfWs7LnTRqG6cSl
 BM8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sMTnpuFTK9jMtHgfDYfsLFnZ16e3Qp2YKWz6Fg/OOQQ=;
 b=GFfqD0jUsQmrqkgTtXnn//mIwvtKV8heLK3V+XeD1mc1CJAwYE0wG+FQHwLiyyckrR
 u12GSKsyfVSl5bgGtBYwSdMrfF/+/5Ss1ZzZD2ge1fbzHXahPc+V/VPuMrKquf7QRt7i
 vxqG1J21nrrG9q4EofOpxeB/b5Ydk7Fk/6GEJ3KGGjKObTqOWfn1I5IchHrcJRIfnvy1
 lsnhtM1s7Wv7IXlB5vcm/glciKWsGssd2cNTZ86vyJ94bnI97V3a6rH7102m0cOaiTeN
 RAZ732Gs8JIDKsJL2dpY74ndQ9/DhJuw49rEwJrTG1qq5S9zBN+UlQ44ZxA3EssQsE3t
 i70A==
X-Gm-Message-State: AOAM533bdMg6Pmww2nBXXSTGbuwe5k0vqvi54tCk2/PA+mrUER/yj+Q1
 7T6ESott7TiD3GWxSi/vRnE=
X-Google-Smtp-Source: ABdhPJynU7JATluvS5IkONOy2HvGg1e/Xs2GAOvxN6KxiJXIZWmcUHYO6vytc6SvZDhpg+KBsFxMHw==
X-Received: by 2002:a17:906:4f87:: with SMTP id
 o7mr3547346eju.233.1592180357346; 
 Sun, 14 Jun 2020 17:19:17 -0700 (PDT)
Received: from localhost.localdomain ([188.24.129.96])
 by smtp.gmail.com with ESMTPSA id m30sm7450666eda.16.2020.06.14.17.19.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Jun 2020 17:19:17 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 4/4] arm: dts: owl-s500: Add RoseapplePi
Date: Mon, 15 Jun 2020 03:19:11 +0300
Message-Id: <2d12521d196e2c08a30aacd0ab20d93593f94707.1592123160.git.cristian.ciocaltea@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <cover.1592123160.git.cristian.ciocaltea@gmail.com>
References: <cover.1592123160.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_171919_056003_5EA26D8A 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cristian.ciocaltea[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a Device Tree for the RoseapplePi SBC.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
---
 arch/arm/boot/dts/Makefile                 |  1 +
 arch/arm/boot/dts/owl-s500-roseapplepi.dts | 47 ++++++++++++++++++++++
 2 files changed, 48 insertions(+)
 create mode 100644 arch/arm/boot/dts/owl-s500-roseapplepi.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index e8dd99201397..d0712e7275da 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -856,6 +856,7 @@ dtb-$(CONFIG_ARCH_ORION5X) += \
 dtb-$(CONFIG_ARCH_ACTIONS) += \
 	owl-s500-cubieboard6.dtb \
 	owl-s500-guitar-bb-rev-b.dtb \
+	owl-s500-roseapplepi.dtb \
 	owl-s500-sparky.dtb
 dtb-$(CONFIG_ARCH_PRIMA2) += \
 	prima2-evb.dtb
diff --git a/arch/arm/boot/dts/owl-s500-roseapplepi.dts b/arch/arm/boot/dts/owl-s500-roseapplepi.dts
new file mode 100644
index 000000000000..c61fbaa3821e
--- /dev/null
+++ b/arch/arm/boot/dts/owl-s500-roseapplepi.dts
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Roseapple Pi
+ *
+ * Copyright (c) 2020 Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
+ */
+
+/dts-v1/;
+
+#include "owl-s500.dtsi"
+
+/ {
+	compatible = "roseapplepi,roseapplepi", "actions,s500";
+	model = "Roseapple Pi";
+
+	aliases {
+		serial2 = &uart2;
+	};
+
+	chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x80000000>; /* 2GB */
+	};
+
+	uart2_clk: uart2-clk {
+		compatible = "fixed-clock";
+		clock-frequency = <921600>;
+		#clock-cells = <0>;
+	};
+};
+
+&twd_timer {
+	status = "okay";
+};
+
+&timer {
+	clocks = <&hosc>;
+};
+
+&uart2 {
+	status = "okay";
+	clocks = <&uart2_clk>;
+};
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
