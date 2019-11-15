Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411F5FE528
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 19:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u9R3CFtCBgQVsJSJWeCS7G3A9OQazTvGGdA3jINaiKY=; b=ADBZLBG8PO9thQmF3ZgEzEQKfY
	0/lQRB41w2J3A5EdSO+rtIcqM44HVddHpnB4QpIEQa/AuZpq10OqTnVR+J42553CekBBucPZnAIIZ
	rtkftowcPXahjKAAlqZcmjmihw2I8yjnR1IRBVwyjMAjtBgZsd0D3yL8dgWv/w9oVI3T+0e42XRGo
	rbZcWYMH5p4OaOTq0nLOLH0EGbSHDheJWQUqklpXS6eAe53IFezs1PuXHCQFl8Bi8Nw4PMzsjQ1EK
	PBnwnfQzXBE+gpkZPlvWBlGmJGOCNjaVVXI71TXUuQVIEGQ25CnVmB1rThzC78msNpTvFgn9JVAOi
	51bRdGug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVga4-0003yZ-1k; Fri, 15 Nov 2019 18:44:28 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVgZE-0003Ug-8e
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 18:43:37 +0000
Received: by mail-wr1-x442.google.com with SMTP id s5so12069561wrw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 10:43:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jJrtiyNSy3kb+yNwZbjKaE7PnY4m0t7haj0Vxh+WdWs=;
 b=C9ATRsYZH/OrMHOZETIezEvXsLqR4T4sS6Frz/FBhKg51pxXHcLd7y4t06fTHG0pnA
 fdTu2HPEvyRbIyXz5qZ7pbDZ1kOV+5kdUkKZ6OLrje7nzpSpGp47BHxAu9eMvNn9jrxJ
 vbfGY4s8dq8+XWvjbUR4HNt9sBo3XhNaMBVhNGrQpWfeNefMClxNO3/gCsyowPL3lUn6
 v752E+gJEBnBS+wdMo/S50QFxOEgzB/MwfHQMVH6A9TbUeVwxYRJa8F8IIUmggjJ6KRR
 QlQQDS73/gDeQm540a5bSwaHjZYs8KN3/zI9kDjO77U92feum41HNH60bixq0aoOUDxb
 j3Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jJrtiyNSy3kb+yNwZbjKaE7PnY4m0t7haj0Vxh+WdWs=;
 b=aHWJTpiEYYcqOuGz9ZiR1c4fIz49uO5W8RYkgKyJ/O/wH8rdUWM7e+YkhprmwSIeGf
 QtSqRG3cuBoRJD33vCb75odJc/TYf1IPzFD4K+FW4MVPQguZgNsvcLHpF4dujBNKBPkV
 foNaqN7/dPZiEIRqGSuYyIZPaQeJHv5cEg7fyVsDlMGt7pp4GZ4DaaCk6S2bz0ZQc4Vj
 HE3Cj8gkb+ufg+7QMtrbZnpiZRsUoeoItV9KHdlnfx3vDzTJEGhzLuYYBbeqjvc62GLJ
 X47AnBenFxqvgK6C4dn9dOKH1mBfBQEqKDxfB3d7OT1rGz26RwqnTo/EexyurHRacdDS
 SQog==
X-Gm-Message-State: APjAAAVUYAgoLxGtEOwG5CHHsVS5QcaFKX+Uupx0dQHlhvEZj68TCKEN
 ucKC9Shq6furZN4mcixKRUM=
X-Google-Smtp-Source: APXvYqwxdV+JKop5BR8N2MhmkUjQn0btJGaNIVjC/AU3LC5pxMukp/B1JSfM8g+rzCLnNHjqFXy6EA==
X-Received: by 2002:adf:9527:: with SMTP id 36mr16506548wrs.398.1573843414944; 
 Fri, 15 Nov 2019 10:43:34 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id g138sm2620989wmg.11.2019.11.15.10.43.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 10:43:34 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/13] phy: usb: Get all drivers that use USB clks using
 correct enable/disable
Date: Fri, 15 Nov 2019 13:42:12 -0500
Message-Id: <20191115184223.41504-3-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115184223.41504-1-alcooperx@gmail.com>
References: <20191115184223.41504-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_104336_344249_D83D24B9 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

