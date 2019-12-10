Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244931189B4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 14:26:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RBeNdZ5HoXtmHiw9zl+hzoiz17QmI2lc1nH2yc4I0gs=; b=JMiOglfB7KTBU975nQ36pTbFVx
	aDRDiaVT1u6GrBxTi+hPtT7YfcAJ1aB01AVMlWfGyohDpTFnXytiGc0gC32orqevTKe5N1BydVv0n
	RvrvXVuZRjiDFjGFEoItAfDskSCj0MzOshCSRVqvLj4bDT5xGNFlp5AnSxpMExNjd+FuacTlp9lKt
	WcROs7bXHQsSN4puzc6woGjRmmPZE2Y20ZTg6gJyEZMywxFz4IeqHU8V4VC+KDqWKHj+WXEdAYWpI
	q66GDSNnTIq1F6auL6eIYo6PW2zwZFDfKvubw33J3RHd1Dt4vX0OzNYro5mZ3CO5CJGJ8JkCb9r7x
	vs0IBEKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefXE-0005Kn-EY; Tue, 10 Dec 2019 13:26:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefUT-0001Yg-Vj
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 13:23:51 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so3169518wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 05:23:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=44lDiZC/HyWHizJUTFlT+jmrIvxAJf5o2GDXJq7Fi20=;
 b=kRroJBzAKKKmAwcsbcJbG1rZ0JkCkHxhTkdOKioiUAMuPjh/HBjgLoQWuWYrK6j5Q9
 sVPTcPcH5rbznIta+7bl4SP2LqWratl0CzfeG2r/Gq2bKo8byY4rm4TchnEoMQqGgxUg
 FdzoCuBxAv+hASweuy3TmPPl/qWYWAM7bLr7T+3I0NqqWnjJ3p/I5igo8fApZCabLsFf
 OpaZcxNRFEqhOf1d17RDE6Ed8UIy+w48SjWowAfLE8/j8Ttf4Tnat6Szuep7aiFJK1HH
 DEuveC8cEhqAvhSS/VzcOCbov+Q/PlbAl8cfUytepmzh6yywgzzvU00SMl39Qod71vGO
 lQBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=44lDiZC/HyWHizJUTFlT+jmrIvxAJf5o2GDXJq7Fi20=;
 b=ByLNwMYGxKvn7oMXu/TbIin8ibOHP9CuvMpCFD1qZFQg9LpGl72y1EZd6MPdAxOv6e
 n3wDBAvu8iue1cayf/Bs7xDmdev9o6Wr/IeeBzGLBypUcqM5AnYvgNvNsSGhaIiZhdSm
 R5j3jzRWqTil4JmKnr2YatVlF006TNBwNeLGgGtR29jm+uN+ei8xR90FKK/QFXHkYPUc
 dI8IsAuKbB95ogNtBwTM+rDKK8CdB/u7nQlzExpkYjY35eoRsOTmIhZUrNtVq/+zSu8/
 TjQRsn4rizT5QeUib5gdrooQIo5gA4VGlilfZAh+F9HwWTx5YZr5T/Y7z6+fI3t0EY6/
 nNhA==
X-Gm-Message-State: APjAAAXO5zx3ZjO0s4eZBfVL7EZB8x+CfLStfyHtuCRlTHtLHGc5QglF
 ZEq5TFEX7OYWhyjll1zTiPM=
X-Google-Smtp-Source: APXvYqyyhMv4dbY67TEy7fz96u1SdwGMd0d3PmwQHFiJc/qOd/h/a645zpLfwEz3nMOQpl3YdRBMGA==
X-Received: by 2002:a7b:cd83:: with SMTP id y3mr4937677wmj.168.1575984228426; 
 Tue, 10 Dec 2019 05:23:48 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id s82sm3101680wms.28.2019.12.10.05.23.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 05:23:47 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 10/13] phy: usb: PHY's MDIO registers not accessible
 without device installed
Date: Tue, 10 Dec 2019 08:21:29 -0500
Message-Id: <20191210132132.41509-11-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191210132132.41509-1-alcooperx@gmail.com>
References: <20191210132132.41509-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_052350_079336_7F9453A2 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

When there is no device connected and FSM is enabled, the XHCI puts
the PHY into suspend mode.  When the PHY is put into suspend mode
the USB LDO powers down the PHY. This causes the MDIO to be
inaccessible and its registers reset to default. The fix is to
disable FSM.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
index bf138867efb1..fe3f653c64a7 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsis.c
@@ -56,6 +56,7 @@
 #define USB_PHY_PLL_LDO_CTL		0x08
 #define   USB_PHY_PLL_LDO_CTL_AFE_CORERDY_MASK		0x00000004
 #define USB_PHY_UTMI_CTL_1		0x04
+#define   USB_PHY_UTMI_CTL_1_POWER_UP_FSM_EN_MASK	0x00000800
 #define   USB_PHY_UTMI_CTL_1_PHY_MODE_MASK		0x0000000c
 #define   USB_PHY_UTMI_CTL_1_PHY_MODE_SHIFT		2
 #define USB_PHY_STATUS			0x20
@@ -229,6 +230,14 @@ static void usb_init_common_7211b0(struct brcm_usb_init_params *params)
 
 	usb_init_common(params);
 
+	/*
+	 * Disable FSM, otherwise the PHY will auto suspend when no
+	 * device is connected and will be reset on resume.
+	 */
+	reg = brcm_usb_readl(usb_phy + USB_PHY_UTMI_CTL_1);
+	reg &= ~USB_PHY_UTMI_CTL_1_POWER_UP_FSM_EN_MASK;
+	brcm_usb_writel(reg, usb_phy + USB_PHY_UTMI_CTL_1);
+
 	usb2_eye_fix_7211b0(params);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
