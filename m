Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 108C2CE228
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 14:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WJ9rXyCnMwXwy6gZO3L1W6FAEv+V6NqLijp4JwjIWwg=; b=uT0BaMCzaBsJa950VdUJOZ7Bu1
	WCSqg0iTzHSCYSjPCAGk42T2O2VyOF6CVFD9t4vmyxoX957qx78+ARMBD/7ZvbwAHS8Njx1z2pVAv
	NII9jV2yaGsdz1rXxIryzfaix3RJZoAilREsvWiG//VB0eeAf2oJsXOxlVxsM2iZeFZxyT8lzu51/
	mN8ZYBwuHqOlSee7COpFqEEwLpG24XyhSMNPYoq3ZJrBWBAY3LPIaZ1SoODiVlzmvs2zdUc+zATZW
	ZshGH+/KdJdHNDxjHV4iBEA4RZ8dZIrEZKY14QoM9EyE8XTYy3+6BglEA/HcC2AvOm5ALKrGm0V3Q
	AdISFKaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHSQc-0005dH-FK; Mon, 07 Oct 2019 12:47:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHSQP-0005aR-P1
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 12:47:43 +0000
Received: by mail-wr1-x442.google.com with SMTP id j18so14333105wrq.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 05:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dE5Pbudcp01GEPyoenTGG4iUJBJux2YKczE2k0btNjU=;
 b=Q2EIKM8DVJ7tDyl/BTGuEB31qH1AKFvkrYNn7nqDv77Leoyx0+82lXBEeKr++L5H9O
 BrRGB7DvSg9xr7Zkruf+e6ALndQBwT9Huktp75hqfxfqvUsxsRxpUZUOWTaiLgZhil5u
 TYpDIGXMBR5qkj9qfk8yxCIpmJ3LckZKklSAq2vicS+toGUwlhg09SUc1tNq9WMXVQlg
 Pxj8cwD795QdSHN3lJlW4CUNOFB8FyUVc/TY0EWwFRfti5oEyvmyJmTDbLlYJYqTEFO/
 v5nBdBVFd7I6MhWVPD7W6V0RBrSZPZ3gJ9CeZrh3sHFUcZmUSlFT+rOG7JpJHRQbeZzh
 NKZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dE5Pbudcp01GEPyoenTGG4iUJBJux2YKczE2k0btNjU=;
 b=Pa13MC8e83V1WHb6Ea9LabZP+orsSK48gvRf6KxwV7Ix/gbQli0rOF07vwwsKWQkEv
 qhpC/r8yndCONOIEFW3nNDhJ+rED+fM5K4nDuk1CF/MJkiJvFNPSOMSWudGkwiCz3a29
 RjuebcFx+FvOwYtIq2lZTeGre64qLqk9OdbY/HTBgcsprLc1IIxj7Ne3Ln4PNLG02WXE
 FEBxudxB8KjxNAW5kv2wm6arSU+JEpBbT8WAphrfk/4L8SEVS2uOlyQ+8yB/R17s9QmB
 KcOCPy8LZVWS1u3/6dp1RsxK407eLitRJkiNeBesgj4W9VtEBGXlwjuWd3GGzUa0OzKl
 OdJQ==
X-Gm-Message-State: APjAAAW7cuNyGQZnfF0YSrPUSt4U08rMXNPbSoHRqZ4pCAwh82UsfQhp
 4z3d77UwQcuQWRZRllsedUU=
X-Google-Smtp-Source: APXvYqxfcm+mguSSud/mija7CYkDcradVYcTrMnb8M+RUUOM79viuKI65prWYSiQClaVRyLyQozQTw==
X-Received: by 2002:adf:fe8b:: with SMTP id l11mr17986939wrr.23.1570452459382; 
 Mon, 07 Oct 2019 05:47:39 -0700 (PDT)
