Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF5F185664
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 22:45:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPwZx4ZUcZLWE7uESn8J77+Gu3FXMFcWi3VNZdZkDok=; b=lD8TrfCrUC4bmI
	MnG+rVtmb2NwZ3GqE41/ka4A+gi3fn3eDttbn9SgwFMzdmmje+LDaj+WKxrIsd606S/mB5xuJ2m5I
	GylGUpt0f6ptUZg6Kau7Fw/J7pDq+KauPzDgQbz2votD1UuZP8Esg/rbi+mVZA4VrkCajZTBuCW8Z
	a7BUj4HDFiO+jNTs8MaaFFNEDqr0vqVJiI8niHEyXK+aH1In5JoYDP9FB2OxTqZzQZQL+lGytzk+h
	6+mwL6wuU5JtDD3qywcuRxaU15Wy/jQpY+MEk+T+uiNM2H/Gui4Y0t5sc+fUMtODUq/fRZyQZV90U
	YfGewBgIuTj95H9jGYhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDEaj-00037O-8c; Sat, 14 Mar 2020 21:45:09 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDEZG-0001oo-U0
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 21:43:40 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 79A438385;
 Sat, 14 Mar 2020 21:44:22 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 7/7] ARM: omap2plus_defconfig: Update for moved and dropped
 options
Date: Sat, 14 Mar 2020 14:43:28 -0700
Message-Id: <20200314214328.13342-7-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200314214328.13342-1-tony@atomide.com>
References: <20200314214328.13342-1-tony@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_144339_018679_5EE94F37 
X-CRM114-Status: UNSURE (   8.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Looks like CONFIG_MTD_M25P80 no longer exists and the others just
move around the existing options. This makes it easier to create
patches against omap2plus_defconfig.

Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/configs/omap2plus_defconfig | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -142,7 +142,6 @@ CONFIG_MTD_CFI=y
 CONFIG_MTD_CFI_INTELEXT=y
 CONFIG_MTD_PHYSMAP=y
 CONFIG_MTD_PHYSMAP_OF=y
-CONFIG_MTD_M25P80=m
 CONFIG_MTD_ONENAND=y
 CONFIG_MTD_ONENAND_VERIFY_WRITE=y
 CONFIG_MTD_ONENAND_OMAP2=y
@@ -191,10 +190,10 @@ CONFIG_TI_CPSW_SWITCHDEV=y
 CONFIG_TI_CPTS=y
 # CONFIG_NET_VENDOR_VIA is not set
 # CONFIG_NET_VENDOR_WIZNET is not set
-CONFIG_AT803X_PHY=y
 CONFIG_DP83848_PHY=y
 CONFIG_DP83867_PHY=y
 CONFIG_MICREL_PHY=y
+CONFIG_AT803X_PHY=y
 CONFIG_SMSC_PHY=y
 CONFIG_PPP=m
 CONFIG_PPP_BSDCOMP=m
@@ -363,13 +362,13 @@ CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
 CONFIG_DRM_OMAP_PANEL_DSI_CM=m
 CONFIG_DRM_TILCDC=m
 CONFIG_DRM_PANEL_SIMPLE=m
-CONFIG_DRM_TI_TFP410=m
 CONFIG_DRM_PANEL_LG_LB035Q02=m
 CONFIG_DRM_PANEL_NEC_NL8048HL11=m
 CONFIG_DRM_PANEL_SHARP_LS037V7DW01=m
 CONFIG_DRM_PANEL_SONY_ACX565AKM=m
 CONFIG_DRM_PANEL_TPO_TD028TTEC1=m
 CONFIG_DRM_PANEL_TPO_TD043MTEA1=m
+CONFIG_DRM_TI_TFP410=m
 CONFIG_FB=y
 CONFIG_FIRMWARE_EDID=y
 CONFIG_FB_MODE_HELPERS=y
@@ -563,10 +562,10 @@ CONFIG_FONTS=y
 CONFIG_FONT_8x8=y
 CONFIG_FONT_8x16=y
 CONFIG_PRINTK_TIME=y
+# CONFIG_DEBUG_BUGVERBOSE is not set
 CONFIG_DEBUG_INFO=y
 CONFIG_DEBUG_INFO_SPLIT=y
 CONFIG_DEBUG_INFO_DWARF4=y
 CONFIG_MAGIC_SYSRQ=y
 CONFIG_DEBUG_FS=y
 CONFIG_SCHEDSTATS=y
-# CONFIG_DEBUG_BUGVERBOSE is not set
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
