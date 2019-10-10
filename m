Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1E6D2BDB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:57:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VrAkIfooErDvy25RpR5bkRJU2kd5+eYz6k6xQVnMC34=; b=VIZ0pbBpsU6JonjprVLMxPJ5uP
	6EzfiGZmh/vQZ+D1eO8tEcJ5d0mrglqHMNKAQH7kMkm23mBT3AAtk2PXMk5cjsy8z8kV8Tcz1lqX7
	rXsLa0ESTSeSWSmC5MHXQFrT/3+SJGpztSqL1j8bsuIeqgJXajMBcckQr5ywtD7eymfZycehAs/xq
	3xquUjtA8npB6h89EEyS09AD96Mb7UmeDaPARZ9CE5HKD4RvFh2mbC4Hp2XmK4EFVJ6LBYKtxRzUC
	wO9TFJED5fuBeWGTW4FffIC0lkZiQxWvZu6aTaWVGHgflj9MROFtKM9GnlfzxNZ+7jbFDYKV6r/st
	/iyXmQVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYwT-0002cd-5S; Thu, 10 Oct 2019 13:57:21 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYwK-0002b1-Hq
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:57:14 +0000
Received: by mail-wr1-x443.google.com with SMTP id z9so8023023wrl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 06:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kKpm7XM1AgpSN1jrhyWVldr2l3miF1XGBH1EW5loxxI=;
 b=hkLd84++mfI8DFZArVwjpGXEap9gVCEvxtrIk2GCAec5fJlbZnrJ+fF/5b5qtRAxBN
 7zu8N3Hq7k8saPoZ4+41pnq1iymTz58A9wVpJnOr3Y/VCaIBlvYrkiP6iod1wtgWphGj
 8qisHK3qM0yiViWyXPI/tsulamhgLzVovb7CjWPxjkeRw1ySUyPAHqUSMVI3uszMbRGS
 OjfZEfFPffXnbZUYgYGiyCgBj+1igbTyVHWVLqmj4JNND6Dv525BL0Y1CgB6+2Nm/wqX
 0lND4FVUjZ1UfiTpwa/MrT+MUE5UsVx5qIAwSO4UzaG9jSlgAHCAgDF4VkkUn1frOTkM
 GHtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kKpm7XM1AgpSN1jrhyWVldr2l3miF1XGBH1EW5loxxI=;
 b=fUJeWSPM6DArT+7WEEIZLWgSU2vzxXE2/V5VkC1rQYMXh8VxIf8zVnGJ4XTpPFq8D4
 aJbREwtYqc72jGWIp2iLR7HPNpzl4f+/UL4A9M/iU7ko27muFT9J+YCF2BY+kfd1EiQx
 RToxsGHN7wkpocolZKiQnFqNZpFVod0QxN9xcb3a5DLQL/InzfX8HuSOJ8WJH+PqPA2Z
 1W0x0OAwrMIQ5TukEww2tkmYgWH9QaEl119ZqeUChMzKE1A7hnaL2FOhQYPyM/uVR8je
 YR8w7tf16KSYratTjCAEYXqV5BRaAHGjlgBETIMaZ6wpaytCoUAzxzj83T4vesLgNdRt
 dyjg==
X-Gm-Message-State: APjAAAUnim1mpEXKJ1YkfoeAB8nNl2WJrmgW93+ctNSWGaLcCrCUtNTY
 efTPD4HcEEnB0R8Wr8edX78=
X-Google-Smtp-Source: APXvYqxnSQAklQr786Hn4Cib+9+4j5ERR7EwmEMJDisBGjMLS8ap04iHd53VBJcDXdLnQjFxNU2sTw==
X-Received: by 2002:a5d:540e:: with SMTP id g14mr8988389wrv.177.1570715830595; 
 Thu, 10 Oct 2019 06:57:10 -0700 (PDT)
Received: from localhost ([194.105.145.90])
 by smtp.gmail.com with ESMTPSA id u4sm9088089wmg.41.2019.10.10.06.57.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 10 Oct 2019 06:57:10 -0700 (PDT)
From: Igor Opaniuk <igor.opaniuk@gmail.com>
To: linux-usb@vger.kernel.org
Subject: [PATCH v2 3/3] usb: phy: mxs: optimize disconnect line condition
Date: Thu, 10 Oct 2019 16:56:56 +0300
Message-Id: <20191010135656.3264-3-igor.opaniuk@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191010135656.3264-1-igor.opaniuk@gmail.com>
References: <20191010135656.3264-1-igor.opaniuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_065712_637316_F972FF3C 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (igor.opaniuk[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

From: Li Jun <jun.li@nxp.com>

We only have below cases to disconnect line when suspend:
1. Device mode without connection to any host/charger(no vbus).
2. Device mode connect to a charger, usb suspend when
system is entering suspend.

This patch can fix cases, when usb phy wrongly does disconnect
line in case usb host enters suspend but vbus is off.

Fixes: 7b09e67639("usb: phy: mxs: refine mxs_phy_disconnect_line")
Signed-off-by: Li Jun <jun.li@nxp.com>
Signed-off-by: Igor Opaniuk <igor.opaniuk@toradex.com>
---

v2:
- restored original commit author
- fixed build for multi_v7

 drivers/usb/phy/phy-mxs-usb.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
index 70b8c8248caf..f58ea923c7eb 100644
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
+	if (on && ((!vbus_is_on && mxs_phy->mode != USB_CURRENT_MODE_HOST)))
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
