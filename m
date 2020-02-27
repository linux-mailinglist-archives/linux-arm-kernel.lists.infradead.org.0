Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCA5171540
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BoGVai8Lnyn8jWTPLT0CRUvjz2rdL6LP68CEAj1jxMA=; b=tIwqmf//XzAxeg
	GrmnzS/K9vxT6c5jEZDjY35On7OvafxqnggB5GZ2taoXh1TLumN3N0WAaLoBpIpFae0HLsk45Bl+n
	bOup2raS5TpTQr5t43xXEI1tbHWO01Mf5CcyxMSSPrn7wbog1glyOG45jtJ+fRWwHrzmm+lFoOKKR
	UMKD8FXNcxZFR/9Q9uFbb7hx4TJasSK3SrUtr79no4/Fec3ZqkfpPntfzLQMEwz0vhDLxHCKYYCDC
	cUc6k0W4fBhukT4AA58C+05rhupvBGvbGUqnu1/6y9Rg9i1bCupdP/rismufCdNJl1RdpNYh5f57y
	WBmmwvNaobNgpFSYL74A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7GdL-00028o-6k; Thu, 27 Feb 2020 10:43:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GcY-0001g5-7U
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 10:42:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GcR-0003f7-Ay; Thu, 27 Feb 2020 11:42:15 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GcP-0004nu-6A; Thu, 27 Feb 2020 11:42:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Peter.Chen@nxp.com, gregkh@linuxfoundation.org, shawnguo@kernel.org,
 linux-imx@nxp.com, stern@rowland.harvard.edu, jun.li@freescale.com
Subject: [PATCH 2/3] Partially Revert "usb: chipidea: host: turn on vbus
 before add hcd if early vbus on is required"
Date: Thu, 27 Feb 2020 11:42:11 +0100
Message-Id: <20200227104212.12562-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227104212.12562-1-m.felsch@pengutronix.de>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_024222_268458_5F64003B 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-usb@vger.kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 659459174188 ("usb: chipidea: host: turn on vbus before add hcd if
early vbus on is required") enabled the vbus regulator but didn't assign
the reg_vbus. So the vbus regulator can't be disabled anymore.

Since the port_power() callback is executed exclusive (without enabling
the port power (PP) bit) we can do the special handling within the
callback without the need of a special flag.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/usb/chipidea/host.c | 31 ++++++++++---------------------
 1 file changed, 10 insertions(+), 21 deletions(-)

diff --git a/drivers/usb/chipidea/host.c b/drivers/usb/chipidea/host.c
index 48e4a5ca1835..f1832847a023 100644
--- a/drivers/usb/chipidea/host.c
+++ b/drivers/usb/chipidea/host.c
@@ -37,6 +37,8 @@ static int ehci_ci_portpower(struct usb_hcd *hcd, int portnum, bool enable)
 	struct ci_hdrc *ci = dev_get_drvdata(dev);
 	int ret = 0;
 	int port = HCS_N_PORTS(ehci->hcs_params);
+	u32 __iomem *status_reg = &ehci->regs->port_status[portnum];
+	u32 temp = ehci_readl(ehci, status_reg) & ~PORT_RWC_BITS;
 
 	if (priv->reg_vbus && enable != priv->enabled) {
 		if (port > 1) {
@@ -57,6 +59,11 @@ static int ehci_ci_portpower(struct usb_hcd *hcd, int portnum, bool enable)
 		priv->enabled = enable;
 	}
 
+	if (enable)
+		ehci_writel(ehci, temp | PORT_POWER, status_reg);
+	else
+		ehci_writel(ehci, temp & ~PORT_POWER, status_reg);
+
 	if (enable && (ci->platdata->phy_mode == USBPHY_INTERFACE_MODE_HSIC)) {
 		/*
 		 * Marvell 28nm HSIC PHY requires forcing the port to HS mode.
@@ -142,19 +149,8 @@ static int host_start(struct ci_hdrc *ci)
 	priv = (struct ehci_ci_priv *)ehci->priv;
 	priv->reg_vbus = NULL;
 
-	if (ci->platdata->reg_vbus && !ci_otg_is_fsm_mode(ci)) {
-		if (ci->platdata->flags & CI_HDRC_TURN_VBUS_EARLY_ON) {
-			ret = regulator_enable(ci->platdata->reg_vbus);
-			if (ret) {
-				dev_err(ci->dev,
-				"Failed to enable vbus regulator, ret=%d\n",
-									ret);
-				goto put_hcd;
-			}
-		} else {
-			priv->reg_vbus = ci->platdata->reg_vbus;
-		}
-	}
+	if (ci->platdata->reg_vbus && !ci_otg_is_fsm_mode(ci))
+		priv->reg_vbus = ci->platdata->reg_vbus;
 
 	if (ci->platdata->pins_host)
 		pinctrl_select_state(ci->platdata->pctl,
@@ -162,7 +158,7 @@ static int host_start(struct ci_hdrc *ci)
 
 	ret = usb_add_hcd(hcd, 0, 0);
 	if (ret) {
-		goto disable_reg;
+		goto put_hcd;
 	} else {
 		struct usb_otg *otg = &ci->otg;
 
@@ -181,10 +177,6 @@ static int host_start(struct ci_hdrc *ci)
 
 	return ret;
 
-disable_reg:
-	if (ci->platdata->reg_vbus && !ci_otg_is_fsm_mode(ci) &&
-			(ci->platdata->flags & CI_HDRC_TURN_VBUS_EARLY_ON))
-		regulator_disable(ci->platdata->reg_vbus);
 put_hcd:
 	usb_put_hcd(hcd);
 
@@ -203,9 +195,6 @@ static void host_stop(struct ci_hdrc *ci)
 		ci->role = CI_ROLE_END;
 		synchronize_irq(ci->irq);
 		usb_put_hcd(hcd);
-		if (ci->platdata->reg_vbus && !ci_otg_is_fsm_mode(ci) &&
-			(ci->platdata->flags & CI_HDRC_TURN_VBUS_EARLY_ON))
-				regulator_disable(ci->platdata->reg_vbus);
 	}
 	ci->hcd = NULL;
 	ci->otg.host = NULL;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
