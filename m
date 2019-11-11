Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7463F70E9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 10:37:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5Lk/oN5T1zdahlZc2zFm6hNBogvcic4tWjotDyDaDIw=; b=jqQ
	GRBVczDi4tm7EaeGFE6ANhksLKainjy8q2ZRMlViyr9jn4ZVySSIiTK0ZdC1kp1E0QVDgEcykKNEt
	u0pb4lsmI9qOIPXyOB3NbS15s/EGhBt4XPQ9wScR/RKWjQiDrhWNqiCGneAsMD+IdZ8c9WEYCVY9c
	l4nF+pcRm9+8cu1cN4JSmQ8vy05TUse4CZV2RJOpCsJsHj9UXpFcH7H5xqceyN2tH3W9eej7k6gMr
	bvT3xOEbWpp0BEwhVIfZlaLNuuD2iOYsuaHQ2e1i4Zx2J/0pp37AdxF51zHKukYdUZv7IZpaPyqkj
	KK6blGFpjgoBi1w6LA/hoNE7MSHBJ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU684-0005OF-4V; Mon, 11 Nov 2019 09:37:00 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU67u-0005NS-1s
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 09:36:51 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3BC3E2005A1;
 Mon, 11 Nov 2019 10:36:44 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A454D2005C3;
 Mon, 11 Nov 2019 10:36:41 +0100 (CET)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 11792402B7;
 Mon, 11 Nov 2019 17:36:37 +0800 (SGT)
From: Qiang Zhao <qiang.zhao@nxp.com>
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH] arm64: defconfig: Enable the SBSA watchdog
Date: Mon, 11 Nov 2019 17:36:46 +0800
Message-Id: <20191111093646.16041-1-qiang.zhao@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_013650_236150_80E93F53 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Zhao Qiang <qiang.zhao@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Zhao Qiang <qiang.zhao@nxp.com>

Enable the SBSA watchdog driver that is present on lx2160a.

Signed-off-by: Zhao Qiang <qiang.zhao@nxp.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c9a867a..0bf0885 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -451,6 +451,7 @@ CONFIG_TEGRA_BPMP_THERMAL=m
 CONFIG_QCOM_TSENS=y
 CONFIG_UNIPHIER_THERMAL=y
 CONFIG_WATCHDOG=y
+CONFIG_ARM_SBSA_WATCHDOG=y
 CONFIG_ARM_SP805_WATCHDOG=y
 CONFIG_S3C2410_WATCHDOG=y
 CONFIG_DW_WATCHDOG=y
-- 
2.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
