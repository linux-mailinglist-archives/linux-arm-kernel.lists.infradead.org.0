Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2991F17EA82
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 21:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ymCUcIN2l7QXkBCJI3LnOoOAErL85J9zddwR224LyhE=; b=fsVqa7/yTCr2dE
	yCfpkhVOGJG5bQkiTFN4IkHnyIuBWeDDrmLCWY2Uu+xZ4VNWRxQs6gaqL9hN8fu/bR407WHrmxzlk
	OdoSPi8sznKcUDcUQtz+L0VyRPtfBzaU6EUnGAdBLjvfEVZyQsXR0ZrXIpE7cfF/EFlYTYNfuVd3i
	rHzycHnXlRqp09u2+c3ypdqgN5TTpb+zgs9huD4Ae7skZRc1RZWtclFK+fegQbdOHiWsw6QC7GMU+
	RHawOJceriwL4r4SCNo8/F9+aVZbDPw4nsbOG3iPGtHOKhsinboeFrmmcJLB+hLQQ8NifWvDG48w2
	5Dq/GEsU8yH9121kv9mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBPPT-0006Yv-4c; Mon, 09 Mar 2020 20:53:59 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBPPH-0006Xc-5M; Mon, 09 Mar 2020 20:53:48 +0000
X-Originating-IP: 82.66.179.123
Received: from localhost (unknown [82.66.179.123])
 (Authenticated sender: repk@triplefau.lt)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id A0FC420007;
 Mon,  9 Mar 2020 20:53:34 +0000 (UTC)
From: Remi Pommarel <repk@triplefau.lt>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 2/2] clk: meson-axg: remove CLKID_MIPI_ENABLE
Date: Mon,  9 Mar 2020 22:01:57 +0100
Message-Id: <20200309210157.29860-3-repk@triplefau.lt>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200309210157.29860-1-repk@triplefau.lt>
References: <20200309210157.29860-1-repk@triplefau.lt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_135347_340037_B9DBED5B 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, Remi Pommarel <repk@triplefau.lt>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CLKID_MIPI_ENABLE is not handled by the AXG clock driver anymore but by
the MIPI/PCIe PHY driver.

Signed-off-by: Remi Pommarel <repk@triplefau.lt>
---
 include/dt-bindings/clock/axg-clkc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/dt-bindings/clock/axg-clkc.h b/include/dt-bindings/clock/axg-clkc.h
index fd1f938c38d1..ab04b3a94959 100644
--- a/include/dt-bindings/clock/axg-clkc.h
+++ b/include/dt-bindings/clock/axg-clkc.h
@@ -70,7 +70,6 @@
 #define CLKID_HIFI_PLL				69
 #define CLKID_PCIE_CML_EN0			79
 #define CLKID_PCIE_CML_EN1			80
-#define CLKID_MIPI_ENABLE			81
 #define CLKID_GEN_CLK				84
 
 #endif /* __AXG_CLKC_H */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
