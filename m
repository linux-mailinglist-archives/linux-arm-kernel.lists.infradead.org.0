Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 547091F5001
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ioMB/Dibwz25F2GHgOrnRoKJWjse15ml8d31z7zpRhk=; b=hNiBn7p5TZrccKyd/EwCsR/LNF
	MQCOnNuIBWbBdES+pfxgi7Iloj535seTotoq5CmzYWb48PmUh8Ei5CvPioZeFHrVX7h1afCFwx1/P
	R+A5DCy8qJK/32/ZHvmRMWLLPyIPtkiNnQLeajnfcnJ9TcQkwBZL92McrN0/XJbEwNMT7ij+57Omj
	5sE6xeE6MlfVmr5tAZlHjW46YBIaD2gJ2n9KTlQJgvHBZYxuWJEqbiwlCD4rgnCtYzceY+uz/dld+
	hsci66tb+/87FNMvn+M2qrNOzVhK9hh8ALr2vQd5REzeYZPS+5tuzH7x6Ax+h4OWo6A8CbkfQ+atJ
	EYyLFDhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivnR-0001RL-9t; Wed, 10 Jun 2020 08:09:17 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivmu-0001Eq-5A
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:08:46 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id EED121A0405;
 Wed, 10 Jun 2020 10:08:42 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3CAC41A1503;
 Wed, 10 Jun 2020 10:08:38 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A9C0E4029F;
 Wed, 10 Jun 2020 16:08:32 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 1/9] pinctrl: imx: Support building SCU pinctrl driver as
 module
