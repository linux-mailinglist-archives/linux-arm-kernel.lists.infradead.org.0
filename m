Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C3212FC5D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 19:23:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oKE0srWMM+Nu4UmmlLc/+PCLX5IVc6dfjeAz0w0FwR0=; b=rFu+/BG1G+tcyKP5U3tFEc9OuO
	Fi2InZpcMBOq1Z0Inq7wbhxHvmsAvJ1mg7CKknTRJPzf0ownTe50Z1UN26N4LczLZVmtGi6hvtExL
	UzUN09CaEtp8ACmJnWap1UxTiYCvypcorhzsl3HIm7ULCQ8vm6Qpi3+jljo2tHmWJLzFAPEqG+X6K
	/9UzRY99LiEzTpnoZtb0KwCsf5Gwck5wnyv+NhpXQ0mpjfxgN6DoTCYV5ZxfyE8fbW9OW306B2Ou/
	UouKv+2dV07AZwGhDs8ZqDvk8XRZXkq3IfDiIKH+Lk5ta1Qgws7a90QlwuYO2jitfm8ucVEU+Jf7W
	g/PDyfbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inRbA-0000fA-0k; Fri, 03 Jan 2020 18:23:00 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inRXw-0004H2-QG
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 18:19:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id y8so19299388pll.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 10:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=hObdGfhJZd0SmP8SodLo/G+SfyA3edd8eSiGk2vdy/s=;
 b=rr2oD3VVAcuSjaCyH+1w105sIq0VCXM5GrVe2oYbdEhaZj21pxjsHxinGTzvYpGtz3
 yBAcQlOLvUdcc4PVExO2HHJsjd43SxfEO5JHcWckCmnzVpOUDM0pCU3QH4eEbozNI1wA
 RJ+5wD00KMQATPlxf+tD51y4foy+E1kjAFbW5LohNoJdwNF2ssEudpeXuwf3HJWFCxcF
 4Axn7q9ewa8/fyUiK08HQpwM2rptVr/c16gjPlwjj7UyzFVzuc2T/ADD2GTGG4HFrBnN
 bZF2CFLt0MDLul1CPAedBFA8pNOIwgd2Box/OWh+B6FEdhZKtuMZrgrRzJMYZnGIgapF
 wTbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=hObdGfhJZd0SmP8SodLo/G+SfyA3edd8eSiGk2vdy/s=;
 b=nV7zdY/Fs+dP2NEAv9xWgY0qjq8oAFsanIdD3JQ7FRFEudiNVOUvL9vgaue+g1DGHy
 57j9toAEknAPIfAVvMZQTu2lhoqBkjOoWWADX1je/fDDqQ+/7gsymL8ysppbtkeiVoiU
 DgLbYv70KbWi8XcUt6exNvgXlEFjDo9UdPLdV5Xt9jyQITpSnkiGMdnYFK4zzM4YuDTQ
 foRnwm+VUckRUp/Yn3WXDny2OJOlngHWUtG1mQfh39Wu25ya3CiQExgv6MyXV9I5v/dL
 jjSK6DN2p7wT4F37JeJ4//jyMRLtBJB80O/WdLksXwoSPyLzRDHgdCcke4PXqBw18knJ
 8lLg==
X-Gm-Message-State: APjAAAUcvM+S7pZ4HukfjoNpi6nwOTNeRZa7MRYbBLsiB4NHha22GrH2
 0H35V3tVfoLY1U7xY5zGwuc=
X-Google-Smtp-Source: APXvYqyxVbyVdmuEyNYCeZvfxH9A1WjQiJHvKs5vzKLwH12ImzSu2kcR/dCMUQBUYJlzV89Xo4lVCA==
X-Received: by 2002:a17:902:aa48:: with SMTP id
 c8mr92033758plr.243.1578075580077; 
 Fri, 03 Jan 2020 10:19:40 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id j8sm41783602pfe.182.2020.01.03.10.19.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 10:19:39 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 10/13] phy: usb: PHY's MDIO registers not accessible
 without device installed
Date: Fri,  3 Jan 2020 13:18:08 -0500
Message-Id: <20200103181811.22939-11-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103181811.22939-1-alcooperx@gmail.com>
References: <20200103181811.22939-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_101940_886560_89037D0C 
X-CRM114-Status: GOOD (  12.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Al Cooper <alcooperx@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
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
 drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
index ee49cbdb55bb..ce4226ac552e 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init-synopsys.c
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