The BRCM USB Phy, ohci, ehci and xhci drivers all use the USB clocks
but not all drivers use the clk_prepare_enable/clk_disable_unprepare
versions to enable/disable the clocks. This change gets all drivers
using the prepare version.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index f5c1f2983a1d..217e3702ef4e 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -74,8 +74,8 @@ static int brcm_usb_phy_init(struct phy *gphy)
 	 */
 	mutex_lock(&priv->mutex);
 	if (priv->init_count++ == 0) {
-		clk_enable(priv->usb_20_clk);
-		clk_enable(priv->usb_30_clk);
+		clk_prepare_enable(priv->usb_20_clk);
+		clk_prepare_enable(priv->usb_30_clk);
 		brcm_usb_init_common(&priv->ini);
 	}
 	mutex_unlock(&priv->mutex);
@@ -106,8 +106,8 @@ static int brcm_usb_phy_exit(struct phy *gphy)
 	mutex_lock(&priv->mutex);
 	if (--priv->init_count == 0) {
 		brcm_usb_uninit_common(&priv->ini);
-		clk_disable(priv->usb_20_clk);
-		clk_disable(priv->usb_30_clk);
+		clk_disable_unprepare(priv->usb_20_clk);
+		clk_disable_unprepare(priv->usb_30_clk);
 	}
 	mutex_unlock(&priv->mutex);
 	phy->inited = false;
@@ -360,8 +360,8 @@ static int brcm_usb_phy_probe(struct platform_device *pdev)
 	if (priv->has_eohci)
 		brcm_usb_uninit_eohci(&priv->ini);
 	brcm_usb_uninit_common(&priv->ini);
-	clk_disable(priv->usb_20_clk);
-	clk_disable(priv->usb_30_clk);
+	clk_disable_unprepare(priv->usb_20_clk);
+	clk_disable_unprepare(priv->usb_30_clk);
 
 	phy_provider = devm_of_phy_provider_register(dev, brcm_usb_phy_xlate);
 
@@ -381,8 +381,8 @@ static int brcm_usb_phy_suspend(struct device *dev)
 	struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 
 	if (priv->init_count) {
-		clk_disable(priv->usb_20_clk);
-		clk_disable(priv->usb_30_clk);
+		clk_disable_unprepare(priv->usb_20_clk);
+		clk_disable_unprepare(priv->usb_30_clk);
 	}
 	return 0;
 }
@@ -391,8 +391,8 @@ static int brcm_usb_phy_resume(struct device *dev)
 {
 	struct brcm_usb_phy_data *priv = dev_get_drvdata(dev);
 
-	clk_enable(priv->usb_20_clk);
-	clk_enable(priv->usb_30_clk);
+	clk_prepare_enable(priv->usb_20_clk);
+	clk_prepare_enable(priv->usb_30_clk);
 	brcm_usb_init_ipp(&priv->ini);
 
 	/*
@@ -405,13 +405,13 @@ static int brcm_usb_phy_resume(struct device *dev)
 			brcm_usb_init_eohci(&priv->ini);
 		} else if (priv->has_eohci) {
 			brcm_usb_uninit_eohci(&priv->ini);
-			clk_disable(priv->usb_20_clk);
+			clk_disable_unprepare(priv->usb_20_clk);
 		}
 		if (priv->phys[BRCM_USB_PHY_3_0].inited) {
 			brcm_usb_init_xhci(&priv->ini);
 		} else if (priv->has_xhci) {
 			brcm_usb_uninit_xhci(&priv->ini);
-			clk_disable(priv->usb_30_clk);
+			clk_disable_unprepare(priv->usb_30_clk);
 		}
 	} else {
 		if (priv->has_xhci)
@@ -419,8 +419,8 @@ static int brcm_usb_phy_resume(struct device *dev)
 		if (priv->has_eohci)
 			brcm_usb_uninit_eohci(&priv->ini);
 		brcm_usb_uninit_common(&priv->ini);
-		clk_disable(priv->usb_20_clk);
-		clk_disable(priv->usb_30_clk);
+		clk_disable_unprepare(priv->usb_20_clk);
+		clk_disable_unprepare(priv->usb_30_clk);
 	}
 
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