Date: Wed, 10 Jun 2020 15:57:37 +0800
Message-Id: <1591775865-26872-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
References: <1591775865-26872-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_010844_471229_AD6F302C 
X-CRM114-Status: GOOD (  15.95  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To support building i.MX SCU pinctrl driver as module, below things
need to be changed:

    - Export SCU related functions and use "IS_ENABLED" instead of
      "ifdef" to support SCU pinctrl driver user and itself to be
      built as module;
    - Use function callbacks for SCU related functions in pinctrl-imx.c
      in order to support the scenario of PINCTRL_IMX is built in
      while PINCTRL_IMX_SCU is built as module;
    - All drivers using SCU pinctrl driver need to initialize the
      SCU related function callback;
    - Change PINCTR_IMX_SCU to tristate.

With above changes, i.MX SCU pinctrl driver can be built as module.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V3:
	- change config dependency back to original;
	- use function callbacks for SCU related functions in pinctrl-imx.c
	  to support the scenario of PINCTRL_IMX is built in while
	  PINCTRL_IMX_SCU is built as module;
	- initialize SCU related functions callback in i.MX8QM/QXP/DXL;
	- remove unused SCU related stub functions in pinctrl-imx.h.
---
 drivers/pinctrl/freescale/Kconfig           |  2 +-
 drivers/pinctrl/freescale/pinctrl-imx.c     | 18 ++++-----
 drivers/pinctrl/freescale/pinctrl-imx.h     | 57 ++++++++++++-----------------
 drivers/pinctrl/freescale/pinctrl-imx8dxl.c |  3 ++
 drivers/pinctrl/freescale/pinctrl-imx8qm.c  |  3 ++
 drivers/pinctrl/freescale/pinctrl-imx8qxp.c |  3 ++
 drivers/pinctrl/freescale/pinctrl-scu.c     |  6 +++
 7 files changed, 48 insertions(+), 44 deletions(-)

diff --git a/drivers/pinctrl/freescale/Kconfig b/drivers/pinctrl/freescale/Kconfig
index 4ca44dd..a3a30f1d 100644
--- a/drivers/pinctrl/freescale/Kconfig
+++ b/drivers/pinctrl/freescale/Kconfig
@@ -7,7 +7,7 @@ config PINCTRL_IMX
 	select REGMAP
 
 config PINCTRL_IMX_SCU
-	bool
+	tristate "IMX SCU pinctrl driver"
 	depends on IMX_SCU
 	select PINCTRL_IMX
 
diff --git a/drivers/pinctrl/freescale/pinctrl-imx.c b/drivers/pinctrl/freescale/pinctrl-imx.c
index cb7e0f0..c1faae1 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx.c
@@ -372,8 +372,8 @@ static int imx_pinconf_get(struct pinctrl_dev *pctldev,
 	struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 	const struct imx_pinctrl_soc_info *info = ipctl->info;
 
-	if (info->flags & IMX_USE_SCU)
-		return imx_pinconf_get_scu(pctldev, pin_id, config);
+	if ((info->flags & IMX_USE_SCU) && info->imx_pinconf_get)
+		return info->imx_pinconf_get(pctldev, pin_id, config);
 	else
 		return imx_pinconf_get_mmio(pctldev, pin_id, config);
 }
@@ -422,8 +422,8 @@ static int imx_pinconf_set(struct pinctrl_dev *pctldev,
 	struct imx_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 	const struct imx_pinctrl_soc_info *info = ipctl->info;
 
-	if (info->flags & IMX_USE_SCU)
-		return imx_pinconf_set_scu(pctldev, pin_id,
+	if ((info->flags & IMX_USE_SCU) && info->imx_pinconf_set)
+		return info->imx_pinconf_set(pctldev, pin_id,
 					   configs, num_configs);
 	else
 		return imx_pinconf_set_mmio(pctldev, pin_id,
@@ -439,8 +439,8 @@ static void imx_pinconf_dbg_show(struct pinctrl_dev *pctldev,
 	unsigned long config;
 	int ret;
 
-	if (info->flags & IMX_USE_SCU) {
-		ret = imx_pinconf_get_scu(pctldev, pin_id, &config);
+	if ((info->flags & IMX_USE_SCU) && info->imx_pinconf_get) {
+		ret = info->imx_pinconf_get(pctldev, pin_id, &config);
 		if (ret) {
 			dev_err(ipctl->dev, "failed to get %s pinconf\n",
 				pin_get_name(pctldev, pin_id));
@@ -628,9 +628,9 @@ static int imx_pinctrl_parse_groups(struct device_node *np,
 
 	for (i = 0; i < grp->num_pins; i++) {
 		pin = &((struct imx_pin *)(grp->data))[i];
-		if (info->flags & IMX_USE_SCU)
-			imx_pinctrl_parse_pin_scu(ipctl, &grp->pins[i],
-						  pin, &list);
+		if ((info->flags & IMX_USE_SCU) && info->imx_pinctrl_parse_pin)
+			info->imx_pinctrl_parse_pin(ipctl, &grp->pins[i],
+						    pin, &list);
 		else
 			imx_pinctrl_parse_pin_mmio(ipctl, &grp->pins[i],
 						   pin, &list, np);
diff --git a/drivers/pinctrl/freescale/pinctrl-imx.h b/drivers/pinctrl/freescale/pinctrl-imx.h
index 333d32b..bdb86c2 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx.h
+++ b/drivers/pinctrl/freescale/pinctrl-imx.h
@@ -75,6 +75,21 @@ struct imx_cfg_params_decode {
 	bool invert;
 };
 
+/**
+ * @dev: a pointer back to containing device
+ * @base: the offset to the controller in virtual memory
+ */
+struct imx_pinctrl {
+	struct device *dev;
+	struct pinctrl_dev *pctl;
+	void __iomem *base;
+	void __iomem *input_sel_base;
+	const struct imx_pinctrl_soc_info *info;
+	struct imx_pin_reg *pin_regs;
+	unsigned int group_index;
+	struct mutex mutex;
+};
+
 struct imx_pinctrl_soc_info {
 	const struct pinctrl_pin_desc *pins;
 	unsigned int npins;
@@ -98,21 +113,13 @@ struct imx_pinctrl_soc_info {
 				  struct pinctrl_gpio_range *range,
 				  unsigned offset,
 				  bool input);
-};
-
-/**
- * @dev: a pointer back to containing device
- * @base: the offset to the controller in virtual memory
- */
-struct imx_pinctrl {
-	struct device *dev;
-	struct pinctrl_dev *pctl;
-	void __iomem *base;
-	void __iomem *input_sel_base;
-	const struct imx_pinctrl_soc_info *info;
-	struct imx_pin_reg *pin_regs;
-	unsigned int group_index;
-	struct mutex mutex;
+	int (*imx_pinconf_get)(struct pinctrl_dev *pctldev, unsigned int pin_id,
+			       unsigned long *config);
+	int (*imx_pinconf_set)(struct pinctrl_dev *pctldev, unsigned int pin_id,
+			       unsigned long *configs, unsigned int num_configs);
+	void (*imx_pinctrl_parse_pin)(struct imx_pinctrl *ipctl,
+				      unsigned int *pin_id, struct imx_pin *pin,
+				      const __be32 **list_p);
 };
 
 #define IMX_CFG_PARAMS_DECODE(p, m, o) \
@@ -137,7 +144,7 @@ struct imx_pinctrl {
 int imx_pinctrl_probe(struct platform_device *pdev,
 			const struct imx_pinctrl_soc_info *info);
 
-#ifdef CONFIG_PINCTRL_IMX_SCU
+#if IS_ENABLED(CONFIG_PINCTRL_IMX_SCU)
 #define BM_PAD_CTL_GP_ENABLE		BIT(30)
 #define BM_PAD_CTL_IFMUX_ENABLE		BIT(31)
 #define BP_PAD_CTL_IFMUX		27
@@ -150,23 +157,5 @@ int imx_pinconf_set_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
 void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
 			       unsigned int *pin_id, struct imx_pin *pin,
 			       const __be32 **list_p);
-#else
-static inline int imx_pinconf_get_scu(struct pinctrl_dev *pctldev,
-				      unsigned pin_id, unsigned long *config)
-{
-	return -EINVAL;
-}
-static inline int imx_pinconf_set_scu(struct pinctrl_dev *pctldev,
-				      unsigned pin_id, unsigned long *configs,
-				      unsigned num_configs)
-{
-	return -EINVAL;
-}
-static inline void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
-					    unsigned int *pin_id,
-					    struct imx_pin *pin,
-					    const __be32 **list_p)
-{
-}
 #endif
 #endif /* __DRIVERS_PINCTRL_IMX_H */
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8dxl.c b/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
index 7f32e57..be3b09e 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8dxl.c
@@ -159,6 +159,9 @@ static struct imx_pinctrl_soc_info imx8dxl_pinctrl_info = {
 	.pins = imx8dxl_pinctrl_pads,
 	.npins = ARRAY_SIZE(imx8dxl_pinctrl_pads),
 	.flags = IMX_USE_SCU,
+	.imx_pinconf_get = imx_pinconf_get_scu,
+	.imx_pinconf_set = imx_pinconf_set_scu,
+	.imx_pinctrl_parse_pin = imx_pinctrl_parse_pin_scu,
 };
 
 static const struct of_device_id imx8dxl_pinctrl_of_match[] = {
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8qm.c b/drivers/pinctrl/freescale/pinctrl-imx8qm.c
index 0b6029b..9ba3249 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8qm.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8qm.c
@@ -292,6 +292,9 @@ static const struct imx_pinctrl_soc_info imx8qm_pinctrl_info = {
 	.pins = imx8qm_pinctrl_pads,
 	.npins = ARRAY_SIZE(imx8qm_pinctrl_pads),
 	.flags = IMX_USE_SCU,
+	.imx_pinconf_get = imx_pinconf_get_scu,
+	.imx_pinconf_set = imx_pinconf_set_scu,
+	.imx_pinctrl_parse_pin = imx_pinctrl_parse_pin_scu,
 };
 
 static const struct of_device_id imx8qm_pinctrl_of_match[] = {
diff --git a/drivers/pinctrl/freescale/pinctrl-imx8qxp.c b/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
index 1131dc3..05906b9 100644
--- a/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
+++ b/drivers/pinctrl/freescale/pinctrl-imx8qxp.c
@@ -198,6 +198,9 @@ static struct imx_pinctrl_soc_info imx8qxp_pinctrl_info = {
 	.pins = imx8qxp_pinctrl_pads,
 	.npins = ARRAY_SIZE(imx8qxp_pinctrl_pads),
 	.flags = IMX_USE_SCU,
+	.imx_pinconf_get = imx_pinconf_get_scu,
+	.imx_pinconf_set = imx_pinconf_set_scu,
+	.imx_pinctrl_parse_pin = imx_pinctrl_parse_pin_scu,
 };
 
 static const struct of_device_id imx8qxp_pinctrl_of_match[] = {
diff --git a/drivers/pinctrl/freescale/pinctrl-scu.c b/drivers/pinctrl/freescale/pinctrl-scu.c
index 23cf04b..35efd5c 100644
--- a/drivers/pinctrl/freescale/pinctrl-scu.c
+++ b/drivers/pinctrl/freescale/pinctrl-scu.c
@@ -7,6 +7,7 @@
 
 #include <linux/err.h>
 #include <linux/firmware/imx/sci.h>
+#include <linux/module.h>
 #include <linux/of_address.h>
 #include <linux/pinctrl/pinctrl.h>
 #include <linux/platform_device.h>
@@ -41,6 +42,7 @@ int imx_pinctrl_sc_ipc_init(struct platform_device *pdev)
 {
 	return imx_scu_get_handle(&pinctrl_ipc_handle);
 }
+EXPORT_SYMBOL_GPL(imx_pinctrl_sc_ipc_init);
 
 int imx_pinconf_get_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
 			unsigned long *config)
@@ -66,6 +68,7 @@ int imx_pinconf_get_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(imx_pinconf_get_scu);
 
 int imx_pinconf_set_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
 			unsigned long *configs, unsigned num_configs)
@@ -101,6 +104,7 @@ int imx_pinconf_set_scu(struct pinctrl_dev *pctldev, unsigned pin_id,
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(imx_pinconf_set_scu);
 
 void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
 			       unsigned int *pin_id, struct imx_pin *pin,
@@ -119,3 +123,5 @@ void imx_pinctrl_parse_pin_scu(struct imx_pinctrl *ipctl,
 	dev_dbg(ipctl->dev, "%s: 0x%x 0x%08lx", info->pins[pin->pin].name,
 		pin_scu->mux_mode, pin_scu->config);
 }
+EXPORT_SYMBOL_GPL(imx_pinctrl_parse_pin_scu);
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
