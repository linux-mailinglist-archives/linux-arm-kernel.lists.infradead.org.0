Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EDD51038F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 12:42:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyrG7ugTqRsM8PFGDMHunT+ij99LJZJfRPIUGHqbBJ8=; b=sBOqNhfcl+uwQY
	pH1tQ2fqHNCRrt42h2cfHtRDsvewLPMdQ8SMbLDBicHFZl7t2mJjRka7hkWXnTZEGtWdhRXs0BCAP
	ZjMKf1dzwmX140sv0dOO1ZySJc4US0qwrhRZTwQDs4+1gLupC7bHhrtWxiU/Tf+cVB8Ao8fx73SI4
	YkSPIh6FUkIaf+w2wvBU1MP9Kyf3UzOlr9xRcjozXRyG64Z+lSYNW2eTuGLEJ54HEBeXai5rIKolY
	YcXdgPvZ4JlsLRFDdSHk9axUxAXcXb+lMVfk0uXQEZ7NrHEu6H9Nlfj7/UbrVYEJ/aMAfZ3AJ4taU
	n8m1tIP83/3yWYVsjU0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXONc-00048f-Fs; Wed, 20 Nov 2019 11:42:40 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXOMJ-000349-Gn
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 11:41:21 +0000
Received: by mail-pj1-x1042.google.com with SMTP id a16so4001842pjs.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 03:41:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XG3FqVuwcEK3cEEdmwlKOUvSjQLzYWodVEQZQZxdgGw=;
 b=IBafvk3nhhoTcsHRx+LcFptem/D7w/nySgOpIqNTdynBSbozJ6gJW3N4d5echRt1Y6
 rqZAnABzdwU3cKUigi+mvaFbMw3RMTDMZ1tZAiOkC3tChk9sECnN/o98UDtHYY4APYsH
 vQfV8IJL3KN8+dWtPnrjWI3WtARRXUaEe6Q8k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XG3FqVuwcEK3cEEdmwlKOUvSjQLzYWodVEQZQZxdgGw=;
 b=USM2CPIXk+ZPDiGgtgvO0ts8w7n68XFKcvvjA7zQsw0cibPhjdkIlwn53+h09B04xl
 I3P7CF1v7THhtxr/PBVQEe2wR36ppskk8ZlobcrKYtWLjeN7cIT9WiM74vt0ibjMb4Pq
 AEtNq5EYSlgYqbl26wpMlYM9MGvQQj4nyx6tMaSnbHipw8GvjkWCFwIzID3XAcLlhqrG
 d8qaxr7HjpEjEz8BGsqwYMOk6x1iQGukjII/j8VpfpZOilTgYSz1IZhTuWE9xJLSrRj7
 wq5KjGiNdSPo8njCrSVzuOZ/52y8Eys4WZrmKhAKRdW2sFuPejAwz4iLoaclNPDqm+Q/
 2DVg==
X-Gm-Message-State: APjAAAUJxW5VxNnyWaEhQIpPyeTh0sGzNHNGIzHHQcR8Pg/Jnzhd9eOJ
 FAMoQQ5+/c4XTnaohG0sakWtCQ==
X-Google-Smtp-Source: APXvYqxKa0jSG5czR1wxW5TZYm5l7Yz1+Q3BK+S6kuzHUAq2+gY5d3tie4YLeCiftc91wuh1LEOH7Q==
X-Received: by 2002:a17:902:4a:: with SMTP id 68mr2526359pla.8.1574250078726; 
 Wed, 20 Nov 2019 03:41:18 -0800 (PST)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id h185sm13492850pgc.87.2019.11.20.03.41.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 03:41:18 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: Add Radxa Rock Pi N10 initial
 support
Date: Wed, 20 Nov 2019 17:09:23 +0530
Message-Id: <20191120113923.11685-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191120113923.11685-1-jagan@amarulasolutions.com>
References: <20191120113923.11685-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_034119_625663_CB952217 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

VAMRC RK3399Pro SOM need to mount on top of Radxa carrier
board for making Rock Pi N10 SBC.

So, add initial support for Rock Pi N10 by including rk3399,
rk3399pro vamrc-som and raxda carrier board dtsi files.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
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
index 000000000000..1f7fbaa92c38
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
+#include <arm/rockchip-radxa-carrierboard.dtsi>
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
