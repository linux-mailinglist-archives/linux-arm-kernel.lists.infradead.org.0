Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E1112FC57
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 19:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wYFCeaWfr8rrjXVOzLPBBFuZDVlSe8uewS+PZd5+SW0=; b=bhg0djbcJ7ugylfDt36t5qgVGI
	T3feEpQ2SzgpczmPTEbcL6GNv6F/VqXZkF3Ekk50dpLnz9+Njz28x2N0XRP6t9LqzR+WFlveuzNfW
	O6gI5BQbFG7Ntp0gXcnz07sE00TCfIpRCM7otXTyc4XNXJ3lnjWsrw/J11mMy/7yYqaClTHQ2APDd
	b8cbysr8zyhKQRCu87S6+ZCfLZPchhlvWDY0fGNiTQkhDSKlvS43oVly9Blj/1cWsyGvWIA7c305U
	/LazJ40GRoH5R7CG64+i/3/0+nKA+rus9L12aV3y7PmXTxDWCdrxdTMpiwl/FWXb0zdw5542leazm
	6ZCzppjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inRaU-0008IC-7X; Fri, 03 Jan 2020 18:22:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inRXv-0004Ev-5E
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 18:19:40 +0000
Received: by mail-pf1-x443.google.com with SMTP id x185so23872693pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 10:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RT3uMjCTNXctwL3ki3eO315EjLjo+qSfc5PPzuNqLtA=;
 b=FzEwOlRMFbNiAhqLfljSym93jTMUvS6k/dZXg/3L5CJaQ7moGCyNKhVKO0OCLqmXCa
 NwaRYzWB63wbqKSDgQmEe0dMyasgcs9aqAzXNkxyFtfyJYajfzUA0qtDxQaxZn88oLWC
 eLrKKiblk7vsDVeB9dm4H+ItRv7kzOWYSc13jF8uLuv+I/TjfYtVNTbDeqvuHpH4wLaI
 Q6706UTsTyWC4ixkLU3kV6thFd332tt0MS3gtWIT3bMDegkoiw4mYCsucyNQdtyRqooK
 UyVNN8fCYzEcHWJskkNSYvRG5RItugITX0NDErPPKcc/b81yrRcqixHEagD0NWtV0uu/
 nxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RT3uMjCTNXctwL3ki3eO315EjLjo+qSfc5PPzuNqLtA=;
 b=TxX4F+hGM9UTqoZISqc6r1t9zsY0EyACFO3VpswYOfRpos2qKuGkhiMGR+6gYcNE3v
 c2q2sceAZKCihoN8uszEbA4AN4etl8YtZYQ7WOyrZXQc2GbNTiykTSdPgKyOfvYDHUXC
 Imz58fZN55HXNCJJ7EKSNt+L8oc6VnCX4aAN8011mZYHBGt284Ztgo2Be/QDlZ9wBk1t
 mvyA1p+gvmXuRqUfXCARYyVdADY1+gupwg8pe5MspSPFd32SzzRbH+wMV2SPzPIclKgj
 T5tpBK8XTz/4TK9NMgaChFfwqjtXkWR9KkpKPbyjqn3XeNfO4K0p6MEhD5wjtowNupMG
 S6cw==
X-Gm-Message-State: APjAAAUagifAkYYUOw2laY26vHWTvSbXe5tiYOzxuTRPG1ArLQvWKoVg
 9l29IZAHdcD9FZStQg20vjE=
X-Google-Smtp-Source: APXvYqwk5XDkvs1zJukGqobBsjnTy+tRHSX4K/8jH+V2gZBNBh0xSYIuGwEy1nH9zh4f/xv40Rz/gw==
X-Received: by 2002:aa7:8d8f:: with SMTP id i15mr66919232pfr.220.1578075578412; 
 Fri, 03 Jan 2020 10:19:38 -0800 (PST)
Received: from stbsrv-and-01.and.broadcom.net ([192.19.231.250])
 by smtp.gmail.com with ESMTPSA id j8sm41783602pfe.182.2020.01.03.10.19.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 10:19:38 -0800 (PST)
From: Al Cooper <alcooperx@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 09/13] phy: usb: fix driver to defer on clk_get defer
Date: Fri,  3 Jan 2020 13:18:07 -0500
Message-Id: <20200103181811.22939-10-alcooperx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103181811.22939-1-alcooperx@gmail.com>
References: <20200103181811.22939-1-alcooperx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_101939_222520_CD44CA3F 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Handle defer on clk_get because the new SCMI clock driver comes
up after this driver.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
---
 drivers/phy/broadcom/phy-brcm-usb.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/phy/broadcom/phy-brcm-usb.c b/drivers/phy/broadcom/phy-brcm-usb.c
index 5f7bfa09494d..c82d7ec15334 100644
--- a/drivers/phy/broadcom/phy-brcm-usb.c
+++ b/drivers/phy/broadcom/phy-brcm-usb.c
@@ -341,6 +341,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 	priv->usb_20_clk = of_clk_get_by_name(dn, "sw_usb");
 	if (IS_ERR(priv->usb_20_clk)) {
+		if (PTR_ERR(priv->usb_20_clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		dev_info(dev, "Clock not found in Device Tree\n");
 		priv->usb_20_clk = NULL;
 	}
@@ -371,6 +373,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 		priv->usb_30_clk = of_clk_get_by_name(dn, "sw_usb3");
 		if (IS_ERR(priv->usb_30_clk)) {
+			if (PTR_ERR(priv->usb_30_clk) == -EPROBE_DEFER)
+				return -EPROBE_DEFER;
 			dev_info(dev,
 				 "USB3.0 clock not found in Device Tree\n");
 			priv->usb_30_clk = NULL;
@@ -382,6 +386,8 @@ static int brcm_usb_phy_dvr_init(struct platform_device *pdev,
 
 	priv->suspend_clk = clk_get(dev, "usb0_freerun");
 	if (IS_ERR(priv->suspend_clk)) {
+		if (PTR_ERR(priv->suspend_clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
 		dev_err(dev, "Suspend Clock not found in Device Tree\n");
 		priv->suspend_clk = NULL;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
