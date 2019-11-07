Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117B6F311F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:16:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Oinf6CWaz+/JpdWNxSBl/H7sNOfjc+lWbt0CgRl1Xz8=; b=ZcF5seXliXICrDLNhtTcgysTKF
	RZ3LusvVJ59CXghdz68a7EVB961T3mQV7QN2x/gRhCxkoAoN8h2JXt6rTMFvbKH8XdSnlJiub8VeE
	/eJWPeXEcd9S9FLntudY+efv+W6GiziG5NkS0uP+cOX9HYOF9u23AciB7AdGuS76M7gSz8sQfhSFb
	S4miieeSpM2orW2YWgLXuKibz/ebK0X02WXIo4POGBtPvpO/atXrll73fTDsDhHdoq1/ZB0NI3I4G
	D8ySlqZVB7N+te8tvJeyDYJIjYuWbmH9wedGf4dEoPzdfw57u2sQ90VnqKcDeFVa//BkQvXWzlwiL
	G/5z1DBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSiZi-0000xl-Lw; Thu, 07 Nov 2019 14:15:50 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiYY-0007PJ-C4
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:14:40 +0000
Received: by mail-wr1-x442.google.com with SMTP id p2so3238247wro.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YCEC6UQwS28FKnY/U43Uv/GScL+KC+DZUNshlnDp+CM=;
 b=FaI/+mHWN0it69NY3lXwDOJCwUb7/khi/qAhLmIvunASwls73dptuRxcwFuoBzNm2S
 38tSu/NNO5K6oEizqS9hmKAkDv0a7Yg7gcv7dbyTnm2it+VQusn5SmsIIQL+Vdii0Gke
 Pv+v/BxP+ip+aFMf9zLmiL2hQEFVYfMZUm893ufd1Hx2q9sm1xeHR/B9AqdQaedKBYHw
 SheL5iU2oGSWY97zRXFNzX+ewzz50S68cdNBbTBn2HOly+6PN/XT06JxSDj7iI2J7j/n
 2LQIuiNRE7TGPq1jVG3O9JWcufegS+6dISURq5MXomHrBNFV8HjqKya4pYklDRJ9c+vc
 jGJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YCEC6UQwS28FKnY/U43Uv/GScL+KC+DZUNshlnDp+CM=;
 b=UpbHXNRknjCSvz1JHzQCig7489IVoMMcrJYt8BVY/Twh+uJTs+hQ2Iqy89Ldpv4pvi
 Bj5kgOLMsLOGviuWznyc0yN5jaXwmMIDsaDQyE9517iLOe8aCKF+KqmqyuqyooilLMie
 85oTPR3x2dWtb9XgOEbOgyxpB8VlC29GcrJSQSirOFvjw0PxznK6aeWl7kOvIPGBAunJ
 ASfjAtcfVA1n7QnGrUOWCk33jhNehd/7BrcN1ed7F5PjDiL9PU2vYMUYU9bQ2XYgb9Ww
 6v7mIsXJS1hcR3fqFDeAFx0tQoFlJIgNjH297lnZI1t6+770jkU8M5u9x4fqc8b48BZF
 n5LA==
X-Gm-Message-State: APjAAAXV/S+f8+0QEIOuaz9EiePhfHMaBng8QQ1ZGnxJMcDBhDW9VurN
 wliKyvKXsvnvOhr3bUT4hAk=
X-Google-Smtp-Source: APXvYqyCgJZhl/NABYjCiDLwckIqVK7uKhn9tc4wDYCO+Et4kDoqzqyuTjIwFHvRVwvGxjhu8hd9Lw==
X-Received: by 2002:adf:aa92:: with SMTP id h18mr334728wrc.150.1573136076138; 
 Thu, 07 Nov 2019 06:14:36 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id b1sm2453888wrw.77.2019.11.07.06.14.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 06:14:35 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 04/13] phy: usb: Add "wake on" functionality
Date: Thu,  7 Nov 2019 09:13:30 -0500
Message-Id: <20191107141339.6079-5-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107141339.6079-1-alcooperx@gmail.com>
References: <20191107141339.6079-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_061438_472810_42EE31A8 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Al Cooper <alcooperx@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the ability to handle USB wake events from USB devices when
in S2 mode. Typically there is some additional configuration
needed to tell the USB device to generate the wake event when
suspended but this varies with the different USB device classes.
For example, on USB Ethernet dongles, ethtool should be used to
enable the magic packet wake functionality in the dongle.
NOTE:  This requires that the "power/wakeup" sysfs entry for
the USB device generating the wakeup be set to "enabled".

