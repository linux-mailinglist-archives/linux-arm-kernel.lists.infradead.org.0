Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2051C1178CD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:47:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RBeNdZ5HoXtmHiw9zl+hzoiz17QmI2lc1nH2yc4I0gs=; b=PF/DgL7Qy1vTepbjcWW0nLFGC6
	nt0xD+NpNS2u1uj1fHESDpyvJ5+Z/Savfcy3QG/S0g17+y7Yj8zBOFFVoZ54wKlGX3y5keEGWvFpj
	it39Q03BCt+9BsVykDRSDdF6s8/FxkfvmgqY7VYSqeowXvbgc8euoxrNxjeHXGxBpDNJQU2LIlVzu
	sheMTBCHWUsxEArsQ8+AIIBQ3lLphaUE+6ECg8KSBqM4/vBYK5dZ2lsxFmy3qMsy/51hP9JY/Y5S2
	uqUiUpmXb/7Ei6u1Pn1izvI1X9W2EAFO29/D62KN1ARpFj2wqhrssfSC5lhiNBbDu4s2pIYDXFe37
	JTH0+9Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQri-0003Un-SK; Mon, 09 Dec 2019 21:46:50 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQpD-0008FJ-5q
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:44:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id p17so929553wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:44:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=44lDiZC/HyWHizJUTFlT+jmrIvxAJf5o2GDXJq7Fi20=;
 b=NgdntmBjBBI7US/R8tQl9uYXTQr/3n2UwD+ASgV5d10EsibdIvI3Yo2xWBOK2JZGC0
 VSvP9nitBOAADTY5KKwBWnkcx3ADbR4uMJDh4F4aW7GGex5dFBNS3KfP/iynk4baKZF8
 0uTQhnNkTPhorbEUxDAhb0b6plLaUedcyWca5RDus++kDJKdE/RPxy853xrDmSad2SaT
 kIDEwVecCWDzrqPCgBy7eSzsdzibyEpVH/1MW65aVkTVSIe+DKudP5+capDKPT41agrT
 ssxkUpDdksUpHcO3tLySr3fx2bvLTNaKX+V6VKKf/Nb7ALYJ/B9svms03W2dQCELd5g4
 WFRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=44lDiZC/HyWHizJUTFlT+jmrIvxAJf5o2GDXJq7Fi20=;
 b=FYCP3vB0gtvLEX/02ymwNr3FC9hiIYsVEP1ODmx0W30CSlVI3Eqs876SnmTcW1loLt
 6YU2enY3tPL+es5NJbAvBVgzJ/aKILCplLheMdn5ksBGSto6TvzDEvtzGzxV4r8liyhK
 W2VpzcEw5LlANLf+iSQqG9iD+yMeT/Jo61v/DBhhck0OY1wmHBeqlSs/f+eeLOYOqTzD
 zjKboymWuWHpt9wylvf5uyHwE6ZUxOXUFusZinMe5DgG3hougJvrlmJ0jh6l9D4ffxGO
 RfTZuS0c0lhnD58yuQHZ8CA2Tk1pvppMBgS3A7FvBtSc+rdsbMY+seuXimLr0r/xfbm8
 vwHA==
X-Gm-Message-State: APjAAAVW8lsr8gsUsYt0gkvyTnAJdaDB+BJNAlPMk1RMkZc0afww2idV
 m05BqSwWA8ohgqFmZhqWSss=
X-Google-Smtp-Source: APXvYqy43EGY0bmWLyYnSp0se8lx2Ly4EXqffgmg01xOU1mzl0LzhGx9k8wzdlWFatOlTMcGtckElw==
X-Received: by 2002:a1c:a984:: with SMTP id s126mr1225626wme.146.1575927853828; 
 Mon, 09 Dec 2019 13:44:13 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id z6sm757714wmz.12.2019.12.09.13.44.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:44:13 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 resend 10/13] phy: usb: PHY's MDIO registers not accessible
 without device installed
Date: Mon,  9 Dec 2019 16:42:46 -0500
Message-Id: <20191209214249.41137-11-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209214249.41137-1-alcooperx@gmail.com>
References: <20191209214249.41137-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134415_309890_2CCB0550 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
