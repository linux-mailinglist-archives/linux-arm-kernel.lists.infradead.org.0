Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67061608E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 04:27:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gJjjfmY05/w2TR+nLu+qV93GAWkBZqwAYhHkLo7aFok=; b=BVdelxpoqZ37XRbynb1fHOXvCq
	CN5cM9WKqnheyoquOsTlXBCAEaFhr+5CFa/iFTyRBYihTZM60FCy4UFuqGFQA7Dqx8LxY0hl6PVSq
	Ls1mSclfI9bV0sv1CsNZ8+8FkWEi8ghDItpYQh80WVadOBag7FPVjU0xrK7PRNMrcEgI0L1E2+oJo
	7hyy99K4bwCt1NmakfSw+kComkErp+ohFHRB6vi8FjNV9TNvPitXPqBZTsknSgd9XRN5ZKpOc3gXi
	e5sX59Ka4MxDDjYvCBvaqiegEgKllIEsLKiPUumDbTUTCakx+JdOg5FU3y5xBFLh4ovbmRuH+LJWB
	F9VZHEuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3X4C-0008B1-5h; Mon, 17 Feb 2020 03:27:28 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3X3Q-0007UT-9N
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 03:26:41 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 479B01A1F2C;
 Mon, 17 Feb 2020 04:26:37 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 81E9F1A1F31;
 Mon, 17 Feb 2020 04:26:27 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CAAF74030D;
 Mon, 17 Feb 2020 11:26:15 +0800 (SGT)
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de
Subject: [PATCH 2/7] clk: imx8: Add SCU and LPCG clocks for I2C in CM40 SS
Date: Mon, 17 Feb 2020 11:19:16 +0800
Message-Id: <1581909561-12058-3-git-send-email-qiangqing.zhang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
References: <1581909561-12058-1-git-send-email-qiangqing.zhang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_192640_463276_B37B1004 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: aisheng.dong@nxp.com, devicetree@vger.kernel.org, peng.fan@nxp.com,
 fugang.duan@nxp.com, Anson.Huang@nxp.com, festevam@gmail.com,
 linux-kernel@vger.kernel.org, Joakim Zhang <qiangqing.zhang@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 daniel.baluta@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SCU and LPCG clocks for I2C in CM40 SS.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
 include/dt-bindings/clock/imx8-clock.h | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/imx8-clock.h b/include/dt-bindings/clock/imx8-clock.h
index 673a8c662340..84a442be700f 100644
--- a/include/dt-bindings/clock/imx8-clock.h
+++ b/include/dt-bindings/clock/imx8-clock.h
@@ -131,7 +131,12 @@
 #define IMX_ADMA_PWM_CLK				188
 #define IMX_ADMA_LCD_CLK				189
 
-#define IMX_SCU_CLK_END					190
+/* CM40 SS */
+#define IMX_CM40_IPG_CLK				200
+#define IMX_CM40_I2C_CLK				205
+
+#define IMX_SCU_CLK_END					220
+
 
 /* LPCG clocks */
 
@@ -290,4 +295,10 @@
 
 #define IMX_ADMA_LPCG_CLK_END				45
 
+/* CM40 SS LPCG */
+#define IMX_CM40_LPCG_I2C_IPG_CLK			0
+#define IMX_CM40_LPCG_I2C_CLK				1
+
+#define IMX_CM40_LPCG_CLK_END				2
+
 #endif /* __DT_BINDINGS_CLOCK_IMX_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
