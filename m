Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F4F6635B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 03:29:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5DOIQCHnHAfutbAfn4FS/iXP3jv7Jwat3AFGZwqhM4c=; b=fa57SWMFVd+be1
	VX8/98OSSyM7WJ/GQDpfzs3iHAOR188ESx+02tDEqUbqF8Yg9agbypFruJxhDpSOEOCniGbl6NNOO
	y4kqpelKBzJudM3867xcEayF09RJyo1PsQ0i2Xi1ebKSdC1s5k0hCy4to8+xgQukmwK2h1JIOXj23
	OuSTb0Hy/kraNWEEftYE8TzPSBbfOLdjgL1imxZy7GmNJGr2+CmfuEemc+nlypx7VJu/rkLK8AU0L
	FW7cPeYY0CkHKxJw3m8EHZn93CsEvfJKd50Vo8LEIa4ez8pXWWikLxlkHrCdVQtcJMcPuLYZTbLQw
	WVvp38jtwmf6E6nmRU8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlkMu-0007Le-19; Fri, 12 Jul 2019 01:29:00 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlkLV-0007KF-Ob
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 01:27:50 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3632CB191B82375CC4EC;
 Fri, 12 Jul 2019 09:27:26 +0800 (CST)
Received: from dessert.huawei.com (10.69.192.158) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Fri, 12 Jul 2019 09:27:18 +0800
From: Zeng Tao <prime.zeng@hisilicon.com>
To: <kishon@ti.com>
Subject: [PATCH] phy: Change the configuration interface param to void* to
 make it more general
Date: Fri, 12 Jul 2019 17:26:04 +0800
Message-ID: <1562923580-47746-1-git-send-email-prime.zeng@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.69.192.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_182738_651710_97871768 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: prime.zeng@hisilicon.com, Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel@vger.kernel.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Sakari Ailus <sakari.ailus@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The phy framework now allows runtime configurations, but only limited
to mipi now, and it's not reasonable to introduce user specified
configurations into the union phy_configure_opts structure. An simple
way is to replace with a void *.

We have already got some phy drivers which introduce private phy API
for runtime configurations, and with this patch, they can switch to
the phy_configure as a replace.

Signed-off-by: Zeng Tao <prime.zeng@hisilicon.com>
---
 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c |  4 ++--
 drivers/phy/cadence/cdns-dphy.c             |  8 ++++----
 drivers/phy/phy-core.c                      |  4 ++--
 include/linux/phy/phy.h                     | 24 ++++++------------------
 4 files changed, 14 insertions(+), 26 deletions(-)

diff --git a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
index 79c8af5..6a60473 100644
--- a/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
+++ b/drivers/phy/allwinner/phy-sun6i-mipi-dphy.c
@@ -105,12 +105,12 @@ static int sun6i_dphy_init(struct phy *phy)
 	return 0;
 }
 
-static int sun6i_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
+static int sun6i_dphy_configure(struct phy *phy, void *opts)
 {
 	struct sun6i_dphy *dphy = phy_get_drvdata(phy);
 	int ret;
 
-	ret = phy_mipi_dphy_config_validate(&opts->mipi_dphy);
+	ret = phy_mipi_dphy_config_validate(opts);
 	if (ret)
 		return ret;
 
diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index 90c4e9b..0ec5013 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -233,23 +233,23 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
 }
 
 static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
-			      union phy_configure_opts *opts)
+			      void *opts)
 {
 	struct cdns_dphy_cfg cfg = { 0 };
 
 	if (mode != PHY_MODE_MIPI_DPHY)
 		return -EINVAL;
 
-	return cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
+	return cdns_dphy_config_from_opts(phy, opts, &cfg);
 }
 
-static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
+static int cdns_dphy_configure(struct phy *phy, void *opts)
 {
 	struct cdns_dphy *dphy = phy_get_drvdata(phy);
 	struct cdns_dphy_cfg cfg = { 0 };
 	int ret;
 
-	ret = cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
+	ret = cdns_dphy_config_from_opts(phy, opts, &cfg);
 	if (ret)
 		return ret;
 
diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index e3880c4a1..048d4d6 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -420,7 +420,7 @@ EXPORT_SYMBOL_GPL(phy_calibrate);
  *
  * Returns: 0 if successful, an negative error code otherwise
  */
-int phy_configure(struct phy *phy, union phy_configure_opts *opts)
+int phy_configure(struct phy *phy, void *opts)
 {
 	int ret;
 
@@ -455,7 +455,7 @@ EXPORT_SYMBOL_GPL(phy_configure);
  * Returns: 0 if successful, an negative error code otherwise
  */
 int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
-		 union phy_configure_opts *opts)
+		 void *opts)
 {
 	int ret;
 
diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index 15032f14..8948f94 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -16,8 +16,6 @@
 #include <linux/pm_runtime.h>
 #include <linux/regulator/consumer.h>
 
-#include <linux/phy/phy-mipi-dphy.h>
-
 struct phy;
 
 enum phy_mode {
@@ -41,15 +39,6 @@ enum phy_mode {
 	PHY_MODE_SATA
 };
 
-/**
- * union phy_configure_opts - Opaque generic phy configuration
- *
- * @mipi_dphy:	Configuration set applicable for phys supporting
- *		the MIPI_DPHY phy mode.
- */
-union phy_configure_opts {
-	struct phy_configure_opts_mipi_dphy	mipi_dphy;
-};
 
 /**
  * struct phy_ops - set of function pointers for performing phy operations
@@ -80,7 +69,7 @@ struct phy_ops {
 	 *
 	 * Returns: 0 if successful, an negative error code otherwise
 	 */
-	int	(*configure)(struct phy *phy, union phy_configure_opts *opts);
+	int	(*configure)(struct phy *phy, void *opts);
 
 	/**
 	 * @validate:
@@ -99,7 +88,7 @@ struct phy_ops {
 	 * error code otherwise
 	 */
 	int	(*validate)(struct phy *phy, enum phy_mode mode, int submode,
-			    union phy_configure_opts *opts);
+			    void *opts);
 	int	(*reset)(struct phy *phy);
 	int	(*calibrate)(struct phy *phy);
 	void	(*release)(struct phy *phy);
@@ -207,9 +196,9 @@ int phy_power_off(struct phy *phy);
 int phy_set_mode_ext(struct phy *phy, enum phy_mode mode, int submode);
 #define phy_set_mode(phy, mode) \
 	phy_set_mode_ext(phy, mode, 0)
-int phy_configure(struct phy *phy, union phy_configure_opts *opts);
+int phy_configure(struct phy *phy, void *opts);
 int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
-		 union phy_configure_opts *opts);
+		 void *opts);
 
 static inline enum phy_mode phy_get_mode(struct phy *phy)
 {
@@ -354,8 +343,7 @@ static inline int phy_calibrate(struct phy *phy)
 	return -ENOSYS;
 }
 
-static inline int phy_configure(struct phy *phy,
-				union phy_configure_opts *opts)
+static inline int phy_configure(struct phy *phy, void *opts)
 {
 	if (!phy)
 		return 0;
@@ -364,7 +352,7 @@ static inline int phy_configure(struct phy *phy,
 }
 
 static inline int phy_validate(struct phy *phy, enum phy_mode mode, int submode,
-			       union phy_configure_opts *opts)
+			       void *opts)
 {
 	if (!phy)
 		return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
