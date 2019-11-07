Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8F9F312B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 15:18:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RBeNdZ5HoXtmHiw9zl+hzoiz17QmI2lc1nH2yc4I0gs=; b=K5NY6wiV8q5NoJP19RrN+zJ0pE
	9EJx4CaM3wOgd9MjwOlvzI9akVrQUMXN2R3niSJV27fMpj0b37c7T+Pc02s9DI94dZiY/61bJMscf
	19iJoEBfTyGJThnLB+dCugUDF1VH0aoTgQN0Jpjq+Fgk0eqWQ8zWMpLjf/F64xb1nQQSzWNakW/Le
	QIiFKcsWvorlh41bdc+rRqe+CQzGAQOzAY5MYEANaFiRkwCp9Esmi+s6BrBdc5k/MyQAj/FSs7yjE
	ksGNXn/R7scDfwGDKWzt1Fl1r0u9vAVZTiUSevmzmhaBpHWJ992uwczsluoR26triBfHRYgrr8qxD
	HVcVKo1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSibk-0002o3-Mo; Thu, 07 Nov 2019 14:17:56 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSiYl-0007bI-0W
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 14:14:54 +0000
Received: by mail-wr1-x441.google.com with SMTP id t1so3220219wrv.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 Nov 2019 06:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=44lDiZC/HyWHizJUTFlT+jmrIvxAJf5o2GDXJq7Fi20=;
 b=dt6s7B+3L7faldxtLN8sdJQXFvpAsXkV/6ry7E6zqBccZhB1+a5d8vQQqzVLke2AEq
 TkYHtFivAYYZ7pjwH17Ohi8T4dbpe6ovYNZQtg2NvLMuBzRg5FplWSEFROMG66u3nLer
 +JFXwEPbcqO1M75UrINLVF57DZm27fcNkj90MYWE7GMzk/gkSwunJuf6j1zPX3lS5Ajx
 7A8YYwtVfeDi4ggJpyE80bIBAyHVtDhWEaMuvFonNNCPvBp+PdzgMoCFHSBOxD+qqV3Q
 moTbenVbsXp+WQPa+jwTYE/0HtDWMRjGLjQIT6ntL7QYHLmiroMXiqpzFTQJ2mt0HSnh
 nrpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=44lDiZC/HyWHizJUTFlT+jmrIvxAJf5o2GDXJq7Fi20=;
 b=AMxN0BRgMeXmPTgiUPOyvLR36bUR7/3eh2P+eEtrP/VosDSrM0gfeOQuya9/HF3h36
 CQ5ZaQagHNEKf00hROl6CnJo7uow2AQEBGEkFhSi/NyQ+jQyqJuH9lgxh6PbCz2yRWMz
 BDdw8lKxrhEXwSZ2zc0LQDCo3QFJYTtEBF6RrVJkreK4a2OOznVzD0u0+NOmFFKl6blH
 7QLmCJHLGKwomaJOj3pALzH+SeXJMW6BJeb7eWytGHu9N1FRISZ4KLxAqUmJ0clF+s/T
 XcsMqOMQrFH3YC76eMKIE8ZSi+gdCggjmoJVdhTRo1DiWt7F1yVmBCAoeXlN1jPG9+na
 b8rw==
X-Gm-Message-State: APjAAAX15Fiu3dEz9tJ0HU3F3G4nsv4L5M5EKYJT+++GRxXXAOkyfeqs
 Quc8mYccYW7H+Sc8MKd4qv8=
X-Google-Smtp-Source: APXvYqxAJAvZOWtRDoSOZlYra1V2iZ+H2tnGhHLQCy8LALFXp7QN0F3x0hKfAPUThi0tjSepKOrfLQ==
X-Received: by 2002:adf:e449:: with SMTP id t9mr3242971wrm.196.1573136088683; 
 Thu, 07 Nov 2019 06:14:48 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id b1sm2453888wrw.77.2019.11.07.06.14.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Nov 2019 06:14:48 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 10/13] phy: usb: PHY's MDIO registers not accessible without
 device installed
Date: Thu,  7 Nov 2019 09:13:36 -0500
Message-Id: <20191107141339.6079-11-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107141339.6079-1-alcooperx@gmail.com>
References: <20191107141339.6079-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_061451_137453_1FB9BBDC 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
