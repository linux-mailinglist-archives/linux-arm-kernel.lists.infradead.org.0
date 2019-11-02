Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC996ECEDF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 14:42:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2YWFfVe3jVQS+kA+OYyh/t9Pj75S7XqTviRSKcem/VM=; b=X3AhaFjvVoUl61YVcBg7ssaPNM
	V4xoV506TsUSfvAKhUcq+cglvApZetepzx9z3miMmQ08qD3Ka8yODwA8c25ym1HDfEntUZAwAxovd
	BOhqsHOD3hXnk1r56RTe0M3UrlaoEZT7xkbadPN5Npq37mQMMTR2uWk2J15fkAF4MwF3WGkNCGbPZ
	eRaX0gqThXA4XZQGGdyNPfQ75BcnqdIUIsnzPW5+O+fMSB6YVu4hWI6PAFaOWJAWWva0heyvJM7d2
	gB+8zn3hBRQI8U05+M61MnTaVZRI0wqzEaNnSWzHddtbVNmMu3R/xERPqMwqgAuMKMEkvoVRQBvh0
	z+qu6StQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQtfs-0002ga-86; Sat, 02 Nov 2019 13:42:40 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQtfT-0002ZZ-1Q
 for linux-arm-kernel@lists.infradead.org; Sat, 02 Nov 2019 13:42:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1572702115;
 bh=4tHGKE+e17UnhyLVKq76j3dokNGsfO7qmeQ/3LMCwKE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dwAZ8qK2mOEhL8yddYvia54XCp7WcFlWZgnR0N81rrx8bFhvyP/xySjIwrjcC+Lh9
 UJ+Dr7+CieRXtyvxMdWefQX3mXv0nE9wq91rVLa3SFaxAjuq+WgbAA2BOJbw7waCxz
 qMDX48M62lJwn7xVgoOISiU6K+HmC1RRbqVyOSM4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx105 [212.227.17.168]) with ESMTPSA (Nemesis) id
 1N6KUT-1htc7u0YED-016h8f; Sat, 02 Nov 2019 14:41:55 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH RFC V2 4/6] net: bcmgenet: Refactor register access in
 bcmgenet_mii_config
Date: Sat,  2 Nov 2019 14:41:31 +0100
Message-Id: <1572702093-18261-5-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
References: <1572702093-18261-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:MQ6Jl9aVlitUoMTuabDM7aRAHAZGevUik1OOtVe4QXl8h2C3Skv
 RtAT7SGqOqjvGXxwx+pfP9M3ilaw0Pe1Vga4EWl6/ZgbzVlmNCLBOUI//BYGmiciSOCMG9Z
 IZcdJaAzOY0idsx6XENMTKEych+jdfPLzgTpuqHaK2CVqScikUmH8oGrasuS6+EIlz3rABU
 GEZf8eMfW7rpFIJqX3iRQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:431g0FG5bQA=:QsyJ0NpbJQb8p8jhLLbdAT
 /ECgEMAbmevEoPi4HlUWGStPH62/2B6YvMnHr2o8JdPYqHSM4t12HO9DIP1DGOa+AkU0ZTCD4
 Sa2kfJ5mnOjcClZRpHJaYUcKkjdYwB6zWP8cST9CE9guoWA0vp3hPNTSvAUSVT/cWUw5pyE9G
 0xbnvSdUNSYrrySFqZ+1Zdo0ECi15wVGUX5tQAnb71WLYdtUJIo5vkuyCc6VfA7cYF+FekKqT
 H8NJKHY79vjP+yoCEGoQDmitITHt6wuU07/H9U6VHnnFLyS3VPwgstqvPnhev3IOMbTUjUivm
 m/Gp5yOZSF2VKR4Ws9JzOSHfgCQdK9rBuiRBiEQRANRwUfEyUwYpVGuerVcF86kjutcc2ouE/
 jynj5O+xDnlPUy7VNSUji/Qdfbsmqddwl4zgPSBpB2vlQcX6tCQ42q9NccaiSkZOKTKlbgAlc
 yenfdU5w4xvTalNqRmM5olSfl6+Muxe8W/Iu8NyrhOS3J6eotATL1w2l7SfxlBM801rpmkM8t
 PTKdb9W94jX/VUoNbxVLQ1dXhDV+aUdnqj6fnT/IDrGB18QviXEuFVbMHkqvE6CnNx/HlnXQl
 3BLipo3bG0vP1xrDKgA7iIgDnU/Evt3VDOw5BRBC0L2a9xxt0ip4nATaNKr4kDhRzoa3I6ll9
 QHG08X3xr9ZfMYC/BA0IGKYnMzPOxiDXbPhZuurtk3B4XfXPvZ85UkpDRaxKUIxWWTqWiH81c
 MjG/zB5IroQBIJ4jC5tooeV9P7Z86JTs1cxxIPm0xbE86XK/Wqv+MTx2kKeUXeghJg3tibZU7
 8UDs8ZJW+agIZJRVi6opH0meyIAJevnm/YP44P32SdwSieyMGNVkAhGdv2JSlzSoqP8cFU3Xv
 hAMMZfhJ6JMrevrmn26XQzb4l85/Eo2EAY/7VgSrlDvGXmXO4ok8mdZQrIbXXpC4ECeRtvMIt
 7Dz/FN0oln7Tla7ABdgPI0oeU5cAP9aHPSJ3pVbas7E212Wt4p660i/tf8Xf0VdJQnEnyoFB4
 XRN634olQ05nJBHl44dIK0sITAlU5SvproXdMw+BOQo6Vxu6aK+JRWANdeWuMBWWine8R/SqO
 tyKkpXt944yyOD0TpT3Hmw9p9UmVSKsaPOJl0o0uDrxN8YS5DQ7StRwfSGaGVDjMrf4x4EMbP
 dE2Te/ltfm32kO7HneVxPOXT2YjnkST7u9oO4epg5AN88ppe0YohmIZoIajaQ/Muv9vL6sXz/
 9CNEF36cnQPwr0KtZXsUmC3DAOSz+T5cEyqmTxw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_064215_414485_9A23CED1 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Doug Berger <opendmb@gmail.com>, netdev@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The register access in bcmgenet_mii_config() is a little bit opaque and
