Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23FAA85D16
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 10:43:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jd5uyYj7PTeBSnzLfhBe5S6wUic4G7a64eAfRLze0BM=; b=JVTDwv6FSHLxQT
	aNfrF7ho+3XV+R+YpA1HVWT9k++YLMly0cDtiALJD3umNqh6mPSbq5COBYu3P9aYGjFyhrr6e5z6c
	b9BjFQwt3PR++XrznHhU/QoXnB0uEOa0uXUVUT0jYFqCLUE8SerUxgD7D02TaXcq8sa+tdw45h9sV
	S9PNnszKvuy9HWIT/DcJaipRkzIqUemrwGZPjWUzAgDt7dNvPvATrm/WRbL9lOFL7UEASIyKhcKXj
	RX+Pj+lEIws3ZjJtvf/gu/QqebVhZ1em3giyvqd9omrB3oS9AgYE1ohCjE2WMeNqRNk6q8cEcFHBX
	KyvNUVA7ZOreGgmAAvBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hve0u-0005Kx-Ps; Thu, 08 Aug 2019 08:43:13 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hve0g-0005KJ-US
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 08:43:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id s15so1551334wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 01:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o0gY6GIOGxAdAcOqxh/7txJTZ7y4Fp96qJrFWzmJvJs=;
 b=RUwiyaImbBGQoy18xa2BhqGI8xsDFamrbahqE96VfeFA6VE0a+pYf+hMqnuX0AZhmo
 Z+mJc+SlQn5ApVviiHsgsXmnDePZl0YFD0+TWX2vDF/RUl2FiIq6m2KsXrM1v1C48xmJ
 7nN6hfG9Sbn4S4s2FztFp25RDmu+C91Jv9V6VjynVMBYlaIypgm3v9xzgqJD/XOftZpj
 Zg9jkrI1j2cnfDSgNsF/lHXvEW7hgX0WfokMqFvil8cKK9kyV4VWlV0o4m4J4Zj8OfVi
 nhdoe7sl2TURQXr2WEzaXbScdo97ImFTTpXg5AfS0d60/mGaaYnDFL10jlkslAIjTZFK
 lg7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=o0gY6GIOGxAdAcOqxh/7txJTZ7y4Fp96qJrFWzmJvJs=;
 b=jm1KkBF9g5rX9alnkp1ZLAe5Xl+AWxlJUcaNF1U2vAz6/UCKKxwCzt/mM4/G70azzG
 tcesYuJLB7Q6bd1iEjZTlC+1vteNJoU8Yxpg4XLN2wvFrChKNT2ipBtuiHNc/9GnbYcC
 TqcTptS505eTorUG/WlgZJX2YcdzQBiN1Tk0uddrlNu5VdiGPTZO7xU+SVa0MSxLVDRe
 Omtrw80PVZN9XWAPtOeNvha6Yj55p2pkFL+7LIQ1DPMOandfX2pIQ/zQcLCIETts78Bz
 6JI//R3Z6EiDzgPO1r1wAWUKqn/dlsttkkQNfPMjQ223BKhj7W9Ib0bKE1MMO8KMx2+3
 h+qw==
X-Gm-Message-State: APjAAAU2NhOqJApCV9JlyKTGyFf6B8wbZng2nhGs2FTffIYgW9n4dikz
 DOX6HIHK82bj7KQrZ5MhLJg=
X-Google-Smtp-Source: APXvYqwlO+R71FW8BynOKwYku3Wp9gYOHeIIBZF6I/QjRTsEvLX/UseL7h//+kMmc+MbDlaAx5ji/g==
X-Received: by 2002:a7b:c383:: with SMTP id s3mr2992226wmj.44.1565253776712;
 Thu, 08 Aug 2019 01:42:56 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id c1sm2059259wmc.40.2019.08.08.01.42.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 01:42:56 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
Subject: [PATCH] ARM64: dts: allwinner: Add devicetree for pine H64 modelA
 evaluation board
Date: Thu,  8 Aug 2019 10:42:53 +0200
Message-Id: <20190808084253.10573-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_014258_990345_25BBB86A 
X-CRM114-Status: GOOD (  14.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds the evaluation variant of the model A of the PineH64.
The model A has the same size of the pine64 and has a PCIE slot.

The only devicetree difference with current pineH64, is the PHY
regulator.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 arch/arm64/boot/dts/allwinner/Makefile        |  1 +
 .../sun50i-h6-pine-h64-modelA-eval.dts        | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index f6db0611cb85..9a02166cbf72 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -25,3 +25,4 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-3.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-lite2.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-orangepi-one-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h6-pine-h64-modelA-eval.dtb
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
new file mode 100644
index 000000000000..d8ff02747efe
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64-modelA-eval.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0+ or MIT)
+/*
+ * Copyright (C) 2019 Corentin Labbe <clabbe.montjoie@gmail.com>
+ */
+
+#include "sun50i-h6-pine-h64.dts"
+
+/ {
+	model = "Pine H64 model A evaluation board";
+	compatible = "pine64,pine-h64-modelA-eval", "allwinner,sun50i-h6";
+
+	reg_gmac_3v3: gmac-3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc-gmac-3v3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <100000>;
+		gpio = <&pio 2 16 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+	};
+
+};
+
+&emac {
+	phy-supply = <&reg_gmac_3v3>;
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
