Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDAC1178BF
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 22:45:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u9R3CFtCBgQVsJSJWeCS7G3A9OQazTvGGdA3jINaiKY=; b=GEoFGX0/Ju2bSXzy39642QxwMH
	Q08rOwjAFKNmkhW0WcV/3SSG1dkPVItVvWpPB+fkNh8XGH/ic9K/nPOaGKv4YPtWvcAQhrxOIZ4ax
	orhzPQlRIc//djqwwrx4Z/r+8k33pf/TKkbxvH0O/LYnZfvN4F1JnmWxZWsVcOMb1EWkpNWP39uRc
	a5onI8lnE7y9dVUR25/s8Tz2dA0q4VKijT5WoGTYlLrgBb2Pc+xRgFHhC5XNI3JKAujh72CYTy93n
	MpaBHLEMicCKqGBtgxkUpKotgEeLwCsFn+kePzNkvC9o1rUP3jdWdaOTNQdMGk94yo2bYoQfu9u5+
	MSEGLINg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieQpn-00008I-2O; Mon, 09 Dec 2019 21:44:51 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieQow-0007yu-Mh
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 21:44:00 +0000
Received: by mail-wm1-x344.google.com with SMTP id f4so838478wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 13:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jJrtiyNSy3kb+yNwZbjKaE7PnY4m0t7haj0Vxh+WdWs=;
 b=jbAb1fA8KX8Y8PwYKNYDdE0HH6hmUW/fWzkkhmiwZaCG9+MEnzb9FDseK/3fmxoK70
 Qa5s2SV65r34IsnegiZNnEMhoQ1PQeKuoDC8Gd/13xt8oZPM40lvzXpIkYKEiiuXH6bM
 965VTDP1D8selcFEdBVOUJbGomqls3VkoZkCukYgx8GfIHGfJFgK8vMEW8yMCgNjjAyq
 TYvdqM6bMoGpo7bMT0rgki9Kk4QnPihmFdhcQaxqcKikGHEZUpVI4YIIA5+5RLmcZ7j3
 zJWtmo1YkB9hWWF/JLa6nrnVNcbFGE6JbkEflVtavDNMgCkFiNx9/NPSGe/2FDmduLHR
 STxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jJrtiyNSy3kb+yNwZbjKaE7PnY4m0t7haj0Vxh+WdWs=;
 b=rJmTDCX4brLSZ0urfKRfM3eW9RPmNwqsQQfdGlC8mZnxPeWeHDtU8DqqA/Jw0tBSrj
 6CRIWVC0x89YGuJuqSIrnNua/U1RkVEFJiFdi+f/vqMW88RSU7Ba5P0tLBEypKEj91Ik
 tWUIzwK9giAN/B/bq8ynozsclOfIiM+dpqN/oKI3+3fwKkwwInUy8zgdOwkdu8hNQV3Y
 K3oBVMYEadzYAgGOJNy4nFkgvHRlTrUpCQRHAWANfRFGaO4rcBjRvWmhqn20/ckYNvXn
 op9EOILaVy3ieqEI5swaieTgOyB5yt1SRL+ZrrJbz4KxyBY8Ryzs2zaY5xTW8SM6N4Z0
 3z8Q==
X-Gm-Message-State: APjAAAVPb4oDlQVEDpHyWDV2H2UarIfzBfzt8sC1kdD1GpHDEamz710d
 bk7CUktYCHgWcU8CQkzDBUI=
X-Google-Smtp-Source: APXvYqy5Ni/fe4Sa6fRIvpNYyKUpMpbgNKl0s95fnFXOrDr5nyt+76C3CaWfwS3RAezCpmV36FlL3Q==
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr1238187wma.62.1575927837172;
 Mon, 09 Dec 2019 13:43:57 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id z6sm757714wmz.12.2019.12.09.13.43.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Dec 2019 13:43:56 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 resend 02/13] phy: usb: Get all drivers that use USB clks
 using correct enable/disable
Date: Mon,  9 Dec 2019 16:42:38 -0500
Message-Id: <20191209214249.41137-3-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191209214249.41137-1-alcooperx@gmail.com>
References: <20191209214249.41137-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_134358_759669_D987A30B 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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
