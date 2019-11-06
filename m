Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F30BDF13EC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:28:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YTmzV1yyFeNR5k/DaH6tPPU6tOnFmlrxbEBDuuIhVNw=; b=BCB3K7o3Lf7USNoWttTS94zM36
	937+8FHN+aMMIMHBKNdoiPuo6cPAGRe+uDNYd8at0/+YLr3KH7SyPSmyR0O5lUkNERYLRnIFgFqic
	1kjaNT9qnaRf7QmkSSOfDo4d0tuBEmwDjb6mcKa9o7n2gyoUIjr9iIiJ97dPTN1xNNTAbjbFFUV5B
	IL6SqpV1fjjkK5xCFg+a39DNIMeW2EM/X3JOgeJ37qoymXgeQBSZBWlMcqIIZst2zbfP45TzHiZyw
	86fgoezhpWHUQxzxuNVw7wSJwEmwg57l8sNAL+hd56HL0x811R9KL1+oZTiiwDCYztF8GrG8HE/66
	vkQ7qmIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIXz-000407-8x; Wed, 06 Nov 2019 10:28:19 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIWZ-0002oY-Vb
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:26:53 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 06 Nov 2019 19:26:51 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 3DE4F180095;
 Wed,  6 Nov 2019 19:26:51 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 6 Nov 2019 19:26:57 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id D78D11A04FC;
 Wed,  6 Nov 2019 19:26:50 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH 5/6] phy: uniphier-usb3hs: Change Rx sync mode to avoid
 communication failure
Date: Wed,  6 Nov 2019 19:26:18 +0900
Message-Id: <1573035979-32200-6-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573035979-32200-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1573035979-32200-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_022652_151004_A8DB53EC 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-kernel@vger.kernel.org,
 Jassi Brar <jaswinder.singh@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of using default parameters, communication failure might occur
in rare cases. This sets Rx sync mode parameter to avoid the issue.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/phy/socionext/phy-uniphier-usb3hs.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/socionext/phy-uniphier-usb3hs.c b/drivers/phy/socionext/phy-uniphier-usb3hs.c
index bdf696e..a9bc741 100644
--- a/drivers/phy/socionext/phy-uniphier-usb3hs.c
+++ b/drivers/phy/socionext/phy-uniphier-usb3hs.c
@@ -41,10 +41,12 @@
 
 #define PHY_F(regno, msb, lsb) { (regno), (msb), (lsb) }
 
+#define RX_CHK_SYNC	PHY_F(0, 5, 5)	/* RX sync mode */
+#define RX_SYNC_SEL	PHY_F(1, 1, 0)	/* RX sync length */
 #define LS_SLEW		PHY_F(10, 6, 6)	/* LS mode slew rate */
 #define FS_LS_DRV	PHY_F(10, 5, 5)	/* FS/LS slew rate */
 
-#define MAX_PHY_PARAMS	2
+#define MAX_PHY_PARAMS	4
 
 struct uniphier_u3hsphy_param {
 	struct {
@@ -395,13 +397,19 @@ static const struct uniphier_u3hsphy_soc_data uniphier_pro5_data = {
 
 static const struct uniphier_u3hsphy_soc_data uniphier_pxs2_data = {
 	.is_legacy = false,
-	.nparams = 0,
+	.nparams = 2,
+	.param = {
+		{ RX_CHK_SYNC, 1 },
+		{ RX_SYNC_SEL, 1 },
+	},
 };
 
 static const struct uniphier_u3hsphy_soc_data uniphier_ld20_data = {
 	.is_legacy = false,
-	.nparams = 2,
+	.nparams = 4,
 	.param = {
+		{ RX_CHK_SYNC, 1 },
+		{ RX_SYNC_SEL, 1 },
 		{ LS_SLEW, 1 },
 		{ FS_LS_DRV, 1 },
 	},
@@ -412,7 +420,11 @@ static const struct uniphier_u3hsphy_soc_data uniphier_ld20_data = {
 
 static const struct uniphier_u3hsphy_soc_data uniphier_pxs3_data = {
 	.is_legacy = false,
-	.nparams = 0,
+	.nparams = 2,
+	.param = {
+		{ RX_CHK_SYNC, 1 },
+		{ RX_SYNC_SEL, 1 },
+	},
 	.trim_func = uniphier_u3hsphy_trim_ld20,
 	.config0 = 0x92316680,
 	.config1 = 0x00000106,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
