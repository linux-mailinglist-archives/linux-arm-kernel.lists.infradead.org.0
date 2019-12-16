Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD9C121219
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 18:49:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WUkLNYuAra6q7TRdvaZ8Ajp24TKUfh1+TFxkNV2CeUQ=; b=E4olyMN4uIflE1
	mBL2w+tuIrhUTmi9BLSlaZZZ05hFH97F3yvtkRgSlPF8JbJPHhxTTJsdZKl2QzO/CwkjwDXK9WPD8
	Gh8aFD1cJEgUzrTyi3A7tbW137fkFjoweNXcvhnEBqWuw3VOS3linxGZ89Ar1mk6R7bw3eD76wQVB
	BeuAeFyhLaUBpzSe/tz5LxBDI/khXcw5TFpT0e22fo/Erp2wW8CyyYwAHP5dOXbj4q2KtsI12V+Y3
	Ibbquj9QlFVgMNo/2d61GMY/sXtitZkV8cvHvOFfTt2f+U6WkZa2RiFi0+G+HUkE+AxlQpTan278/
	J2JfwazBj/xjLXKxPg6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguUU-0004sj-Sr; Mon, 16 Dec 2019 17:49:06 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguTS-0003yY-Q0
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 17:48:07 +0000
Received: by mail-pl1-x641.google.com with SMTP id p9so535659plk.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 09:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=67RnPKw63+A5B3mWKU81b+vfdJ8KYwSGtoL1kew422s=;
 b=rHVK/Ju0g15r+TRIbS2kezdGsHO37G24hm0K36ZYbAlHspIVlXS4Ys59i8GgAGUaBo
 4Otfi12AJqW/wV46QUynw6JkAr1d7J/IK/zQ/HojllVeIiX7ao2zKhm+pzp/DFP42FeE
 wVO8n2xTycRSGXty5gg+VNYHFHaSgOgftBJhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=67RnPKw63+A5B3mWKU81b+vfdJ8KYwSGtoL1kew422s=;
 b=p+NDprR7IRndxGdTK0xDyHTFc5d85vGXBYVCfEPLHJ9mxreOpHxbx+O7dWWBWg4unQ
 FsNM0a2gNgss7colFLPy2okaSmwihtUhYU/D7CUZs8ZIgyAwnYl1Q1zITuR+96k4f+Zi
 QK+9GWoA8lzsbtuFAejLcU5+zooYHHbpXkjFNlgnD56xSV2nQ5fGB6Z7pl0r5VaaWrvX
 Or+ecdepov3bv3awH+vPRJObyWi0PEE1I1BPhy1FgUlgOzucx+FGnglLWKZhlzcmZCdP
 bmJg1XmWvvta9mnA09XMHbvrZxMFtmjiIB5uSklIkb0354svYU/xBv9T51aTlDRWfILw
 KNZQ==
X-Gm-Message-State: APjAAAXmkEbDnjbAkvKLFP6w8kKrlltJgTPUBOn/AbsglcnGRTJftpTU
 7JAaN43FAoEvA3BCmTPaOFJHtg==
X-Google-Smtp-Source: APXvYqyAjAO4jnA4QyilqZkqXP3DoPuztugJ8Cps8+XwWEzUX1N4xsK5btgsHHZlP9temsP5T3pDDQ==
X-Received: by 2002:a17:902:d883:: with SMTP id
 b3mr16392991plz.231.1576518480927; 
 Mon, 16 Dec 2019 09:48:00 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6d28:a89:f9e1:1506])
 by smtp.gmail.com with ESMTPSA id
 a6sm22342924pgg.25.2019.12.16.09.47.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 09:48:00 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Add Radxa Rock Pi N10 initial
 support
Date: Mon, 16 Dec 2019 23:17:11 +0530
Message-Id: <20191216174711.17856-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191216174711.17856-1-jagan@amarulasolutions.com>
References: <20191216174711.17856-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_094802_883218_74879B97 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VAMRC RK3399Pro SOM need to mount on top of radxa dalang
carrier board for making Rock Pi N10 SBC.

So, add initial support for Rock Pi N10 by including rk3399,
rk3399pro vamrc-som and raxda dalang carrier board dtsi files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 arch/arm64/boot/dts/rockchip/Makefile           |  1 +
 .../boot/dts/rockchip/rk3399pro-rock-pi-n10.dts | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 48fb631d5451..433033b18170 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -36,3 +36,4 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
new file mode 100644
index 000000000000..b42f94179538
--- /dev/null
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2019 Fuzhou Rockchip Electronics Co., Ltd
+ * Copyright (c) 2019 Radxa Limited
+ * Copyright (c) 2019 Amarula Solutions(India)
+ */
+
+/dts-v1/;
+#include "rk3399.dtsi"
+#include "rk3399-opp.dtsi"
+#include "rk3399pro-vmarc-som.dtsi"
+#include <arm/rockchip-radxa-dalang-carrier.dtsi>
+
+/ {
+	model = "Radxa ROCK Pi N10";
+	compatible = "radxa,rockpi-n10", "rockchip,rk3399pro";
+};
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