not easy to extend. In preparation for the missing RGMII PHY modes
move the real register access to the end of the function. This make
the code easier to read and extend.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/net/ethernet/broadcom/genet/bcmmii.c | 41 ++++++++++++----------------
 1 file changed, 18 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c b/drivers/net/ethernet/broadcom/genet/bcmmii.c
index 17bb8d6..8f7b2c0 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
@@ -223,9 +223,6 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 	u32 port_ctrl;
 	u32 reg;

-	priv->ext_phy = !priv->internal_phy &&
-			(priv->phy_interface != PHY_INTERFACE_MODE_MOCA);
-
 	switch (priv->phy_interface) {
 	case PHY_INTERFACE_MODE_INTERNAL:
 	case PHY_INTERFACE_MODE_MOCA:
@@ -238,22 +235,12 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 			port_ctrl = PORT_MODE_INT_GPHY;
 		else
 			port_ctrl = PORT_MODE_INT_EPHY;
-
-		bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
-
-		if (priv->internal_phy) {
-			phy_name = "internal PHY";
-		} else if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
-			phy_name = "MoCA";
-			bcmgenet_moca_phy_setup(priv);
-		}
 		break;

 	case PHY_INTERFACE_MODE_MII:
 		phy_name = "external MII";
 		phy_set_max_speed(phydev, SPEED_100);
-		bcmgenet_sys_writel(priv,
-				    PORT_MODE_EXT_EPHY, SYS_PORT_CTRL);
+		port_ctrl = PORT_MODE_EXT_EPHY;
 		break;

 	case PHY_INTERFACE_MODE_REVMII:
@@ -268,31 +255,34 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 			port_ctrl = PORT_MODE_EXT_RVMII_50;
 		else
 			port_ctrl = PORT_MODE_EXT_RVMII_25;
-		bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
 		break;

 	case PHY_INTERFACE_MODE_RGMII:
 		/* RGMII_NO_ID: TXC transitions at the same time as TXD
 		 *		(requires PCB or receiver-side delay)
-		 * RGMII:	Add 2ns delay on TXC (90 degree shift)
 		 *
 		 * ID is implicitly disabled for 100Mbps (RG)MII operation.
 		 */
+		phy_name = "external RGMII (no delay)";
 		id_mode_dis = BIT(16);
-		/* fall through */
+		port_ctrl = PORT_MODE_EXT_GPHY;
+		break;
+
 	case PHY_INTERFACE_MODE_RGMII_TXID:
-		if (id_mode_dis)
-			phy_name = "external RGMII (no delay)";
-		else
-			phy_name = "external RGMII (TX delay)";
-		bcmgenet_sys_writel(priv,
-				    PORT_MODE_EXT_GPHY, SYS_PORT_CTRL);
+		/* RGMII_TXID:	Add 2ns delay on TXC (90 degree shift) */
+		phy_name = "external RGMII (TX delay)";
+		port_ctrl = PORT_MODE_EXT_GPHY;
 		break;
 	default:
 		dev_err(kdev, "unknown phy mode: %d\n", priv->phy_interface);
 		return -EINVAL;
 	}

+	bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
+
+	priv->ext_phy = !priv->internal_phy &&
+			(priv->phy_interface != PHY_INTERFACE_MODE_MOCA);
+
 	/* This is an external PHY (xMII), so we need to enable the RGMII
 	 * block for the interface to work
 	 */
@@ -304,6 +294,11 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 		else
 			reg |= RGMII_MODE_EN;
 		bcmgenet_ext_writel(priv, reg, EXT_RGMII_OOB_CTRL);
+	} else if (priv->internal_phy) {
+		phy_name = "internal PHY";
+	} else if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
+		phy_name = "MoCA";
+		bcmgenet_moca_phy_setup(priv);
 	}

 	if (init) {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