This functionality requires a special hardware sideband path that
will trigger the AON_PM_L2 interrupt needed to wake the system from
S2 even though the USB host controllers are in IDDQ (low power state)
and most USB related clocks are shut off. For the sideband signaling
to work we need to leave the usbx_freerun clock running, but this
clock consumes very little power by design. There's a bug in the
XHCI wake hardware so only EHCI/OHCI wake is currently supported.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init.c | 17 +++++++++
 drivers/phy/broadcom/phy-brcm-usb-init.h |  1 +
 drivers/phy/broadcom/phy-brcm-usb.c      | 46 ++++++++++++++++++++++--
 3 files changed, 61 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index 0e6b921072be..6ad5978ded9b 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -58,6 +58,8 @@
 #define   USB_CTRL_USB_PM_SOFT_RESET_MASK		0x40000000 /* option */
 #define   USB_CTRL_USB_PM_USB20_HC_RESETB_MASK		0x30000000 /* option */
 #define   USB_CTRL_USB_PM_USB20_HC_RESETB_VAR_MASK	0x00300000 /* option */
+#define   USB_CTRL_USB_PM_RMTWKUP_EN_MASK		0x00000001
+#define USB_CTRL_USB_PM_STATUS		0x38
 #define USB_CTRL_USB30_CTL1		0x60
 #define   USB_CTRL_USB30_CTL1_PHY3_PLL_SEQ_START_MASK	0x00000010
 #define   USB_CTRL_USB30_CTL1_PHY3_RESETB_MASK		0x00010000
@@ -855,6 +857,10 @@ void brcm_usb_init_common(struct brcm_usb_init_params *params)
 	u32 reg;
 	void __iomem *ctrl = params->ctrl_regs;
 
+	/* Clear any pending wake conditions */
+	reg = brcmusb_readl(USB_CTRL_REG(ctrl, USB_PM_STATUS));
+	brcmusb_writel(reg, USB_CTRL_REG(ctrl, USB_PM_STATUS));
+
 	/* Take USB out of power down */
 	if (USB_CTRL_MASK_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN)) {
 		USB_CTRL_UNSET_FAMILY(params, PLL_CTL, PLL_IDDQ_PWRDN);
@@ -1010,6 +1016,17 @@ void brcm_usb_uninit_xhci(struct brcm_usb_init_params *params)
 	USB_CTRL_SET(params->ctrl_regs, USB30_PCTL, PHY3_IDDQ_OVERRIDE);
 }
 
