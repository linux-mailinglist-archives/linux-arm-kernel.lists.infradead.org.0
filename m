Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DACBF8094
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 20:52:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dh5pDOnypS4tDcnr9MwbTXq6cXrpw72S5J9RsszXuHk=; b=P3z2GS0F5JSzZgOnwEIdKl3H7g
	40gjYnV2yQUTFL2VdXtA214DXarD8l4MwdosjYBXXYpyAa4QgstyCuAYEZigG1x7C8sCX+AY2rAMv
	+SH3zF/3KDKGFDTBdyNoGBXJdz/nVl4daMQteAeMBIyamr0BzLu80h3vIWXHENtrdLaP4pEd+2h+Y
	sAHcq2DUP91qEPb1fWl2WghYmGkdJJkfydZqkpbAGDo250kKncaB+GXdi43UC1M0MPAYCHweHmyRD
	5Lueb1bd2yhW0Ze6RMpR3EYlxiq2mDMfyUAVINTA7TfoFk4iyGOd7loMoyKdL1soyELp1QodMKb9F
	H57Tw1EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUFjE-0001rl-67; Mon, 11 Nov 2019 19:52:00 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUFig-0001cs-Uc
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 19:51:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1573501792;
 bh=bICAAjpNAEuBSsYFkawJc3wNJyV0/DEeTRhpBN4urFs=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=UO4QAIV8lH819LcEEu58MxoPYk87X82RVJjLK6NhxkolwitqQRbTzGlXVKQoDSx4A
 p+kgdMDS0zY91xMOioSRYyXLOKtjVv9au/wab0OHP2xudnoUUDPB2VVtcprFFUacc7
 96QxGGqFCCudzSHxSERqJ+e7Fd5V5P4OvrA0Znak=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.112]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MOzOw-1iG04a2dS8-00PJjG; Mon, 11 Nov 2019 20:49:52 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Matthias Brugger <matthias.bgg@kernel.org>,
 Matthias Brugger <mbrugger@suse.com>,
 "David S . Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH V5 net-next 5/7] net: bcmgenet: Refactor register access in
 bcmgenet_mii_config
Date: Mon, 11 Nov 2019 20:49:24 +0100
Message-Id: <1573501766-21154-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
References: <1573501766-21154-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:67YahmV2UkJIhpHobumqC9+/MmwXxDEYxBSTwbAoxBBAioCr3qM
 x8P7GK2b0x11RhkhkXnUCTYXYQgqYSCL0ZTxyIsKplgJgvJydv6Sdk7dLd0vS8YOgUZApHB
 kx8TxDsq9eQdNCrDjQ9N0zquYurAi8kxkxRzsvmDgKcH2/XFLc/ZA5B9mirNh1G0pRYUhl3
 ydAHEBhDR4HMC6kkGgyJg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:W7YAxsxgv4Y=:3Op2RchXtPvRo9E/XH58Cu
 L5jrJwgCEOXkNHOkQ2oPGcnNMCuaof/dLnnVvwo5u38KFDPyjb5rum2ofGp+pf98zzQINv1e/
 0bdZHifTM1pwMZu0v5nkZs+aOgdOkcrIZ0Ova/AG8A54LceioWC7y+xs5n+irXZJVrATkdi4w
 85TElykn7yUlX8gPYYPwtj6cutfD+wXAObSK53XjHc6Y6GlvZMWwWFWqtozzuqojDQUFnQqhG
 q5FI4rvfeAmeDeXgVaOQllhS6RvFLMv1M55VvlUKBEieOqx9sh8v3iZdmz40kM5hC+80Ongca
 /7zyyHrXnGRS6ym5faTXSckifoubxMM3yTOm6eK/4x/CNHLqVJnhgJaoCJofPeBSMgjH9+hpb
 Rk/k2mp0BXiRSwabn88AczMLWLkQca3Gmgq9kEwiEJ65vZwAOUzAw0nDqTzqtxwvn4Z+HH2Bk
 nQnttcRVnwHTLbISdTn5XZgiEglii4RWGWxLMwGNjf3N7WNvqGsJ7qAUpjpovKm7J8Ek8Mi6/
 NCUCem+7cni7MrhPq60hvdnUstlINdl9n+RhATeCAt304imSdzd4WxiaV7+YudsaeWSJ6P3G3
 niGXsIpjsEdiQAdf72LV5uGxlv74Vawgz9hC6dQBgB8NtNUKCKKk3z3IMeEKBEZ6dHXciDjgJ
 Ofvu2I4B4Iz2W8DdfsN18cCSA3pZShP1hNZzWDz7Vt43RCbeeTlatVLuuPU6CkN/EcsElhueg
 DU8mfSxmf5gTM5xzu2TRA0RaScO1bcoLP2qJytgEj96OQ3rz0R4S7cJx8vzx74qMJEGm5OuIJ
 rourPKi8zMqEnYQcQUB1uOvmLAlUymTWvlQ1001y1eaEjT3t7NVLLmYq/DkXjvEsGrNNoBuF4
 TQEueCesSjJm8Mh2zcGB0JfawtgmpdT+kE9zx3+sWAf10kDQdg9MaASrOTzmhNd7/OLOZ8PsE
 XX5KS9UnUkjCfFCf7ihIldPRHuBA0y1PtXe4P1+HAqTqkuFvXzbIglJiYVaxoLXpGjSACEe93
 JXGBwXELqXz0lxMxr9LAbcV1V4z0hfHdTPasGT77ebrPm4pEqysCYzn6L+yVy+83bQx0I/Kef
 GEY/phLJEKaleERFeg56JVVFTFfDg83AyS+M/z4ZZP+xD/kICJJw8+qhQvGh35E5Ltz8qtOT0
 AhC9UhV3LMFyQa1ETWPiY/X576nG/HK81/9pYI1AXeYetYyvlW/8CUpiD5MI1vUWLzZmzB8it
 V7UtmSyCtr00cQTLrdkATzvdZw+x0AL+6YVaEgg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_115127_341699_777F8CF1 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Doug Berger <opendmb@gmail.com>,
 netdev@vger.kernel.org, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The register access in bcmgenet_mii_config() is a little bit opaque and
