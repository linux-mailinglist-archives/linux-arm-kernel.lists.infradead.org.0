Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D1FFE52A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:44:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R5Luxcf9R0QGgZYntjF6eBaK+H9UR1LmiziKC43uf0Y=; b=XYM5Wm9Qz3+FquePTG0tyFcoyZ
	cp45xI/C4z9SSnStMZxL+TMEGD1Y1HH5sKje/xjk4aDAO821I3TQyL4Zw9WR0z7Z/NdcvVFkayIOF
	ojgIPVNzYqqb1iOSFUKEGqXKngIIf9HKc1XGQblYZiKKaEktxFB0xVthd4G2hQE47oV+CIhPXbdP1
	8Q8po0ACkMqmJpu8e29YGAvDy5Xmu2fz6L5eMO52DUeEssWKCfZljEHYy1yUytdLMc1oZBRevQxvL
	DzvbPbnFVnHqGmOtG61rR5wTYHTFJXhuB5sKhUCOiuMT09lQcU8IoWp63nBFSqgOD8UY/WmJ1YI64
	X8ZPd+jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVgaO-0004Jx-52; Fri, 15 Nov 2019 18:44:48 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgZH-0003XH-4T
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:43:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id i10so12058920wrs.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=n5G8vs80VS3sA4MhM4cgPCr2IxsX3rpduYhIhTGIkuI=;
 b=ZutM+W0ogPUSZhV90V1adFu/zwBzRsYtRS1uAYlG4aef/VnkwGi2d9gVcYL64IM5ll
 m2i0Z+rY50kkNny175k25dNuaVBnetIp0+m8QhytKMEuwA3cBODcKz8wOsTCUDQGzGg1
 zNASyVhOUr7HnLrm5Ytn9eVGogET5az9wq5YG9yBY7nDksALNmrVThs9RkaXneV8XeS2
 +9ZysXdX8tFqAA8T3BvGaw3LfMR0fxgcUgKOHEOTg+PPiiFzgwDwLbokI6bQc33FOFwU
 /kR6778Nn+1XcGfYe+lu/3wv8BXPH9Q0A7M/zz9Kyb3LF98Bp33cB2W4AfX8WmZIewAI
 yqhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=n5G8vs80VS3sA4MhM4cgPCr2IxsX3rpduYhIhTGIkuI=;
 b=XOSDJv0zlDF7bkj6uIWcs7x7wGb8HPJR6nBvPAjMSwNxnOcj1RGfEsAqGEcEsxHlqi
 24vnj0ce7pvy+JlAL2siwp3G14On3y/4HvgGu6Scf75QQePZtsIb3asK+eBns55VIrvO
 f7eP1I7qsOl16CQUVpkhogrBqlkmvjSWZJhA4utsm987xFjSuvwGJw0xMX5Yo0AOQc+f
 nlbVR0aEbiJDh8MkDtXZw/dDod9Uv+ppo+vRv6pJEbKd67Rm5SU0De5PgQAaWJLPCsoN
 sOV/6e+ukcLW5crF45XqlaCYSC8/rTAnjtPcHQAGoyQot8LhOQTuH2MNWbQ8E/2OugWr
 p8bA==
X-Gm-Message-State: APjAAAVwvKY7STCqS3ALqFsTSABKW3C0on5tHAQWuRmec825uniK71xO
 RoeMArpzj03CdxYmsJZHRv8=
X-Google-Smtp-Source: APXvYqxhxd3N9xQeLfTjyCbbyVKUcioEYABPKnqb31gT+D/B4XCLxBys89EN1Ei8Fg3lKybqS4gl8w==
X-Received: by 2002:a05:6000:1206:: with SMTP id
 e6mr16943372wrx.113.1573843416930; 
 Fri, 15 Nov 2019 10:43:36 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g138sm2620989wmg.11.2019.11.15.10.43.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 10:43:36 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/13] phy: usb: Put USB phys into IDDQ on suspend to save
 power in S2 mode
Date: Fri, 15 Nov 2019 13:42:13 -0500
Message-Id: <20191115184223.41504-4-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115184223.41504-1-alcooperx@gmail.com>
References: <20191115184223.41504-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_104339_213649_6998003D 
X-CRM114-Status: GOOD (  14.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alcooperx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Currently the Phy driver will put the USB phys into the max
power saving mode (IDDQ) when there is no corresponding XHCI, EHCI
or OHCI client (through rmmod, unbind or if the driver is not
builtin). This change will also put the Phys into IDDQ mode
on suspend so that S2 will get the additional power savings.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init.c |  2 --
 drivers/phy/broadcom/phy-brcm-usb.c      | 11 +++++++++--
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index 56d9b314a8d0..0e6b921072be 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -1002,8 +1002,6 @@ void brcm_usb_uninit_common(struct brcm_usb_init_params *params)
 
 void brcm_usb_uninit_eohci(struct brcm_usb_init_params *params)
 {
-	if (USB_CTRL_MASK_FAMILY(params, USB_PM, USB20_HC_RESETB))
-		USB_CTRL_UNSET_FAMILY(params, USB_PM, USB20_HC_RESETB);
 }
 
 void brcm_usb_uninit_xhci(struct brcm_usb_init_params *params)
diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 217e3702ef4e..634afc803778 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -381,8 +381,15 @@ static int brcm_usb_phy_suspend(struct device *dev)
 	struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 
 	if (priv->init_count) {
-		clk_disable_unprepare(priv->usb_20_clk);
-		clk_disable_unprepare(priv->usb_30_clk);
+		if (priv->phys[BRCM_USB_PHY_3_0].inited)
+			brcm_usb_uninit_xhci(&priv->ini);
+		if (priv->phys[BRCM_USB_PHY_2_0].inited)
+			brcm_usb_uninit_eohci(&priv->ini);
+		brcm_usb_uninit_common(&priv->ini);
+		if (priv->phys[BRCM_USB_PHY_3_0].inited)
+			clk_disable_unprepare(priv->usb_30_clk);
+		if (priv->phys[BRCM_USB_PHY_2_0].inited)
+			clk_disable_unprepare(priv->usb_20_clk);
 	}
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
