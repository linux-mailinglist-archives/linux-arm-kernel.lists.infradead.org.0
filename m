Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B21412CFD7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 13:00:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j03g4s404Q7y7oFKD1sCKl+U9HsY6DNWyya2ZUcKfmg=; b=WCz8ZHrXDVYRwC
	hizBQeRKRHs9QS6Vt/Vbv+Yf5/0r6s5KT1sxrL9rB88B8ec+zGB1N9ijYjQbYUNcUe9z5OjcKhtGW
	pX9J6dsFYmzM3hH4zonUdk6tnYrCZbAcSQ8bLKeNJ7gvpNJ4w+LWNNHBWpSLmuwzFA/BBktnAH5Zq
	ksUnfh40oFuOohhkPYlNe37jFjiMGBTy/RDejkc1HchZLlkKsu5NDDm9/+IGhB1LGoJ1gUq19GlAW
	DFy9V1p/Fa7YwQpyc97ho/A3ghTvhKTCPFU39lHUpwTTISyjotfp5WD60lNsQ376C2esNPpiaJUeX
	c23Qn0J1PuMXo77kMjAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iltj7-0006B7-VR; Mon, 30 Dec 2019 12:00:49 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iltiz-0006Ag-6H
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 12:00:42 +0000
Received: by mail-pg1-x542.google.com with SMTP id r11so17911416pgf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 04:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ezrVDS5UNFy526/k6xxwjbva2ps41hVNTGiteYBwEkE=;
 b=nKEfuAB6AxAjy1HQQ5U3+ZB9VsG0LkmLXSDo5Wyk3qnHrCDiUqy0E4kNmXeZWLT6JI
 u0s5HnERvkbFXI3lliq4dAaCUOgywP90OlnMIvmSl7humnVVlTiMcBVuPJmXBRlxCPpa
 +Aah8BUmEYRwB3Rie2QVCVr22m2FQwGCPF02w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ezrVDS5UNFy526/k6xxwjbva2ps41hVNTGiteYBwEkE=;
 b=etR6He63YsSVoTloswxyhDm7TC3JBbdukQuREsZjEXz5L0rwGA/RaFmxtUnpGVe/k0
 sORa+448JaixwV3c9iTvs6zd6Zk6xa1daK+bXS4mm8041PQMl7WIaVJkjrlqY6GFXTRo
 5PJyeKrerWzKRojL9Hj5OrvgU3HdAMuCPea1w49ItZr2HOOsYkKDh/8/As6g6ST1yjP7
 uWnFnvLO7D9oxd4sIAO+5eY98x1rfMxPUV9LHPxxuzgC1jnkdUY2a8BLlCU5SoVWghUd
 uvIORyxiRJEA6Gk648ArNHhW/WJoFE1CMi0khJT59MvMAtgmaItd4ZhQyyQAnm0W1QMb
 9J+g==
X-Gm-Message-State: APjAAAVrMbxtuEcRz7pFa5M6RmHYKNESDqOw4+TuDVthlUL9JwRuAFI5
 6Jour6wwMsG8MSUXnMPxrOx+Ww==
X-Google-Smtp-Source: APXvYqz3WmGiAkWomBOwfRYvqVaLlN3X2e+0i07536YKbLHagirtJCCzdsXri4tRkucoNaHJ33cBdQ==
X-Received: by 2002:a63:447:: with SMTP id 68mr73426628pge.364.1577707240026; 
 Mon, 30 Dec 2019 04:00:40 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id 7sm41894122pfx.52.2019.12.30.04.00.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 04:00:39 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 1/3] ARM: dts: imx6q-icore-mipi: Use 1.5 version of i.Core
 MX6DL
Date: Mon, 30 Dec 2019 17:30:19 +0530
Message-Id: <20191230120021.32630-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_040041_384396_DB2E9099 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jacopo Mondi <jacopo@jmondi.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The EDIMM STARTER KIT i.Core 1.5 MIPI Evaluation is based on
the 1.5 version of the i.Core MX6 cpu module. The 1.5 version
differs from the original one for a few details, including the
ethernet PHY interface clock provider.

With this commit, the ethernet interface works properly:
SMSC LAN8710/LAN8720 2188000.ethernet-1:00: attached PHY driver

While before using the 1.5 version, ethernet failed to startup
do to un-clocked PHY interface:
fec 2188000.ethernet eth0: could not attach to PHY

Similar fix has merged for i.Core MX6Q but missed to update for DL.

Fixes: a8039f2dd089 ("ARM: dts: imx6dl: Add Engicam i.CoreM6 1.5 Quad/Dual MIPI starter kit support")
Cc: Jacopo Mondi <jacopo@jmondi.org>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- Add Michael s-o-b

 arch/arm/boot/dts/imx6dl-icore-mipi.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6dl-icore-mipi.dts b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
index e43bccb78ab2..d8f3821a0ffd 100644
--- a/arch/arm/boot/dts/imx6dl-icore-mipi.dts
+++ b/arch/arm/boot/dts/imx6dl-icore-mipi.dts
@@ -8,7 +8,7 @@
 /dts-v1/;
 
 #include "imx6dl.dtsi"
-#include "imx6qdl-icore.dtsi"
+#include "imx6qdl-icore-1.5.dtsi"
 
 / {
 	model = "Engicam i.CoreM6 DualLite/Solo MIPI Starter Kit";
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