Received: from localhost ([194.105.145.90])
 by smtp.gmail.com with ESMTPSA id c6sm15985051wrm.71.2019.10.07.05.47.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 07 Oct 2019 05:47:38 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-usb@vger.kernel.org
Subject: [RFC PATCH v1 3/3] usb: phy: mxs: optimize disconnect line condition
Date: Mon,  7 Oct 2019 15:46:07 +0300
Message-Id: <20191007124607.20618-3-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191007124607.20618-1-igor.opaniuk@gmail.com>
References: <20191007124607.20618-1-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_054741_825346_08ACBEFA 
X-CRM114-Status: GOOD (  14.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igor.opaniuk[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>, Igor Opaniuk <igor.opaniuk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Shawn Guo <shawnguo@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Opaniuk <igor.opaniuk@toradex.com>

We only have below cases to disconnect line when suspend:
1. Device mode without connection to any host/charger(no vbus).
2. Device mode connect to a charger, usb suspend when
system is entering suspend.

This patch can fix cases, when usb phy wrongly does disconnect
line in case usb host enters suspend but vbus is off.

Signed-off-by: Li Jun <jun.li@nxp.com>
Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

 drivers/usb/phy/phy-mxs-usb.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
index 70b8c8248caf..d996666e09e6 100644
--- a/drivers/usb/phy/phy-mxs-usb.c
+++ b/drivers/usb/phy/phy-mxs-usb.c
@@ -204,6 +204,7 @@ struct mxs_phy {
 	int port_id;
 	u32 tx_reg_set;
 	u32 tx_reg_mask;
+	enum usb_current_mode mode;
 };
 
 static inline bool is_imx6q_phy(struct mxs_phy *mxs_phy)
@@ -386,17 +387,6 @@ static void __mxs_phy_disconnect_line(struct mxs_phy *mxs_phy, bool disconnect)
 		usleep_range(500, 1000);
 }
 
-static bool mxs_phy_is_otg_host(struct mxs_phy *mxs_phy)
-{
-	void __iomem *base = mxs_phy->phy.io_priv;
-	u32 phyctrl = readl(base + HW_USBPHY_CTRL);
-
-	if (IS_ENABLED(CONFIG_USB_OTG) &&
-			!(phyctrl & BM_USBPHY_CTRL_OTG_ID_VALUE))
-		return true;
-
-	return false;
-}
 
 static void mxs_phy_disconnect_line(struct mxs_phy *mxs_phy, bool on)
 {
@@ -412,13 +402,26 @@ static void mxs_phy_disconnect_line(struct mxs_phy *mxs_phy, bool on)
 
 	vbus_is_on = mxs_phy_get_vbus_status(mxs_phy);
 
-	if (on && !vbus_is_on && !mxs_phy_is_otg_host(mxs_phy))
+	if (on && ((!vbus_is_on && mxs_phy->mode != USB_MODE_HOST)))
 		__mxs_phy_disconnect_line(mxs_phy, true);
 	else
 		__mxs_phy_disconnect_line(mxs_phy, false);
 
 }
 
+/*
+ * Set the usb current role for phy.
+ */
+static int mxs_phy_set_mode(struct usb_phy *phy,
+		enum usb_current_mode mode)
+{
+	struct mxs_phy *mxs_phy = to_mxs_phy(phy);
+
+	mxs_phy->mode = mode;
+
+	return 0;
+}
+
 static int mxs_phy_init(struct usb_phy *phy)
 {
 	int ret;
@@ -796,6 +799,7 @@ static int mxs_phy_probe(struct platform_device *pdev)
 	mxs_phy->phy.notify_disconnect	= mxs_phy_on_disconnect;
 	mxs_phy->phy.type		= USB_PHY_TYPE_USB2;
 	mxs_phy->phy.set_wakeup		= mxs_phy_set_wakeup;
+	mxs_phy->phy.set_mode		= mxs_phy_set_mode;
 	mxs_phy->phy.charger_detect	= mxs_phy_charger_detect;
 
 	mxs_phy->clk = clk;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
