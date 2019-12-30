Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35B4012CFD8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 13:01:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+UKb8+yFZOu9yf/9rpgeZ7eZCpZ4hv0Zt13pkDLq+Qw=; b=b+hSFapo4+daPq
	t/Sdpw+PojxnJRB5JB8FB2GG34jxB+kK/gb/5zs1SWMkzJtBRmrpt1nNyjoG18xyhiKWKHdlQYVY6
	UoeghFmEm++ZztMep3OTMC9P9Vqo/r88JJjEK4h0yjkdgqBCyNQQSY5msBGPvCdVDU94W6ZCqA2xz
	uuCgd6k0tWziL2UUtjx/Uvn98lKrrB+r9jGAHWBWuTxHFoapL0VnNrhhYCdcGGaWTdaqsarIRkg6L
	P5P9Y2nfddx2e542uS3M7W2yNBWxhdm+CcyHs2ZejsCQfUGFfw1eqRgGAUcoId9d/BbesAmrMRVoO
	Zj5OIx0n56aBDdnXak7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iltjN-0006Jl-Od; Mon, 30 Dec 2019 12:01:05 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iltj4-0006ES-NU
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Dec 2019 12:00:48 +0000
Received: by mail-pj1-x1044.google.com with SMTP id t101so8023526pjb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Dec 2019 04:00:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jyGtSwgFvChJP9qUZS2htQwi6EMpdKF3tyPpfkjOp/g=;
 b=kRfxtsSQsCzNL6Ua0j2ypLxHJstPdl236RB2VNQVC5gW+22hcGhM+5D7MZFjSa1SEI
 1dDUfqZXoBHdUi0Jan/MPE1Ngh3iDojG+N0qlf/8vYy2/R1gWj/wL2cUaBvfm1sIbiVc
 r66m1tnlizpFIEZyZajhiQxzf1uNufYWMgR9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jyGtSwgFvChJP9qUZS2htQwi6EMpdKF3tyPpfkjOp/g=;
 b=eGxmrkvGkrEi0AFA46+y6y+fG4+l4nNLucCi4RQmAxAEk3B23pnkXjijSav96uIa1o
 ICknaSc84Bf9xLPwah7PT8BGonGZi3bnFzLAZ6M8aDLrq91P8FaFtx6jaGIrC2liAybH
 PqZ7ji6CpHL60zvUcPBvduqZqI+U/3rOMWCTG5/watbllBQVAQP8OpPqe1m59q9Nr/Tu
 TwzUvFtBlxykSqciFgZtmqlVsrGm+/ML9Hv84Lf4JLq74wQ5d59MAfwys5tPt02tnl/P
 yo/rCxEcbMYeJ7JX/To9xvWwjeGNasdn44qq5N7O2EI87YKLuOoU/h3j+I+WIZySvGnD
 7Wzg==
X-Gm-Message-State: APjAAAVj1lvxvUhKyiBUi3zYD1/IIv+u4fDfLHej2OsVeIGEFOs6njqt
 rCcjmbbDpPW5wYoABmheT/Z0jA==
X-Google-Smtp-Source: APXvYqyRLv5fCREtyDwQJMehOfppISQaH6t1nBy3584eULSwQjPKdOuLZiBf4pLQnKYlRI2BVoOmDA==
X-Received: by 2002:a17:90a:930f:: with SMTP id
 p15mr46096254pjo.2.1577707245545; 
 Mon, 30 Dec 2019 04:00:45 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.131])
 by smtp.gmail.com with ESMTPSA id 7sm41894122pfx.52.2019.12.30.04.00.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 04:00:45 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 2/3] ARM: dts: imx6qdl-icore-1.5: Remove duplicate phy
 reset methods
Date: Mon, 30 Dec 2019 17:30:20 +0530
Message-Id: <20191230120021.32630-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191230120021.32630-1-jagan@amarulasolutions.com>
References: <20191230120021.32630-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_040046_855335_5E502C51 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

From: Michael Trimarchi <michael@amarulasolutions.com>

Engicam i.CoreM6 1.5 Quad/Dual MIPI dtsi is reusing fec node
from Engicam i.CoreM6 dtsi but have sampe copy of phy-reset-gpio
and phy-mode properties.

So, drop this phy reset methods from imx6qdl-icore-1.5 dsti file.

Cc: Jacopo Mondi <jacopo@jmondi.org>
Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch.

 arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi b/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
index d91d46b5898f..0fd7f2e24d9c 100644
--- a/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi
@@ -25,10 +25,8 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_enet>;
-	phy-reset-gpios = <&gpio7 12 GPIO_ACTIVE_LOW>;
 	clocks = <&clks IMX6QDL_CLK_ENET>,
 		 <&clks IMX6QDL_CLK_ENET>,
 		 <&clks IMX6QDL_CLK_ENET_REF>;
-	phy-mode = "rmii";
 	status = "okay";
 };
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