+void brcm_usb_wake_enable(struct brcm_usb_init_params *params,
+			  int enable)
+{
+	void __iomem *ctrl = params->ctrl_regs;
+
+	if (enable)
+		USB_CTRL_SET(ctrl, USB_PM, RMTWKUP_EN);
+	else
+		USB_CTRL_UNSET(ctrl, USB_PM, RMTWKUP_EN);
+}
+
 void brcm_usb_set_family_map(struct brcm_usb_init_params *params)
 {
 	int fam;
diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.h b/drivers/phy/broadcom/phy-brcm-usb-init.h
index f4f4f6d5d258..f473e0c51f0b 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.h
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.h
@@ -38,5 +38,6 @@ void brcm_usb_init_xhci(struct brcm_usb_init_params *ini);
 void brcm_usb_uninit_common(struct brcm_usb_init_params *ini);
 void brcm_usb_uninit_eohci(struct brcm_usb_init_params *ini);
 void brcm_usb_uninit_xhci(struct brcm_usb_init_params *ini);
+void brcm_usb_wake_enable(struct brcm_usb_init_params *params, int enable);
 
 #endif /* _USB_BRCM_COMMON_INIT_H */
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 634afc803778..7b74d11b7e58 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -57,11 +57,22 @@ struct brcm_usb_phy_data {
 	bool			has_xhci;
 	struct clk		*usb_20_clk;
 	struct clk		*usb_30_clk;
+	struct clk		*suspend_clk;
 	struct mutex		mutex;	/* serialize phy init */
 	int			init_count;
+	int			wake_irq;
 	struct brcm_usb_phy	phys[BRCM_USB_PHY_ID_MAX];
 };
 
+static irqreturn_t brcm_usb_phy_wake_isr(int irq, void *dev_id)
+{
+	struct phy *gphy = dev_id;
+
+	pm_wakeup_event(&gphy->dev, 0);
+
+	return IRQ_HANDLED;
+}
+
 static int brcm_usb_phy_init(struct phy *gphy)
 {
 	struct brcm_usb_phy *phy = phy_get_drvdata(gphy);
@@ -76,6 +87,7 @@ static int brcm_usb_phy_init(struct phy *gphy)
 	if (priv->init_count++ == 0) {
 		clk_prepare_enable(priv->usb_20_clk);
 		clk_prepare_enable(priv->usb_30_clk);
+		clk_prepare_enable(priv->suspend_clk);
 		brcm_usb_init_common(&priv->ini);
 	}
 	mutex_unlock(&priv->mutex);
@@ -108,6 +120,7 @@ static int brcm_usb_phy_exit(struct phy *gphy)
 		brcm_usb_uninit_common(&priv->ini);
 		clk_disable_unprepare(priv->usb_20_clk);
 		clk_disable_unprepare(priv->usb_30_clk);
+		clk_disable_unprepare(priv->suspend_clk);
 	}
 	mutex_unlock(&priv->mutex);
 	phy->inited = false;
@@ -228,11 +241,12 @@ static const struct attribute_group brcm_usb_phy_group = {
 	.attrs = brcm_usb_phy_attrs,
 };
 
-static int brcm_usb_phy_dvr_init(struct device *dev,
+static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 				 struct brcm_usb_phy_data *priv,
 				 struct device_node *dn)
 {
-	struct phy *gphy;
+	struct device *dev = &pdev->dev;
+	struct phy *gphy = NULL;
 	int err;
 
 	priv->usb_20_clk = of_clk_get_by_name(dn, "sw_usb");
@@ -275,6 +289,26 @@ static int brcm_usb_phy_dvr_init(struct device *dev,
 		if (err)
 			return err;
 	}
+
+	priv->suspend_clk = clk_get(dev, "usb0_freerun");
+	if (IS_ERR(priv->suspend_clk)) {
+		dev_err(dev, "Suspend Clock not found in Device Tree\n");
+		priv->suspend_clk = NULL;
+	}
+
+	priv->wake_irq = platform_get_irq_byname(pdev, "wake");
+	if (priv->wake_irq >= 0) {
+		err = devm_request_irq(dev, priv->wake_irq,
+				       brcm_usb_phy_wake_isr, 0,
+				       dev_name(dev), gphy);
+		if (err < 0)
+			return err;
+		device_set_wakeup_capable(dev, 1);
+	} else {
+		dev_info(dev,
+			 "Wake interrupt missing, system wake not supported\n");
+	}
+
 	return 0;
 }
 
@@ -335,7 +369,7 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	if (of_property_read_bool(dn, "brcm,has-eohci"))
 		priv->has_eohci = true;
 
-	err = brcm_usb_phy_dvr_init(dev, priv, dn);
+	err = brcm_usb_phy_dvr_init(pdev, priv, dn);
 	if (err)
 		return err;
 
@@ -386,10 +420,13 @@ static int brcm_usb_phy_suspend(struct device *dev)
 		if (priv->phys[BRCM_USB_PHY_2_0].inited)
 			brcm_usb_uninit_eohci(&priv->ini);
 		brcm_usb_uninit_common(&priv->ini);
+		brcm_usb_wake_enable(&priv->ini, true);
 		if (priv->phys[BRCM_USB_PHY_3_0].inited)
 			clk_disable_unprepare(priv->usb_30_clk);
 		if (priv->phys[BRCM_USB_PHY_2_0].inited)
 			clk_disable_unprepare(priv->usb_20_clk);
+		if (priv->wake_irq >= 0)
+			enable_irq_wake(priv->wake_irq);
 	}
 	return 0;
 }
@@ -400,6 +437,7 @@ static int brcm_usb_phy_resume(struct device *dev)
 
 	clk_prepare_enable(priv->usb_20_clk);
 	clk_prepare_enable(priv->usb_30_clk);
+	brcm_usb_wake_enable(&priv->ini, false);
 	brcm_usb_init_ipp(&priv->ini);
 
 	/*
@@ -407,6 +445,8 @@ static int brcm_usb_phy_resume(struct device *dev)
 	 * Uninitialize anything that wasn't previously initialized.
 	 */
 	if (priv->init_count) {
+		if (priv->wake_irq >= 0)
+			disable_irq_wake(priv->wake_irq);
 		brcm_usb_init_common(&priv->ini);
 		if (priv->phys[BRCM_USB_PHY_2_0].inited) {
 			brcm_usb_init_eohci(&priv->ini);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