not easy to extend. In preparation for the missing RGMII PHY modes
move all the phy name assignments into the switch statement and the
register access to the end of the function. This make the code easier
to read and extend.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/net/ethernet/broadcom/genet/bcmmii.c | 42 +++++++++++++---------------
 1 file changed, 20 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c b/drivers/net/ethernet/broadcom/genet/bcmmii.c
index 6f291ee..021ce9e 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
@@ -213,11 +213,10 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 		udelay(2);
 	}

-	priv->ext_phy = !priv->internal_phy &&
-			(priv->phy_interface != PHY_INTERFACE_MODE_MOCA);
-
 	switch (priv->phy_interface) {
 	case PHY_INTERFACE_MODE_INTERNAL:
+		phy_name = "internal PHY";
+		/* fall through */
 	case PHY_INTERFACE_MODE_MOCA:
 		/* Irrespective of the actually configured PHY speed (100 or
 		 * 1000) GENETv4 only has an internal GPHY so we will just end
@@ -229,11 +228,7 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 		else
 			port_ctrl = PORT_MODE_INT_EPHY;

-		bcmgenet_sys_writel(priv, port_ctrl, SYS_PORT_CTRL);
-
-		if (priv->internal_phy) {
-			phy_name = "internal PHY";
-		} else if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
+		if (!phy_name) {
 			phy_name = "MoCA";
 			bcmgenet_moca_phy_setup(priv);
 		}
@@ -242,11 +237,7 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
 	case PHY_INTERFACE_MODE_MII:
 		phy_name = "external MII";
 		phy_set_max_speed(phydev, SPEED_100);
-		bcmgenet_sys_writel(priv,
-				    PORT_MODE_EXT_EPHY, SYS_PORT_CTRL);
-		/* Restore the MII PHY after isolation */
-		if (bmcr >= 0)
-			phy_write(phydev, MII_BMCR, bmcr);
+		port_ctrl = PORT_MODE_EXT_EPHY;
 		break;

 	case PHY_INTERFACE_MODE_REVMII:
@@ -261,31 +252,38 @@ int bcmgenet_mii_config(struct net_device *dev, bool init)
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
+	/* Restore the MII PHY after isolation */
+	if (bmcr >= 0)
+		phy_write(phydev, MII_BMCR, bmcr);
+
+	priv->ext_phy = !priv->internal_phy &&
+			(priv->phy_interface != PHY_INTERFACE_MODE_MOCA);
+
 	/* This is an external PHY (xMII), so we need to enable the RGMII
 	 * block for the interface to work
 	 */
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
